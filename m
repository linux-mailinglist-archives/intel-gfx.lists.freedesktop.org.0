Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 7C82C27EC02
	for <lists+intel-gfx@lfdr.de>; Wed, 30 Sep 2020 17:13:27 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 8F3E56E215;
	Wed, 30 Sep 2020 15:13:22 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga04.intel.com (mga04.intel.com [192.55.52.120])
 by gabe.freedesktop.org (Postfix) with ESMTPS id D16876E215
 for <intel-gfx@lists.freedesktop.org>; Wed, 30 Sep 2020 15:13:21 +0000 (UTC)
IronPort-SDR: 2t63ALjymEAY4p0+Yncddd413Lprki/uFFcUxaKqN9nGjM25LkVcEnR1h8FubwhS4E88tjAQK1
 hzdQXHD5hezw==
X-IronPort-AV: E=McAfee;i="6000,8403,9759"; a="159854084"
X-IronPort-AV: E=Sophos;i="5.77,322,1596524400"; d="scan'208";a="159854084"
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga004.jf.intel.com ([10.7.209.38])
 by fmsmga104.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 30 Sep 2020 08:12:58 -0700
IronPort-SDR: oskPPh8YUTTWxwQY7aLnlmt3B9NLq2o5o3++V8UkKr1VhrLBZeYfh/nnJwWOluypZu/cYcHSgI
 a0SWu7/A6xvA==
X-IronPort-AV: E=Sophos;i="5.77,322,1596524400"; d="scan'208";a="457690317"
Received: from ideak-desk.fi.intel.com ([10.237.68.141])
 by orsmga004-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 30 Sep 2020 08:12:56 -0700
Date: Wed, 30 Sep 2020 18:12:52 +0300
From: Imre Deak <imre.deak@intel.com>
To: Ville Syrjala <ville.syrjala@linux.intel.com>
Message-ID: <20200930151252.GD867650@ideak-desk.fi.intel.com>
References: <20200929233449.32323-5-ville.syrjala@linux.intel.com>
 <20200930100412.9313-1-ville.syrjala@linux.intel.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200930100412.9313-1-ville.syrjala@linux.intel.com>
Subject: Re: [Intel-gfx] [PATCH v3 04/11] drm/i915: Shove the PHY test into
 the hotplug work
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
Reply-To: imre.deak@intel.com
Cc: intel-gfx@lists.freedesktop.org
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Wed, Sep 30, 2020 at 01:04:12PM +0300, Ville Syrjala wrote:
> From: Ville Syrj=E4l=E4 <ville.syrjala@linux.intel.com>
> =

> Doing nay kind modeset stuff from the short hpd handler is
> verboten. The ad-hoc PHY test modeset code violates this. And
> by calling various link training related functions it's now
> blocking further work to plumb the crtc state down into the
> link training code.
> =

> Let's hack around that by pushing the PHY test stuff into the
> hotplug work where it's less of a problem. Still not great but
> at least acceptable. We take a few pages from the link retraining
> handbook to handle the locking and whatnot.
> =

> v2: Fix the intel_dp_hotplug() return value
> =

> Signed-off-by: Ville Syrj=E4l=E4 <ville.syrjala@linux.intel.com>

Looks ok to me:
Reviewed-by: Imre Deak <imre.deak@intel.com>

CC'ing also Animesh and Manasi.

> ---
>  drivers/gpu/drm/i915/display/intel_dp.c | 154 ++++++++++++++++++++----
>  1 file changed, 128 insertions(+), 26 deletions(-)
> =

> diff --git a/drivers/gpu/drm/i915/display/intel_dp.c b/drivers/gpu/drm/i9=
15/display/intel_dp.c
> index 5c673080ecb1..132b06a649d8 100644
> --- a/drivers/gpu/drm/i915/display/intel_dp.c
> +++ b/drivers/gpu/drm/i915/display/intel_dp.c
> @@ -5424,25 +5424,6 @@ static u8 intel_dp_autotest_edid(struct intel_dp *=
intel_dp)
>  	return test_result;
>  }
>  =

> -static u8 intel_dp_prepare_phytest(struct intel_dp *intel_dp)
> -{
> -	struct drm_dp_phy_test_params *data =3D
> -		&intel_dp->compliance.test_data.phytest;
> -
> -	if (drm_dp_get_phy_test_pattern(&intel_dp->aux, data)) {
> -		DRM_DEBUG_KMS("DP Phy Test pattern AUX read failure\n");
> -		return DP_TEST_NAK;
> -	}
> -
> -	/*
> -	 * link_mst is set to false to avoid executing mst related code
> -	 * during compliance testing.
> -	 */
> -	intel_dp->link_mst =3D false;
> -
> -	return DP_TEST_ACK;
> -}
> -
>  static void intel_dp_phy_pattern_update(struct intel_dp *intel_dp)
>  {
>  	struct drm_i915_private *dev_priv =3D
> @@ -5590,15 +5571,18 @@ static void intel_dp_process_phy_request(struct i=
ntel_dp *intel_dp)
>  =

>  static u8 intel_dp_autotest_phy_pattern(struct intel_dp *intel_dp)
>  {
> -	u8 test_result;
> +	struct drm_dp_phy_test_params *data =3D
> +		&intel_dp->compliance.test_data.phytest;
>  =

> -	test_result =3D intel_dp_prepare_phytest(intel_dp);
> -	if (test_result !=3D DP_TEST_ACK)
> -		DRM_ERROR("Phy test preparation failed\n");
> +	if (drm_dp_get_phy_test_pattern(&intel_dp->aux, data)) {
> +		DRM_DEBUG_KMS("DP Phy Test pattern AUX read failure\n");
> +		return DP_TEST_NAK;
> +	}
>  =

> -	intel_dp_process_phy_request(intel_dp);
> +	/* Set test active flag here so userspace doesn't interrupt things */
> +	intel_dp->compliance.test_active =3D true;
>  =

> -	return test_result;
> +	return DP_TEST_ACK;
>  }
>  =

>  static void intel_dp_handle_test_request(struct intel_dp *intel_dp)
> @@ -5887,6 +5871,104 @@ int intel_dp_retrain_link(struct intel_encoder *e=
ncoder,
>  	return 0;
>  }
>  =

> +static int intel_dp_prep_phy_test(struct intel_dp *intel_dp,
> +				  struct drm_modeset_acquire_ctx *ctx,
> +				  u32 *crtc_mask)
> +{
> +	struct drm_i915_private *i915 =3D dp_to_i915(intel_dp);
> +	struct drm_connector_list_iter conn_iter;
> +	struct intel_connector *connector;
> +	int ret =3D 0;
> +
> +	*crtc_mask =3D 0;
> +
> +	drm_connector_list_iter_begin(&i915->drm, &conn_iter);
> +	for_each_intel_connector_iter(connector, &conn_iter) {
> +		struct drm_connector_state *conn_state =3D
> +			connector->base.state;
> +		struct intel_crtc_state *crtc_state;
> +		struct intel_crtc *crtc;
> +
> +		if (!intel_dp_has_connector(intel_dp, conn_state))
> +			continue;
> +
> +		crtc =3D to_intel_crtc(conn_state->crtc);
> +		if (!crtc)
> +			continue;
> +
> +		ret =3D drm_modeset_lock(&crtc->base.mutex, ctx);
> +		if (ret)
> +			break;
> +
> +		crtc_state =3D to_intel_crtc_state(crtc->base.state);
> +
> +		drm_WARN_ON(&i915->drm, !intel_crtc_has_dp_encoder(crtc_state));
> +
> +		if (!crtc_state->hw.active)
> +			continue;
> +
> +		if (conn_state->commit &&
> +		    !try_wait_for_completion(&conn_state->commit->hw_done))
> +			continue;
> +
> +		*crtc_mask |=3D drm_crtc_mask(&crtc->base);
> +	}
> +	drm_connector_list_iter_end(&conn_iter);
> +
> +	return ret;
> +}
> +
> +static int intel_dp_do_phy_test(struct intel_encoder *encoder,
> +				struct drm_modeset_acquire_ctx *ctx)
> +{
> +	struct drm_i915_private *dev_priv =3D to_i915(encoder->base.dev);
> +	struct intel_dp *intel_dp =3D enc_to_intel_dp(encoder);
> +	u32 crtc_mask;
> +	int ret;
> +
> +	ret =3D drm_modeset_lock(&dev_priv->drm.mode_config.connection_mutex,
> +			       ctx);
> +	if (ret)
> +		return ret;
> +
> +	ret =3D intel_dp_prep_phy_test(intel_dp, ctx, &crtc_mask);
> +	if (ret)
> +		return ret;
> +
> +	if (crtc_mask =3D=3D 0)
> +		return 0;
> +
> +	drm_dbg_kms(&dev_priv->drm, "[ENCODER:%d:%s] PHY test\n",
> +		    encoder->base.base.id, encoder->base.name);
> +	intel_dp_process_phy_request(intel_dp);
> +
> +	return 0;
> +}
> +
> +static void intel_dp_phy_test(struct intel_encoder *encoder)
> +{
> +	struct drm_modeset_acquire_ctx ctx;
> +	int ret;
> +
> +	drm_modeset_acquire_init(&ctx, 0);
> +
> +	for (;;) {
> +		ret =3D intel_dp_do_phy_test(encoder, &ctx);
> +
> +		if (ret =3D=3D -EDEADLK) {
> +			drm_modeset_backoff(&ctx);
> +			continue;
> +		}
> +
> +		break;
> +	}
> +
> +	drm_modeset_drop_locks(&ctx);
> +	drm_modeset_acquire_fini(&ctx);
> +	drm_WARN(encoder->base.dev, ret,
> +		 "Acquiring modeset locks failed with %i\n", ret);
> +}
> +
>  /*
>   * If display is now connected check links status,
>   * there has been known issues of link loss triggering
> @@ -5903,10 +5985,18 @@ static enum intel_hotplug_state
>  intel_dp_hotplug(struct intel_encoder *encoder,
>  		 struct intel_connector *connector)
>  {
> +	struct intel_dp *intel_dp =3D enc_to_intel_dp(encoder);
>  	struct drm_modeset_acquire_ctx ctx;
>  	enum intel_hotplug_state state;
>  	int ret;
>  =

> +	if (intel_dp->compliance.test_active &&
> +	    intel_dp->compliance.test_type =3D=3D DP_TEST_LINK_PHY_TEST_PATTERN=
) {
> +		intel_dp_phy_test(encoder);
> +		/* just do the PHY test and nothing else */
> +		return INTEL_HOTPLUG_UNCHANGED;
> +	}
> +
>  	state =3D intel_encoder_hotplug(encoder, connector);
>  =

>  	drm_modeset_acquire_init(&ctx, 0);
> @@ -6011,11 +6101,23 @@ intel_dp_short_pulse(struct intel_dp *intel_dp)
>  =

>  	intel_psr_short_pulse(intel_dp);
>  =

> -	if (intel_dp->compliance.test_type =3D=3D DP_TEST_LINK_TRAINING) {
> +	switch (intel_dp->compliance.test_type) {
> +	case DP_TEST_LINK_TRAINING:
>  		drm_dbg_kms(&dev_priv->drm,
>  			    "Link Training Compliance Test requested\n");
>  		/* Send a Hotplug Uevent to userspace to start modeset */
>  		drm_kms_helper_hotplug_event(&dev_priv->drm);
> +		break;
> +	case DP_TEST_LINK_PHY_TEST_PATTERN:
> +		drm_dbg_kms(&dev_priv->drm,
> +			    "PHY test pattern Compliance Test requested\n");
> +		/*
> +		 * Schedule long hpd to do the test
> +		 *
> +		 * FIXME get rid of the ad-hoc phy test modeset code
> +		 * and properly incorporate it into the normal modeset.
> +		 */
> +		return false;
>  	}
>  =

>  	return true;
> -- =

> 2.26.2
> =

> _______________________________________________
> Intel-gfx mailing list
> Intel-gfx@lists.freedesktop.org
> https://lists.freedesktop.org/mailman/listinfo/intel-gfx
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
