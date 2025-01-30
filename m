Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 29818A22F80
	for <lists+intel-gfx@lfdr.de>; Thu, 30 Jan 2025 15:22:41 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 4E76E8876A;
	Thu, 30 Jan 2025 14:22:38 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="XSZgS83R";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.12])
 by gabe.freedesktop.org (Postfix) with ESMTPS id E735510E992;
 Thu, 30 Jan 2025 14:22:36 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1738246957; x=1769782957;
 h=date:from:to:cc:subject:message-id:reply-to:references:
 mime-version:in-reply-to;
 bh=eVgzVSQi9wEjFrGrklX95V4XHbDMj+vq7xZHbvkeia4=;
 b=XSZgS83RvFVyt2ZbTCfoG1BLXDR85cgw8UaNXcFK4yuFEJJDn2WzMbsK
 M75bRnYE/ErO9+qTbilJEtUywLrWhZpSDEPHU/y6Gvs+cMNRbL/sSDhPf
 c3EZ8ul9KNfdNuRqGBluKqpk2ngxmtdTOCyJdlc+pBLPFaLDTFTI7Knmn
 R7lovLvA6ok7Cp6x5IqoSGIiqGmvIl32qOXckSfPSFCk9dH8lA5WvNXO+
 z5zfMlQKvvtnATvlhTZYsczN8MyW0hpYVEePu0K9KbpHnzykbRIKjtBBa
 Xr8tCcgvba2qcKrKgsAfYBDeDIxwF179R2YaNraZztXipWF/G/IiXpLJH Q==;
X-CSE-ConnectionGUID: /czs4Fk3R2WgbEVNZj9vMw==
X-CSE-MsgGUID: uQ4aglKuSVqGdhRzN/kg/g==
X-IronPort-AV: E=McAfee;i="6700,10204,11331"; a="50173806"
X-IronPort-AV: E=Sophos;i="6.13,245,1732608000"; d="scan'208";a="50173806"
Received: from orviesa005.jf.intel.com ([10.64.159.145])
 by orvoesa104.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 30 Jan 2025 06:22:37 -0800
X-CSE-ConnectionGUID: 3J3QM0gFRgq1PdzBYKupkg==
X-CSE-MsgGUID: dOt373VNRh2maeCQld43Yw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.12,224,1728975600"; d="scan'208";a="114488389"
Received: from ideak-desk.fi.intel.com ([10.237.72.78])
 by orviesa005-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 30 Jan 2025 06:22:36 -0800
Date: Thu, 30 Jan 2025 16:23:31 +0200
From: Imre Deak <imre.deak@intel.com>
To: Jani Nikula <jani.nikula@intel.com>
Cc: intel-gfx@lists.freedesktop.org, intel-xe@lists.freedesktop.org
Subject: Re: [PATCH 4/6] drm/i915/mst: handle mst pbn_div in
 intel_dp_mtp_tu_compute_config()
Message-ID: <Z5uLY1QC72jrT_JC@ideak-desk.fi.intel.com>
References: <cover.1738161945.git.jani.nikula@intel.com>
 <0cc1b507601c9964ebae7d50b1f90b1ce00acb11.1738161945.git.jani.nikula@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <0cc1b507601c9964ebae7d50b1f90b1ce00acb11.1738161945.git.jani.nikula@intel.com>
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
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Wed, Jan 29, 2025 at 04:46:36PM +0200, Jani Nikula wrote:
> Move mst_state->pbn_div calculation to intel_dp_mtp_tu_compute_config()
> to allow further refactoring.
> 
> Signed-off-by: Jani Nikula <jani.nikula@intel.com>
> ---
>  drivers/gpu/drm/i915/display/intel_dp_mst.c | 31 ++++++++++-----------
>  1 file changed, 14 insertions(+), 17 deletions(-)
> 
> diff --git a/drivers/gpu/drm/i915/display/intel_dp_mst.c b/drivers/gpu/drm/i915/display/intel_dp_mst.c
> index ea1b05224c06..8786c8751c82 100644
> --- a/drivers/gpu/drm/i915/display/intel_dp_mst.c
> +++ b/drivers/gpu/drm/i915/display/intel_dp_mst.c
> @@ -216,15 +216,25 @@ int intel_dp_mtp_tu_compute_config(struct intel_dp *intel_dp,
>  {
>  	struct intel_display *display = to_intel_display(intel_dp);
>  	struct drm_atomic_state *state = crtc_state->uapi.state;
> +	struct drm_dp_mst_topology_state *mst_state = NULL;
>  	struct intel_connector *connector =
>  		to_intel_connector(conn_state->connector);
>  	const struct drm_display_mode *adjusted_mode =
>  		&crtc_state->hw.adjusted_mode;
> -	fixed20_12 pbn_div;
> +	bool is_mst = intel_dp->is_mst;
>  	int bpp, slots = -EINVAL;
>  	int dsc_slice_count = 0;
>  	int max_dpt_bpp;
>  
> +	if (is_mst) {
> +		mst_state = drm_atomic_get_mst_topology_state(state, &intel_dp->mst_mgr);
> +		if (IS_ERR(mst_state))
> +			return PTR_ERR(mst_state);
> +
> +		mst_state->pbn_div = drm_dp_get_vc_payload_bw(crtc_state->port_clock,
> +							      crtc_state->lane_count);
> +	}
> +

This could've been in the if (intel_dp->is_mst) block, since SST doesn't
use pbn_div. In any case the patch is correct:

Reviewed-by: Imre Deak <imre.deak@intel.com>

>  	if (dsc) {
>  		if (!intel_dp_supports_fec(intel_dp, connector, crtc_state))
>  			return -EINVAL;
> @@ -232,9 +242,6 @@ int intel_dp_mtp_tu_compute_config(struct intel_dp *intel_dp,
>  		crtc_state->fec_enable = !intel_dp_is_uhbr(crtc_state);
>  	}
>  
> -	pbn_div = drm_dp_get_vc_payload_bw(crtc_state->port_clock,
> -					   crtc_state->lane_count);
> -
>  	max_dpt_bpp = intel_dp_mst_max_dpt_bpp(crtc_state, dsc);
>  	if (max_bpp > max_dpt_bpp) {
>  		drm_dbg_kms(display->drm, "Limiting bpp to max DPT bpp (%d -> %d)\n",
> @@ -270,7 +277,7 @@ int intel_dp_mtp_tu_compute_config(struct intel_dp *intel_dp,
>  					 link_bpp_x16,
>  					 &crtc_state->dp_m_n);
>  
> -		if (intel_dp->is_mst) {
> +		if (is_mst) {
>  			int remote_bw_overhead;
>  			int remote_tu;
>  			fixed20_12 pbn;
> @@ -295,7 +302,7 @@ int intel_dp_mtp_tu_compute_config(struct intel_dp *intel_dp,
>  			pbn.full = dfixed_const(intel_dp_mst_calc_pbn(adjusted_mode->crtc_clock,
>  								      link_bpp_x16,
>  								      remote_bw_overhead));
> -			remote_tu = DIV_ROUND_UP(pbn.full, pbn_div.full);
> +			remote_tu = DIV_ROUND_UP(pbn.full, mst_state->pbn_div.full);
>  
>  			/*
>  			 * Aligning the TUs ensures that symbols consisting of multiple
> @@ -313,7 +320,7 @@ int intel_dp_mtp_tu_compute_config(struct intel_dp *intel_dp,
>  			 * allocated for the whole path and the TUs allocated for the
>  			 * first branch device's link also applies here.
>  			 */
> -			pbn.full = remote_tu * pbn_div.full;
> +			pbn.full = remote_tu * mst_state->pbn_div.full;
>  
>  			drm_WARN_ON(display->drm, remote_tu < crtc_state->dp_m_n.tu);
>  			crtc_state->dp_m_n.tu = remote_tu;
> @@ -365,16 +372,6 @@ static int mst_stream_find_vcpi_slots_for_bpp(struct intel_dp *intel_dp,
>  					      struct drm_connector_state *conn_state,
>  					      int step, bool dsc)
>  {
> -	struct drm_atomic_state *state = crtc_state->uapi.state;
> -	struct drm_dp_mst_topology_state *mst_state;
> -
> -	mst_state = drm_atomic_get_mst_topology_state(state, &intel_dp->mst_mgr);
> -	if (IS_ERR(mst_state))
> -		return PTR_ERR(mst_state);
> -
> -	mst_state->pbn_div = drm_dp_get_vc_payload_bw(crtc_state->port_clock,
> -						      crtc_state->lane_count);
> -
>  	return intel_dp_mtp_tu_compute_config(intel_dp, crtc_state, conn_state,
>  					      min_bpp, max_bpp, step, dsc);
>  }
> -- 
> 2.39.5
> 
