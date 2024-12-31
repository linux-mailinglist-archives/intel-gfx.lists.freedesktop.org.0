Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 674379FF093
	for <lists+intel-gfx@lfdr.de>; Tue, 31 Dec 2024 17:15:40 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 4CCE310E119;
	Tue, 31 Dec 2024 16:15:36 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="QtLaikVt";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.10])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 272F210E0AE;
 Tue, 31 Dec 2024 16:15:34 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1735661734; x=1767197734;
 h=date:from:to:cc:subject:message-id:reply-to:references:
 mime-version:in-reply-to;
 bh=14aCGRbn2J0J40klLxSzc7rVs9EfVFXmAHqPXSYynHQ=;
 b=QtLaikVtGjtVZZ5Kw/RjW4mFyUpHVdalW5nOIrM0awdlZpuyO0q0M+ID
 iP9PQXAgcO6oRMlRIqkerNt0QZb+eB5cDp4U7GStx1Vc7YOzvcWw1YCOQ
 lgcSJzukU4Tz9IZWvQU0j0SFY/Poz0RjwkpQCwmFEp1Ko3Lgoaz8TIaBZ
 qPLumB4P2k2uSHqVSDJSwD4D5stLClwMnzr+b5UZ//8hrJntyT1dSN7Xg
 DOI6Y/uPBUvEwRjpmRJJyq6jtIpxkeyUsTSCuMgdrCZXrFy1H4Pq3TGLz
 CJt3E5VmFO8brK7WdCWX9KAl+qHcQTaqmNFuIFwC3uqQAyZO69xJAimpU w==;
X-CSE-ConnectionGUID: 1XM7pecsSFWZYW5/9ksLmw==
X-CSE-MsgGUID: SNWJGP+MTliKROF3tPpQag==
X-IronPort-AV: E=McAfee;i="6700,10204,11302"; a="47358539"
X-IronPort-AV: E=Sophos;i="6.12,279,1728975600"; d="scan'208";a="47358539"
Received: from orviesa005.jf.intel.com ([10.64.159.145])
 by fmvoesa104.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 31 Dec 2024 08:15:33 -0800
X-CSE-ConnectionGUID: VLhgFaUmSXOESyyOj7kaMQ==
X-CSE-MsgGUID: EADVXpwjT6mPE8iDyQoc/w==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.12,224,1728975600"; d="scan'208";a="106084946"
Received: from ideak-desk.fi.intel.com ([10.237.72.78])
 by orviesa005-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 31 Dec 2024 08:15:32 -0800
Date: Tue, 31 Dec 2024 18:16:22 +0200
From: Imre Deak <imre.deak@intel.com>
To: Jani Nikula <jani.nikula@intel.com>
Cc: intel-gfx@lists.freedesktop.org, intel-xe@lists.freedesktop.org,
 dri-devel@lists.freedesktop.org
Subject: Re: [PATCH v2 07/16] drm/i915/mst: adapt
 intel_dp_mtp_tu_compute_config() for 128b/132b SST
Message-ID: <Z3QY1txezARd21LY@ideak-desk.fi.intel.com>
References: <cover.1734643485.git.jani.nikula@intel.com>
 <d08257a340e685679a1ae89f180e6eadf5164bcc.1734643485.git.jani.nikula@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <d08257a340e685679a1ae89f180e6eadf5164bcc.1734643485.git.jani.nikula@intel.com>
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

On Thu, Dec 19, 2024 at 11:33:56PM +0200, Jani Nikula wrote:
> Handle 128b/132b SST in intel_dp_mtp_tu_compute_config(). The remote
> bandwidth overhead and time slot allocation are only relevant for MST;
> SST only needs the local bandwidth and a check that 64 slots isn't
> exceeded.
> 
> Signed-off-by: Jani Nikula <jani.nikula@intel.com>
> ---
>  drivers/gpu/drm/i915/display/intel_dp_mst.c | 109 +++++++++++---------
>  1 file changed, 61 insertions(+), 48 deletions(-)
> 
> diff --git a/drivers/gpu/drm/i915/display/intel_dp_mst.c b/drivers/gpu/drm/i915/display/intel_dp_mst.c
> index d08824d2fefe..3fbf9163272b 100644
> --- a/drivers/gpu/drm/i915/display/intel_dp_mst.c
> +++ b/drivers/gpu/drm/i915/display/intel_dp_mst.c
> @@ -257,10 +257,7 @@ int intel_dp_mtp_tu_compute_config(struct intel_dp *intel_dp,
>  
>  	for (bpp = max_bpp; bpp >= min_bpp; bpp -= step) {
>  		int local_bw_overhead;
> -		int remote_bw_overhead;
>  		int link_bpp_x16;
> -		int remote_tu;
> -		fixed20_12 pbn;
>  
>  		drm_dbg_kms(display->drm, "Trying bpp %d\n", bpp);
>  
> @@ -269,57 +266,73 @@ int intel_dp_mtp_tu_compute_config(struct intel_dp *intel_dp,
>  
>  		local_bw_overhead = intel_dp_mst_bw_overhead(crtc_state,
>  							     false, dsc_slice_count, link_bpp_x16);
> -		remote_bw_overhead = intel_dp_mst_bw_overhead(crtc_state,
> -							      true, dsc_slice_count, link_bpp_x16);
> -
>  		intel_dp_mst_compute_m_n(crtc_state,
>  					 local_bw_overhead,
>  					 link_bpp_x16,
>  					 &crtc_state->dp_m_n);
>  
> -		/*
> -		 * The TU size programmed to the HW determines which slots in
> -		 * an MTP frame are used for this stream, which needs to match
> -		 * the payload size programmed to the first downstream branch
> -		 * device's payload table.
> -		 *
> -		 * Note that atm the payload's PBN value DRM core sends via
> -		 * the ALLOCATE_PAYLOAD side-band message matches the payload
> -		 * size (which it calculates from the PBN value) it programs
> -		 * to the first branch device's payload table. The allocation
> -		 * in the payload table could be reduced though (to
> -		 * crtc_state->dp_m_n.tu), provided that the driver doesn't
> -		 * enable SSC on the corresponding link.
> -		 */
> -		pbn.full = dfixed_const(intel_dp_mst_calc_pbn(adjusted_mode->crtc_clock,
> -							      link_bpp_x16,
> -							      remote_bw_overhead));
> -		remote_tu = DIV_ROUND_UP(pbn.full, pbn_div.full);
> -
> -		/*
> -		 * Aligning the TUs ensures that symbols consisting of multiple
> -		 * (4) symbol cycles don't get split between two consecutive
> -		 * MTPs, as required by Bspec.
> -		 * TODO: remove the alignment restriction for 128b/132b links
> -		 * on some platforms, where Bspec allows this.
> -		 */
> -		remote_tu = ALIGN(remote_tu, 4 / crtc_state->lane_count);
> -
> -		/*
> -		 * Also align PBNs accordingly, since MST core will derive its
> -		 * own copy of TU from the PBN in drm_dp_atomic_find_time_slots().
> -		 * The above comment about the difference between the PBN
> -		 * allocated for the whole path and the TUs allocated for the
> -		 * first branch device's link also applies here.
> -		 */
> -		pbn.full = remote_tu * pbn_div.full;
> -
> -		drm_WARN_ON(display->drm, remote_tu < crtc_state->dp_m_n.tu);
> -		crtc_state->dp_m_n.tu = remote_tu;
> +		if (intel_dp->is_mst) {
> +			int remote_bw_overhead;
> +			int remote_tu;
> +			fixed20_12 pbn;

Nit: pbn_div is only used for MST, so would (calculate/look it up from
mst_state) here. Also this MST block could be in a separate function,
perhaps for symmetry with the SST part in a function too, but this could
be a follow-up as well. Either way:

Reviewed-by: Imre Deak <imre.deak@intel.com>

> +
> +			remote_bw_overhead = intel_dp_mst_bw_overhead(crtc_state,
> +								      true, dsc_slice_count, link_bpp_x16);
> +
> +			/*
> +			 * The TU size programmed to the HW determines which slots in
> +			 * an MTP frame are used for this stream, which needs to match
> +			 * the payload size programmed to the first downstream branch
> +			 * device's payload table.
> +			 *
> +			 * Note that atm the payload's PBN value DRM core sends via
> +			 * the ALLOCATE_PAYLOAD side-band message matches the payload
> +			 * size (which it calculates from the PBN value) it programs
> +			 * to the first branch device's payload table. The allocation
> +			 * in the payload table could be reduced though (to
> +			 * crtc_state->dp_m_n.tu), provided that the driver doesn't
> +			 * enable SSC on the corresponding link.
> +			 */
> +			pbn.full = dfixed_const(intel_dp_mst_calc_pbn(adjusted_mode->crtc_clock,
> +								      link_bpp_x16,
> +								      remote_bw_overhead));
> +			remote_tu = DIV_ROUND_UP(pbn.full, pbn_div.full);
> +
> +			/*
> +			 * Aligning the TUs ensures that symbols consisting of multiple
> +			 * (4) symbol cycles don't get split between two consecutive
> +			 * MTPs, as required by Bspec.
> +			 * TODO: remove the alignment restriction for 128b/132b links
> +			 * on some platforms, where Bspec allows this.
> +			 */
> +			remote_tu = ALIGN(remote_tu, 4 / crtc_state->lane_count);
> +
> +			/*
> +			 * Also align PBNs accordingly, since MST core will derive its
> +			 * own copy of TU from the PBN in drm_dp_atomic_find_time_slots().
> +			 * The above comment about the difference between the PBN
> +			 * allocated for the whole path and the TUs allocated for the
> +			 * first branch device's link also applies here.
> +			 */
> +			pbn.full = remote_tu * pbn_div.full;
> +
> +			drm_WARN_ON(display->drm, remote_tu < crtc_state->dp_m_n.tu);
> +			crtc_state->dp_m_n.tu = remote_tu;
> +
> +			slots = drm_dp_atomic_find_time_slots(state, &intel_dp->mst_mgr,
> +							      connector->port,
> +							      dfixed_trunc(pbn));
> +		} else {
> +			/* Same as above for remote_tu */
> +			crtc_state->dp_m_n.tu = ALIGN(crtc_state->dp_m_n.tu,
> +						      4 / crtc_state->lane_count);
> +
> +			if (crtc_state->dp_m_n.tu <= 64)
> +				slots = crtc_state->dp_m_n.tu;
> +			else
> +				slots = -EINVAL;
> +		}
>  
> -		slots = drm_dp_atomic_find_time_slots(state, &intel_dp->mst_mgr,
> -						      connector->port,
> -						      dfixed_trunc(pbn));
>  		if (slots == -EDEADLK)
>  			return slots;
>  
> -- 
> 2.39.5
> 
