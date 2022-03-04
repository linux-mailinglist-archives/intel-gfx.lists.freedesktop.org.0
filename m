Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 8BA684CD94B
	for <lists+intel-gfx@lfdr.de>; Fri,  4 Mar 2022 17:41:40 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 93ED7112777;
	Fri,  4 Mar 2022 16:41:38 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 0D675112767
 for <intel-gfx@lists.freedesktop.org>; Fri,  4 Mar 2022 16:41:37 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1646412097; x=1677948097;
 h=message-id:subject:from:to:cc:date:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=LdFLU+n/5MTVXcghMGW5/Ioo2v6PpUhaWFWC2cOWSig=;
 b=N4Mu1pgMw4CJB0GHkTMOrpi7OdyvSueh2x8kHZYIc67LqTsTFjNnQISI
 eilPmLQBgsXf53zcalJwSubEboFI8FaXlaM/b/K3PJ05S//MW99hSSp9a
 mHEIJFbr1RdKbyL7AAahVMQtkqQSsVG4CenApuruBVpe1dKb9uzuvwD5w
 h6jW2Tk9v5rJ4HxV+k4cU5gnyBgkK6wMqi/XeCWmwQrhOh+vaJvMi+/hl
 c+HS+ysCFks3FK+LwDw/UT8mALbXjGm1DwXvNBUXYaMniZMp6Bl+9p4vb
 KWZQtEWYOXSezBmOf6VdGbEtGt8CXFcRDVC6SUXhRrBGvA5uG+V42RrdA Q==;
X-IronPort-AV: E=McAfee;i="6200,9189,10276"; a="241434043"
X-IronPort-AV: E=Sophos;i="5.90,155,1643702400"; d="scan'208";a="241434043"
Received: from fmsmga006.fm.intel.com ([10.253.24.20])
 by orsmga101.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 04 Mar 2022 08:41:36 -0800
X-IronPort-AV: E=Sophos;i="5.90,155,1643702400"; d="scan'208";a="779681501"
Received: from mmazarel-mobl.ger.corp.intel.com (HELO [10.249.254.59])
 ([10.249.254.59])
 by fmsmga006-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 04 Mar 2022 08:41:35 -0800
Message-ID: <fe19ddd39d48916c382e5bfe1c6a9f720358728b.camel@linux.intel.com>
From: Thomas =?ISO-8859-1?Q?Hellstr=F6m?= <thomas.hellstrom@linux.intel.com>
To: Matthew Auld <matthew.auld@intel.com>, intel-gfx@lists.freedesktop.org
Date: Fri, 04 Mar 2022 17:41:32 +0100
In-Reply-To: <20220304095934.925036-2-matthew.auld@intel.com>
References: <20220304095934.925036-1-matthew.auld@intel.com>
 <20220304095934.925036-2-matthew.auld@intel.com>
Content-Type: text/plain; charset="UTF-8"
User-Agent: Evolution 3.40.4 (3.40.4-2.fc34) 
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Subject: Re: [Intel-gfx] [CI 2/2] drm/i915: limit the async bind to
 bind_async_flags
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
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Fri, 2022-03-04 at 09:59 +0000, Matthew Auld wrote:
> If the vm doesn't request async binding, like for example with the
> dpt,
> then we should be able to skip the async path and avoid calling
> i915_vm_lock_objects() altogether. Currently if we have a moving
> fence
> set for the BO(even though it might have signalled), we still take
> the
> async patch regardless of the bind_async setting, and then later
> still
> end up just doing i915_gem_object_wait_moving_fence() anyway.
> 
> Alternatively we would need to add dummy scratch object which can be
> locked, just for the dpt.
> 
> Suggested-by: Thomas Hellström <thomas.hellstrom@linux.intel.com>
> Signed-off-by: Matthew Auld <matthew.auld@intel.com>
> Cc: Stanislav Lisovskiy <stanislav.lisovskiy@intel.com>
> ---
>  drivers/gpu/drm/i915/i915_vma.c | 4 ++--
>  1 file changed, 2 insertions(+), 2 deletions(-)
> 
> diff --git a/drivers/gpu/drm/i915/i915_vma.c
> b/drivers/gpu/drm/i915/i915_vma.c
> index 94fcdb7bd21d..4d4d3659c938 100644
> --- a/drivers/gpu/drm/i915/i915_vma.c
> +++ b/drivers/gpu/drm/i915/i915_vma.c
> @@ -1360,8 +1360,7 @@ int i915_vma_pin_ww(struct i915_vma *vma,
> struct i915_gem_ww_ctx *ww,
>         if (flags & PIN_GLOBAL)
>                 wakeref = intel_runtime_pm_get(&vma->vm->i915-
> >runtime_pm);
>  
> -       moving = vma->obj ?

Is there a chance that "moving" will be used uninitialized later?


> i915_gem_object_get_moving_fence(vma->obj) : NULL;
> -       if (flags & vma->vm->bind_async_flags || moving) {
> +       if (flags & vma->vm->bind_async_flags) {
>                 /* lock VM */
>                 err = i915_vm_lock_objects(vma->vm, ww);
>                 if (err)
> @@ -1375,6 +1374,7 @@ int i915_vma_pin_ww(struct i915_vma *vma,
> struct i915_gem_ww_ctx *ww,
>  
>                 work->vm = i915_vm_get(vma->vm);
>  
> +               moving = vma->obj ?
> i915_gem_object_get_moving_fence(vma->obj) : NULL;

IIRC, with Maarten's recent changes, vma->obj is always non-NULL.

Otherwise LGTM.
Reviewed-by: Thomas Hellström <thomas.hellstrom@linux.intel.com>


>                 dma_fence_work_chain(&work->base, moving);
>  
>                 /* Allocate enough page directories to used PTE */

/Thomas


