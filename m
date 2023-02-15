Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 5B6FF697A96
	for <lists+intel-gfx@lfdr.de>; Wed, 15 Feb 2023 12:21:58 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id BBC6410E13D;
	Wed, 15 Feb 2023 11:21:56 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga06.intel.com (mga06b.intel.com [134.134.136.31])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 65F3010E08E
 for <intel-gfx@lists.freedesktop.org>; Wed, 15 Feb 2023 11:21:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1676460114; x=1707996114;
 h=from:to:cc:subject:in-reply-to:references:date:
 message-id:mime-version:content-transfer-encoding;
 bh=GsDT/aqIdkCiakIc+86D8/UGyHEI8RkLO4WCl/eLgrk=;
 b=WkLDR4suJIwIjv0k1HLQzqY3qjSS92kQDY1H3qIaJJTbrnn1iSkoud5V
 hc1QCIZhv9ZVX13vZFgn0tGUhO32hPBA9bR4XnOFJCUs52njCf50vWpjY
 xODDgGKvAvTdJriEYVNzzCMuQrSum7iDLp4ZNRAJgOhqicthljpDfCIeM
 pBLVDEW+XqKUFFm/JPkbc/C6XJDvcEBmf/k4ECxEYKcT4lySahKynjAep
 kZzN8HqF6waSJVdhm9J0fKOMrIwvU2T/n4P6wYJy2CNpgi9kupK8DBLev
 hlTyyhVDs8H4FmOrQPQm+qZDalVgM2IgiKazEHEU92wSfrxPtDbYTeokf Q==;
X-IronPort-AV: E=McAfee;i="6500,9779,10621"; a="393805467"
X-IronPort-AV: E=Sophos;i="5.97,299,1669104000"; d="scan'208";a="393805467"
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
 by orsmga104.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 15 Feb 2023 03:21:44 -0800
X-IronPort-AV: E=McAfee;i="6500,9779,10621"; a="778751907"
X-IronPort-AV: E=Sophos;i="5.97,299,1669104000"; d="scan'208";a="778751907"
Received: from gchung-mobl.gar.corp.intel.com (HELO localhost)
 ([10.252.51.244])
 by fmsmga002-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 15 Feb 2023 03:21:42 -0800
From: Jani Nikula <jani.nikula@intel.com>
To: Ville =?utf-8?B?U3lyasOkbMOk?= <ville.syrjala@linux.intel.com>
In-Reply-To: <Y+qjUAe0Y4LTwG67@intel.com>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
References: <cover.1676317696.git.jani.nikula@intel.com>
 <77c30bfdd258c4e0cf143c93514f94c92f371484.1676317696.git.jani.nikula@intel.com>
 <Y+qjUAe0Y4LTwG67@intel.com>
Date: Wed, 15 Feb 2023 13:21:39 +0200
Message-ID: <87r0urqim4.fsf@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: quoted-printable
Subject: Re: [Intel-gfx] [PATCH v2 5/7] drm/i915/wm: move watermark
 sanitization to intel_wm.[ch]
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
> On Mon, Feb 13, 2023 at 10:00:00PM +0200, Jani Nikula wrote:
>> Move the generic sanitize_watermarks() to intel_wm.[ch] and rename as
>
> It's not generic though. Only the ilk_ stuff uses it.

Okay, so the caller side requires HAS_GMCH() and the callee side
requires .optimize_watermarks !=3D NULL. That indeed leaves us with PCH
split platforms before display version 9.

However, the implementation of sanitize_watermarks() seems pretty
generic, right?

I guess the question is, do you suggest moving the whole thing to
i9xx_wm.c and specifically not calling it on display 9+, or do you just
want the commit message to reflect the above?

BR,
Jani.


>
>> intel_wm_sanitize(). The slightly unfortunate downside is having to
>> expose intel_atomic_check() from intel_display.c, but this declutters
>> intel_display.c nicely.
>>=20
>> Cc: Ville Syrj=C3=A4l=C3=A4 <ville.syrjala@linux.intel.com>
>> Signed-off-by: Jani Nikula <jani.nikula@intel.com>
>> ---
>>  drivers/gpu/drm/i915/display/intel_display.c | 124 +------------------
>>  drivers/gpu/drm/i915/display/intel_display.h |   2 +
>>  drivers/gpu/drm/i915/display/intel_wm.c      | 119 ++++++++++++++++++
>>  drivers/gpu/drm/i915/display/intel_wm.h      |   1 +
>>  4 files changed, 125 insertions(+), 121 deletions(-)
>>=20
>> diff --git a/drivers/gpu/drm/i915/display/intel_display.c b/drivers/gpu/=
drm/i915/display/intel_display.c
>> index 82efd96ace87..abb40112704b 100644
>> --- a/drivers/gpu/drm/i915/display/intel_display.c
>> +++ b/drivers/gpu/drm/i915/display/intel_display.c
>> @@ -6602,8 +6602,8 @@ static int intel_bigjoiner_add_affected_crtcs(stru=
ct intel_atomic_state *state)
>>   * @dev: drm device
>>   * @_state: state to validate
>>   */
>> -static int intel_atomic_check(struct drm_device *dev,
>> -			      struct drm_atomic_state *_state)
>> +int intel_atomic_check(struct drm_device *dev,
>> +		       struct drm_atomic_state *_state)
>>  {
>>  	struct drm_i915_private *dev_priv =3D to_i915(dev);
>>  	struct intel_atomic_state *state =3D to_intel_atomic_state(_state);
>> @@ -8263,124 +8263,6 @@ void intel_modeset_init_hw(struct drm_i915_priva=
te *i915)
>>  	cdclk_state->logical =3D cdclk_state->actual =3D i915->display.cdclk.h=
w;
>>  }
>>=20=20
>> -static int sanitize_watermarks_add_affected(struct drm_atomic_state *st=
ate)
>> -{
>> -	struct drm_plane *plane;
>> -	struct intel_crtc *crtc;
>> -
>> -	for_each_intel_crtc(state->dev, crtc) {
>> -		struct intel_crtc_state *crtc_state;
>> -
>> -		crtc_state =3D intel_atomic_get_crtc_state(state, crtc);
>> -		if (IS_ERR(crtc_state))
>> -			return PTR_ERR(crtc_state);
>> -
>> -		if (crtc_state->hw.active) {
>> -			/*
>> -			 * Preserve the inherited flag to avoid
>> -			 * taking the full modeset path.
>> -			 */
>> -			crtc_state->inherited =3D true;
>> -		}
>> -	}
>> -
>> -	drm_for_each_plane(plane, state->dev) {
>> -		struct drm_plane_state *plane_state;
>> -
>> -		plane_state =3D drm_atomic_get_plane_state(state, plane);
>> -		if (IS_ERR(plane_state))
>> -			return PTR_ERR(plane_state);
>> -	}
>> -
>> -	return 0;
>> -}
>> -
>> -/*
>> - * Calculate what we think the watermarks should be for the state we've=
 read
>> - * out of the hardware and then immediately program those watermarks so=
 that
>> - * we ensure the hardware settings match our internal state.
>> - *
>> - * We can calculate what we think WM's should be by creating a duplicat=
e of the
>> - * current state (which was constructed during hardware readout) and ru=
nning it
>> - * through the atomic check code to calculate new watermark values in t=
he
>> - * state object.
>> - */
>> -static void sanitize_watermarks(struct drm_i915_private *dev_priv)
>> -{
>> -	struct drm_atomic_state *state;
>> -	struct intel_atomic_state *intel_state;
>> -	struct intel_crtc *crtc;
>> -	struct intel_crtc_state *crtc_state;
>> -	struct drm_modeset_acquire_ctx ctx;
>> -	int ret;
>> -	int i;
>> -
>> -	/* Only supported on platforms that use atomic watermark design */
>> -	if (!dev_priv->display.funcs.wm->optimize_watermarks)
>> -		return;
>> -
>> -	state =3D drm_atomic_state_alloc(&dev_priv->drm);
>> -	if (drm_WARN_ON(&dev_priv->drm, !state))
>> -		return;
>> -
>> -	intel_state =3D to_intel_atomic_state(state);
>> -
>> -	drm_modeset_acquire_init(&ctx, 0);
>> -
>> -retry:
>> -	state->acquire_ctx =3D &ctx;
>> -
>> -	/*
>> -	 * Hardware readout is the only time we don't want to calculate
>> -	 * intermediate watermarks (since we don't trust the current
>> -	 * watermarks).
>> -	 */
>> -	if (!HAS_GMCH(dev_priv))
>> -		intel_state->skip_intermediate_wm =3D true;
>> -
>> -	ret =3D sanitize_watermarks_add_affected(state);
>> -	if (ret)
>> -		goto fail;
>> -
>> -	ret =3D intel_atomic_check(&dev_priv->drm, state);
>> -	if (ret)
>> -		goto fail;
>> -
>> -	/* Write calculated watermark values back */
>> -	for_each_new_intel_crtc_in_state(intel_state, crtc, crtc_state, i) {
>> -		crtc_state->wm.need_postvbl_update =3D true;
>> -		intel_optimize_watermarks(intel_state, crtc);
>> -
>> -		to_intel_crtc_state(crtc->base.state)->wm =3D crtc_state->wm;
>> -	}
>> -
>> -fail:
>> -	if (ret =3D=3D -EDEADLK) {
>> -		drm_atomic_state_clear(state);
>> -		drm_modeset_backoff(&ctx);
>> -		goto retry;
>> -	}
>> -
>> -	/*
>> -	 * If we fail here, it means that the hardware appears to be
>> -	 * programmed in a way that shouldn't be possible, given our
>> -	 * understanding of watermark requirements.  This might mean a
>> -	 * mistake in the hardware readout code or a mistake in the
>> -	 * watermark calculations for a given platform.  Raise a WARN
>> -	 * so that this is noticeable.
>> -	 *
>> -	 * If this actually happens, we'll have to just leave the
>> -	 * BIOS-programmed watermarks untouched and hope for the best.
>> -	 */
>> -	drm_WARN(&dev_priv->drm, ret,
>> -		 "Could not determine valid watermarks for inherited state\n");
>> -
>> -	drm_atomic_state_put(state);
>> -
>> -	drm_modeset_drop_locks(&ctx);
>> -	drm_modeset_acquire_fini(&ctx);
>> -}
>> -
>>  static int intel_initial_commit(struct drm_device *dev)
>>  {
>>  	struct drm_atomic_state *state =3D NULL;
>> @@ -8657,7 +8539,7 @@ int intel_modeset_init_nogem(struct drm_i915_priva=
te *i915)
>>  	 * since the watermark calculation done here will use pstate->fb.
>>  	 */
>>  	if (!HAS_GMCH(i915))
>> -		sanitize_watermarks(i915);
>> +		intel_wm_sanitize(i915);
>>=20=20
>>  	return 0;
>>  }
>> diff --git a/drivers/gpu/drm/i915/display/intel_display.h b/drivers/gpu/=
drm/i915/display/intel_display.h
>> index cb6f520cc575..ed852f62721d 100644
>> --- a/drivers/gpu/drm/i915/display/intel_display.h
>> +++ b/drivers/gpu/drm/i915/display/intel_display.h
>> @@ -32,6 +32,7 @@
>>=20=20
>>  enum drm_scaling_filter;
>>  struct dpll;
>> +struct drm_atomic_state;
>>  struct drm_connector;
>>  struct drm_device;
>>  struct drm_display_mode;
>> @@ -394,6 +395,7 @@ enum phy_fia {
>>  			     ((connector) =3D to_intel_connector((__state)->base.connectors[=
__i].ptr), \
>>  			     (new_connector_state) =3D to_intel_digital_connector_state((__s=
tate)->base.connectors[__i].new_state), 1))
>>=20=20
>> +int intel_atomic_check(struct drm_device *dev, struct drm_atomic_state =
*state);
>>  int intel_atomic_add_affected_planes(struct intel_atomic_state *state,
>>  				     struct intel_crtc *crtc);
>>  u8 intel_calc_active_pipes(struct intel_atomic_state *state,
>> diff --git a/drivers/gpu/drm/i915/display/intel_wm.c b/drivers/gpu/drm/i=
915/display/intel_wm.c
>> index c4d14a51869b..15fda0829c2f 100644
>> --- a/drivers/gpu/drm/i915/display/intel_wm.c
>> +++ b/drivers/gpu/drm/i915/display/intel_wm.c
>> @@ -5,6 +5,7 @@
>>=20=20
>>  #include "i915_drv.h"
>>  #include "i9xx_wm.h"
>> +#include "intel_atomic.h"
>>  #include "intel_display_types.h"
>>  #include "intel_wm.h"
>>  #include "skl_watermark.h"
>> @@ -173,6 +174,124 @@ void intel_print_wm_latency(struct drm_i915_privat=
e *dev_priv,
>>  	}
>>  }
>>=20=20
>> +static int sanitize_watermarks_add_affected(struct drm_atomic_state *st=
ate)
>> +{
>> +	struct drm_plane *plane;
>> +	struct intel_crtc *crtc;
>> +
>> +	for_each_intel_crtc(state->dev, crtc) {
>> +		struct intel_crtc_state *crtc_state;
>> +
>> +		crtc_state =3D intel_atomic_get_crtc_state(state, crtc);
>> +		if (IS_ERR(crtc_state))
>> +			return PTR_ERR(crtc_state);
>> +
>> +		if (crtc_state->hw.active) {
>> +			/*
>> +			 * Preserve the inherited flag to avoid
>> +			 * taking the full modeset path.
>> +			 */
>> +			crtc_state->inherited =3D true;
>> +		}
>> +	}
>> +
>> +	drm_for_each_plane(plane, state->dev) {
>> +		struct drm_plane_state *plane_state;
>> +
>> +		plane_state =3D drm_atomic_get_plane_state(state, plane);
>> +		if (IS_ERR(plane_state))
>> +			return PTR_ERR(plane_state);
>> +	}
>> +
>> +	return 0;
>> +}
>> +
>> +/*
>> + * Calculate what we think the watermarks should be for the state we've=
 read
>> + * out of the hardware and then immediately program those watermarks so=
 that
>> + * we ensure the hardware settings match our internal state.
>> + *
>> + * We can calculate what we think WM's should be by creating a duplicat=
e of the
>> + * current state (which was constructed during hardware readout) and ru=
nning it
>> + * through the atomic check code to calculate new watermark values in t=
he
>> + * state object.
>> + */
>> +void intel_wm_sanitize(struct drm_i915_private *dev_priv)
>> +{
>> +	struct drm_atomic_state *state;
>> +	struct intel_atomic_state *intel_state;
>> +	struct intel_crtc *crtc;
>> +	struct intel_crtc_state *crtc_state;
>> +	struct drm_modeset_acquire_ctx ctx;
>> +	int ret;
>> +	int i;
>> +
>> +	/* Only supported on platforms that use atomic watermark design */
>> +	if (!dev_priv->display.funcs.wm->optimize_watermarks)
>> +		return;
>> +
>> +	state =3D drm_atomic_state_alloc(&dev_priv->drm);
>> +	if (drm_WARN_ON(&dev_priv->drm, !state))
>> +		return;
>> +
>> +	intel_state =3D to_intel_atomic_state(state);
>> +
>> +	drm_modeset_acquire_init(&ctx, 0);
>> +
>> +retry:
>> +	state->acquire_ctx =3D &ctx;
>> +
>> +	/*
>> +	 * Hardware readout is the only time we don't want to calculate
>> +	 * intermediate watermarks (since we don't trust the current
>> +	 * watermarks).
>> +	 */
>> +	if (!HAS_GMCH(dev_priv))
>> +		intel_state->skip_intermediate_wm =3D true;
>> +
>> +	ret =3D sanitize_watermarks_add_affected(state);
>> +	if (ret)
>> +		goto fail;
>> +
>> +	ret =3D intel_atomic_check(&dev_priv->drm, state);
>> +	if (ret)
>> +		goto fail;
>> +
>> +	/* Write calculated watermark values back */
>> +	for_each_new_intel_crtc_in_state(intel_state, crtc, crtc_state, i) {
>> +		crtc_state->wm.need_postvbl_update =3D true;
>> +		intel_optimize_watermarks(intel_state, crtc);
>> +
>> +		to_intel_crtc_state(crtc->base.state)->wm =3D crtc_state->wm;
>> +	}
>> +
>> +fail:
>> +	if (ret =3D=3D -EDEADLK) {
>> +		drm_atomic_state_clear(state);
>> +		drm_modeset_backoff(&ctx);
>> +		goto retry;
>> +	}
>> +
>> +	/*
>> +	 * If we fail here, it means that the hardware appears to be
>> +	 * programmed in a way that shouldn't be possible, given our
>> +	 * understanding of watermark requirements.  This might mean a
>> +	 * mistake in the hardware readout code or a mistake in the
>> +	 * watermark calculations for a given platform.  Raise a WARN
>> +	 * so that this is noticeable.
>> +	 *
>> +	 * If this actually happens, we'll have to just leave the
>> +	 * BIOS-programmed watermarks untouched and hope for the best.
>> +	 */
>> +	drm_WARN(&dev_priv->drm, ret,
>> +		 "Could not determine valid watermarks for inherited state\n");
>> +
>> +	drm_atomic_state_put(state);
>> +
>> +	drm_modeset_drop_locks(&ctx);
>> +	drm_modeset_acquire_fini(&ctx);
>> +}
>> +
>>  void intel_wm_init(struct drm_i915_private *i915)
>>  {
>>  	if (DISPLAY_VER(i915) >=3D 9)
>> diff --git a/drivers/gpu/drm/i915/display/intel_wm.h b/drivers/gpu/drm/i=
915/display/intel_wm.h
>> index dc582967a25e..a5233e7e5e8d 100644
>> --- a/drivers/gpu/drm/i915/display/intel_wm.h
>> +++ b/drivers/gpu/drm/i915/display/intel_wm.h
>> @@ -31,6 +31,7 @@ bool intel_wm_plane_visible(const struct intel_crtc_st=
ate *crtc_state,
>>  			    const struct intel_plane_state *plane_state);
>>  void intel_print_wm_latency(struct drm_i915_private *i915,
>>  			    const char *name, const u16 wm[]);
>> +void intel_wm_sanitize(struct drm_i915_private *i915);
>>  void intel_wm_init(struct drm_i915_private *i915);
>>=20=20
>>  #endif /* __INTEL_WM_H__ */
>> --=20
>> 2.34.1

--=20
Jani Nikula, Intel Open Source Graphics Center
