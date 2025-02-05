Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 0148CA28780
	for <lists+intel-gfx@lfdr.de>; Wed,  5 Feb 2025 11:08:31 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 97E5710E053;
	Wed,  5 Feb 2025 10:08:29 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="fco8N2rP";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.12])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 388B310E053;
 Wed,  5 Feb 2025 10:08:29 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1738750109; x=1770286109;
 h=from:to:cc:subject:in-reply-to:references:date:
 message-id:mime-version;
 bh=OPoogcRfKQrFNs/fOSf/S1Q/7IWcKDEOZRcmdoXrAW0=;
 b=fco8N2rPWLcvaO3PD5F+8KiqUXbP+QCpJ5GQ7EvUDqySrr/mxA4gf6gz
 s3bh/A7x1O5BpOxWT/ogTUXyBbdBuFhFyiyX4AQ3FB9cMz8758XEeQMlX
 lXG/CArd+9cNZqIYiX74gflq3m5ccVHV60zf21X0wIDtq3NYJxsW/gQqY
 meFqSotB92E+LsYiHa79hsUjEPVuV2b2vJXpm60um+OITfHEJP/pFcSct
 S2dTRPHehxa4SWEhzTEDZtTV3gO4JJ2Dz8it2Hd45DmEht9nwLbLnPyP0
 +kyHT+9Gym7CKmp9+mcIkR+lnivr/8rJjJzudFoor6usWtshxMtSMDhW8 Q==;
X-CSE-ConnectionGUID: xtcL9Su0RSiwb3RYD+6JZQ==
X-CSE-MsgGUID: qI3BJNAXTuyZUVfhNwMcsQ==
X-IronPort-AV: E=McAfee;i="6700,10204,11336"; a="50699448"
X-IronPort-AV: E=Sophos;i="6.13,261,1732608000"; d="scan'208";a="50699448"
Received: from orviesa010.jf.intel.com ([10.64.159.150])
 by orvoesa104.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 05 Feb 2025 02:08:29 -0800
X-CSE-ConnectionGUID: 0sqSBSsXTPGXwiO0T/uqxg==
X-CSE-MsgGUID: Sg3o4+Q/QwGQppX3LyZXIw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.12,224,1728975600"; d="scan'208";a="110707693"
Received: from jkrzyszt-mobl2.ger.corp.intel.com (HELO localhost)
 ([10.245.246.217])
 by orviesa010-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 05 Feb 2025 02:08:26 -0800
From: Jani Nikula <jani.nikula@linux.intel.com>
To: "Kandpal, Suraj" <suraj.kandpal@intel.com>, "Govindapillai, Vinod"
 <vinod.govindapillai@intel.com>, "intel-gfx@lists.freedesktop.org"
 <intel-gfx@lists.freedesktop.org>, "intel-xe@lists.freedesktop.org"
 <intel-xe@lists.freedesktop.org>
Cc: "Govindapillai, Vinod" <vinod.govindapillai@intel.com>, "Syrjala, Ville"
 <ville.syrjala@intel.com>, "Reddy Guddati, Santhosh"
 <santhosh.reddy.guddati@intel.com>, "Saarinen, Jani"
 <jani.saarinen@intel.com>
Subject: RE: [PATCH v6 4/7] drm/i915/xe3: update and store the plane damage
 clips
In-Reply-To: <SN7PR11MB67508AADD6C54A1B6CD7DB81E3F72@SN7PR11MB6750.namprd11.prod.outlook.com>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
References: <20250130210027.591927-1-vinod.govindapillai@intel.com>
 <20250130210027.591927-5-vinod.govindapillai@intel.com>
 <SN7PR11MB67508AADD6C54A1B6CD7DB81E3F72@SN7PR11MB6750.namprd11.prod.outlook.com>
Date: Wed, 05 Feb 2025 12:08:22 +0200
Message-ID: <87wme44sbt.fsf@intel.com>
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

On Wed, 05 Feb 2025, "Kandpal, Suraj" <suraj.kandpal@intel.com> wrote:
>> -----Original Message-----
>> From: Intel-xe <intel-xe-bounces@lists.freedesktop.org> On Behalf Of Vinod
>> Govindapillai
>> Sent: Friday, January 31, 2025 2:30 AM
>> To: intel-gfx@lists.freedesktop.org; intel-xe@lists.freedesktop.org
>> Cc: Govindapillai, Vinod <vinod.govindapillai@intel.com>; Syrjala, Ville
>> <ville.syrjala@intel.com>; Reddy Guddati, Santhosh
>> <santhosh.reddy.guddati@intel.com>; Saarinen, Jani
>> <jani.saarinen@intel.com>
>> Subject: [PATCH v6 4/7] drm/i915/xe3: update and store the plane damage
>> clips
>> 
>> Userspace can pass damage area clips per plane to track changes in a plane
>> and some display components can utilze these damage clips for efficiently
>> handling use cases like FBC, PSR etc. A merged damage area is generated and
>> its coordinates are updated relative to viewport and HW and stored in the
>> plane_state. This merged damage areas will be used for FBC dirty rect support
>> in xe3 in the follow-up patch.
>> 
>> Big thanks to Ville Syrjala for his contribuitions in shaping up of this series.
>> 
>> v1: - Move damage_merged helper to cover bigjoiner case and use
>>     the correct plane state for damage find helper (Ville)
>>     - Damage handling code under HAS_FBC_DIRTY_RECT() so the
>>     the related part will be executed only for xe3+
>>     - Changed dev_priv to i915 in one of the functions
>> 
>> Signed-off-by: Vinod Govindapillai <vinod.govindapillai@intel.com>
>> ---
>>  .../gpu/drm/i915/display/intel_atomic_plane.c | 28 ++++++++++++
>>  .../drm/i915/display/intel_display_types.h    |  2 +
>>  .../drm/i915/display/skl_universal_plane.c    | 45 +++++++++++++++++--
>>  3 files changed, 71 insertions(+), 4 deletions(-)
>> 
>> diff --git a/drivers/gpu/drm/i915/display/intel_atomic_plane.c
>> b/drivers/gpu/drm/i915/display/intel_atomic_plane.c
>> index c558143f4f82..f55f7044dc67 100644
>> --- a/drivers/gpu/drm/i915/display/intel_atomic_plane.c
>> +++ b/drivers/gpu/drm/i915/display/intel_atomic_plane.c
>> @@ -36,6 +36,7 @@
>> 
>>  #include <drm/drm_atomic_helper.h>
>>  #include <drm/drm_blend.h>
>> +#include <drm/drm_damage_helper.h>
>>  #include <drm/drm_fourcc.h>
>>  #include <drm/drm_gem.h>
>>  #include <drm/drm_gem_atomic_helper.h>
>> @@ -322,6 +323,25 @@ static void intel_plane_clear_hw_state(struct
>> intel_plane_state *plane_state)
>>  	memset(&plane_state->hw, 0, sizeof(plane_state->hw));  }
>> 
>> +static void
>> +intel_plane_check_plane_damage(struct intel_plane_state
>> *new_plane_state,
>> +			       const struct intel_plane_state
>> *old_primary_plane_state,
>> +			       const struct intel_plane_state
>> *new_primary_plane_state) {
>> +	struct intel_display *display = to_intel_display(new_plane_state);
>> +	struct drm_rect *damage_merged = &new_plane_state-
>> >damage_merged;
>> +
>> +	if (!HAS_FBC_DIRTY_RECT(display))
>> +		return;
>> +
>> +	if (!drm_atomic_helper_damage_merged(&old_primary_plane_state-
>> >uapi,
>> +					     &new_primary_plane_state->uapi,
>> +					     damage_merged))
>> +		/* Incase helper fails, mark whole plane region as damage */
>> +		*damage_merged =
>> +			drm_plane_state_src(&new_primary_plane_state-
>> >uapi);
>> +}
>> +
>>  void intel_plane_copy_uapi_to_hw_state(struct intel_plane_state
>> *plane_state,
>>  				       const struct intel_plane_state
>> *from_plane_state,
>>  				       struct intel_crtc *crtc)
>> @@ -691,6 +711,7 @@ int intel_plane_atomic_check(struct
>> intel_atomic_state *state,
>>  	const struct intel_plane_state *old_plane_state =
>>  		intel_atomic_get_old_plane_state(state, plane);
>>  	const struct intel_plane_state *new_primary_crtc_plane_state;
>> +	const struct intel_plane_state *old_primary_crtc_plane_state;
>>  	struct intel_crtc *crtc = intel_crtc_for_pipe(display, plane->pipe);
>>  	const struct intel_crtc_state *old_crtc_state =
>>  		intel_atomic_get_old_crtc_state(state, crtc); @@ -705,10
>> +726,17 @@ int intel_plane_atomic_check(struct intel_atomic_state *state,
>> 
>>  		new_primary_crtc_plane_state =
>>  			intel_atomic_get_new_plane_state(state,
>> primary_crtc_plane);
>> +		old_primary_crtc_plane_state =
>> +			intel_atomic_get_old_plane_state(state,
>> primary_crtc_plane);
>>  	} else {
>>  		new_primary_crtc_plane_state = new_plane_state;
>> +		old_primary_crtc_plane_state = old_plane_state;
>>  	}
>> 
>> +	intel_plane_check_plane_damage(new_plane_state,
>> +				       old_primary_crtc_plane_state,
>> +				       new_primary_crtc_plane_state);
>> +
>>  	intel_plane_copy_uapi_to_hw_state(new_plane_state,
>>  					  new_primary_crtc_plane_state,
>>  					  crtc);
>> diff --git a/drivers/gpu/drm/i915/display/intel_display_types.h
>> b/drivers/gpu/drm/i915/display/intel_display_types.h
>> index cb51b7936f93..8d53bcca9614 100644
>> --- a/drivers/gpu/drm/i915/display/intel_display_types.h
>> +++ b/drivers/gpu/drm/i915/display/intel_display_types.h
>> @@ -695,6 +695,8 @@ struct intel_plane_state {
>>  	u64 ccval;
>> 
>>  	const char *no_fbc_reason;
>> +
>> +	struct drm_rect damage_merged;
>>  };
>> 
>>  struct intel_initial_plane_config {
>> diff --git a/drivers/gpu/drm/i915/display/skl_universal_plane.c
>> b/drivers/gpu/drm/i915/display/skl_universal_plane.c
>> index 301ad3a22c4c..b90a7d52c071 100644
>> --- a/drivers/gpu/drm/i915/display/skl_universal_plane.c
>> +++ b/drivers/gpu/drm/i915/display/skl_universal_plane.c
>> @@ -2249,11 +2249,42 @@ static void check_protection(struct
>> intel_plane_state *plane_state)
>>  		!plane_state->decrypt;
>>  }
>> 
>> +static void
>> +skl_plane_check_damage_with_viewport(struct intel_plane_state
>> +*plane_state) {
>> +	struct drm_rect *damage_merged = &plane_state->damage_merged;
>> +	const struct drm_framebuffer *fb = plane_state->hw.fb;
>> +	unsigned int rotation = plane_state->hw.rotation;
>> +	struct drm_rect *src = &plane_state->uapi.src;
>> +
>> +	if (drm_rotation_90_or_270(rotation)) {
>> +		drm_rect_rotate(damage_merged, fb->width, fb->height,
>> +				DRM_MODE_ROTATE_270);
>> +		drm_rect_translate(damage_merged, -(src->y1 >> 16),
>> +				   -(src->x1 >> 16));
>> +	} else {
>> +		drm_rect_translate(damage_merged, -(src->x1 >> 16),
>> +				   -(src->y1 >> 16));
>> +	}
>> +}
>> +
>> +static void
>> +skl_plane_check_damage_with_plane_surf(struct intel_plane_state
>> +*plane_state) {
>> +	struct drm_rect *damage_merged = &plane_state->damage_merged;
>> +	struct drm_rect src;
>> +
>> +	drm_rect_fp_to_int(&src, &plane_state->uapi.src);
>> +	drm_rect_translate(damage_merged, src.x1, src.y1);
>> +	drm_rect_intersect(damage_merged, &src); }
>> +
>>  static int skl_plane_check(struct intel_crtc_state *crtc_state,
>>  			   struct intel_plane_state *plane_state)  {
>> +	struct intel_display *display = to_intel_display(crtc_state);
>>  	struct intel_plane *plane = to_intel_plane(plane_state->uapi.plane);
>> -	struct drm_i915_private *dev_priv = to_i915(plane->base.dev);
>> +	struct drm_i915_private *i915 = to_i915(plane->base.dev);
>
> This change of moving from dev_priv naming to i915 and to start using intel_display
> Is a refactor and should be in a patch of its own.

I think a small amount of opportunistic i915 -> display changes are
okay. But the s/dev_priv/i915/ is IMO just useless. All of them need to
go eventually, calling it i915 is not helping at this point.

BR,
Jani.

>
> Regards,
> Suraj Kandpal
>
>>  	const struct drm_framebuffer *fb = plane_state->hw.fb;
>>  	int min_scale = DRM_PLANE_NO_SCALING;
>>  	int max_scale = DRM_PLANE_NO_SCALING;
>> @@ -2266,7 +2297,7 @@ static int skl_plane_check(struct intel_crtc_state
>> *crtc_state,
>>  	/* use scaler when colorkey is not required */
>>  	if (!plane_state->ckey.flags && skl_fb_scalable(fb)) {
>>  		min_scale = 1;
>> -		max_scale = skl_plane_max_scale(dev_priv, fb);
>> +		max_scale = skl_plane_max_scale(i915, fb);
>>  	}
>> 
>>  	ret = intel_atomic_plane_check_clipping(plane_state, crtc_state, @@ -
>> 2274,6 +2305,9 @@ static int skl_plane_check(struct intel_crtc_state
>> *crtc_state,
>>  	if (ret)
>>  		return ret;
>> 
>> +	if (HAS_FBC_DIRTY_RECT(display))
>> +		skl_plane_check_damage_with_viewport(plane_state);
>> +
>>  	ret = skl_check_plane_surface(plane_state);
>>  	if (ret)
>>  		return ret;
>> @@ -2289,6 +2323,9 @@ static int skl_plane_check(struct intel_crtc_state
>> *crtc_state,
>>  	if (ret)
>>  		return ret;
>> 
>> +	if (HAS_FBC_DIRTY_RECT(display))
>> +		skl_plane_check_damage_with_plane_surf(plane_state);
>> +
>>  	ret = skl_plane_check_nv12_rotation(plane_state);
>>  	if (ret)
>>  		return ret;
>> @@ -2301,12 +2338,12 @@ static int skl_plane_check(struct intel_crtc_state
>> *crtc_state,
>> 
>>  	plane_state->ctl = skl_plane_ctl(crtc_state, plane_state);
>> 
>> -	if (DISPLAY_VER(dev_priv) >= 10)
>> +	if (DISPLAY_VER(display) >= 10)
>>  		plane_state->color_ctl = glk_plane_color_ctl(crtc_state,
>>  							     plane_state);
>> 
>>  	if (intel_format_info_is_yuv_semiplanar(fb->format, fb->modifier) &&
>> -	    icl_is_hdr_plane(dev_priv, plane->id))
>> +	    icl_is_hdr_plane(i915, plane->id))
>>  		/* Enable and use MPEG-2 chroma siting */
>>  		plane_state->cus_ctl = PLANE_CUS_ENABLE |
>>  			PLANE_CUS_HPHASE_0 |
>> --
>> 2.43.0
>

-- 
Jani Nikula, Intel
