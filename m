Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id C042114599B
	for <lists+intel-gfx@lfdr.de>; Wed, 22 Jan 2020 17:17:22 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 0388F6F5D2;
	Wed, 22 Jan 2020 16:17:21 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (mail.fireflyinternet.com [109.228.58.192])
 by gabe.freedesktop.org (Postfix) with ESMTPS id D0C986F5D2
 for <intel-gfx@lists.freedesktop.org>; Wed, 22 Jan 2020 16:17:19 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from localhost (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP (TLS) id
 19973015-1500050 for multiple; Wed, 22 Jan 2020 16:17:05 +0000
MIME-Version: 1.0
To: "Ruhl, Michael J" <michael.j.ruhl@intel.com>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>
From: Chris Wilson <chris@chris-wilson.co.uk>
In-Reply-To: <14063C7AD467DE4B82DEDB5C278E8663EE18F465@FMSMSX108.amr.corp.intel.com>
References: <20200120104924.4000706-1-chris@chris-wilson.co.uk>
 <20200120104924.4000706-4-chris@chris-wilson.co.uk>
 <14063C7AD467DE4B82DEDB5C278E8663EE18F37E@FMSMSX108.amr.corp.intel.com>
 <157970931487.7477.3304015911577031575@skylake-alporthouse-com>
 <14063C7AD467DE4B82DEDB5C278E8663EE18F465@FMSMSX108.amr.corp.intel.com>
Message-ID: <157970982422.7477.3108474443958366652@skylake-alporthouse-com>
User-Agent: alot/0.6
Date: Wed, 22 Jan 2020 16:17:04 +0000
Subject: Re: [Intel-gfx] [PATCH 4/5] drm/i915/gem: Convert vm idr to xarray
X-BeenThere: intel-gfx@lists.freedesktop.org
X-Mailman-Version: 2.1.29
Precedence: list
List-Id: Intel graphics driver community testing & development
 <intel-gfx.lists.freedesktop.org>
List-Unsubscribe: <https://lists.freedesktop.org/mailman/options/intel-gfx>,
 <mailto:intel-gfx-request@lists.freedesktop.org?subject=unsubscribe>
List-Archive: <https://lists.freedesktop.org/archives/intel-gfx>
List-Post: <mailto:intel-gfx@lists.freedesktop.org>
List-Help: <mailto:intel-gfx-request@lists.freedesktop.org?subject=help>
List-Subscribe: <https://lists.freedesktop.org/mailman/listinfo/intel-gfx>,
 <mailto:intel-gfx-request@lists.freedesktop.org?subject=subscribe>
Cc: "Auld, Matthew" <matthew.auld@intel.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

Quoting Ruhl, Michael J (2020-01-22 16:15:17)
> 
> 
> >-----Original Message-----
> >From: Chris Wilson <chris@chris-wilson.co.uk>
> >Sent: Wednesday, January 22, 2020 11:09 AM
> >To: Ruhl, Michael J <michael.j.ruhl@intel.com>; intel-
> >gfx@lists.freedesktop.org
> >Cc: Auld, Matthew <matthew.auld@intel.com>
> >Subject: RE: [Intel-gfx] [PATCH 4/5] drm/i915/gem: Convert vm idr to xarray
> >
> >Quoting Ruhl, Michael J (2020-01-22 16:00:25)
> >> >-----Original Message-----
> >> >From: Intel-gfx <intel-gfx-bounces@lists.freedesktop.org> On Behalf Of
> >Chris
> >> >Wilson
> >> >@@ -876,23 +868,13 @@ int i915_gem_vm_create_ioctl(struct drm_device
> >> >*dev, void *data,
> >> >                       goto err_put;
> >> >       }
> >> >
> >> >-      err = mutex_lock_interruptible(&file_priv->vm_idr_lock);
> >> >+      err = xa_alloc(&file_priv->vm_xa, &args->vm_id,
> >> >+                     &ppgtt->vm, xa_limit_32b, GFP_KERNEL);
> >> >       if (err)
> >> >               goto err_put;
> >> >
> >> >-      err = idr_alloc(&file_priv->vm_idr, &ppgtt->vm, 0, 0, GFP_KERNEL);
> >> >-      if (err < 0)
> >> >-              goto err_unlock;
> >> >-
> >> >-      GEM_BUG_ON(err == 0); /* reserved for invalid/unassigned ppgtt */
> >>
> >> Moving this comment to the xa_init_flags() would help me understand
> >> why the index started at 1.
> >
> >Hey, I take 0 being reserved for granted, and had to think about why
> >the context_xa was not 1-biased!
> >
> >> >@@ -1021,35 +991,27 @@ static int get_ppgtt(struct drm_i915_file_private
> >> >*file_priv,
> >> >                    struct drm_i915_gem_context_param *args)
> >> > {
> >> >       struct i915_address_space *vm;
> >> >-      int ret;
> >> >+      int err = -ENODEV;
> >> >+      u32 id;
> >> >
> >> >       if (!rcu_access_pointer(ctx->vm))
> >> >               return -ENODEV;
> >> >
> >> >       rcu_read_lock();
> >> >       vm = context_get_vm_rcu(ctx);
> >> >+      if (vm)
> >> >+              err = xa_alloc(&file_priv->vm_xa, &id, vm,
> >> >+                             xa_limit_32b, GFP_KERNEL);
> >> >       rcu_read_unlock();
> >> >+      if (!err) {
> >> >+              i915_vm_open(vm);
> >>
> >> Why did you switch to success path in the if here?
> >
> >No good reason, just simple enough to fit inside one if {}.
> >
> >> Can you do:
> >>
> >> if (err)
> >>         goto err_put;
> >>
> >> ?
> >>
> >> >-      ret = mutex_lock_interruptible(&file_priv->vm_idr_lock);
> >> >-      if (ret)
> >> >-              goto err_put;
> >> >-
> >> >-      ret = idr_alloc(&file_priv->vm_idr, vm, 0, 0, GFP_KERNEL);
> >> >-      GEM_BUG_ON(!ret);
> >> >-      if (ret < 0)
> >> >-              goto err_unlock;
> >> >-
> >> >-      i915_vm_open(vm);
> >> >-
> >> >-      args->size = 0;
> >> >-      args->value = ret;
> >> >+              args->size = 0;
> >> >+              args->value = id;
> >>
> >> Would passing args->value to the xa_alloc be a useful?
> >
> >General rule is not to alter user params except on success. While not
> >always required, the pattern does help to avoid common pitfalls where
> >userspace has to repeat an ioctl (e.g. SIGINT).
> 
> Yup.  Following that rule, xa_array() will only update the value on success.
> 
> I was mostly commenting on it because you had done that in the previous
> xa_alloc call.

Went back and changed that so both paths look very similar, begging to
be refactored...
-Chris
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
