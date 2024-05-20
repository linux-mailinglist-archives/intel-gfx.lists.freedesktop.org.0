Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id CCEEC8CA0CC
	for <lists+intel-gfx@lfdr.de>; Mon, 20 May 2024 18:40:15 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id C7A3710E61E;
	Mon, 20 May 2024 16:40:09 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="UoqtuO92";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.8])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 8E0BC10E61E
 for <intel-gfx@lists.freedesktop.org>; Mon, 20 May 2024 16:40:02 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1716223202; x=1747759202;
 h=date:from:to:cc:subject:message-id:references:
 mime-version:content-transfer-encoding:in-reply-to;
 bh=SyCGTanyhXHZO0yXsNL43T8xAE0uInuvvLkfN/vICtw=;
 b=UoqtuO92fo+2yOAyXsAoMvviEbdNLy4QxS3s/2dAF+Ue6GQWUGV5lzPQ
 XxZ171xLmpQLpGyx/Dn1cwO//uhCNdB/OH1qVWzJB7gnvOKgM7lxxtWxA
 aUf2otrWB9VJw82rC5OeWw072ytJ6yOzXb0xd/OXmNt0QijDoalgURFNm
 p0qHXjHeJuFs7fFDFcVc8f5PThyGGVuTETjqXloHp2ylnaGOe+2n8cr/S
 hY3+Ydm/mvnntkyeoLHytqFVDRvGs0yxmhCqYlAxj+7QOQQZjW/H0l2PE
 QF9A9a+rSlN/7MXWc7C35xzvsHcZSTDUKRVLc5kVzH1bFJPxc2W+LPtZI A==;
X-CSE-ConnectionGUID: 1EvKV4m2Ty6HJMczhzEQNw==
X-CSE-MsgGUID: CPZtQiLOR5+qb8+BCoeWGA==
X-IronPort-AV: E=McAfee;i="6600,9927,11078"; a="29882783"
X-IronPort-AV: E=Sophos;i="6.08,175,1712646000"; d="scan'208";a="29882783"
Received: from fmviesa008.fm.intel.com ([10.60.135.148])
 by fmvoesa102.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 20 May 2024 09:40:01 -0700
X-CSE-ConnectionGUID: k6GaAn4pTHKcI6vRUEsDTQ==
X-CSE-MsgGUID: G+lo1jxcQmG9pi5sTBfhsQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.08,175,1712646000"; d="scan'208";a="32578715"
Received: from stinkpipe.fi.intel.com (HELO stinkbox) ([10.237.72.74])
 by fmviesa008.fm.intel.com with SMTP; 20 May 2024 09:40:00 -0700
Received: by stinkbox (sSMTP sendmail emulation);
 Mon, 20 May 2024 19:39:58 +0300
Date: Mon, 20 May 2024 19:39:58 +0300
From: Ville =?iso-8859-1?Q?Syrj=E4l=E4?= <ville.syrjala@linux.intel.com>
To: "Srinivas, Vidya" <vidya.srinivas@intel.com>
Cc: intel-gfx@lists.freedesktop.org, ville.syrjala@intel.com,
 shawn.c.lee@intel.com, Srinivas@freedesktop.org
Subject: Re: [PATCH] drm/i915/dpt: Make DPT object unshrinkable
Message-ID: <Zkt83jwHX2bvpxqX@intel.com>
References: <20240520152410.1098393-1-vidya.srinivas@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=iso-8859-1
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <20240520152410.1098393-1-vidya.srinivas@intel.com>
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

On Mon, May 20, 2024 at 08:54:10PM +0530, Srinivas, Vidya wrote:
> In some scenarios, the DPT object gets shrunk but
> the actual framebuffer did not and thus its still
> there on the DPT's vm->bound_list. Then it tries to
> rewrite the PTEs via a stale CPU mapping. This causes panic.
> 
> Credits-to: Ville Syrjala <ville.syrjala@linux.intel.com>
> 	    Shawn Lee <shawn.c.lee@intel.com>
> 
> Signed-off-by: Srinivas, Vidya <vidya.srinivas@intel.com>

The format should be "first_name last_name <email>"

We also probably want
Cc: stable@vger.kernel.org
Fixes: 0dc987b699ce ("drm/i915/display: Add smem fallback allocation for dpt")

Although the patch won't actually build unless we also have 
commit 779cb5ba64ec ("drm/i915/dpt: Treat the DPT BO as a framebuffer")
but that hast the same fixes tag, so should be fine even if
someone backports things that far back.

> ---
>  drivers/gpu/drm/i915/gem/i915_gem_object.h | 3 ++-
>  1 file changed, 2 insertions(+), 1 deletion(-)
> 
> diff --git a/drivers/gpu/drm/i915/gem/i915_gem_object.h b/drivers/gpu/drm/i915/gem/i915_gem_object.h
> index 3560a062d287..e6b485fc54d4 100644
> --- a/drivers/gpu/drm/i915/gem/i915_gem_object.h
> +++ b/drivers/gpu/drm/i915/gem/i915_gem_object.h
> @@ -284,7 +284,8 @@ bool i915_gem_object_has_iomem(const struct drm_i915_gem_object *obj);
>  static inline bool
>  i915_gem_object_is_shrinkable(const struct drm_i915_gem_object *obj)
>  {

Maybe toss something like this here:
/* TODO: make DPT shrinkable when it has no bound vmas */

DPTs aren't necessarily so small that shrinking them wouldn't
have any benefits. But actually implementing that would require
some actual work, so not suitable for a quick fix.

I can add all that stuff when applying the patch, no need to
resend for this.

> -	return i915_gem_object_type_has(obj, I915_GEM_OBJECT_IS_SHRINKABLE);
> +	return i915_gem_object_type_has(obj, I915_GEM_OBJECT_IS_SHRINKABLE) &&
> +		!obj->is_dpt;
>  }
>  
>  static inline bool
> -- 
> 2.34.1

-- 
Ville Syrjälä
Intel
