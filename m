Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id B59315E61D4
	for <lists+intel-gfx@lfdr.de>; Thu, 22 Sep 2022 13:57:25 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 6FEB310EADB;
	Thu, 22 Sep 2022 11:57:18 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga07.intel.com (mga07.intel.com [134.134.136.100])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 23F1910EADC
 for <intel-gfx@lists.freedesktop.org>; Thu, 22 Sep 2022 11:57:15 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1663847834; x=1695383834;
 h=from:to:subject:in-reply-to:references:date:message-id:
 mime-version:content-transfer-encoding;
 bh=ynNWfz75KnfqV4D89rl8f4HPOQjYBoYKgoL7I0odQOw=;
 b=PPRcgALV/hfguOmFbLlT6KfLu3GrgXdMxZPdvHHCojBRWfJtQWUbl9au
 JbWI5k6XcNlfnt9Afs34zok1oDcBhtAoJqPZqfauUqNSU7201MD6q7EUL
 oOWlbpO76yQVUq0p2zZEAR6AK3F1NRcio/9z7PCULB5+/OTRE5vPgfPmD
 xg7xNe3pFrvEceCvQUXoXsRq0Lu32y+x1rIwhkr2aAc9Jrq0fc8mLP+ns
 C7yqBmOXBSKS4q+rljbK3jGX1vQRr7XjYW7TduuiGo3mOUUOIXf5R8oty
 7nYrkMTVy1jT9Rj3zwDhXNCEQp138zJCxxS8alDP6Iau5g7aOJKBU0Hc9 Q==;
X-IronPort-AV: E=McAfee;i="6500,9779,10477"; a="364255681"
X-IronPort-AV: E=Sophos;i="5.93,335,1654585200"; d="scan'208";a="364255681"
Received: from orsmga003.jf.intel.com ([10.7.209.27])
 by orsmga105.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 22 Sep 2022 04:57:11 -0700
X-IronPort-AV: E=Sophos;i="5.93,335,1654585200"; d="scan'208";a="570933684"
Received: from jnikula-mobl4.fi.intel.com (HELO localhost) ([10.237.66.153])
 by orsmga003-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 22 Sep 2022 04:57:11 -0700
From: Jani Nikula <jani.nikula@linux.intel.com>
To: Ville Syrjala <ville.syrjala@linux.intel.com>,
 intel-gfx@lists.freedesktop.org
In-Reply-To: <20220921211525.10675-2-ville.syrjala@linux.intel.com>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
References: <20220921211525.10675-1-ville.syrjala@linux.intel.com>
 <20220921211525.10675-2-ville.syrjala@linux.intel.com>
Date: Thu, 22 Sep 2022 14:56:53 +0300
Message-ID: <87pmfn62re.fsf@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: quoted-printable
Subject: Re: [Intel-gfx] [PATCH 1/4] drm/i915: Force DPLL calculation for TC
 ports after readout
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

On Thu, 22 Sep 2022, Ville Syrjala <ville.syrjala@linux.intel.com> wrote:
> From: Ville Syrj=C3=A4l=C3=A4 <ville.syrjala@linux.intel.com>
>
> We always allocate two DPLLs (TC and TBT) for TC ports. This
> is because we can't know ahead of time wherher we need to put
> the PHY into DP-Alt or TBT mode.
>
> However during readout we can obviously only read out the state
> of the DPLL that the port is actually using. Thus the state after
> readout will not have both DPLLs populated.
>
> We run into problems if during readout the TC port is in DP-Alt
> mode, but we then perform a modeset on the port without going
> through the full .compute_config() machinery, and during said
> modeset the port cannot be switched back into DP-Alt mode and
> we need to take the TBT fallback path. Such a modeset can
> happen eg. due to cdclk reprogramming.
>
> This wasn't a problem earlier because we did all the DPLL
> calculations much later in the modeset. So even if flagged
> a modeset very late we'd still have gone through the DPLL
> calculations. But now all the DPLL calculations happen much
> earlier and so we need to deal with it, or else we'll attempt
> a modeset without a DPLL.
>
> To guarantee that we always have both DPLLs fully cal/ulated
> for TC ports force a full modeset computation during the
> initial commit.
>
> Reported-by: Lee Shawn C <shawn.c.lee@intel.com>
> Fixes: b000abd3b3d2 ("drm/i915: Do .crtc_compute_clock() earlier")
> Signed-off-by: Ville Syrj=C3=A4l=C3=A4 <ville.syrjala@linux.intel.com>
> ---
>  drivers/gpu/drm/i915/display/intel_ddi.c | 15 +++++++++++++--
>  1 file changed, 13 insertions(+), 2 deletions(-)
>
> diff --git a/drivers/gpu/drm/i915/display/intel_ddi.c b/drivers/gpu/drm/i=
915/display/intel_ddi.c
> index 643832d55c28..6278b8ea5bf1 100644
> --- a/drivers/gpu/drm/i915/display/intel_ddi.c
> +++ b/drivers/gpu/drm/i915/display/intel_ddi.c
> @@ -3600,10 +3600,21 @@ static void intel_ddi_sync_state(struct intel_enc=
oder *encoder,
>  static bool intel_ddi_initial_fastset_check(struct intel_encoder *encode=
r,
>  					    struct intel_crtc_state *crtc_state)
>  {
> +	struct drm_i915_private *i915 =3D to_i915(encoder->base.dev);
> +	enum phy phy =3D intel_port_to_phy(i915, encoder->port);
> +	bool ret =3D true;
> +
> +	if (intel_phy_is_tc(i915, phy)) {
> +		drm_dbg_kms(&i915->drm, "[ENCODER:%d:%s] Forcing full modeset to compu=
te TC port DPLLs\n",
> +			    encoder->base.base.id, encoder->base.name);
> +		crtc_state->uapi.mode_changed =3D true;
> +		ret =3D false;
> +	}
> +
>  	if (intel_crtc_has_dp_encoder(crtc_state))
> -		return intel_dp_initial_fastset_check(encoder, crtc_state);
> +		ret &=3D intel_dp_initial_fastset_check(encoder, crtc_state);

I think there have been static checker warnings about mixing bitwise and
boolean AND like this. I guess there's implicit type conversion to int
and back to bool.

BR,
Jani.

>=20=20
> -	return true;
> +	return ret;
>  }
>=20=20
>  static enum intel_output_type

--=20
Jani Nikula, Intel Open Source Graphics Center
