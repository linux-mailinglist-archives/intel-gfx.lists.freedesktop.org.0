Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id C754DA2365F
	for <lists+intel-gfx@lfdr.de>; Thu, 30 Jan 2025 22:14:42 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 9F63A10E0C4;
	Thu, 30 Jan 2025 21:14:40 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="LckC3XDw";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.9])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 0A7C210E0C4;
 Thu, 30 Jan 2025 21:14:38 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1738271679; x=1769807679;
 h=from:to:cc:subject:in-reply-to:references:date:
 message-id:mime-version;
 bh=tCSAUuBMBG4RaN+xRE9sK4xZhD8AhTy3/f+C54csWxk=;
 b=LckC3XDwtgs4OgXcu7S9wbeUslP2de4ZHORVL1Lvm5MPGS6KO26iBk1z
 DECluOhsJB5k56NnAp7zlCZcHWb9lGO5juPqGDwlgBq+URQb4zksBAKkp
 k/foUWIQN5i0y0m3+Vg0XOamoCVNUhDlrmePXkF26j+EWd2dBoMUhZ9mY
 PSmCaiQEfTKHQhSGWxl65PZft+KBxlpxktTWls81iVX+3iZvAm+7n5CfV
 KDdQMBGyAtyuonXl9hkZTaTGCPRWRBEW9qzmlSep8GQ77WgkeHcaysW1u
 6dniJTXrNrL2rkG4GImepnc9joBY/ORdETyc7Y2126otEswaFYHunzazo Q==;
X-CSE-ConnectionGUID: ipj9FzisSS6a5QUv91JG7A==
X-CSE-MsgGUID: kFalTtrKT4mtbS1WF0LOow==
X-IronPort-AV: E=McAfee;i="6700,10204,11331"; a="49497676"
X-IronPort-AV: E=Sophos;i="6.13,246,1732608000"; d="scan'208";a="49497676"
Received: from fmviesa009.fm.intel.com ([10.60.135.149])
 by fmvoesa103.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 30 Jan 2025 13:14:38 -0800
X-CSE-ConnectionGUID: K2PDb+e1R0uooUBRaOZArg==
X-CSE-MsgGUID: KEUlnxNfQiOEvKQzk1TMbA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.13,246,1732608000"; d="scan'208";a="110043097"
Received: from sschumil-mobl2.ger.corp.intel.com (HELO localhost)
 ([10.245.246.68])
 by fmviesa009-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 30 Jan 2025 13:14:36 -0800
From: Jani Nikula <jani.nikula@intel.com>
To: imre.deak@intel.com
Cc: intel-gfx@lists.freedesktop.org, intel-xe@lists.freedesktop.org
Subject: Re: [PATCH 4/6] drm/i915/mst: handle mst pbn_div in
 intel_dp_mtp_tu_compute_config()
In-Reply-To: <Z5uLY1QC72jrT_JC@ideak-desk.fi.intel.com>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
References: <cover.1738161945.git.jani.nikula@intel.com>
 <0cc1b507601c9964ebae7d50b1f90b1ce00acb11.1738161945.git.jani.nikula@intel.com>
 <Z5uLY1QC72jrT_JC@ideak-desk.fi.intel.com>
Date: Thu, 30 Jan 2025 23:14:33 +0200
Message-ID: <8734h080na.fsf@intel.com>
MIME-Version: 1.0
Content-Type: text/plain
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

On Thu, 30 Jan 2025, Imre Deak <imre.deak@intel.com> wrote:
> On Wed, Jan 29, 2025 at 04:46:36PM +0200, Jani Nikula wrote:
>> Move mst_state->pbn_div calculation to intel_dp_mtp_tu_compute_config()
>> to allow further refactoring.
>> 
>> Signed-off-by: Jani Nikula <jani.nikula@intel.com>
>> ---
>>  drivers/gpu/drm/i915/display/intel_dp_mst.c | 31 ++++++++++-----------
>>  1 file changed, 14 insertions(+), 17 deletions(-)
>> 
>> diff --git a/drivers/gpu/drm/i915/display/intel_dp_mst.c b/drivers/gpu/drm/i915/display/intel_dp_mst.c
>> index ea1b05224c06..8786c8751c82 100644
>> --- a/drivers/gpu/drm/i915/display/intel_dp_mst.c
>> +++ b/drivers/gpu/drm/i915/display/intel_dp_mst.c
>> @@ -216,15 +216,25 @@ int intel_dp_mtp_tu_compute_config(struct intel_dp *intel_dp,
>>  {
>>  	struct intel_display *display = to_intel_display(intel_dp);
>>  	struct drm_atomic_state *state = crtc_state->uapi.state;
>> +	struct drm_dp_mst_topology_state *mst_state = NULL;
>>  	struct intel_connector *connector =
>>  		to_intel_connector(conn_state->connector);
>>  	const struct drm_display_mode *adjusted_mode =
>>  		&crtc_state->hw.adjusted_mode;
>> -	fixed20_12 pbn_div;
>> +	bool is_mst = intel_dp->is_mst;
>>  	int bpp, slots = -EINVAL;
>>  	int dsc_slice_count = 0;
>>  	int max_dpt_bpp;
>>  
>> +	if (is_mst) {^
>> +		mst_state = drm_atomic_get_mst_topology_state(state, &intel_dp->mst_mgr);
>> +		if (IS_ERR(mst_state))
>> +			return PTR_ERR(mst_state);
>> +
>> +		mst_state->pbn_div = drm_dp_get_vc_payload_bw(crtc_state->port_clock,
>> +							      crtc_state->lane_count);
>> +	}
>> +
>
> This could've been in the if (intel_dp->is_mst) block, since SST doesn't
> use pbn_div. In any case the patch is correct:

Uh, there's the if (is_mst)?

>
> Reviewed-by: Imre Deak <imre.deak@intel.com>
>
>>  	if (dsc) {
>>  		if (!intel_dp_supports_fec(intel_dp, connector, crtc_state))
>>  			return -EINVAL;
>> @@ -232,9 +242,6 @@ int intel_dp_mtp_tu_compute_config(struct intel_dp *intel_dp,
>>  		crtc_state->fec_enable = !intel_dp_is_uhbr(crtc_state);
>>  	}
>>  
>> -	pbn_div = drm_dp_get_vc_payload_bw(crtc_state->port_clock,
>> -					   crtc_state->lane_count);
>> -
>>  	max_dpt_bpp = intel_dp_mst_max_dpt_bpp(crtc_state, dsc);
>>  	if (max_bpp > max_dpt_bpp) {
>>  		drm_dbg_kms(display->drm, "Limiting bpp to max DPT bpp (%d -> %d)\n",
>> @@ -270,7 +277,7 @@ int intel_dp_mtp_tu_compute_config(struct intel_dp *intel_dp,
>>  					 link_bpp_x16,
>>  					 &crtc_state->dp_m_n);
>>  
>> -		if (intel_dp->is_mst) {
>> +		if (is_mst) {
>>  			int remote_bw_overhead;
>>  			int remote_tu;
>>  			fixed20_12 pbn;
>> @@ -295,7 +302,7 @@ int intel_dp_mtp_tu_compute_config(struct intel_dp *intel_dp,
>>  			pbn.full = dfixed_const(intel_dp_mst_calc_pbn(adjusted_mode->crtc_clock,
>>  								      link_bpp_x16,
>>  								      remote_bw_overhead));
>> -			remote_tu = DIV_ROUND_UP(pbn.full, pbn_div.full);
>> +			remote_tu = DIV_ROUND_UP(pbn.full, mst_state->pbn_div.full);
>>  
>>  			/*
>>  			 * Aligning the TUs ensures that symbols consisting of multiple
>> @@ -313,7 +320,7 @@ int intel_dp_mtp_tu_compute_config(struct intel_dp *intel_dp,
>>  			 * allocated for the whole path and the TUs allocated for the
>>  			 * first branch device's link also applies here.
>>  			 */
>> -			pbn.full = remote_tu * pbn_div.full;
>> +			pbn.full = remote_tu * mst_state->pbn_div.full;
>>  
>>  			drm_WARN_ON(display->drm, remote_tu < crtc_state->dp_m_n.tu);
>>  			crtc_state->dp_m_n.tu = remote_tu;
>> @@ -365,16 +372,6 @@ static int mst_stream_find_vcpi_slots_for_bpp(struct intel_dp *intel_dp,
>>  					      struct drm_connector_state *conn_state,
>>  					      int step, bool dsc)
>>  {
>> -	struct drm_atomic_state *state = crtc_state->uapi.state;
>> -	struct drm_dp_mst_topology_state *mst_state;
>> -
>> -	mst_state = drm_atomic_get_mst_topology_state(state, &intel_dp->mst_mgr);
>> -	if (IS_ERR(mst_state))
>> -		return PTR_ERR(mst_state);
>> -
>> -	mst_state->pbn_div = drm_dp_get_vc_payload_bw(crtc_state->port_clock,
>> -						      crtc_state->lane_count);
>> -
>>  	return intel_dp_mtp_tu_compute_config(intel_dp, crtc_state, conn_state,
>>  					      min_bpp, max_bpp, step, dsc);
>>  }
>> -- 
>> 2.39.5
>> 

-- 
Jani Nikula, Intel
