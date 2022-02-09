Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 52F944AEF7C
	for <lists+intel-gfx@lfdr.de>; Wed,  9 Feb 2022 11:45:50 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 7D01B10E2C9;
	Wed,  9 Feb 2022 10:45:48 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga17.intel.com (mga17.intel.com [192.55.52.151])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 070DB10E2C9
 for <intel-gfx@lists.freedesktop.org>; Wed,  9 Feb 2022 10:45:47 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1644403548; x=1675939548;
 h=date:from:to:cc:subject:message-id:references:
 mime-version:content-transfer-encoding:in-reply-to;
 bh=47T23gQ375+EbNhJvsdDDtnZV4js1XuUYbFclwKtdBk=;
 b=FPojbTc/YDKjq0hcMwMqomAB+biqQWjeAOD+BneQyNmtumz/teKyqKv1
 rJK+0Saan1BHX/s1FOKJ+Nm5SLB/f8w0QScOzKYwT/34KrJ9wdf2TmtGA
 KCxPydZyKB3HVv7PInXoY7+8zOODuEMp3RuZ6umwna5CRnG5cgwghBCim
 BcelPK3zX356yJN2XvE4DYlRY//7UZoo4VllE1hFF3YYFq5Z0Q8p46BvL
 7QnmGuiyFMlEK70bzMpLwi4uZAomaAKoUYajzd92dhLZcOn5aWjSIXrWf
 Et2Jvc9hlQne/aT7KJUTgsh3j3hR0TIs4HFm7m+8/7ik8BedrKIHKmRXE Q==;
X-IronPort-AV: E=McAfee;i="6200,9189,10252"; a="229826144"
X-IronPort-AV: E=Sophos;i="5.88,355,1635231600"; d="scan'208";a="229826144"
Received: from orsmga006.jf.intel.com ([10.7.209.51])
 by fmsmga107.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 09 Feb 2022 02:45:47 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.88,355,1635231600"; d="scan'208";a="485195351"
Received: from stinkpipe.fi.intel.com (HELO stinkbox) ([10.237.72.151])
 by orsmga006.jf.intel.com with SMTP; 09 Feb 2022 02:45:45 -0800
Received: by stinkbox (sSMTP sendmail emulation);
 Wed, 09 Feb 2022 12:45:44 +0200
Date: Wed, 9 Feb 2022 12:45:44 +0200
From: Ville =?iso-8859-1?Q?Syrj=E4l=E4?= <ville.syrjala@linux.intel.com>
To: Jani Nikula <jani.nikula@intel.com>
Message-ID: <YgObWDqQwhh6+aNz@intel.com>
References: <cover.1643896905.git.jani.nikula@intel.com>
 <63779ac0472895803113180818ecadc22c10369e.1643896905.git.jani.nikula@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=iso-8859-1
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <63779ac0472895803113180818ecadc22c10369e.1643896905.git.jani.nikula@intel.com>
X-Patchwork-Hint: comment
Subject: Re: [Intel-gfx] [PATCH 7/7] drm/i915/pm: hide struct
 drm_i915_clock_gating_funcs
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
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Thu, Feb 03, 2022 at 04:02:33PM +0200, Jani Nikula wrote:
> The struct is only needed in intel_pm.c, move it there.
> 
> Signed-off-by: Jani Nikula <jani.nikula@intel.com>

I find these single vfunc structs a bit ridiculous, but since
we have them might as well hide them.

For the series is
Reviewed-by: Ville Syrjälä <ville.syrjala@linux.intel.com>

> ---
>  drivers/gpu/drm/i915/i915_drv.h | 6 +-----
>  drivers/gpu/drm/i915/intel_pm.c | 4 ++++
>  2 files changed, 5 insertions(+), 5 deletions(-)
> 
> diff --git a/drivers/gpu/drm/i915/i915_drv.h b/drivers/gpu/drm/i915/i915_drv.h
> index 078fc50e7eb9..4ac0fcb9a4ca 100644
> --- a/drivers/gpu/drm/i915/i915_drv.h
> +++ b/drivers/gpu/drm/i915/i915_drv.h
> @@ -107,6 +107,7 @@
>  #include "i915_vma.h"
>  
>  struct dpll;
> +struct drm_i915_clock_gating_funcs;
>  struct drm_i915_gem_object;
>  struct drm_i915_private;
>  struct intel_atomic_state;
> @@ -302,11 +303,6 @@ struct sdvo_device_mapping {
>  	u8 ddc_pin;
>  };
>  
> -/* functions used internal in intel_pm.c */
> -struct drm_i915_clock_gating_funcs {
> -	void (*init_clock_gating)(struct drm_i915_private *dev_priv);
> -};
> -
>  /* functions used for watermark calcs for display. */
>  struct drm_i915_wm_disp_funcs {
>  	/* update_wm is for legacy wm management */
> diff --git a/drivers/gpu/drm/i915/intel_pm.c b/drivers/gpu/drm/i915/intel_pm.c
> index 859be750fb22..2e84d45f9bf0 100644
> --- a/drivers/gpu/drm/i915/intel_pm.c
> +++ b/drivers/gpu/drm/i915/intel_pm.c
> @@ -55,6 +55,10 @@
>  #include "vlv_sideband.h"
>  #include "../../../platform/x86/intel_ips.h"
>  
> +struct drm_i915_clock_gating_funcs {
> +	void (*init_clock_gating)(struct drm_i915_private *i915);
> +};
> +
>  /* Stores plane specific WM parameters */
>  struct skl_wm_params {
>  	bool x_tiled, y_tiled;
> -- 
> 2.30.2

-- 
Ville Syrjälä
Intel
