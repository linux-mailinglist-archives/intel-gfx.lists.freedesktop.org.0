Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id D75D3533B44
	for <lists+intel-gfx@lfdr.de>; Wed, 25 May 2022 13:08:03 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 0AF7810E68F;
	Wed, 25 May 2022 11:07:58 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga12.intel.com (mga12.intel.com [192.55.52.136])
 by gabe.freedesktop.org (Postfix) with ESMTPS id CFFC310E68F
 for <intel-gfx@lists.freedesktop.org>; Wed, 25 May 2022 11:07:56 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1653476876; x=1685012876;
 h=from:to:subject:in-reply-to:references:date:message-id:
 mime-version:content-transfer-encoding;
 bh=TOprkI1+Q/c1/e1FkygljFeKF3UWaOTk9H8cDRzCWoU=;
 b=mlvFR/b+Gh87BsKXF2tMgHI+u9LfvINVu1seZUjeEhRNrD4Yk/sYnXRL
 uOnTCZkv28Glr/eG171UT0LeU4maiyZwP8xTpuT9ewU/4BqdPpcJfBJvX
 P982gNTnU0PGHh1cSKvFsjqS3fgF736S6qh4/VJyknKjfN1OGQBBXUzDR
 3oK9Vd34vGt5LBTEDTpAZfNsbXn1cOOCLRKsgmf8tlkJ4XZs+ZYV+xsyo
 MA64jtVJj5sOJijF/nJfDDjgvs+vZG2bwUGnp8qWTCgCGyY+nqvZQFTl5
 mVJs9qkdp35urtSZIMFpxRO7QBD7L+8EIEPlFESFa15dUo5OQ0tQnAo9a Q==;
X-IronPort-AV: E=McAfee;i="6400,9594,10357"; a="253659021"
X-IronPort-AV: E=Sophos;i="5.91,250,1647327600"; d="scan'208";a="253659021"
Received: from orsmga006.jf.intel.com ([10.7.209.51])
 by fmsmga106.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 25 May 2022 04:07:56 -0700
X-IronPort-AV: E=Sophos;i="5.91,250,1647327600"; d="scan'208";a="548965573"
Received: from mwardyn-mobl2.ger.corp.intel.com (HELO localhost)
 ([10.249.149.191])
 by orsmga006-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 25 May 2022 04:07:54 -0700
From: Jani Nikula <jani.nikula@linux.intel.com>
To: Ville Syrjala <ville.syrjala@linux.intel.com>,
 intel-gfx@lists.freedesktop.org
In-Reply-To: <20220503182242.18797-18-ville.syrjala@linux.intel.com>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
References: <20220503182242.18797-1-ville.syrjala@linux.intel.com>
 <20220503182242.18797-18-ville.syrjala@linux.intel.com>
Date: Wed, 25 May 2022 14:07:52 +0300
Message-ID: <87wne9uayf.fsf@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: quoted-printable
Subject: Re: [Intel-gfx] [PATCH 17/26] drm/i915: Set active dpll early for
 icl+
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

On Tue, 03 May 2022, Ville Syrjala <ville.syrjala@linux.intel.com> wrote:
> From: Ville Syrj=C3=A4l=C3=A4 <ville.syrjala@linux.intel.com>
>
> To make the fastboot checks at least somewhat sensible let's mark
> the expected DPLL as the active one right after we finished the
> state computation. Otherwise intel_pipe_config_compare() will
> always be comparing things against NULL/0.
>
> TODO: This is still not really right. If the previous commit
> had to fall back to the other PLL then the comparisong will
> now fail. I guess intel_pipe_config_compare() should rather
> be comparing port_dplls[] instead. But to do that we really
> should just unify every platform to use the port_dplls[]
> approach whether they have any need for PLL fallbacks or not.
>
> Signed-off-by: Ville Syrj=C3=A4l=C3=A4 <ville.syrjala@linux.intel.com>

Acked-by: Jani Nikula <jani.nikula@intel.com>


> ---
>  drivers/gpu/drm/i915/display/intel_dpll_mgr.c | 6 ++++++
>  1 file changed, 6 insertions(+)
>
> diff --git a/drivers/gpu/drm/i915/display/intel_dpll_mgr.c b/drivers/gpu/=
drm/i915/display/intel_dpll_mgr.c
> index 416d78f9e140..6564d7baf978 100644
> --- a/drivers/gpu/drm/i915/display/intel_dpll_mgr.c
> +++ b/drivers/gpu/drm/i915/display/intel_dpll_mgr.c
> @@ -3225,6 +3225,9 @@ static int icl_compute_combo_phy_dpll(struct intel_=
atomic_state *state,
>=20=20
>  	icl_calc_dpll_state(dev_priv, &pll_params, &port_dpll->hw_state);
>=20=20
> +	/* this is mainly for the fastset check */
> +	icl_set_active_port_dpll(crtc_state, ICL_PORT_DPLL_DEFAULT);
> +
>  	crtc_state->port_clock =3D icl_ddi_combo_pll_get_freq(dev_priv, NULL,
>  							    &port_dpll->hw_state);
>=20=20
> @@ -3313,6 +3316,9 @@ static int icl_compute_tc_phy_dplls(struct intel_at=
omic_state *state,
>  	if (ret)
>  		return ret;
>=20=20
> +	/* this is mainly for the fastset check */
> +	icl_set_active_port_dpll(crtc_state, ICL_PORT_DPLL_MG_PHY);
> +
>  	crtc_state->port_clock =3D icl_ddi_mg_pll_get_freq(dev_priv, NULL,
>  							 &port_dpll->hw_state);

--=20
Jani Nikula, Intel Open Source Graphics Center
