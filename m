Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 56365697A74
	for <lists+intel-gfx@lfdr.de>; Wed, 15 Feb 2023 12:13:05 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 206BE10E0C8;
	Wed, 15 Feb 2023 11:13:03 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga12.intel.com (mga12.intel.com [192.55.52.136])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 7BFC410E0C8
 for <intel-gfx@lists.freedesktop.org>; Wed, 15 Feb 2023 11:13:01 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1676459581; x=1707995581;
 h=from:to:cc:subject:in-reply-to:references:date:
 message-id:mime-version:content-transfer-encoding;
 bh=+PjxwWDd65ZSb3qM30jDzjewG1DwBZD5+kZGhlaeSdo=;
 b=gw+3AcpYvAzp96eBPf+3vRhsc+0r998p6VjlZWePYpfadpXLj6lvlfYs
 kFNIO4vFKTeST8bBVQQbZe2OAYD5M0fzva2U5HAaFZRwT90LM4HnL0LwD
 I6ONv9ogarBIkrpHRGEpxbvQGYKz8kysWOrt0/niSGKmgEQGA4WIvtd9+
 zrkdFvalOXolwyv4jbBkFWVP8fAMzzkFsSXQBSgJgYZaNVXqsbbp002hF
 pXZpkF80D0K4zKNBc7N6JrzUKbUh2o5sMCgSDp+bkzo8eY87xK6AvNXkc
 jejyRmkiLNY7t3gE4kd0cBFvK5g6GcydvThrAMoom6uktlIN+ZPPXBYZ/ Q==;
X-IronPort-AV: E=McAfee;i="6500,9779,10621"; a="311032030"
X-IronPort-AV: E=Sophos;i="5.97,299,1669104000"; d="scan'208";a="311032030"
Received: from fmsmga008.fm.intel.com ([10.253.24.58])
 by fmsmga106.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 15 Feb 2023 03:13:00 -0800
X-IronPort-AV: E=McAfee;i="6500,9779,10621"; a="733250804"
X-IronPort-AV: E=Sophos;i="5.97,299,1669104000"; d="scan'208";a="733250804"
Received: from gchung-mobl.gar.corp.intel.com (HELO localhost)
 ([10.252.51.244])
 by fmsmga008-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 15 Feb 2023 03:12:59 -0800
From: Jani Nikula <jani.nikula@intel.com>
To: Ville =?utf-8?B?U3lyasOkbMOk?= <ville.syrjala@linux.intel.com>
In-Reply-To: <Y+qiPTnHIflK5JOF@intel.com>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
References: <cover.1676317696.git.jani.nikula@intel.com>
 <6da32831e40606cc8b90491b83196917f2ce36ab.1676317696.git.jani.nikula@intel.com>
 <Y+qiPTnHIflK5JOF@intel.com>
Date: Wed, 15 Feb 2023 13:12:57 +0200
Message-ID: <87ttznqj0m.fsf@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: quoted-printable
Subject: Re: [Intel-gfx] [PATCH v2 4/7] drm/i915/wm: add .get_hw_state to
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

On Mon, 13 Feb 2023, Ville Syrj=C3=A4l=C3=A4 <ville.syrjala@linux.intel.com=
> wrote:
> On Mon, Feb 13, 2023 at 09:59:59PM +0200, Jani Nikula wrote:
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
>>=20
>> v2:
>> - Add missing static (kernel test robot)
>>=20
>> Cc: Ville Syrj=C3=A4l=C3=A4 <ville.syrjala@linux.intel.com>
>> Signed-off-by: Jani Nikula <jani.nikula@intel.com>
>
> Reviewed-by: Ville Syrj=C3=A4l=C3=A4 <ville.syrjala@linux.intel.com>

Thanks, pushed 1-4 to drm-intel-next to keep things moving.

BR,
Jani.


>
>> ---
>>  drivers/gpu/drm/i915/display/i9xx_wm.c        | 26 +++++++++++++++----
>>  drivers/gpu/drm/i915/display/i9xx_wm.h        |  5 ----
>>  .../gpu/drm/i915/display/intel_display_core.h |  1 +
>>  .../drm/i915/display/intel_modeset_setup.c    | 14 ++--------
>>  drivers/gpu/drm/i915/display/intel_wm.c       |  6 +++++
>>  drivers/gpu/drm/i915/display/intel_wm.h       |  1 +
>>  drivers/gpu/drm/i915/display/skl_watermark.c  | 11 ++++++--
>>  drivers/gpu/drm/i915/display/skl_watermark.h  |  3 ---
>>  8 files changed, 40 insertions(+), 27 deletions(-)
>>=20
>> diff --git a/drivers/gpu/drm/i915/display/i9xx_wm.c b/drivers/gpu/drm/i9=
15/display/i9xx_wm.c
>> index 676c79dd7b5a..dfdd40991871 100644
>> --- a/drivers/gpu/drm/i915/display/i9xx_wm.c
>> +++ b/drivers/gpu/drm/i915/display/i9xx_wm.c
>> @@ -3487,7 +3487,7 @@ static void vlv_read_wm_values(struct drm_i915_pri=
vate *dev_priv,
>>  #undef _FW_WM
>>  #undef _FW_WM_VLV
>>=20=20
>> -void g4x_wm_get_hw_state(struct drm_i915_private *dev_priv)
>> +static void g4x_wm_get_hw_state(struct drm_i915_private *dev_priv)
>>  {
>>  	struct g4x_wm_values *wm =3D &dev_priv->display.wm.g4x;
>>  	struct intel_crtc *crtc;
>> @@ -3580,7 +3580,7 @@ void g4x_wm_get_hw_state(struct drm_i915_private *=
dev_priv)
>>  		    str_yes_no(wm->fbc_en));
>>  }
>>=20=20
>> -void g4x_wm_sanitize(struct drm_i915_private *dev_priv)
>> +static void g4x_wm_sanitize(struct drm_i915_private *dev_priv)
>>  {
>>  	struct intel_plane *plane;
>>  	struct intel_crtc *crtc;
>> @@ -3629,7 +3629,13 @@ void g4x_wm_sanitize(struct drm_i915_private *dev=
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
>> @@ -3729,7 +3735,7 @@ void vlv_wm_get_hw_state(struct drm_i915_private *=
dev_priv)
>>  		    wm->sr.plane, wm->sr.cursor, wm->level, wm->cxsr);
>>  }
>>=20=20
>> -void vlv_wm_sanitize(struct drm_i915_private *dev_priv)
>> +static void vlv_wm_sanitize(struct drm_i915_private *dev_priv)
>>  {
>>  	struct intel_plane *plane;
>>  	struct intel_crtc *crtc;
>> @@ -3775,6 +3781,12 @@ void vlv_wm_sanitize(struct drm_i915_private *dev=
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
>> @@ -3791,7 +3803,7 @@ static void ilk_init_lp_watermarks(struct drm_i915=
_private *dev_priv)
>>  	 */
>>  }
>>=20=20
>> -void ilk_wm_get_hw_state(struct drm_i915_private *dev_priv)
>> +static void ilk_wm_get_hw_state(struct drm_i915_private *dev_priv)
>>  {
>>  	struct ilk_wm_values *hw =3D &dev_priv->display.wm.hw;
>>  	struct intel_crtc *crtc;
>> @@ -3829,6 +3841,7 @@ static const struct intel_wm_funcs ilk_wm_funcs =
=3D {
>>  	.compute_intermediate_wm =3D ilk_compute_intermediate_wm,
>>  	.initial_watermarks =3D ilk_initial_watermarks,
>>  	.optimize_watermarks =3D ilk_optimize_watermarks,
>> +	.get_hw_state =3D ilk_wm_get_hw_state,
>>  };
>>=20=20
>>  static const struct intel_wm_funcs vlv_wm_funcs =3D {
>> @@ -3837,6 +3850,7 @@ static const struct intel_wm_funcs vlv_wm_funcs =
=3D {
>>  	.initial_watermarks =3D vlv_initial_watermarks,
>>  	.optimize_watermarks =3D vlv_optimize_watermarks,
>>  	.atomic_update_watermarks =3D vlv_atomic_update_fifo,
>> +	.get_hw_state =3D vlv_wm_get_hw_state_and_sanitize,
>>  };
>>=20=20
>>  static const struct intel_wm_funcs g4x_wm_funcs =3D {
>> @@ -3844,6 +3858,7 @@ static const struct intel_wm_funcs g4x_wm_funcs =
=3D {
>>  	.compute_intermediate_wm =3D g4x_compute_intermediate_wm,
>>  	.initial_watermarks =3D g4x_initial_watermarks,
>>  	.optimize_watermarks =3D g4x_optimize_watermarks,
>> +	.get_hw_state =3D g4x_wm_get_hw_state_and_sanitize,
>>  };
>>=20=20
>>  static const struct intel_wm_funcs pnv_wm_funcs =3D {
>> @@ -3877,6 +3892,7 @@ void i9xx_wm_init(struct drm_i915_private *dev_pri=
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
>> index 38e32cce5174..133a3234dea5 100644
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
>> index 25d778fb7d15..52614fff0d76 100644
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
>> index bb146124a9ca..c4d14a51869b 100644
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
>> index 2b62f818099e..dc582967a25e 100644
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
>> index 43bda92d3560..476518201cd5 100644
>> --- a/drivers/gpu/drm/i915/display/skl_watermark.c
>> +++ b/drivers/gpu/drm/i915/display/skl_watermark.c
>> @@ -2859,7 +2859,7 @@ static void skl_pipe_wm_get_hw_state(struct intel_=
crtc *crtc,
>>  	}
>>  }
>>=20=20
>> -void skl_wm_get_hw_state(struct drm_i915_private *i915)
>> +static void skl_wm_get_hw_state(struct drm_i915_private *i915)
>>  {
>>  	struct intel_dbuf_state *dbuf_state =3D
>>  		to_intel_dbuf_state(i915->display.dbuf.obj.state);
>> @@ -2959,7 +2959,7 @@ static bool skl_dbuf_is_misconfigured(struct drm_i=
915_private *i915)
>>  	return false;
>>  }
>>=20=20
>> -void skl_wm_sanitize(struct drm_i915_private *i915)
>> +static void skl_wm_sanitize(struct drm_i915_private *i915)
>>  {
>>  	struct intel_crtc *crtc;
>>=20=20
>> @@ -2995,6 +2995,12 @@ void skl_wm_sanitize(struct drm_i915_private *i91=
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
>> @@ -3272,6 +3278,7 @@ static void skl_setup_wm_latency(struct drm_i915_p=
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
