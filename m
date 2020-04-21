Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id D683B1B21A1
	for <lists+intel-gfx@lfdr.de>; Tue, 21 Apr 2020 10:30:23 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 0D32A6E029;
	Tue, 21 Apr 2020 08:30:22 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga18.intel.com (mga18.intel.com [134.134.136.126])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 9A09D6E029
 for <intel-gfx@lists.freedesktop.org>; Tue, 21 Apr 2020 08:30:20 +0000 (UTC)
IronPort-SDR: 3URWZssBlpHInSbQigAbNXAKL4vgYYVgEMJ5yX3tuZWVtzNOY/YuQ80ax21xpRVz2Aw1UGMvwb
 RN5mnCtx7TYQ==
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga005.fm.intel.com ([10.253.24.32])
 by orsmga106.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 21 Apr 2020 01:30:19 -0700
IronPort-SDR: 5rGT2MyPDWQ10uXRKYvmsXBOGKFQl9grT47YFq46xq47appIiK0YY4BhipCkwrLZFriPFilIbR
 Ee7AIgqD1a4g==
X-IronPort-AV: E=Sophos;i="5.72,409,1580803200"; d="scan'208";a="456022877"
Received: from parkernx-mobl.ger.corp.intel.com (HELO localhost)
 ([10.249.46.80])
 by fmsmga005-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 21 Apr 2020 01:30:18 -0700
From: Jani Nikula <jani.nikula@linux.intel.com>
To: Pankaj Bharadiya <pankaj.laxminarayan.bharadiya@intel.com>,
 intel-gfx@lists.freedesktop.org, Chris Wilson <chris@chris-wilson.co.uk>
In-Reply-To: <20200406112800.23762-15-pankaj.laxminarayan.bharadiya@intel.com>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
References: <20200406112800.23762-1-pankaj.laxminarayan.bharadiya@intel.com>
 <20200406112800.23762-15-pankaj.laxminarayan.bharadiya@intel.com>
Date: Tue, 21 Apr 2020 11:30:11 +0300
Message-ID: <87ftcxz1f0.fsf@intel.com>
MIME-Version: 1.0
Subject: Re: [Intel-gfx] [PATCH 14/18] drm/i915/gem: Prefer drm_WARN* over
 WARN*
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

On Mon, 06 Apr 2020, Pankaj Bharadiya <pankaj.laxminarayan.bharadiya@intel.com> wrote:
> struct drm_device specific drm_WARN* macros include device information
> in the backtrace, so we know what device the warnings originate from.
>
> Prefer drm_WARN* over WARN* at places where struct drm_device pointer
> can be extracted.

I'd like to have Chris' ack on this.

BR,
Jani.


>
> Signed-off-by: Pankaj Bharadiya <pankaj.laxminarayan.bharadiya@intel.com>
> ---
>  drivers/gpu/drm/i915/gem/i915_gem_execbuffer.c | 2 +-
>  drivers/gpu/drm/i915/gem/i915_gem_phys.c       | 3 ++-
>  drivers/gpu/drm/i915/gem/i915_gem_userptr.c    | 2 +-
>  3 files changed, 4 insertions(+), 3 deletions(-)
>
> diff --git a/drivers/gpu/drm/i915/gem/i915_gem_execbuffer.c b/drivers/gpu/drm/i915/gem/i915_gem_execbuffer.c
> index 9d11bad74e9a..d910eb9b77ef 100644
> --- a/drivers/gpu/drm/i915/gem/i915_gem_execbuffer.c
> +++ b/drivers/gpu/drm/i915/gem/i915_gem_execbuffer.c
> @@ -1440,7 +1440,7 @@ eb_relocate_entry(struct i915_execbuffer *eb,
>  			err = i915_vma_bind(target->vma,
>  					    target->vma->obj->cache_level,
>  					    PIN_GLOBAL, NULL);
> -			if (WARN_ONCE(err,
> +			if (drm_WARN_ONCE(&i915->drm, err,
>  				      "Unexpected failure to bind target VMA!"))
>  				return err;
>  		}
> diff --git a/drivers/gpu/drm/i915/gem/i915_gem_phys.c b/drivers/gpu/drm/i915/gem/i915_gem_phys.c
> index 7fe9831aa9ba..4c1c7232b024 100644
> --- a/drivers/gpu/drm/i915/gem/i915_gem_phys.c
> +++ b/drivers/gpu/drm/i915/gem/i915_gem_phys.c
> @@ -27,7 +27,8 @@ static int i915_gem_object_get_pages_phys(struct drm_i915_gem_object *obj)
>  	void *dst;
>  	int i;
>  
> -	if (WARN_ON(i915_gem_object_needs_bit17_swizzle(obj)))
> +	if (drm_WARN_ON(obj->base.dev,
> +			i915_gem_object_needs_bit17_swizzle(obj)))
>  		return -EINVAL;
>  
>  	/*
> diff --git a/drivers/gpu/drm/i915/gem/i915_gem_userptr.c b/drivers/gpu/drm/i915/gem/i915_gem_userptr.c
> index 7ffd7afeb7a5..8b0708708671 100644
> --- a/drivers/gpu/drm/i915/gem/i915_gem_userptr.c
> +++ b/drivers/gpu/drm/i915/gem/i915_gem_userptr.c
> @@ -235,7 +235,7 @@ i915_gem_userptr_init__mmu_notifier(struct drm_i915_gem_object *obj,
>  	if (flags & I915_USERPTR_UNSYNCHRONIZED)
>  		return capable(CAP_SYS_ADMIN) ? 0 : -EPERM;
>  
> -	if (WARN_ON(obj->userptr.mm == NULL))
> +	if (drm_WARN_ON(obj->base.dev, obj->userptr.mm == NULL))
>  		return -EINVAL;
>  
>  	mn = i915_mmu_notifier_find(obj->userptr.mm);

-- 
Jani Nikula, Intel Open Source Graphics Center
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
