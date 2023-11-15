Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 76CB37EC3E2
	for <lists+intel-gfx@lfdr.de>; Wed, 15 Nov 2023 14:38:31 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 1A18D10E038;
	Wed, 15 Nov 2023 13:38:28 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.8])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 5A77310E038
 for <intel-gfx@lists.freedesktop.org>; Wed, 15 Nov 2023 13:38:26 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1700055506; x=1731591506;
 h=date:from:to:subject:message-id:reply-to:references:
 mime-version:in-reply-to;
 bh=DaK0lIkGe2MgdRjkSCQmgMt2PG8nnHoVfI7CaomkvQM=;
 b=ZF+eDxluh9XypLE/2+F5evb+8URspeK5om5qfok5OInhwIWOWeSrs1Z+
 ZzXn/t0pVQZNCONS5wO+9GvrEgSJvCqZexkCHRP9D6C7s7lx2ermvHUlQ
 QEzIuVY3ay3cTpRjX9vzmzeW+TDjchRFqkO/BNQypSNWldj41HHuMlUuE
 2umIMEKh7u6E2eCrR6QrH9PXOWLkkfG4FRCNGlAjVdxqT1Vd2lXZw4f6i
 PAXv8hZTdIGYpcbvNPTOBE2mONKSwJsbq+lCHGNzpYrmEz6Y95v6WSGe2
 yE3rASG6dys7DWwo96bphFelgiEQ55wdSgfXkiiVdeyIQs+iE3NQdXILR Q==;
X-IronPort-AV: E=McAfee;i="6600,9927,10894"; a="3956485"
X-IronPort-AV: E=Sophos;i="6.03,305,1694761200"; 
   d="scan'208";a="3956485"
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
 by fmvoesa102.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 15 Nov 2023 05:38:26 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10894"; a="908779939"
X-IronPort-AV: E=Sophos;i="6.03,305,1694761200"; d="scan'208";a="908779939"
Received: from ideak-desk.fi.intel.com ([10.237.72.78])
 by fmsmga001-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 15 Nov 2023 05:38:24 -0800
Date: Wed, 15 Nov 2023 15:38:24 +0200
From: Imre Deak <imre.deak@intel.com>
To: intel-gfx@lists.freedesktop.org
Message-ID: <ZVTJ0L37KLZLIWfu@ideak-desk.fi.intel.com>
References: <20231113201110.510724-1-imre.deak@intel.com>
 <20231113201110.510724-3-imre.deak@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20231113201110.510724-3-imre.deak@intel.com>
Subject: Re: [Intel-gfx] [PATCH 3/4] drm/i915/dp_mst: Fix PBN / MTP_TU size
 calculation for UHBR rates
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

On Mon, Nov 13, 2023 at 10:11:09PM +0200, Imre Deak wrote:
> Atm the allocated MST PBN value is calculated from the TU size (number
> of allocated MTP slots) as
> 
>   PBN = TU * pbn_div
> 
> pbn_div being the link BW for each MTP slot. For DP 1.4 link rates this
> worked, as pbn_div there is guraranteed to be an integer number, however
> on UHBR this isn't the case. To get a PBN, TU pair where TU is a
> properly rounded-up value covering all the BW corresponding to PBN,
> calculate first PBN and from PBN the TU value.
> 
> Signed-off-by: Imre Deak <imre.deak@intel.com>
> ---
>  drivers/gpu/drm/i915/display/intel_dp_mst.c | 10 ++++++++--
>  1 file changed, 8 insertions(+), 2 deletions(-)
> 
> diff --git a/drivers/gpu/drm/i915/display/intel_dp_mst.c b/drivers/gpu/drm/i915/display/intel_dp_mst.c
> index b943dbf394a22..a32ab0b4fc9d7 100644
> --- a/drivers/gpu/drm/i915/display/intel_dp_mst.c
> +++ b/drivers/gpu/drm/i915/display/intel_dp_mst.c
> @@ -170,6 +170,7 @@ static int intel_dp_mst_find_vcpi_slots_for_bpp(struct intel_encoder *encoder,
>  
>  	for (bpp = max_bpp; bpp >= min_bpp; bpp -= step) {
>  		struct intel_link_m_n remote_m_n;
> +		int alloc_tu;
>  		int link_bpp;
>  
>  		drm_dbg_kms(&i915->drm, "Trying bpp %d\n", bpp);
> @@ -200,9 +201,14 @@ static int intel_dp_mst_find_vcpi_slots_for_bpp(struct intel_encoder *encoder,
>  		 * crtc_state->dp_m_n.tu), provided that the driver doesn't
>  		 * enable SSC on the corresponding link.
>  		 */
> +		crtc_state->pbn = DIV_ROUND_UP_ULL(mul_u32_u32(mst_state->pbn_div * 64,
> +							       remote_m_n.data_m),
> +						   remote_m_n.data_n);

I realized this may allocate fewer PBNs than required, since the actual
pbn_div value is not an integer. Also PBN can be calculated in a more direct
way from the effective pixel data rate, so I'd like to do that instead.

I'll send a new version with the above changes.

> +
> +		alloc_tu = DIV_ROUND_UP_ULL(crtc_state->pbn, mst_state->pbn_div);


> +		drm_WARN_ON(&i915->drm, alloc_tu < remote_m_n.tu);
>  		drm_WARN_ON(&i915->drm, remote_m_n.tu < crtc_state->dp_m_n.tu);
> -		crtc_state->dp_m_n.tu = remote_m_n.tu;
> -		crtc_state->pbn = remote_m_n.tu * mst_state->pbn_div;
> +		crtc_state->dp_m_n.tu = alloc_tu;
>  
>  		slots = drm_dp_atomic_find_time_slots(state, &intel_dp->mst_mgr,
>  						      connector->port,
> -- 
> 2.39.2
> 
