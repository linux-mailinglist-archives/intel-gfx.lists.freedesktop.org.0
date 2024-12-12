Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 3D0539EE419
	for <lists+intel-gfx@lfdr.de>; Thu, 12 Dec 2024 11:28:58 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id CF8ED10ED54;
	Thu, 12 Dec 2024 10:28:56 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from coelho.fi (coelho.fi [88.99.146.29])
 by gabe.freedesktop.org (Postfix) with ESMTPS id C90DE10ED50;
 Thu, 12 Dec 2024 10:28:55 +0000 (UTC)
Received: from 91-155-254-135.elisa-laajakaista.fi ([91.155.254.135]
 helo=[192.168.100.137])
 by coelho.fi with esmtpsa (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
 (Exim 4.97) (envelope-from <luca@coelho.fi>)
 id 1tLgRA-00000002rai-1djL; Thu, 12 Dec 2024 12:28:53 +0200
Message-ID: <75fa3ef51ac0e838dd6beccb1ff210c453522947.camel@coelho.fi>
From: Luca Coelho <luca@coelho.fi>
To: Jani Nikula <jani.nikula@intel.com>, intel-gfx@lists.freedesktop.org, 
 intel-xe@lists.freedesktop.org
Date: Thu, 12 Dec 2024 12:28:51 +0200
In-Reply-To: <87813733bb561a64cfd134b90826dfa7afbb33d7.1733827537.git.jani.nikula@intel.com>
References: <cover.1733827537.git.jani.nikula@intel.com>
 <87813733bb561a64cfd134b90826dfa7afbb33d7.1733827537.git.jani.nikula@intel.com>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
User-Agent: Evolution 3.54.1-1 
MIME-Version: 1.0
X-Spam-Checker-Version: SpamAssassin 4.0.1-pre1 (2023-11-21) on
 farmhouse.coelho.fi
X-Spam-Level: 
X-Spam-Status: No, score=-2.9 required=5.0 tests=ALL_TRUSTED,BAYES_00,
 TVD_RCVD_IP,T_SCC_BODY_TEXT_LINE autolearn=ham autolearn_force=no
 version=4.0.1-pre1
Subject: Re: [PATCH v2 5/5] drm/i915/dp: finish link training conversion to
 struct intel_display
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

On Tue, 2024-12-10 at 12:46 +0200, Jani Nikula wrote:
> Convert the final stragglers to struct intel_display now that we have
> platform identification via it too.
>=20
> Signed-off-by: Jani Nikula <jani.nikula@intel.com>
> ---
>  drivers/gpu/drm/i915/display/intel_dp_link_training.c | 9 +++------
>  1 file changed, 3 insertions(+), 6 deletions(-)
>=20
> diff --git a/drivers/gpu/drm/i915/display/intel_dp_link_training.c b/driv=
ers/gpu/drm/i915/display/intel_dp_link_training.c
> index b84fee94c0a0..02ad0fbb1859 100644
> --- a/drivers/gpu/drm/i915/display/intel_dp_link_training.c
> +++ b/drivers/gpu/drm/i915/display/intel_dp_link_training.c
> @@ -221,7 +221,6 @@ static int intel_dp_init_lttpr(struct intel_dp *intel=
_dp, const u8 dpcd[DP_RECEI
>  int intel_dp_read_dprx_caps(struct intel_dp *intel_dp, u8 dpcd[DP_RECEIV=
ER_CAP_SIZE])
>  {
>  	struct intel_display *display =3D to_intel_display(intel_dp);
> -	struct drm_i915_private *i915 =3D to_i915(display->drm);
> =20
>  	if (intel_dp_is_edp(intel_dp))
>  		return 0;
> @@ -230,7 +229,7 @@ int intel_dp_read_dprx_caps(struct intel_dp *intel_dp=
, u8 dpcd[DP_RECEIVER_CAP_S
>  	 * Detecting LTTPRs must be avoided on platforms with an AUX timeout
>  	 * period < 3.2ms. (see DP Standard v2.0, 2.11.2, 3.6.6.1).
>  	 */
> -	if (DISPLAY_VER(display) >=3D 10 && !IS_GEMINILAKE(i915))
> +	if (DISPLAY_VER(display) >=3D 10 && !display->platform.geminilake)

This is nice! I hadn't seen it yet.

Reviewed-by: Luca Coelho <luciano.coelho@intel.com>

--
Cheers,
Luca.



>  		if (drm_dp_dpcd_probe(&intel_dp->aux,
>  				      DP_LT_TUNABLE_PHY_REPEATER_FIELD_DATA_STRUCTURE_REV))
>  			return -EIO;
> @@ -262,7 +261,6 @@ int intel_dp_read_dprx_caps(struct intel_dp *intel_dp=
, u8 dpcd[DP_RECEIVER_CAP_S
>  int intel_dp_init_lttpr_and_dprx_caps(struct intel_dp *intel_dp)
>  {
>  	struct intel_display *display =3D to_intel_display(intel_dp);
> -	struct drm_i915_private *i915 =3D to_i915(display->drm);
>  	int lttpr_count =3D 0;
> =20
>  	/*
> @@ -270,7 +268,7 @@ int intel_dp_init_lttpr_and_dprx_caps(struct intel_dp=
 *intel_dp)
>  	 * period < 3.2ms. (see DP Standard v2.0, 2.11.2, 3.6.6.1).
>  	 */
>  	if (!intel_dp_is_edp(intel_dp) &&
> -	    (DISPLAY_VER(display) >=3D 10 && !IS_GEMINILAKE(i915))) {
> +	    (DISPLAY_VER(display) >=3D 10 && !display->platform.geminilake)) {
>  		u8 dpcd[DP_RECEIVER_CAP_SIZE];
>  		int err =3D intel_dp_read_dprx_caps(intel_dp, dpcd);
> =20
> @@ -391,10 +389,9 @@ static bool has_per_lane_signal_levels(struct intel_=
dp *intel_dp,
>  				       enum drm_dp_phy dp_phy)
>  {
>  	struct intel_display *display =3D to_intel_display(intel_dp);
> -	struct drm_i915_private *i915 =3D to_i915(display->drm);
> =20
>  	return !intel_dp_phy_is_downstream_of_source(intel_dp, dp_phy) ||
> -		DISPLAY_VER(display) >=3D 10 || IS_BROXTON(i915);
> +		DISPLAY_VER(display) >=3D 10 || display->platform.broxton;
>  }
> =20
>  /* 128b/132b */

