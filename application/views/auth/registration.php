<div class="container col-lg-7">

    <div class="card o-hidden border-0 shadow-lg my-5">
      <div class="card-body p-0">
        <!-- Nested Row within Card Body -->
        <div class="row justify-content-center">
     
          <div class="col-lg-7">
            <div class="p-5">
              <div class="text-center">
                <h1 class="h4 text-gray-900 mb-4">Create an Account!</h1>
              </div>
              <form class="user" method="post" action="<?= base_url('auth/registration'); ?>">
                <div class="form-group row">
           
                    <input type="text" class="form-control form-control-user" name="name" id="exampleFirstName" placeholder="Full Name" value="<?= set_value('name');?>">
               <?= form_error('name','<small class="text-danger pl-3">','</small>');?>
                 
                </div>
                <div class="form-group">
                  <input type="text" class="form-control form-control-user" name="email" id="exampleInputEmail" placeholder="Email Address" value="<?= set_value('email');?>">
                  <?= form_error('email','<small class="text-danger pl-3">','</small>');?>
                </div>
                <div class="form-group row">
                  <div class="col-sm-6 mb-3 mb-sm-0">
                    <input type="password" name="password1" class="form-control form-control-user" id="exampleInputPassword" placeholder="Password">
                    <?= form_error('password1','<small class="text-danger pl-3">','</small>');?>
                </div>
                  <div class="col-sm-6">
                    <input type="password" name="password2" class="form-control form-control-user" id="exampleRepeatPassword" placeholder="Repeat Password">
                    <?= form_error('password2','<small class="text-danger pl-3">','</small>');?>
                </div>
                </div>
                <button type="submit" class="btn btn-primary btn-user btn-block">

                    Register Account
                </button>
               
              
              </form>
              <hr>
              <div class="text-center">
                <a class="small" href="forgot-password.html">Forgot Password?</a>
              </div>
              <div class="text-center">
                <a class="small" href="<?= base_url(); ?>auth">Already have an account? Login!</a>
              </div>
            </div>
          </div>
        </div>
      </div>
    </div>

  </div>