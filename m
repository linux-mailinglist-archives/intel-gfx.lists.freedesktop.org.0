Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 8E2947DBA17
	for <lists+intel-gfx@lfdr.de>; Mon, 30 Oct 2023 13:46:01 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id DCD5810E2AE;
	Mon, 30 Oct 2023 12:45:59 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [134.134.136.20])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 86BEE10E2AE
 for <intel-gfx@lists.freedesktop.org>; Mon, 30 Oct 2023 12:45:57 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1698669957; x=1730205957;
 h=from:to:subject:in-reply-to:references:date:message-id:
 mime-version:content-transfer-encoding;
 bh=WMTqmX8MSa61L+Rhcbm00FEigPH7QJo7DomCYnfp3ds=;
 b=llSdds50Vn+jyx7iWJayyibZAJaFphsJ2OIC3gvFGwTXo4941GQpnQ4+
 /kTaDuuGSojtenVn9XwzOtDo05MyjckTwZdgvJzjI6Av5J83V6amYJn2J
 6SbhnMquBHbJ+DZIFerU0O+2Yq8WH/wK/wYZhABC5T+K/qyOTiZM5uqeP
 waLkpHU1EJ+mgSesUKCyQIdkZ8NrgZbE8zhUdg3eoROBvtK2uQczLwilF
 JiylGKRhsZZ2yKqr8eqemgOTEL8aelHirxjxEUifEkkyvp31E5kbGiqy4
 7JB9czKWe6YKXjJLjfnXp5dlEK1b1XOeFzTgVO0MdwPRGuUVAD1h9B4AU A==;
X-IronPort-AV: E=McAfee;i="6600,9927,10878"; a="378434760"
X-IronPort-AV: E=Sophos;i="6.03,263,1694761200"; d="scan'208";a="378434760"
Received: from orsmga003.jf.intel.com ([10.7.209.27])
 by orsmga101.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 30 Oct 2023 05:45:57 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10878"; a="710088167"
X-IronPort-AV: E=Sophos;i="6.03,263,1694761200"; d="scan'208";a="710088167"
Received: from squtub-mobl.ger.corp.intel.com (HELO localhost)
 ([10.252.33.238])
 by orsmga003-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 30 Oct 2023 05:45:55 -0700
From: Jani Nikula <jani.nikula@linux.intel.com>
To: Ville Syrjala <ville.syrjala@linux.intel.com>,
 intel-gfx@lists.freedesktop.org
In-Reply-To: <20231018154123.5479-5-ville.syrjala@linux.intel.com>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
References: <20231018154123.5479-1-ville.syrjala@linux.intel.com>
 <20231018154123.5479-5-ville.syrjala@linux.intel.com>
Date: Mon, 30 Oct 2023 14:45:43 +0200
Message-ID: <87bkcg5le0.fsf@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: quoted-printable
Subject: Re: [Intel-gfx] [PATCH 4/4] drm/i915/mst: Always write CHICKEN_TRANS
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

On Wed, 18 Oct 2023, Ville Syrjala <ville.syrjala@linux.intel.com> wrote:
> From: Ville Syrj=C3=A4l=C3=A4 <ville.syrjala@linux.intel.com>
>
> Since we're asked to disable FECSTALL_DIS_DPTSTREAM_DPTTG when
> the transcoder is disabled it seems prudent to also clear it
> when enabliing the transcoder w/o FEC, just in case
> someone else left it enabled by mistake.
>
> Signed-off-by: Ville Syrj=C3=A4l=C3=A4 <ville.syrjala@linux.intel.com>

Reviewed-by: Jani Nikula <jani.nikula@intel.com>

> ---
>  drivers/gpu/drm/i915/display/intel_dp_mst.c | 14 ++++++++------
>  1 file changed, 8 insertions(+), 6 deletions(-)
>
> diff --git a/drivers/gpu/drm/i915/display/intel_dp_mst.c b/drivers/gpu/dr=
m/i915/display/intel_dp_mst.c
> index 3c66a3e3cc5e..38ad81d3bbe6 100644
> --- a/drivers/gpu/drm/i915/display/intel_dp_mst.c
> +++ b/drivers/gpu/drm/i915/display/intel_dp_mst.c
> @@ -817,12 +817,14 @@ static void intel_mst_enable_dp(struct intel_atomic=
_state *state,
>  	drm_dp_add_payload_part2(&intel_dp->mst_mgr, &state->base,
>  				 drm_atomic_get_mst_payload_state(mst_state, connector->port));
>=20=20
> -	if (DISPLAY_VER(dev_priv) >=3D 14 && pipe_config->fec_enable)
> -		intel_de_rmw(dev_priv, MTL_CHICKEN_TRANS(trans), 0,
> -			     FECSTALL_DIS_DPTSTREAM_DPTTG);
> -	else if (DISPLAY_VER(dev_priv) >=3D 12 && pipe_config->fec_enable)
> -		intel_de_rmw(dev_priv, CHICKEN_TRANS(trans), 0,
> -			     FECSTALL_DIS_DPTSTREAM_DPTTG);
> +	if (DISPLAY_VER(dev_priv) >=3D 14)
> +		intel_de_rmw(dev_priv, MTL_CHICKEN_TRANS(trans),
> +			     FECSTALL_DIS_DPTSTREAM_DPTTG,
> +			     pipe_config->fec_enable ? FECSTALL_DIS_DPTSTREAM_DPTTG : 0);
> +	else if (DISPLAY_VER(dev_priv) >=3D 12)
> +		intel_de_rmw(dev_priv, CHICKEN_TRANS(trans),
> +			     FECSTALL_DIS_DPTSTREAM_DPTTG,
> +			     pipe_config->fec_enable ? FECSTALL_DIS_DPTSTREAM_DPTTG : 0);
>=20=20
>  	intel_audio_sdp_split_update(pipe_config);

--=20
Jani Nikula, Intel
