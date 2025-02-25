Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 0BD6DA43D39
	for <lists+intel-gfx@lfdr.de>; Tue, 25 Feb 2025 12:17:02 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 5EF6310E626;
	Tue, 25 Feb 2025 11:17:00 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="nlAI3KyH";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.18])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 851B910E634;
 Tue, 25 Feb 2025 11:16:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1740482220; x=1772018220;
 h=from:to:cc:subject:in-reply-to:references:date:
 message-id:mime-version;
 bh=zXwZYfWHELaGmBa/j8EPv6dsQksAzrVaxJanri7XAZ0=;
 b=nlAI3KyHtHXuRYRycqKIF1x286lB115aGrUImobbizQcHFjaXTI81OEI
 NwOvHS5+wqzzFc4onh10Obs4jrtgC8wpckk0V3XX2siwUhCq7qnIOuzNH
 7AEY3XoA502wumxl/kNWD9mcPwDe2hvRWDDEBTIUrfj3h6GDanhaJpzXV
 sLDNqs/62+HmhoI/COEdtiIcy+DRmmlNhSUWoTgiuvQeXEjBHGvmNqwCZ
 ccG0Phs2e86oCQbakJLlkmAPje/DI3Ea3tXNvmZ756jfsPzItXUve/VBc
 YpGIOxiSZ/wo4iZv6qMK8lQSvL4NL3sfojIRCWnck8vcXNmuhYAUic4Pl A==;
X-CSE-ConnectionGUID: C/ymBI5lSP+MD3ubwguApQ==
X-CSE-MsgGUID: umNXIN8GSNW2k5rquCdptA==
X-IronPort-AV: E=McAfee;i="6700,10204,11355"; a="40518393"
X-IronPort-AV: E=Sophos;i="6.13,314,1732608000"; d="scan'208";a="40518393"
Received: from fmviesa005.fm.intel.com ([10.60.135.145])
 by fmvoesa112.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 25 Feb 2025 03:16:59 -0800
X-CSE-ConnectionGUID: fyFSVJyvSRWH9lepXgnEHw==
X-CSE-MsgGUID: L8Y8MDFiQDKbI8nJaroaIg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.13,314,1732608000"; d="scan'208";a="120973399"
Received: from monicael-mobl3 (HELO localhost) ([10.245.246.246])
 by fmviesa005-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 25 Feb 2025 03:16:57 -0800
From: Jani Nikula <jani.nikula@intel.com>
To: intel-gfx@lists.freedesktop.org, intel-xe@lists.freedesktop.org
Cc: Matt Roper <matthew.d.roper@intel.com>
Subject: Re: [PATCH v2 4/8] drm/i915/reset: add intel_display_reset_test()
In-Reply-To: <1e92734af3c4ab75b487e5f8ef891acee53de9bf.1740481927.git.jani.nikula@intel.com>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
References: <cover.1740481927.git.jani.nikula@intel.com>
 <1e92734af3c4ab75b487e5f8ef891acee53de9bf.1740481927.git.jani.nikula@intel.com>
Date: Tue, 25 Feb 2025 13:16:54 +0200
Message-ID: <87tt8i5l5l.fsf@intel.com>
MIME-Version: 1.0
Content-Type: text/plain
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

On Tue, 25 Feb 2025, Jani Nikula <jani.nikula@intel.com> wrote:
> Add a helper for checking if we want to test display reset regardless of
> whether it's strictly necessary. This will come in handy in follow-up
> work where we want to check this from gt reset side.
>
> Cc: Matt Roper <matthew.d.roper@intel.com>
> Signed-off-by: Jani Nikula <jani.nikula@intel.com>
> ---
>  drivers/gpu/drm/i915/display/intel_display_reset.c | 8 ++++++--
>  drivers/gpu/drm/i915/display/intel_display_reset.h | 3 +++
>  2 files changed, 9 insertions(+), 2 deletions(-)
>
> diff --git a/drivers/gpu/drm/i915/display/intel_display_reset.c b/drivers/gpu/drm/i915/display/intel_display_reset.c
> index cef9536c461c..b7962f90c21c 100644
> --- a/drivers/gpu/drm/i915/display/intel_display_reset.c
> +++ b/drivers/gpu/drm/i915/display/intel_display_reset.c
> @@ -22,6 +22,11 @@ static bool gpu_reset_clobbers_display(struct intel_display *display)
>  		intel_has_gpu_reset(to_gt(i915)));
>  }
>  
> +bool intel_display_reset_test(struct intel_display *display)
> +{
> +	return display->params.force_reset_modeset_test;
> +}
> +
>  void intel_display_reset_prepare(struct intel_display *display)
>  {
>  	struct drm_i915_private *dev_priv = to_i915(display->drm);
> @@ -33,7 +38,7 @@ void intel_display_reset_prepare(struct intel_display *display)
>  		return;
>  
>  	/* reset doesn't touch the display */
> -	if (!display->params.force_reset_modeset_test &&
> +	if (!intel_display_reset_test(display) &&
>  	    !gpu_reset_clobbers_display(display))
>  		return;
>  
> @@ -41,7 +46,6 @@ void intel_display_reset_prepare(struct intel_display *display)
>  	set_bit(I915_RESET_MODESET, &to_gt(dev_priv)->reset.flags);
>  	smp_mb__after_atomic();
>  	wake_up_bit(&to_gt(dev_priv)->reset.flags, I915_RESET_MODESET);
> -

Gah, a rebase fail.

>  	if (atomic_read(&display->restore.pending_fb_pin)) {
>  		drm_dbg_kms(display->drm,
>  			    "Modeset potentially stuck, unbreaking through wedging\n");
> diff --git a/drivers/gpu/drm/i915/display/intel_display_reset.h b/drivers/gpu/drm/i915/display/intel_display_reset.h
> index 9a1fe99bfcd4..c1dd2e8d0914 100644
> --- a/drivers/gpu/drm/i915/display/intel_display_reset.h
> +++ b/drivers/gpu/drm/i915/display/intel_display_reset.h
> @@ -6,8 +6,11 @@
>  #ifndef __INTEL_RESET_H__
>  #define __INTEL_RESET_H__
>  
> +#include <linux/types.h>
> +
>  struct intel_display;
>  
> +bool intel_display_reset_test(struct intel_display *display);
>  void intel_display_reset_prepare(struct intel_display *display);
>  void intel_display_reset_finish(struct intel_display *display);

-- 
Jani Nikula, Intel
