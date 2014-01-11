<div class="grid_5">
  <form action="/form/p_index/<?=$issue['id'];?>" method="POST" accept-charset="utf-8">
    <fieldset>
      <legend>Main body</legend>
      <p>
        <label class='title' for='lead_in'>Lead-in:</label>
        <textarea name="lead_in" id="lead_in" rows="8" cols="40"></textarea>
      </p>
      <p>
        <label class='title' for='kicker'>Lead-in kicker:</label>
        <textarea name="kicker" id="kicker" rows="8" cols="40"></textarea>
      </p>
      <p>
        <label for="headline">Headline:</label>
        <input type="text" name="headline" id="headline"><br>
        <label for="main">Main body text:</label>
        <textarea name="main_body" id="main_body" rows="24" cols="40"></textarea>
      </p>
    </fieldset>
    <fieldset>
      <legend>Online poll</legend>
      <p>
        <label for="poll">Poll question:</label>
        <input type="text" name="poll_q" id="poll"><br>
        <label for="poll_link">Poll link:</label>
        <input type="text" name="poll_link" id="poll_link"> 
      </p>
    </fieldset>
    <fieldset>
      <legend>Resources to Reference</legend>
      <p>
        <label for='resource1'>Resource #1:</label>
        <input type="text" name="res1" id="resource1">
        <label for='res_link1'>Link:</label>
        <input type="text" name="res_link1" id="res_link1"><br>
    
        <label for='resource1'>Resource #2:</label>
        <input type="text" name="res2" id="resource2">
        <label for='res_link2'>Link:</label>
        <input type="text" name="res_link2" id="res_link2"><br>
    
        <label for='resource1'>Resource #3:</label>
        <input type="text" name="res3" id="resource3">
        <label for='res_link3'>Link:</label>
        <input type="text" name="res_link3" id="res_link3"><br>
    
        <label for='resource1'>Resource #4:</label>
        <input type="text" name="res4" id="resource4">
        <label for='res_link4'>Link:</label>
        <input type="text" name="res_link4" id="res_link4"><br>
    
        <label for='resource1'>Resource #5:</label>
        <input type="text" name="res5" id="resource5">
        <label for='res_link5'>Link:</label>
        <input type="text" name="res_link5" id="res_link5"><br>
      </p>
    </fieldset>
    <fieldset>
      <legend>Meet Your Peer</legend>
      <p>
        <label for="peer_name">Name:</label>
        <input type="text" name="peer_name" id="peername"><br>
        <label for="peer_occ">Occupation:</label>
        <input type="text" name="peer_occ" id="occupation"><br>
        <label for="peer_school">School/class:</label>
        <input type="text" name="peer_school" id="schoolclass"><br>
        <label for="peer_inv">I am involved because:</label>
        <input type="text" name="peer_inv" id="involved"><br>
        <label for="peer_rev">When reviewing a manuscript:</label>
        <input type="text" name="peer_rev" id="reviewing"><br>
      </p>
    </fieldset>
  
    <input type="submit" value="Set">
    <input type="hidden" name='id' value="<?=$id;?>"><br><br>
  </form>
</div>
<div class="grid_7">
  <?=$preview?>
</div>
