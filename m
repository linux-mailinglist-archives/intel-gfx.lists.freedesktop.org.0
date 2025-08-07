Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 24D84B1D636
	for <lists+intel-gfx@lfdr.de>; Thu,  7 Aug 2025 12:59:33 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id B56CC10E7AB;
	Thu,  7 Aug 2025 10:59:31 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from coelho.fi (coelho.fi [88.99.146.29])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 0C79010E481;
 Thu,  7 Aug 2025 10:59:30 +0000 (UTC)
Received: from 91-155-254-205.elisa-laajakaista.fi ([91.155.254.205]
 helo=[192.168.100.137])
 by coelho.fi with esmtpsa (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
 (Exim 4.97) (envelope-from <luca@coelho.fi>)
 id 1ujyLD-00000009Wpo-27Cb; Thu, 07 Aug 2025 13:59:28 +0300
Message-ID: <95999d2602067f556dc2e5739758deef7c462e17.camel@coelho.fi>
From: Luca Coelho <luca@coelho.fi>
To: Imre Deak <imre.deak@intel.com>, intel-gfx@lists.freedesktop.org, 
 intel-xe@lists.freedesktop.org
Cc: stable@vger.kernel.org, Charlton Lin <charlton.lin@intel.com>, Khaled
 Almahallawy <khaled.almahallawy@intel.com>
Date: Thu, 07 Aug 2025 13:59:21 +0300
In-Reply-To: <20250805073700.642107-2-imre.deak@intel.com>
References: <20250805073700.642107-1-imre.deak@intel.com>
 <20250805073700.642107-2-imre.deak@intel.com>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
User-Agent: Evolution 3.56.1-1 
MIME-Version: 1.0
X-Spam-Checker-Version: SpamAssassin 4.0.1-pre1 (2023-11-21) on
 farmhouse.coelho.fi
X-Spam-Level: 
X-Spam-Status: No, score=-2.9 required=5.0 tests=ALL_TRUSTED,BAYES_00,
 TVD_RCVD_IP,T_SCC_BODY_TEXT_LINE autolearn=ham autolearn_force=no
 version=4.0.1-pre1
Subject: Re: [PATCH 01/19] drm/i915/lnl+/tc: Fix handling of an
 enabled/disconnected dp-alt sink
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

On Tue, 2025-08-05 at 10:36 +0300, Imre Deak wrote:
> The TypeC PHY HW readout during driver loading and system resume
> determines which TypeC mode the PHY is in (legacy/DP-alt/TBT-alt) and
> whether the PHY is connected, based on the PHY's Owned and Ready flags.
> For the PHY to be in DP-alt or legacy mode and for the PHY to be in the
> connected state in these modes, both the Owned (set by the BIOS/driver)
> and the Ready (set by the HW) flags should be set.
>=20
> On ICL-MTL the HW kept the PHY's Ready flag set after the driver
> connected the PHY by acquiring the PHY ownership (by setting the Owned
> flag), until the driver disconnected the PHY by releasing the PHY
> ownership (by clearing the Owned flag). On LNL+ this has changed, in
> that the HW clears the Ready flag as soon as the sink gets disconnected,
> even if the PHY ownership was acquired already and hence the PHY is
> being used by the display.
>=20
> When inheriting the HW state from BIOS for a PHY connected in DP-alt
> mode on which the sink got disconnected - i.e. in a case where the sink
> was connected while BIOS/GOP was running and so the sink got enabled
> connecting the PHY, but the user disconnected the sink by the time the
> driver loaded - the PHY Owned but not Ready state must be accounted for
> on LNL+ according to the above. Do that by assuming on LNL+ that the PHY
> is connected in DP-alt mode whenever the PHY Owned flag is set,
> regardless of the PHY Ready flag.
>=20
> This fixes a problem on LNL+, where the PHY TypeC mode / connected state
> was detected incorrectly for a DP-alt sink, which got connected and then
> disconnected by the user in the above way.
>=20
> Cc: stable@vger.kernel.org # v6.8+
> Reported-by: Charlton Lin <charlton.lin@intel.com>
> Tested-by: Khaled Almahallawy <khaled.almahallawy@intel.com>
> Signed-off-by: Imre Deak <imre.deak@intel.com>
> ---
>  drivers/gpu/drm/i915/display/intel_tc.c | 16 ++++++++++------
>  1 file changed, 10 insertions(+), 6 deletions(-)
>=20
> diff --git a/drivers/gpu/drm/i915/display/intel_tc.c b/drivers/gpu/drm/i9=
15/display/intel_tc.c
> index 3bc57579fe53e..73a08bd84a70a 100644
> --- a/drivers/gpu/drm/i915/display/intel_tc.c
> +++ b/drivers/gpu/drm/i915/display/intel_tc.c
> @@ -1226,14 +1226,18 @@ static void tc_phy_get_hw_state(struct intel_tc_p=
ort *tc)
>  	tc->phy_ops->get_hw_state(tc);
>  }
> =20
> -static bool tc_phy_is_ready_and_owned(struct intel_tc_port *tc,
> -				      bool phy_is_ready, bool phy_is_owned)
> +static bool tc_phy_in_legacy_or_dp_alt_mode(struct intel_tc_port *tc,
> +					    bool phy_is_ready, bool phy_is_owned)

Personally I don't like the "or" in the function name.  You're
returning a boolean which is true or false.  The return value is akin
to answering "Yes/No" to the question "Is it black or white".

This is a nitpick, obviously, so I'll leave it up to you.

Regardless:

Reviewed-by: Luca Coelho <luciano.coelho@intel.com>

--
Cheers,
Luca.

>  {
>  	struct intel_display *display =3D to_intel_display(tc->dig_port);
> =20
> -	drm_WARN_ON(display->drm, phy_is_owned && !phy_is_ready);
> +	if (DISPLAY_VER(display) < 20) {
> +		drm_WARN_ON(display->drm, phy_is_owned && !phy_is_ready);
> =20
> -	return phy_is_ready && phy_is_owned;
> +		return phy_is_ready && phy_is_owned;
> +	} else {
> +		return phy_is_owned;
> +	}
>  }
> =20
>  static bool tc_phy_is_connected(struct intel_tc_port *tc,
> @@ -1244,7 +1248,7 @@ static bool tc_phy_is_connected(struct intel_tc_por=
t *tc,
>  	bool phy_is_owned =3D tc_phy_is_owned(tc);
>  	bool is_connected;
> =20
> -	if (tc_phy_is_ready_and_owned(tc, phy_is_ready, phy_is_owned))
> +	if (tc_phy_in_legacy_or_dp_alt_mode(tc, phy_is_ready, phy_is_owned))
>  		is_connected =3D port_pll_type =3D=3D ICL_PORT_DPLL_MG_PHY;
>  	else
>  		is_connected =3D port_pll_type =3D=3D ICL_PORT_DPLL_DEFAULT;
> @@ -1352,7 +1356,7 @@ tc_phy_get_current_mode(struct intel_tc_port *tc)
>  	phy_is_ready =3D tc_phy_is_ready(tc);
>  	phy_is_owned =3D tc_phy_is_owned(tc);
> =20
> -	if (!tc_phy_is_ready_and_owned(tc, phy_is_ready, phy_is_owned)) {
> +	if (!tc_phy_in_legacy_or_dp_alt_mode(tc, phy_is_ready, phy_is_owned)) {
>  		mode =3D get_tc_mode_in_phy_not_owned_state(tc, live_mode);
>  	} else {
>  		drm_WARN_ON(display->drm, live_mode =3D=3D TC_PORT_TBT_ALT);
