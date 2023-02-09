Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 77442691154
	for <lists+intel-gfx@lfdr.de>; Thu,  9 Feb 2023 20:28:16 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id F151B10E274;
	Thu,  9 Feb 2023 19:28:12 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga04.intel.com (mga04.intel.com [192.55.52.120])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 2D1D710E274
 for <intel-gfx@lists.freedesktop.org>; Thu,  9 Feb 2023 19:28:10 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1675970890; x=1707506890;
 h=from:to:cc:subject:in-reply-to:references:date:
 message-id:mime-version:content-transfer-encoding;
 bh=lcJh1M9KRWxhLnRXzrCs+thIRrK5cWNOLSjjHSl3PK8=;
 b=FSSfdGPDKDuuWJoEO1wHj65BGSmRFI7NKThSwCFZMg4LVl7c20Jpy8M3
 9xEvw9rzjtfimreSuLll01UpHXJdC4EULQPQbcJpHZo+0THg4+BR+AJlq
 hJA2cn1Pobjs2Hs1AKld8gtJHSrneknqwwaJIlVhrCY5hmiT++14bbnGr
 UYS1GuRbuSyt1LyvzGVppm2hdG1nIHGjQop6I+fa3/0Wn8oxMiwpykAC2
 AtVp9Mew6B/2va0iOIbot/KCTd8GfDOPX/Auzl8GvEkh92hUwzMmXbWid
 O71mJOmavl4IdV13DL6jpP1gcBHzyMIDqRma7vk3wMbmaBAThgW6crgUx A==;
X-IronPort-AV: E=McAfee;i="6500,9779,10616"; a="328857243"
X-IronPort-AV: E=Sophos;i="5.97,284,1669104000"; d="scan'208";a="328857243"
Received: from orsmga001.jf.intel.com ([10.7.209.18])
 by fmsmga104.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 09 Feb 2023 11:28:09 -0800
X-IronPort-AV: E=McAfee;i="6500,9779,10616"; a="700208404"
X-IronPort-AV: E=Sophos;i="5.97,284,1669104000"; d="scan'208";a="700208404"
Received: from mschwieg-mobl1.ger.corp.intel.com (HELO localhost)
 ([10.252.38.128])
 by orsmga001-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 09 Feb 2023 11:28:08 -0800
From: Jani Nikula <jani.nikula@intel.com>
To: Ville =?utf-8?B?U3lyasOkbMOk?= <ville.syrjala@linux.intel.com>
In-Reply-To: <Y+OfsOov7oYMWQTf@intel.com>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
References: <cover.1675849634.git.jani.nikula@intel.com>
 <6fc335ec79f163b7a612af012ce07be6d98f2ef9.1675849634.git.jani.nikula@intel.com>
 <Y+OfsOov7oYMWQTf@intel.com>
Date: Thu, 09 Feb 2023 21:28:03 +0200
Message-ID: <87mt5mwse4.fsf@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: quoted-printable
Subject: Re: [Intel-gfx] [PATCH 04/10] drm/i915/wm: add .get_hw_state to
 watermark funcs
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

On Wed, 08 Feb 2023, Ville Syrj=C3=A4l=C3=A4 <ville.syrjala@linux.intel.com=
> wrote:
> On Wed, Feb 08, 2023 at 11:48:42AM +0200, Jani Nikula wrote:
>> Get rid of the if ladder in intel_modeset_setup_hw_state() and hide a
>> number of functions by adding a .get_hw_state() hook to watermark
>> functions. At least for now, combine the platform specific sanitization
>> to the hw state readouts on the relevant platforms instead of adding a
>> separate hook for that.
>>=20
>> There's a functional change on PCH split platforms: If i9xx_wm_init()
>> fails to read plane latency and chooses the nop functions,
>> ilk_wm_get_hw_state() won't get called for readout. Add the
>> ilk_init_lp_watermarks() call on that path which now won't be called in
>> .get_hw_state(), as it looks like the only thing that could make a
>> difference.
>
> That ilk+ nop_funcs stuff is just nonsense. We should just
> simply nuke it.

Dates back to 2010 and commit 7f8a85698f5c ("drm/i915: Add the support
of memory self-refresh on Ironlake"), with no explanations. The usual.

I'll add it on top. I mean remove from the top. Something.

BR,
Jani.


>
>>=20
>> Cc: Ville Syrj=C3=A4l=C3=A4 <ville.syrjala@linux.intel.com>
>> Signed-off-by: Jani Nikula <jani.nikula@intel.com>
>> ---
>>  drivers/gpu/drm/i915/display/i9xx_wm.c        | 24 +++++++++++++++----
>>  drivers/gpu/drm/i915/display/i9xx_wm.h        |  5 ----
>>  .../gpu/drm/i915/display/intel_display_core.h |  1 +
>>  .../drm/i915/display/intel_modeset_setup.c    | 14 ++---------
>>  drivers/gpu/drm/i915/display/intel_wm.c       |  6 +++++
>>  drivers/gpu/drm/i915/display/intel_wm.h       |  1 +
>>  drivers/gpu/drm/i915/display/skl_watermark.c  | 11 +++++++--
>>  drivers/gpu/drm/i915/display/skl_watermark.h  |  3 ---
>>  8 files changed, 39 insertions(+), 26 deletions(-)
>>=20
>> diff --git a/drivers/gpu/drm/i915/display/i9xx_wm.c b/drivers/gpu/drm/i9=
15/display/i9xx_wm.c
>> index 93ad40dad730..889c901aa3e7 100644
>> --- a/drivers/gpu/drm/i915/display/i9xx_wm.c
>> +++ b/drivers/gpu/drm/i915/display/i9xx_wm.c
>> @@ -3505,7 +3505,7 @@ static void vlv_read_wm_values(struct drm_i915_pri=
vate *dev_priv,
>>  #undef _FW_WM
>>  #undef _FW_WM_VLV
>>=20=20
>> -void g4x_wm_get_hw_state(struct drm_i915_private *dev_priv)
>> +static void g4x_wm_get_hw_state(struct drm_i915_private *dev_priv)
>>  {
>>  	struct g4x_wm_values *wm =3D &dev_priv->display.wm.g4x;
>>  	struct intel_crtc *crtc;
>> @@ -3598,7 +3598,7 @@ void g4x_wm_get_hw_state(struct drm_i915_private *=
dev_priv)
>>  		    str_yes_no(wm->fbc_en));
>>  }
>>=20=20
>> -void g4x_wm_sanitize(struct drm_i915_private *dev_priv)
>> +static void g4x_wm_sanitize(struct drm_i915_private *dev_priv)
>>  {
>>  	struct intel_plane *plane;
>>  	struct intel_crtc *crtc;
>> @@ -3647,7 +3647,13 @@ void g4x_wm_sanitize(struct drm_i915_private *dev=
_priv)
>>  	mutex_unlock(&dev_priv->display.wm.wm_mutex);
>>  }
>>=20=20
>> -void vlv_wm_get_hw_state(struct drm_i915_private *dev_priv)
>> +static void g4x_wm_get_hw_state_and_sanitize(struct drm_i915_private *i=
915)
>> +{
>> +	g4x_wm_get_hw_state(i915);
>> +	g4x_wm_sanitize(i915);
>> +}
>> +
>> +static void vlv_wm_get_hw_state(struct drm_i915_private *dev_priv)
>>  {
>>  	struct vlv_wm_values *wm =3D &dev_priv->display.wm.vlv;
>>  	struct intel_crtc *crtc;
>> @@ -3747,7 +3753,7 @@ void vlv_wm_get_hw_state(struct drm_i915_private *=
dev_priv)
>>  		    wm->sr.plane, wm->sr.cursor, wm->level, wm->cxsr);
>>  }
>>=20=20
>> -void vlv_wm_sanitize(struct drm_i915_private *dev_priv)
>> +static void vlv_wm_sanitize(struct drm_i915_private *dev_priv)
>>  {
>>  	struct intel_plane *plane;
>>  	struct intel_crtc *crtc;
>> @@ -3793,6 +3799,12 @@ void vlv_wm_sanitize(struct drm_i915_private *dev=
_priv)
>>  	mutex_unlock(&dev_priv->display.wm.wm_mutex);
>>  }
>>=20=20
>> +static void vlv_wm_get_hw_state_and_sanitize(struct drm_i915_private *i=
915)
>> +{
>> +	vlv_wm_get_hw_state(i915);
>> +	vlv_wm_sanitize(i915);
>> +}
>> +
>>  /*
>>   * FIXME should probably kill this and improve
>>   * the real watermark readout/sanitation instead
>> @@ -3847,6 +3859,7 @@ static const struct intel_wm_funcs ilk_wm_funcs =
=3D {
>>  	.compute_intermediate_wm =3D ilk_compute_intermediate_wm,
>>  	.initial_watermarks =3D ilk_initial_watermarks,
>>  	.optimize_watermarks =3D ilk_optimize_watermarks,
>> +	.get_hw_state =3D ilk_wm_get_hw_state,
>>  };
>>=20=20
>>  static const struct intel_wm_funcs vlv_wm_funcs =3D {
>> @@ -3855,6 +3868,7 @@ static const struct intel_wm_funcs vlv_wm_funcs =
=3D {
>>  	.initial_watermarks =3D vlv_initial_watermarks,
>>  	.optimize_watermarks =3D vlv_optimize_watermarks,
>>  	.atomic_update_watermarks =3D vlv_atomic_update_fifo,
>> +	.get_hw_state =3D vlv_wm_get_hw_state_and_sanitize,
>>  };
>>=20=20
>>  static const struct intel_wm_funcs g4x_wm_funcs =3D {
>> @@ -3862,6 +3876,7 @@ static const struct intel_wm_funcs g4x_wm_funcs =
=3D {
>>  	.compute_intermediate_wm =3D g4x_compute_intermediate_wm,
>>  	.initial_watermarks =3D g4x_initial_watermarks,
>>  	.optimize_watermarks =3D g4x_optimize_watermarks,
>> +	.get_hw_state =3D g4x_wm_get_hw_state_and_sanitize,
>>  };
>>=20=20
>>  static const struct intel_wm_funcs pnv_wm_funcs =3D {
>> @@ -3895,6 +3910,7 @@ void i9xx_wm_init(struct drm_i915_private *dev_pri=
v)
>>  		     dev_priv->display.wm.spr_latency[0] && dev_priv->display.wm.cur_=
latency[0])) {
>>  			dev_priv->display.funcs.wm =3D &ilk_wm_funcs;
>>  		} else {
>> +			ilk_init_lp_watermarks(dev_priv);
>>  			drm_dbg_kms(&dev_priv->drm,
>>  				    "Failed to read display plane latency. "
>>  				    "Disable CxSR\n");
>> diff --git a/drivers/gpu/drm/i915/display/i9xx_wm.h b/drivers/gpu/drm/i9=
15/display/i9xx_wm.h
>> index af4721b1909a..e5293a4ff540 100644
>> --- a/drivers/gpu/drm/i915/display/i9xx_wm.h
>> +++ b/drivers/gpu/drm/i915/display/i9xx_wm.h
>> @@ -13,11 +13,6 @@ struct intel_crtc_state;
>>  struct intel_plane_state;
>>=20=20
>>  int ilk_wm_max_level(const struct drm_i915_private *i915);
>> -void g4x_wm_get_hw_state(struct drm_i915_private *i915);
>> -void vlv_wm_get_hw_state(struct drm_i915_private *i915);
>> -void ilk_wm_get_hw_state(struct drm_i915_private *i915);
>> -void g4x_wm_sanitize(struct drm_i915_private *i915);
>> -void vlv_wm_sanitize(struct drm_i915_private *i915);
>>  bool ilk_disable_lp_wm(struct drm_i915_private *i915);
>>  bool intel_set_memory_cxsr(struct drm_i915_private *i915, bool enable);
>>  void i9xx_wm_init(struct drm_i915_private *i915);
>> diff --git a/drivers/gpu/drm/i915/display/intel_display_core.h b/drivers=
/gpu/drm/i915/display/intel_display_core.h
>> index fb8670aa2932..176dbe52025b 100644
>> --- a/drivers/gpu/drm/i915/display/intel_display_core.h
>> +++ b/drivers/gpu/drm/i915/display/intel_display_core.h
>> @@ -85,6 +85,7 @@ struct intel_wm_funcs {
>>  	void (*optimize_watermarks)(struct intel_atomic_state *state,
>>  				    struct intel_crtc *crtc);
>>  	int (*compute_global_watermarks)(struct intel_atomic_state *state);
>> +	void (*get_hw_state)(struct drm_i915_private *i915);
>>  };
>>=20=20
>>  struct intel_audio_state {
>> diff --git a/drivers/gpu/drm/i915/display/intel_modeset_setup.c b/driver=
s/gpu/drm/i915/display/intel_modeset_setup.c
>> index 1cce96146ef5..5359b9663a07 100644
>> --- a/drivers/gpu/drm/i915/display/intel_modeset_setup.c
>> +++ b/drivers/gpu/drm/i915/display/intel_modeset_setup.c
>> @@ -25,6 +25,7 @@
>>  #include "intel_modeset_setup.h"
>>  #include "intel_pch_display.h"
>>  #include "intel_pm.h"
>> +#include "intel_wm.h"
>>  #include "skl_watermark.h"
>>=20=20
>>  static void intel_crtc_disable_noatomic(struct intel_crtc *crtc,
>> @@ -724,18 +725,7 @@ void intel_modeset_setup_hw_state(struct drm_i915_p=
rivate *i915,
>>=20=20
>>  	intel_dpll_sanitize_state(i915);
>>=20=20
>> -	if (IS_G4X(i915)) {
>> -		g4x_wm_get_hw_state(i915);
>> -		g4x_wm_sanitize(i915);
>> -	} else if (IS_VALLEYVIEW(i915) || IS_CHERRYVIEW(i915)) {
>> -		vlv_wm_get_hw_state(i915);
>> -		vlv_wm_sanitize(i915);
>> -	} else if (DISPLAY_VER(i915) >=3D 9) {
>> -		skl_wm_get_hw_state(i915);
>> -		skl_wm_sanitize(i915);
>> -	} else if (HAS_PCH_SPLIT(i915)) {
>> -		ilk_wm_get_hw_state(i915);
>> -	}
>> +	intel_wm_get_hw_state(i915);
>>=20=20
>>  	for_each_intel_crtc(&i915->drm, crtc) {
>>  		struct intel_crtc_state *crtc_state =3D
>> diff --git a/drivers/gpu/drm/i915/display/intel_wm.c b/drivers/gpu/drm/i=
915/display/intel_wm.c
>> index 15e004bf7eba..97d0fb7e1bbe 100644
>> --- a/drivers/gpu/drm/i915/display/intel_wm.c
>> +++ b/drivers/gpu/drm/i915/display/intel_wm.c
>> @@ -114,6 +114,12 @@ int intel_compute_global_watermarks(struct intel_at=
omic_state *state)
>>  	return 0;
>>  }
>>=20=20
>> +void intel_wm_get_hw_state(struct drm_i915_private *i915)
>> +{
>> +	if (i915->display.funcs.wm->get_hw_state)
>> +		return i915->display.funcs.wm->get_hw_state(i915);
>> +}
>> +
>>  bool intel_wm_plane_visible(const struct intel_crtc_state *crtc_state,
>>  			    const struct intel_plane_state *plane_state)
>>  {
>> diff --git a/drivers/gpu/drm/i915/display/intel_wm.h b/drivers/gpu/drm/i=
915/display/intel_wm.h
>> index 916302a0077a..b261a6feffca 100644
>> --- a/drivers/gpu/drm/i915/display/intel_wm.h
>> +++ b/drivers/gpu/drm/i915/display/intel_wm.h
>> @@ -26,6 +26,7 @@ void intel_atomic_update_watermarks(struct intel_atomi=
c_state *state,
>>  void intel_optimize_watermarks(struct intel_atomic_state *state,
>>  			       struct intel_crtc *crtc);
>>  int intel_compute_global_watermarks(struct intel_atomic_state *state);
>> +void intel_wm_get_hw_state(struct drm_i915_private *i915);
>>  bool intel_wm_plane_visible(const struct intel_crtc_state *crtc_state,
>>  			    const struct intel_plane_state *plane_state);
>>  void intel_print_wm_latency(struct drm_i915_private *i915,
>> diff --git a/drivers/gpu/drm/i915/display/skl_watermark.c b/drivers/gpu/=
drm/i915/display/skl_watermark.c
>> index d653217560d3..bb09fdca7161 100644
>> --- a/drivers/gpu/drm/i915/display/skl_watermark.c
>> +++ b/drivers/gpu/drm/i915/display/skl_watermark.c
>> @@ -2861,7 +2861,7 @@ static void skl_pipe_wm_get_hw_state(struct intel_=
crtc *crtc,
>>  	}
>>  }
>>=20=20
>> -void skl_wm_get_hw_state(struct drm_i915_private *i915)
>> +static void skl_wm_get_hw_state(struct drm_i915_private *i915)
>>  {
>>  	struct intel_dbuf_state *dbuf_state =3D
>>  		to_intel_dbuf_state(i915->display.dbuf.obj.state);
>> @@ -2961,7 +2961,7 @@ static bool skl_dbuf_is_misconfigured(struct drm_i=
915_private *i915)
>>  	return false;
>>  }
>>=20=20
>> -void skl_wm_sanitize(struct drm_i915_private *i915)
>> +static void skl_wm_sanitize(struct drm_i915_private *i915)
>>  {
>>  	struct intel_crtc *crtc;
>>=20=20
>> @@ -2997,6 +2997,12 @@ void skl_wm_sanitize(struct drm_i915_private *i91=
5)
>>  	}
>>  }
>>=20=20
>> +static void skl_wm_get_hw_state_and_sanitize(struct drm_i915_private *i=
915)
>> +{
>> +	skl_wm_get_hw_state(i915);
>> +	skl_wm_sanitize(i915);
>> +}
>> +
>>  void intel_wm_state_verify(struct intel_crtc *crtc,
>>  			   struct intel_crtc_state *new_crtc_state)
>>  {
>> @@ -3269,6 +3275,7 @@ static void skl_setup_wm_latency(struct drm_i915_p=
rivate *i915)
>>=20=20
>>  static const struct intel_wm_funcs skl_wm_funcs =3D {
>>  	.compute_global_watermarks =3D skl_compute_wm,
>> +	.get_hw_state =3D skl_wm_get_hw_state_and_sanitize,
>>  };
>>=20=20
>>  void skl_wm_init(struct drm_i915_private *i915)
>> diff --git a/drivers/gpu/drm/i915/display/skl_watermark.h b/drivers/gpu/=
drm/i915/display/skl_watermark.h
>> index 1f81e1a5a4a3..f03fd991b189 100644
>> --- a/drivers/gpu/drm/i915/display/skl_watermark.h
>> +++ b/drivers/gpu/drm/i915/display/skl_watermark.h
>> @@ -38,9 +38,6 @@ bool skl_ddb_allocation_overlaps(const struct skl_ddb_=
entry *ddb,
>>  				 const struct skl_ddb_entry *entries,
>>  				 int num_entries, int ignore_idx);
>>=20=20
>> -void skl_wm_get_hw_state(struct drm_i915_private *i915);
>> -void skl_wm_sanitize(struct drm_i915_private *i915);
>> -
>>  void intel_wm_state_verify(struct intel_crtc *crtc,
>>  			   struct intel_crtc_state *new_crtc_state);
>>=20=20
>> --=20
>> 2.34.1

--=20
Jani Nikula, Intel Open Source Graphics Center
