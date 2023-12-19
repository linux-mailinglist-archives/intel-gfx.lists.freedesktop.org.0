Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id C5AAA8185D8
	for <lists+intel-gfx@lfdr.de>; Tue, 19 Dec 2023 11:59:42 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 3FFB110E471;
	Tue, 19 Dec 2023 10:59:41 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.55.52.43])
 by gabe.freedesktop.org (Postfix) with ESMTPS id C824310E471
 for <intel-gfx@lists.freedesktop.org>; Tue, 19 Dec 2023 10:59:39 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1702983579; x=1734519579;
 h=message-id:date:mime-version:subject:to:references:from:
 in-reply-to:content-transfer-encoding;
 bh=9cSdB9Wdz8w/7ja0k+eRVZX2xalnB4aMvjlBo9TACw0=;
 b=JrO7PrfmHeEbH8piA1Hyq27eApRaKvdo5gs8gLc3bCWjm5+j9u1RTBhg
 FKn0718bJV6wIIfs8s2k2HfvLjj4VBcajWvbEkmfEz7P7T5Tx7l1NXULc
 NGeVdbiEtsCmtIbhtJqx+v58fihwRJ5kFWByZcYiX9dXK2Iye8W5X4MyF
 kSWRqWj3LZ/jCVSrsu9NGqD6SOtrXOwA76QOdvhNMXQbBAeXLH9L4SCf0
 UhmUWnvfbu9/IW28+ZORF1edaaaUwhFMUnA39ve+XDkVwSuXo/73Iurgc
 URV5tdfqvA2fV+ZtRq9fO2xJ+rtFNbU5MpkHZUX54imHlM2uR+HYl+5ry g==;
X-IronPort-AV: E=McAfee;i="6600,9927,10928"; a="481830736"
X-IronPort-AV: E=Sophos;i="6.04,288,1695711600"; d="scan'208";a="481830736"
Received: from fmsmga007.fm.intel.com ([10.253.24.52])
 by fmsmga105.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 19 Dec 2023 02:59:39 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10928"; a="779441580"
X-IronPort-AV: E=Sophos;i="6.04,288,1695711600"; d="scan'208";a="779441580"
Received: from ahajda-mobl.ger.corp.intel.com (HELO [10.213.26.238])
 ([10.213.26.238])
 by fmsmga007-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 19 Dec 2023 02:59:38 -0800
Message-ID: <8e0d2cb7-1394-4837-8b85-d260f11f558a@intel.com>
Date: Tue, 19 Dec 2023 11:59:38 +0100
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v2 12/15] drm/i915: Simplify intel_initial_plane_config()
 calling convention
Content-Language: en-US
To: Ville Syrjala <ville.syrjala@linux.intel.com>,
 intel-gfx@lists.freedesktop.org
References: <20231215105929.29568-1-ville.syrjala@linux.intel.com>
 <20231215105929.29568-13-ville.syrjala@linux.intel.com>
From: Andrzej Hajda <andrzej.hajda@intel.com>
Organization: Intel Technology Poland sp. z o.o. - ul. Slowackiego 173, 80-298
 Gdansk - KRS 101882 - NIP 957-07-52-316
In-Reply-To: <20231215105929.29568-13-ville.syrjala@linux.intel.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 8bit
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

On 15.12.2023 11:59, Ville Syrjala wrote:
> From: Ville Syrjälä <ville.syrjala@linux.intel.com>
> 
> There's no reason the caller of intel_initial_plane_config() should
> have to loop over the CRTCs. Pull the loop into the function to
> make life simpler for the caller.
> 
> Cc: Paz Zcharya <pazz@chromium.org>
> Signed-off-by: Ville Syrjälä <ville.syrjala@linux.intel.com>

Reviewed-by: Andrzej Hajda <andrzej.hajda@intel.com>

Regards
Andrzej

> ---
>   .../drm/i915/display/intel_display_driver.c   |  7 +---
>   .../drm/i915/display/intel_plane_initial.c    | 40 +++++++++++--------
>   .../drm/i915/display/intel_plane_initial.h    |  4 +-
>   3 files changed, 26 insertions(+), 25 deletions(-)
> 
> diff --git a/drivers/gpu/drm/i915/display/intel_display_driver.c b/drivers/gpu/drm/i915/display/intel_display_driver.c
> index 62f7b10484be..2fe0f4ad359c 100644
> --- a/drivers/gpu/drm/i915/display/intel_display_driver.c
> +++ b/drivers/gpu/drm/i915/display/intel_display_driver.c
> @@ -285,7 +285,6 @@ int intel_display_driver_probe_nogem(struct drm_i915_private *i915)
>   {
>   	struct drm_device *dev = &i915->drm;
>   	enum pipe pipe;
> -	struct intel_crtc *crtc;
>   	int ret;
>   
>   	if (!HAS_DISPLAY(i915))
> @@ -335,11 +334,7 @@ int intel_display_driver_probe_nogem(struct drm_i915_private *i915)
>   	intel_acpi_assign_connector_fwnodes(i915);
>   	drm_modeset_unlock_all(dev);
>   
> -	for_each_intel_crtc(dev, crtc) {
> -		if (!to_intel_crtc_state(crtc->base.state)->uapi.active)
> -			continue;
> -		intel_crtc_initial_plane_config(crtc);
> -	}
> +	intel_initial_plane_config(i915);
>   
>   	/*
>   	 * Make sure hardware watermarks really match the state we read out.
> diff --git a/drivers/gpu/drm/i915/display/intel_plane_initial.c b/drivers/gpu/drm/i915/display/intel_plane_initial.c
> index 78bff6181ceb..b7e12b60d68b 100644
> --- a/drivers/gpu/drm/i915/display/intel_plane_initial.c
> +++ b/drivers/gpu/drm/i915/display/intel_plane_initial.c
> @@ -357,25 +357,31 @@ static void plane_config_fini(struct intel_initial_plane_config *plane_config)
>   		i915_vma_put(plane_config->vma);
>   }
>   
> -void intel_crtc_initial_plane_config(struct intel_crtc *crtc)
> +void intel_initial_plane_config(struct drm_i915_private *i915)
>   {
> -	struct drm_i915_private *dev_priv = to_i915(crtc->base.dev);
> -	struct intel_initial_plane_config plane_config = {};
> +	struct intel_crtc *crtc;
>   
> -	/*
> -	 * Note that reserving the BIOS fb up front prevents us
> -	 * from stuffing other stolen allocations like the ring
> -	 * on top.  This prevents some ugliness at boot time, and
> -	 * can even allow for smooth boot transitions if the BIOS
> -	 * fb is large enough for the active pipe configuration.
> -	 */
> -	dev_priv->display.funcs.display->get_initial_plane_config(crtc, &plane_config);
> +	for_each_intel_crtc(&i915->drm, crtc) {
> +		struct intel_initial_plane_config plane_config = {};
>   
> -	/*
> -	 * If the fb is shared between multiple heads, we'll
> -	 * just get the first one.
> -	 */
> -	intel_find_initial_plane_obj(crtc, &plane_config);
> +		if (!to_intel_crtc_state(crtc->base.state)->uapi.active)
> +			continue;
>   
> -	plane_config_fini(&plane_config);
> +		/*
> +		 * Note that reserving the BIOS fb up front prevents us
> +		 * from stuffing other stolen allocations like the ring
> +		 * on top.  This prevents some ugliness at boot time, and
> +		 * can even allow for smooth boot transitions if the BIOS
> +		 * fb is large enough for the active pipe configuration.
> +		 */
> +		i915->display.funcs.display->get_initial_plane_config(crtc, &plane_config);
> +
> +		/*
> +		 * If the fb is shared between multiple heads, we'll
> +		 * just get the first one.
> +		 */
> +		intel_find_initial_plane_obj(crtc, &plane_config);
> +
> +		plane_config_fini(&plane_config);
> +	}
>   }
> diff --git a/drivers/gpu/drm/i915/display/intel_plane_initial.h b/drivers/gpu/drm/i915/display/intel_plane_initial.h
> index c7e35ab3182b..64ab95239cd4 100644
> --- a/drivers/gpu/drm/i915/display/intel_plane_initial.h
> +++ b/drivers/gpu/drm/i915/display/intel_plane_initial.h
> @@ -6,8 +6,8 @@
>   #ifndef __INTEL_PLANE_INITIAL_H__
>   #define __INTEL_PLANE_INITIAL_H__
>   
> -struct intel_crtc;
> +struct drm_i915_private;
>   
> -void intel_crtc_initial_plane_config(struct intel_crtc *crtc);
> +void intel_initial_plane_config(struct drm_i915_private *i915);
>   
>   #endif

