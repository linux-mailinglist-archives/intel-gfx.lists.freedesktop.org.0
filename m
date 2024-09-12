Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 6702597662C
	for <lists+intel-gfx@lfdr.de>; Thu, 12 Sep 2024 11:57:51 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 1ABFB10EB39;
	Thu, 12 Sep 2024 09:57:49 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="XbFkKJNO";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.18])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 9F3D010E210
 for <intel-gfx@lists.freedesktop.org>; Thu, 12 Sep 2024 09:57:48 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1726135069; x=1757671069;
 h=from:to:cc:subject:in-reply-to:references:date:
 message-id:mime-version;
 bh=DrQMgar6qcLNT75XYELCaoprYLBXi46r2n+wRiAlMVc=;
 b=XbFkKJNO6clNTkLciPCAVBsla7sbcqvyCKwOk4U4Y1irNEuC+3kLsTQx
 Nkq1vmR5DmNs68ZcBOogZDt2eMFwggb07evLU6a29Vf9Nj5YihTVAvfi+
 US/LymiBuFgf8vGYIYgCT55vZD5P9CVUdlw7j5Z2hrHSlpidzYCwAuI+k
 XPUN7Yte/FIaNqWCb4piAzF4BqGw2+CJIOtHOLLa8x8hNBLXAye2vbyeE
 hD7vhjy2ma5dI4f3nN8n718/i1p/NfW45P6LkNwnfBfBSxtLIPGvVdut9
 UZZkNoj8/kTUrYPrEwCAvJcuz6GbXpTp30sEjIdYWa86KNlGX01SnMX2T w==;
X-CSE-ConnectionGUID: GRfoBXmfRaWVN1KvJ3xVig==
X-CSE-MsgGUID: fSroGZgiQ6KMZ7lTxSYNFA==
X-IronPort-AV: E=McAfee;i="6700,10204,11192"; a="24462114"
X-IronPort-AV: E=Sophos;i="6.10,222,1719903600"; d="scan'208";a="24462114"
Received: from fmviesa001.fm.intel.com ([10.60.135.141])
 by fmvoesa112.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 12 Sep 2024 02:57:48 -0700
X-CSE-ConnectionGUID: 6xrQEqc0Q1aHcuIZ2cvMbw==
X-CSE-MsgGUID: hEhi3TElRXmJWbKSDKGzSg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.10,222,1719903600"; d="scan'208";a="98479776"
Received: from carterle-desk.ger.corp.intel.com (HELO localhost)
 ([10.245.246.253])
 by smtpauth.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 12 Sep 2024 02:57:46 -0700
From: Jani Nikula <jani.nikula@linux.intel.com>
To: Arun R Murthy <arun.r.murthy@intel.com>, intel-gfx@lists.freedesktop.org
Cc: Arun R Murthy <arun.r.murthy@intel.com>
Subject: Re: [PATCHv2 3/5] Add crtc properties for global histogram
In-Reply-To: <20240821102349.3961986-4-arun.r.murthy@intel.com>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
References: <20240821102349.3961986-1-arun.r.murthy@intel.com>
 <20240821102349.3961986-4-arun.r.murthy@intel.com>
Date: Thu, 12 Sep 2024 12:57:43 +0300
Message-ID: <87plp9gpns.fsf@intel.com>
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

On Wed, 21 Aug 2024, Arun R Murthy <arun.r.murthy@intel.com> wrote:
> CRTC properties have been added for enable/disable histogram, reading
> the histogram data and writing the IET data.
> "HISTOGRAM_EN" is the crtc property to enable/disable the global
> histogram and takes a value 0/1 accordingly.
> "Histogram" is a crtc property to read the binary histogram data.
> "Global IET" is a crtc property to write the IET binary LUT data.
>
> v2: Read the histogram blob data before sending uevent (Jani)
>
> Signed-off-by: Arun R Murthy <arun.r.murthy@intel.com>
> ---
>  drivers/gpu/drm/i915/display/intel_atomic.c   |   5 +
>  drivers/gpu/drm/i915/display/intel_crtc.c     | 202 +++++++++++++++++-
>  drivers/gpu/drm/i915/display/intel_crtc.h     |   5 +
>  drivers/gpu/drm/i915/display/intel_display.c  |  13 ++
>  .../drm/i915/display/intel_display_types.h    |  17 ++
>  .../gpu/drm/i915/display/intel_histogram.c    |   7 +
>  6 files changed, 248 insertions(+), 1 deletion(-)
>
> diff --git a/drivers/gpu/drm/i915/display/intel_atomic.c b/drivers/gpu/drm/i915/display/intel_atomic.c
> index 76aa10b6f647..693a22089937 100644
> --- a/drivers/gpu/drm/i915/display/intel_atomic.c
> +++ b/drivers/gpu/drm/i915/display/intel_atomic.c
> @@ -246,6 +246,8 @@ intel_crtc_duplicate_state(struct drm_crtc *crtc)
>  
>  	__drm_atomic_helper_crtc_duplicate_state(crtc, &crtc_state->uapi);
>  
> +	if (crtc_state->global_iet)
> +		drm_property_blob_get(crtc_state->global_iet);
>  	/* copy color blobs */
>  	if (crtc_state->hw.degamma_lut)
>  		drm_property_blob_get(crtc_state->hw.degamma_lut);
> @@ -277,6 +279,7 @@ intel_crtc_duplicate_state(struct drm_crtc *crtc)
>  	crtc_state->fb_bits = 0;
>  	crtc_state->update_planes = 0;
>  	crtc_state->dsb = NULL;
> +	crtc_state->histogram_en_changed = false;
>  
>  	return &crtc_state->uapi;
>  }
> @@ -312,6 +315,8 @@ intel_crtc_destroy_state(struct drm_crtc *crtc,
>  
>  	drm_WARN_ON(crtc->dev, crtc_state->dsb);
>  
> +	if (crtc_state->global_iet)
> +		drm_property_blob_put(crtc_state->global_iet);
>  	__drm_atomic_helper_crtc_destroy_state(&crtc_state->uapi);
>  	intel_crtc_free_hw_state(crtc_state);
>  	if (crtc_state->dp_tunnel_ref.tunnel)
> diff --git a/drivers/gpu/drm/i915/display/intel_crtc.c b/drivers/gpu/drm/i915/display/intel_crtc.c
> index 1b578cad2813..24f160359422 100644
> --- a/drivers/gpu/drm/i915/display/intel_crtc.c
> +++ b/drivers/gpu/drm/i915/display/intel_crtc.c
> @@ -10,6 +10,7 @@
>  #include <drm/drm_fourcc.h>
>  #include <drm/drm_plane.h>
>  #include <drm/drm_vblank_work.h>
> +#include <drm/drm_atomic_uapi.h>
>  
>  #include "i915_vgpu.h"
>  #include "i9xx_plane.h"
> @@ -26,6 +27,7 @@
>  #include "intel_drrs.h"
>  #include "intel_dsi.h"
>  #include "intel_fifo_underrun.h"
> +#include "intel_histogram.h"
>  #include "intel_pipe_crc.h"
>  #include "intel_psr.h"
>  #include "intel_sprite.h"
> @@ -201,6 +203,7 @@ static struct intel_crtc *intel_crtc_alloc(void)
>  static void intel_crtc_free(struct intel_crtc *crtc)
>  {
>  	intel_crtc_destroy_state(&crtc->base, crtc->base.state);
> +	intel_histogram_deinit(crtc);
>  	kfree(crtc);
>  }
>  
> @@ -220,6 +223,100 @@ static int intel_crtc_late_register(struct drm_crtc *crtc)
>  	return 0;
>  }
>  
> +static int intel_crtc_get_property(struct drm_crtc *crtc,
> +				   const struct drm_crtc_state *state,
> +				   struct drm_property *property,
> +				   uint64_t *val)
> +{
> +	struct drm_i915_private *i915 = to_i915(crtc->dev);
> +	const struct intel_crtc_state *intel_crtc_state =
> +		to_intel_crtc_state(state);
> +	struct intel_crtc *intel_crtc = to_intel_crtc(crtc);
> +
> +	if (property == intel_crtc->histogram_en_property) {
> +		*val = intel_crtc_state->histogram_en;
> +	} else if (property == intel_crtc->global_iet_property) {
> +		*val = (intel_crtc_state->global_iet) ?
> +			intel_crtc_state->global_iet->base.id : 0;
> +	} else if (property == intel_crtc->histogram_property) {
> +		*val = (intel_crtc_state->histogram) ?
> +			intel_crtc_state->histogram->base.id : 0;
> +	} else {
> +		drm_err(&i915->drm,
> +			"Unknown property [PROP:%d:%s]\n",
> +			property->base.id, property->name);
> +		return -EINVAL;
> +	}
> +
> +	return 0;
> +}
> +
> +static int
> +intel_atomic_replace_property_blob_from_id(struct drm_device *dev,
> +					   struct drm_property_blob **blob,
> +					   u64 blob_id,
> +					   ssize_t expected_size,
> +					   ssize_t expected_elem_size,
> +					   bool *replaced)
> +{
> +	struct drm_property_blob *new_blob = NULL;
> +
> +	if (blob_id != 0) {
> +		new_blob = drm_property_lookup_blob(dev, blob_id);
> +		if (!new_blob)
> +			return -EINVAL;
> +
> +		if (expected_size > 0 &&
> +		    new_blob->length != expected_size) {
> +			drm_property_blob_put(new_blob);
> +			return -EINVAL;
> +		}
> +		if (expected_elem_size > 0 &&
> +		    new_blob->length % expected_elem_size != 0) {
> +			drm_property_blob_put(new_blob);
> +			return -EINVAL;
> +		}
> +	}
> +
> +	*replaced |= drm_property_replace_blob(blob, new_blob);
> +	drm_property_blob_put(new_blob);
> +
> +	return 0;
> +}
> +
> +static int intel_crtc_set_property(struct drm_crtc *crtc,
> +				   struct drm_crtc_state *state,
> +				   struct drm_property *property,
> +				   u64 val)
> +{
> +	struct drm_i915_private *i915 = to_i915(crtc->dev);
> +	struct intel_crtc_state *intel_crtc_state =
> +		to_intel_crtc_state(state);
> +	struct intel_crtc *intel_crtc = to_intel_crtc(crtc);
> +	bool replaced = false;
> +
> +	if (property == intel_crtc->histogram_en_property) {
> +		intel_crtc_state->histogram_en = val;
> +		intel_crtc_state->histogram_en_changed = true;
> +		return 0;
> +	}
> +
> +	if (property == intel_crtc->global_iet_property) {
> +		intel_atomic_replace_property_blob_from_id(crtc->dev,
> +							   &intel_crtc_state->global_iet,
> +							   val,
> +							   sizeof(uint32_t) * HISTOGRAM_IET_LENGTH,
> +							   -1, &replaced);
> +		if (replaced)
> +			intel_crtc_state->global_iet_changed = true;
> +		return 0;
> +	}
> +
> +	drm_dbg_atomic(&i915->drm, "Unknown property [PROP:%d:%s]\n",
> +		       property->base.id, property->name);
> +	return -EINVAL;
> +}
> +
>  #define INTEL_CRTC_FUNCS \
>  	.set_config = drm_atomic_helper_set_config, \
>  	.destroy = intel_crtc_destroy, \
> @@ -229,7 +326,9 @@ static int intel_crtc_late_register(struct drm_crtc *crtc)
>  	.set_crc_source = intel_crtc_set_crc_source, \
>  	.verify_crc_source = intel_crtc_verify_crc_source, \
>  	.get_crc_sources = intel_crtc_get_crc_sources, \
> -	.late_register = intel_crtc_late_register
> +	.late_register = intel_crtc_late_register, \
> +	.atomic_set_property = intel_crtc_set_property, \
> +	.atomic_get_property = intel_crtc_get_property
>  
>  static const struct drm_crtc_funcs bdw_crtc_funcs = {
>  	INTEL_CRTC_FUNCS,
> @@ -374,6 +473,10 @@ int intel_crtc_init(struct drm_i915_private *dev_priv, enum pipe pipe)
>  	intel_color_crtc_init(crtc);
>  	intel_drrs_crtc_init(crtc);
>  	intel_crtc_crc_init(crtc);
> +	intel_histogram_init(crtc);
> +
> +	/* Initialize crtc properties */
> +	intel_crtc_add_property(crtc);
>  
>  	cpu_latency_qos_add_request(&crtc->vblank_pm_qos, PM_QOS_DEFAULT_VALUE);
>  
> @@ -690,3 +793,100 @@ void intel_pipe_update_end(struct intel_atomic_state *state,
>  out:
>  	intel_psr_unlock(new_crtc_state);
>  }
> +
> +static const struct drm_prop_enum_list histogram_en_names[] = {

en_names?

> +	{ INTEL_HISTOGRAM_DISABLE, "Disable" },
> +	{ INTEL_HISTOGRAM_ENABLE, "Enable" },
> +};
> +
> +/**
> + * intel_attach_histogram_en_property() - add property to enable/disable histogram
> + * @intel_crtc: pointer to the struct intel_crtc on which the global histogram is to
> + *		be enabled/disabled
> + *
> + * "HISTOGRAM_EN" is the crtc propety to enable/disable global histogram

There's zero gain in abbreviating enable to _EN.

> + */
> +void intel_attach_histogram_en_property(struct intel_crtc *intel_crtc)
> +{
> +	struct drm_crtc *crtc = &intel_crtc->base;
> +	struct drm_device *dev = crtc->dev;
> +	struct drm_property *prop;
> +
> +	prop = intel_crtc->histogram_en_property;
> +	if (!prop) {
> +		prop = drm_property_create_enum(dev, 0,
> +						"HISTOGRAM_EN",
> +						histogram_en_names,
> +						ARRAY_SIZE(histogram_en_names));
> +		if (!prop)
> +			return;
> +
> +		intel_crtc->histogram_en_property = prop;
> +	}
> +
> +	drm_object_attach_property(&crtc->base, prop, 0);
> +}
> +
> +/**
> + * intel_attach_global_iet_property() - add property to write Image Enhancement data
> + * @intel_crtc: pointer to the struct intel_crtc on which global histogram is enabled
> + *
> + * "Global IET" is the crtc property to write the Image Enhancement LUT binary data
> + */
> +void intel_attach_global_iet_property(struct intel_crtc *intel_crtc)
> +{
> +	struct drm_crtc *crtc = &intel_crtc->base;
> +	struct drm_device *dev = crtc->dev;
> +	struct drm_property *prop;
> +
> +	prop = intel_crtc->global_iet_property;
> +	if (!prop) {
> +		prop = drm_property_create(dev, DRM_MODE_PROP_BLOB | DRM_MODE_PROP_ATOMIC,
> +					   "Global IET", 0);
> +		if (!prop)
> +			return;
> +
> +		intel_crtc->global_iet_property = prop;
> +	}
> +
> +	drm_object_attach_property(&crtc->base, prop, 0);
> +}
> +
> +/**
> + * intel_attach_histogram_property() - crtc property to read the histogram.
> + * @intel_crtc: pointer to the struct intel_crtc on which the global histogram
> + *		was enabled.
> + * "Global Histogram" is the crtc property to read the binary histogram data.
> + */
> +void intel_attach_histogram_property(struct intel_crtc *intel_crtc)
> +{
> +	struct drm_crtc *crtc = &intel_crtc->base;
> +	struct drm_device *dev = crtc->dev;
> +	struct drm_property *prop;
> +	struct drm_property_blob *blob;
> +
> +	prop = intel_crtc->histogram_property;
> +	if (!prop) {
> +		prop = drm_property_create(dev, DRM_MODE_PROP_BLOB |
> +					   DRM_MODE_PROP_ATOMIC |
> +					   DRM_MODE_PROP_IMMUTABLE,
> +					   "Global Histogram", 0);
> +		if (!prop)
> +			return;
> +
> +		intel_crtc->histogram_property = prop;
> +	}
> +	blob = drm_property_create_blob(dev, sizeof(uint32_t) * HISTOGRAM_BIN_COUNT, NULL);
> +	intel_crtc->config->histogram = blob;
> +
> +	drm_object_attach_property(&crtc->base, prop, blob->base.id);
> +}
> +
> +int intel_crtc_add_property(struct intel_crtc *intel_crtc)
> +{
> +	intel_attach_histogram_en_property(intel_crtc);
> +	intel_attach_histogram_property(intel_crtc);
> +	intel_attach_global_iet_property(intel_crtc);
> +
> +	return 0;
> +}
> diff --git a/drivers/gpu/drm/i915/display/intel_crtc.h b/drivers/gpu/drm/i915/display/intel_crtc.h
> index b615b7ab5ccd..56c6b7c6037e 100644
> --- a/drivers/gpu/drm/i915/display/intel_crtc.h
> +++ b/drivers/gpu/drm/i915/display/intel_crtc.h
> @@ -7,6 +7,7 @@
>  #define _INTEL_CRTC_H_
>  
>  #include <linux/types.h>
> +#include <drm/drm_crtc.h>
>  
>  enum i9xx_plane_id;
>  enum pipe;
> @@ -49,4 +50,8 @@ void intel_wait_for_vblank_if_active(struct drm_i915_private *i915,
>  				     enum pipe pipe);
>  void intel_crtc_wait_for_next_vblank(struct intel_crtc *crtc);
>  
> +int intel_crtc_add_property(struct intel_crtc *intel_crtc);
> +void intel_attach_histogram_en_property(struct intel_crtc *intel_crtc);
> +void intel_attach_global_iet_property(struct intel_crtc *intel_crtc);
> +void intel_attach_histogram_property(struct intel_crtc *intel_crtc);
>  #endif
> diff --git a/drivers/gpu/drm/i915/display/intel_display.c b/drivers/gpu/drm/i915/display/intel_display.c
> index 9f2a4a854548..20caa952d687 100644
> --- a/drivers/gpu/drm/i915/display/intel_display.c
> +++ b/drivers/gpu/drm/i915/display/intel_display.c
> @@ -94,6 +94,7 @@
>  #include "intel_fifo_underrun.h"
>  #include "intel_frontbuffer.h"
>  #include "intel_hdmi.h"
> +#include "intel_histogram.h"
>  #include "intel_hotplug.h"
>  #include "intel_link_bw.h"
>  #include "intel_lvds.h"
> @@ -4335,6 +4336,10 @@ static int intel_crtc_atomic_check(struct intel_atomic_state *state,
>  	if (ret)
>  		return ret;
>  
> +	/* HISTOGRAM changed */
> +	if (crtc_state->histogram_en_changed)
> +		return intel_histogram_atomic_check(crtc);
> +
>  	return 0;
>  }
>  
> @@ -7512,6 +7517,14 @@ static void intel_atomic_commit_tail(struct intel_atomic_state *state)
>  		 * FIXME get rid of this funny new->old swapping
>  		 */
>  		old_crtc_state->dsb = fetch_and_zero(&new_crtc_state->dsb);
> +
> +		/* Re-Visit: HISTOGRAM related stuff */
> +		if (new_crtc_state->histogram_en_changed)
> +			intel_histogram_update(crtc,
> +					       new_crtc_state->histogram_en);
> +		if (new_crtc_state->global_iet_changed)
> +			intel_histogram_set_iet_lut(crtc,
> +						    (u32 *)new_crtc_state->global_iet->data);
>  	}
>  
>  	/* Underruns don't always raise interrupts, so check manually */
> diff --git a/drivers/gpu/drm/i915/display/intel_display_types.h b/drivers/gpu/drm/i915/display/intel_display_types.h
> index 79d34d6d537d..ddf1cb0ab26d 100644
> --- a/drivers/gpu/drm/i915/display/intel_display_types.h
> +++ b/drivers/gpu/drm/i915/display/intel_display_types.h
> @@ -99,6 +99,12 @@ enum intel_broadcast_rgb {
>  	INTEL_BROADCAST_RGB_LIMITED,
>  };
>  
> +/* HISTOGRAM property */
> +enum intel_histogram_en_prop {
> +	INTEL_HISTOGRAM_PROP_DISABLE,
> +	INTEL_HISTOGRAM_PROP_ENABLE,
> +};
> +

This is not a property. This is a regular enum. And it does not belong
in this file.

>  struct intel_fb_view {
>  	/*
>  	 * The remap information used in the remapped and rotated views to
> @@ -1431,6 +1437,13 @@ struct intel_crtc_state {
>  
>  	/* LOBF flag */
>  	bool has_lobf;
> +
> +	/* HISTOGRAM data */

Why all caps?

> +	int histogram_en;
> +	struct drm_property_blob *global_iet;
> +	struct drm_property_blob *histogram;
> +	bool global_iet_changed;
> +	bool histogram_en_changed;

Please add a substruct for all the histogram stuff to keep it clean.

>  };
>  
>  enum intel_pipe_crc_source {
> @@ -1538,6 +1551,10 @@ struct intel_crtc {
>  	struct pm_qos_request vblank_pm_qos;
>  
>  	struct intel_histogram *histogram;
> +	/* HISTOGRAM properties */
> +	struct drm_property *histogram_en_property;
> +	struct drm_property *global_iet_property;
> +	struct drm_property *histogram_property;
>  
>  #ifdef CONFIG_DEBUG_FS
>  	struct intel_pipe_crc pipe_crc;
> diff --git a/drivers/gpu/drm/i915/display/intel_histogram.c b/drivers/gpu/drm/i915/display/intel_histogram.c
> index 83ba826a7a89..ad4f75607ccb 100644
> --- a/drivers/gpu/drm/i915/display/intel_histogram.c
> +++ b/drivers/gpu/drm/i915/display/intel_histogram.c
> @@ -66,6 +66,12 @@ static void intel_histogram_handle_int_work(struct work_struct *work)
>  			       i, histogram->bindata[i]);
>  	}
>  
> +	drm_property_replace_global_blob(&i915->drm,
> +			&intel_crtc->config->histogram,
> +			sizeof(histogram->bindata),
> +			histogram->bindata, &intel_crtc->base.base,
> +			intel_crtc->histogram_property);
> +
>  	/* Notify user for Histogram rediness */
>  	if (kobject_uevent_env(&i915->drm.primary->kdev->kobj, KOBJ_CHANGE,
>  			       histogram_event))
> @@ -193,6 +199,7 @@ static void intel_histogram_disable(struct intel_crtc *intel_crtc)
>  
>  	cancel_delayed_work(&histogram->handle_histogram_int_work);
>  	histogram->enable = false;
> +	intel_crtc->config->histogram_en = false;
>  }
>  
>  int intel_histogram_update(struct intel_crtc *intel_crtc, bool enable)

-- 
Jani Nikula, Intel
