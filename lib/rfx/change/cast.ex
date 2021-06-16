defmodule Rfx.Change.Cast do
  
  @moduledoc """
  Contains helper functions that operate on changeset.  

  A changeset is a list of Rfx.Change.Req.structs, generated by an Rfx
  Operation.
  """

  alias Rfx.Change

  def to_string(changeset) do
    changeset 
    |> Enum.map(&Change.Req.to_string/1)
  end

  def apply!(changeset) do
    changeset
    |> Enum.map(&Change.Req.apply!(&1))
  end

end
