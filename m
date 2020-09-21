Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 86949272E14
	for <lists+intel-gfx@lfdr.de>; Mon, 21 Sep 2020 18:46:24 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id DDD2D8981B;
	Mon, 21 Sep 2020 16:46:22 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (unknown [77.68.26.236])
 by gabe.freedesktop.org (Postfix) with ESMTPS id BD0C08981B
 for <intel-gfx@lists.freedesktop.org>; Mon, 21 Sep 2020 16:46:20 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from localhost (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP (TLS) id
 22494436-1500050 for multiple; Mon, 21 Sep 2020 17:46:18 +0100
MIME-Version: 1.0
In-Reply-To: <20200921160844.73186-1-matthew.auld@intel.com>
References: <20200921160844.73186-1-matthew.auld@intel.com>
From: Chris Wilson <chris@chris-wilson.co.uk>
To: Matthew Auld <matthew.auld@intel.com>, intel-gfx@lists.freedesktop.org
Date: Mon, 21 Sep 2020 17:46:16 +0100
Message-ID: <160070677613.23992.8664722492300311346@build.alporthouse.com>
User-Agent: alot/0.9
Subject: Re: [Intel-gfx] [PATCH] drm/i915: check i915_vm_alloc_pt_stash for
 errors
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

Quoting Matthew Auld (2020-09-21 17:08:44)
> If we are really unlucky and encounter an error during
> i915_vm_alloc_pt_stash, we end up passing an empty pt/pd stash all the
> way down into the low-level ppgtt alloc code, leading to explosions,
> since it expects at least the required number of pt/pd for the va range.
> 
> [  211.981418] BUG: kernel NULL pointer dereference, address: 0000000000000000
> [  211.981421] #PF: supervisor read access in kernel mode
> [  211.981422] #PF: error_code(0x0000) - not-present page
> [  211.981424] PGD 80000008439cb067 P4D 80000008439cb067 PUD 84a37f067 PMD 0
> [  211.981427] Oops: 0000 [#1] SMP PTI
> [  211.981428] CPU: 1 PID: 1301 Comm: i915_selftest Tainted: G     U    I       5.9.0-rc5+ #3
> [  211.981430] Hardware name:  /NUC6i7KYB, BIOS KYSKLi70.86A.0050.2017.0831.1924 08/31/2017
> [  211.981521] RIP: 0010:__gen8_ppgtt_alloc+0x1ed/0x3c0 [i915]
> [  211.981523] Code: c1 48 c7 c7 5d 5d fe c0 65 ff 0d ee 1d 03 3f e8 d9 91 1f e2 8b 55 c4 31 c0 48 8b 75 b8 85 d2 0f 95 c0 48 8b 1c c6 48 89 45 98 <48> 8b 03 48 8b 90 58 02 00 00 48 85 d2 0f 84 07 ea 15 00 48 81 fa
> [  211.981526] RSP: 0018:ffffba2cc0eb3970 EFLAGS: 00010202
> [  211.981527] RAX: 0000000000000001 RBX: 0000000000000000 RCX: 0000000000000004
> [  211.981529] RDX: 0000000000000002 RSI: ffff9be998bdb8c0 RDI: ffff9be99c844300
> [  211.981530] RBP: ffffba2cc0eb39d8 R08: 0000000000000640 R09: ffff9be97cdfd000
> [  211.981531] R10: ffff9be97cdfd614 R11: 0000000000000000 R12: 0000000000000000
> [  211.981532] R13: ffff9be98607ba20 R14: ffff9be995a0b400 R15: ffffba2cc0eb39e8
> [  211.981534] FS:  00007f0f10b31000(0000) GS:ffff9be99fc40000(0000) knlGS:0000000000000000
> [  211.981536] CS:  0010 DS: 0000 ES: 0000 CR0: 0000000080050033
> [  211.981538] CR2: 0000000000000000 CR3: 000000084d74e006 CR4: 00000000003706e0
> [  211.981539] DR0: 0000000000000000 DR1: 0000000000000000 DR2: 0000000000000000
> [  211.981541] DR3: 0000000000000000 DR6: 00000000fffe0ff0 DR7: 0000000000000400
> [  211.981542] Call Trace:
> [  211.981609]  gen8_ppgtt_alloc+0x79/0x90 [i915]
> [  211.981678]  ppgtt_bind_vma+0x36/0x80 [i915]
> [  211.981756]  __vma_bind+0x39/0x40 [i915]
> [  211.981818]  fence_work+0x21/0x98 [i915]
> [  211.981879]  fence_notify+0x8d/0x128 [i915]
> [  211.981939]  __i915_sw_fence_complete+0x62/0x240 [i915]
> [  211.982018]  i915_vma_pin_ww+0x1ee/0x9c0 [i915]
> 
> Fixes: cd0452aa2a0d ("drm/i915: Preallocate stashes for vma page-directories")
> Signed-off-by: Matthew Auld <matthew.auld@intel.com>
> Cc: Chris Wilson <chris@chris-wilson.co.uk>
> ---
>  drivers/gpu/drm/i915/i915_vma.c | 8 +++++---
>  1 file changed, 5 insertions(+), 3 deletions(-)
> 
> diff --git a/drivers/gpu/drm/i915/i915_vma.c b/drivers/gpu/drm/i915/i915_vma.c
> index 495d28f6d160..ffb5287e055a 100644
> --- a/drivers/gpu/drm/i915/i915_vma.c
> +++ b/drivers/gpu/drm/i915/i915_vma.c
> @@ -892,9 +892,11 @@ int i915_vma_pin_ww(struct i915_vma *vma, struct i915_gem_ww_ctx *ww,
>  
>                 /* Allocate enough page directories to used PTE */
>                 if (vma->vm->allocate_va_range) {
> -                       i915_vm_alloc_pt_stash(vma->vm,
> -                                              &work->stash,
> -                                              vma->size);
> +                       err = i915_vm_alloc_pt_stash(vma->vm,
> +                                                    &work->stash,
> +                                                    vma->size);
> +                       if (err)
> +                               goto err_fence;

Whelp, well that was silly of me.

Thanks,
Reviewed-by: Chris Wilson <chris@chris-wilson.co.uk>
-Chris
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
