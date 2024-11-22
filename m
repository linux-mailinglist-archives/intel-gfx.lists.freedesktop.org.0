Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 740B09D65EA
	for <lists+intel-gfx@lfdr.de>; Fri, 22 Nov 2024 23:48:05 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id A7BF710E5A6;
	Fri, 22 Nov 2024 22:48:03 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="DLHervq5";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.18])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 22ADF10E434
 for <intel-gfx@lists.freedesktop.org>; Fri, 22 Nov 2024 22:48:02 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1732315682; x=1763851682;
 h=date:from:to:cc:subject:message-id:references:
 mime-version:content-transfer-encoding:in-reply-to;
 bh=X5/m7WAiuastoq3+J7ScvlnLQYRMHi7vUtTGyqdsX/Y=;
 b=DLHervq53CecHxwc6e9qyPlnzSqGuyNK40OIctBh4oUfknbrF0Uq+B4j
 7Kh9OWMyO2Xts0e6EsKRlv0DkIbl+XsbMFUP621VZc+a6Dy++w4aByPXz
 A2W4baP0vlAKi7CwFFMw/ra5l873LpMe/XXbobkPvjrvgUlEm84Pg4IH0
 mII2NeoWBLxtV+mO8mi3PD0c1l5rk7TBflx95vZPCWKjOzWoTJWdkbD9u
 Ef1MpwB+yW/5NW7PqnqsDFw7nvvixGZ94ksTvlj1xvmxOMrophHyWdTEd
 l+QUGYmbhnYp+UTUC4hH1bt3c5QW6VsoiOT/cMlUn1E5u94AiwAGLj9bf A==;
X-CSE-ConnectionGUID: /SRkm6KTTTiXoVRUtB6rFw==
X-CSE-MsgGUID: 5jxlEJbARh66tSNENuN/bg==
X-IronPort-AV: E=McAfee;i="6700,10204,11264"; a="31844876"
X-IronPort-AV: E=Sophos;i="6.12,176,1728975600"; d="scan'208";a="31844876"
Received: from fmviesa008.fm.intel.com ([10.60.135.148])
 by fmvoesa112.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 22 Nov 2024 14:48:01 -0800
X-CSE-ConnectionGUID: xo0uK1ZORp63JDflcOZpFQ==
X-CSE-MsgGUID: Zq7XV3NJQUi273QSScXZ+A==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.12,176,1728975600"; d="scan'208";a="90882536"
Received: from stinkpipe.fi.intel.com (HELO stinkbox) ([10.237.72.74])
 by fmviesa008.fm.intel.com with SMTP; 22 Nov 2024 14:47:59 -0800
Received: by stinkbox (sSMTP sendmail emulation);
 Sat, 23 Nov 2024 00:47:58 +0200
Date: Sat, 23 Nov 2024 00:47:58 +0200
From: Ville =?iso-8859-1?Q?Syrj=E4l=E4?= <ville.syrjala@linux.intel.com>
To: Vidya Srinivas <vidya.srinivas@intel.com>
Cc: intel-gfx@lists.freedesktop.org, ville.syrjala@intel.com,
 bgeffon@google.com, shawn.c.lee@intel.com
Subject: Re: [PATCH] drm/i915/dpt: Restrict shrinker to DPT objects not mapped
Message-ID: <Z0EKHlMUx2uqZVnZ@intel.com>
References: <20241122110741.405941-1-vidya.srinivas@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=iso-8859-1
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <20241122110741.405941-1-vidya.srinivas@intel.com>
X-Patchwork-Hint: comment
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

On Fri, Nov 22, 2024 at 04:37:41PM +0530, Vidya Srinivas wrote:
> Restricting all DPT objects as unshrinkable was causing
> some chromebooks to run out of memory causing
> DMA remap failures. Thanks to Brian Geffon for the
> pointers on debug and suggesting usage of !obj->mm.mapping
> 
> Fixes: 43e2b37e2ab6 ("drm/i915/dpt: Make DPT object unshrinkable")
> 
> Credits-to: Brian Geffon <bgeffon@google.com>
> Suggested-by: Ville Syrj_l_ <ville.syrjala@linux.intel.com>
> Signed-off-by: Vidya Srinivas <vidya.srinivas@intel.com>
> ---
>  drivers/gpu/drm/i915/gem/i915_gem_object.h | 2 +-
>  1 file changed, 1 insertion(+), 1 deletion(-)
> 
> diff --git a/drivers/gpu/drm/i915/gem/i915_gem_object.h b/drivers/gpu/drm/i915/gem/i915_gem_object.h
> index 3dc61cbd2e11..b155f0139d4e 100644
> --- a/drivers/gpu/drm/i915/gem/i915_gem_object.h
> +++ b/drivers/gpu/drm/i915/gem/i915_gem_object.h
> @@ -285,7 +285,7 @@ i915_gem_object_is_shrinkable(const struct drm_i915_gem_object *obj)
>  {
>  	/* TODO: make DPT shrinkable when it has no bound vmas */
>  	return i915_gem_object_type_has(obj, I915_GEM_OBJECT_IS_SHRINKABLE) &&
> -		!obj->is_dpt;
> +		!(obj->is_dpt && obj->mm.mapping);

AFAICS the mapping could only become NULL if the DPT got
evicted from the GGTT, but if that can happen then I think
the current code must still be busted wrt. suspend/resume
even with the unshrinkable DPT obj.

Looking at the vma suspend stuff I think the only way something
could still be bound in the DPT during resume is if it was pinned
during suspend. But we should be unpinning all FBs during suspend,
so that's a bit weird in itself. Hmm, we do the unpinning from
the cleanup_work so maybe that's still pending when we suspend 
and thus something is still pinned in the DPT. And indeed
there is no flush_work()/etc. for that. So perhaps if we add
that we could just revert the unshrinkable DPT patch.

Did we have a good way to reproduce the resume explosion? If not,
I suppose we could try to confirm the lack of flush_work() as the
culprit by simply sticking some kind of sleep() into the cleanup
function to make sure it doesn't get a chance to run during
suspend.

I also had this:
https://patchwork.freedesktop.org/patch/503398/?series=108669&rev=1
which would be good to have so that we can actully do the
obvious flush_work(cleanup_work) instead of playing confusing
tricks with the the commit_work.

>  }
>  
>  static inline bool
> -- 
> 2.34.1

-- 
Ville Syrjälä
Intel
