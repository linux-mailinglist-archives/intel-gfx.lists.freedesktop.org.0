Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id BFB905EAD74
	for <lists+intel-gfx@lfdr.de>; Mon, 26 Sep 2022 19:01:16 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id CCF9910E48E;
	Mon, 26 Sep 2022 17:01:14 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga14.intel.com (mga14.intel.com [192.55.52.115])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 8FAEE10E48E
 for <intel-gfx@lists.freedesktop.org>; Mon, 26 Sep 2022 17:01:12 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1664211672; x=1695747672;
 h=from:to:subject:in-reply-to:references:date:message-id:
 mime-version:content-transfer-encoding;
 bh=ISj2j5oaiS3mYE2ckRAWKFBIgkKhv/ksbsVF0zXYNqU=;
 b=eLA/5UhbLL/s17GlGc8TK3721x+FZeIrK/qfDfHXV6+VxE+6IrgkWzc3
 e00p5eSZcz4Lne4ZxHhNmnHGPfaMh/nfZbU4hxGRgvwplIb6D5iilFgND
 L8IT3yaFROitsYY9jS0Wvqsdv6qtHCpOh1MPUUyErk5MZtRaONVSpDCF0
 Jbsw/i1kjKwyR9zHc0d6BTwGrd+P/FFrMzK4sfDQM9sHxB9nUwaHZ0mKD
 wA70USEiPoCi5X8DF7DVy+8fLr2RkRX/rxerQEqFV0Glm/7MdnFimwwhe
 Sdlk5ygn36I+PWx658u92XG+NmIWRCqbKWJowP7zv2o357zbV1lR/R15F g==;
X-IronPort-AV: E=McAfee;i="6500,9779,10482"; a="301066263"
X-IronPort-AV: E=Sophos;i="5.93,346,1654585200"; d="scan'208";a="301066263"
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
 by fmsmga103.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 26 Sep 2022 10:01:12 -0700
X-IronPort-AV: E=McAfee;i="6500,9779,10482"; a="725122307"
X-IronPort-AV: E=Sophos;i="5.93,346,1654585200"; d="scan'208";a="725122307"
Received: from lsabisze-mobl.ger.corp.intel.com (HELO localhost)
 ([10.252.59.243])
 by fmsmga002-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 26 Sep 2022 10:01:11 -0700
From: Jani Nikula <jani.nikula@linux.intel.com>
To: Ville Syrjala <ville.syrjala@linux.intel.com>,
 intel-gfx@lists.freedesktop.org
In-Reply-To: <20220922191236.4194-1-ville.syrjala@linux.intel.com>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
References: <20220921211525.10675-2-ville.syrjala@linux.intel.com>
 <20220922191236.4194-1-ville.syrjala@linux.intel.com>
Date: Mon, 26 Sep 2022 20:00:51 +0300
Message-ID: <87v8pa135o.fsf@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: quoted-printable
Subject: Re: [Intel-gfx] [PATCH v2 1/4] drm/i915: Force DPLL calculation for
 TC ports after readout
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
> v2: Avoid bitwise operation on bool (Jani)
>     Call the return variable 'fastset' to convey its meaning

I think the end result is more readable too.

On the series,

Reviewed-by: Jani Nikula <jani.nikula@intel.com>


>
> Reported-by: Lee Shawn C <shawn.c.lee@intel.com>
> Fixes: b000abd3b3d2 ("drm/i915: Do .crtc_compute_clock() earlier")
> Signed-off-by: Ville Syrj=C3=A4l=C3=A4 <ville.syrjala@linux.intel.com>
> ---
>  drivers/gpu/drm/i915/display/intel_ddi.c | 18 +++++++++++++++---
>  1 file changed, 15 insertions(+), 3 deletions(-)
>
> diff --git a/drivers/gpu/drm/i915/display/intel_ddi.c b/drivers/gpu/drm/i=
915/display/intel_ddi.c
> index 643832d55c28..da8472cdc135 100644
> --- a/drivers/gpu/drm/i915/display/intel_ddi.c
> +++ b/drivers/gpu/drm/i915/display/intel_ddi.c
> @@ -3600,10 +3600,22 @@ static void intel_ddi_sync_state(struct intel_enc=
oder *encoder,
>  static bool intel_ddi_initial_fastset_check(struct intel_encoder *encode=
r,
>  					    struct intel_crtc_state *crtc_state)
>  {
> -	if (intel_crtc_has_dp_encoder(crtc_state))
> -		return intel_dp_initial_fastset_check(encoder, crtc_state);
> +	struct drm_i915_private *i915 =3D to_i915(encoder->base.dev);
> +	enum phy phy =3D intel_port_to_phy(i915, encoder->port);
> +	bool fastset =3D true;
>=20=20
> -	return true;
> +	if (intel_phy_is_tc(i915, phy)) {
> +		drm_dbg_kms(&i915->drm, "[ENCODER:%d:%s] Forcing full modeset to compu=
te TC port DPLLs\n",
> +			    encoder->base.base.id, encoder->base.name);
> +		crtc_state->uapi.mode_changed =3D true;
> +		fastset =3D false;
> +	}
> +
> +	if (intel_crtc_has_dp_encoder(crtc_state) &&
> +	    !intel_dp_initial_fastset_check(encoder, crtc_state))
> +		fastset =3D false;
> +
> +	return fastset;
>  }
>=20=20
>  static enum intel_output_type

--=20
Jani Nikula, Intel Open Source Graphics Center
