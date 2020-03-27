Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id CFCE0195B2C
	for <lists+intel-gfx@lfdr.de>; Fri, 27 Mar 2020 17:34:22 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 4EA8A6E0BA;
	Fri, 27 Mar 2020 16:34:20 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
X-Greylist: delayed 405 seconds by postgrey-1.36 at gabe;
 Fri, 27 Mar 2020 16:34:19 UTC
Received: from 10.mo173.mail-out.ovh.net (10.mo173.mail-out.ovh.net
 [46.105.74.148])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 1635F6E0BA
 for <intel-gfx@lists.freedesktop.org>; Fri, 27 Mar 2020 16:34:19 +0000 (UTC)
Received: from player691.ha.ovh.net (unknown [10.108.54.119])
 by mo173.mail-out.ovh.net (Postfix) with ESMTP id AAE60135E86
 for <intel-gfx@lists.freedesktop.org>; Fri, 27 Mar 2020 17:27:30 +0100 (CET)
Received: from etezian.org (213-243-141-64.bb.dnainternet.fi [213.243.141.64])
 (Authenticated sender: andi@etezian.org)
 by player691.ha.ovh.net (Postfix) with ESMTPSA id EE6B310F255AB;
 Fri, 27 Mar 2020 16:27:28 +0000 (UTC)
Date: Fri, 27 Mar 2020 18:27:27 +0200
From: Andi Shyti <andi@etezian.org>
To: Chris Wilson <chris@chris-wilson.co.uk>
Message-ID: <20200327162727.GC186677@jack.zhora.eu>
References: <20200326142727.31962-1-chris@chris-wilson.co.uk>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200326142727.31962-1-chris@chris-wilson.co.uk>
X-Ovh-Tracer-Id: 2986449505555694089
X-VR-SPAMSTATE: OK
X-VR-SPAMSCORE: -100
X-VR-SPAMCAUSE: gggruggvucftvghtrhhoucdtuddrgedugedrudehledgkeeiucetufdoteggodetrfdotffvucfrrhhofhhilhgvmecuqfggjfdpvefjgfevmfevgfenuceurghilhhouhhtmecuhedttdenucesvcftvggtihhpihgvnhhtshculddquddttddmnecujfgurhepfffhvffukfhfgggtuggjsehttdertddttddvnecuhfhrohhmpeetnhguihcuufhhhihtihcuoegrnhguihesvghtvgiiihgrnhdrohhrgheqnecuffhomhgrihhnpehfrhgvvgguvghskhhtohhprdhorhhgnecukfhppedtrddtrddtrddtpddvudefrddvgeefrddugedurdeigeenucevlhhushhtvghrufhiiigvpedtnecurfgrrhgrmhepmhhouggvpehsmhhtphdqohhuthdphhgvlhhopehplhgrhigvrheiledurdhhrgdrohhvhhdrnhgvthdpihhnvghtpedtrddtrddtrddtpdhmrghilhhfrhhomheprghnughisegvthgviihirghnrdhorhhgpdhrtghpthhtohepihhnthgvlhdqghhfgieslhhishhtshdrfhhrvggvuggvshhkthhophdrohhrgh
Subject: Re: [Intel-gfx] [PATCH] drm/i915: Differentiate between
 aliasing-ppgtt and ggtt pinning
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
Cc: intel-gfx@lists.freedesktop.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

Hi Chris,

On Thu, Mar 26, 2020 at 02:27:27PM +0000, Chris Wilson wrote:
> Userptr causes lockdep to complain when we are using the aliasing-ppgtt
> (and ggtt, but for that it is rightfully so to complain about) in that
> when we revoke the userptr we take a mutex which we also use to revoke
> the mmaps. However, we only revoke mmaps for GGTT bindings and we never
> allow userptr to create a GGTT binding so the warning should be false
> and is simply caused by our conflation of the aliasing-ppgtt with the
> ggtt. So lets try treating the binding into the aliasing-ppgtt as a
> separate lockclass from the ggtt. The downside is that we are
> deliberately suppressing lockdep;s ability to warn us of cycles.
                                ^^^^
typo

> 
> Closes: https://gitlab.freedesktop.org/drm/intel/issues/478

I'm not a big fan of links in commit messages, I think they would
be forbidden by law, but I'm not being picky on that.

I don't know, thogh, why your S-o-b is missing.

> ---
>  drivers/gpu/drm/i915/i915_vma.c | 5 +++--
>  1 file changed, 3 insertions(+), 2 deletions(-)
> 
> diff --git a/drivers/gpu/drm/i915/i915_vma.c b/drivers/gpu/drm/i915/i915_vma.c
> index 191577a98390..9f4a31cd54ac 100644
> --- a/drivers/gpu/drm/i915/i915_vma.c
> +++ b/drivers/gpu/drm/i915/i915_vma.c
> @@ -914,7 +914,8 @@ int i915_vma_pin(struct i915_vma *vma, u64 size, u64 alignment, u64 flags)
>  		wakeref = intel_runtime_pm_get(&vma->vm->i915->runtime_pm);
>  
>  	/* No more allocations allowed once we hold vm->mutex */
> -	err = mutex_lock_interruptible(&vma->vm->mutex);
> +	err = mutex_lock_interruptible_nested(&vma->vm->mutex,
> +					      !(flags & PIN_GLOBAL));
>  	if (err)
>  		goto err_fence;
>  
> @@ -1320,7 +1321,7 @@ int i915_vma_unbind(struct i915_vma *vma)
>  	if (err)
>  		goto out_rpm;
>  
> -	err = mutex_lock_interruptible(&vm->mutex);
> +	err = mutex_lock_interruptible_nested(&vma->vm->mutex, !wakeref);

looks reasonable to me. Thanks!

Are you planning to push it? You have my review for this.

Andi
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
