Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id aCyEN03ueWm21AEAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Wed, 28 Jan 2026 12:09:01 +0100
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 2E623A013D
	for <lists+intel-gfx@lfdr.de>; Wed, 28 Jan 2026 12:09:01 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id B231610E686;
	Wed, 28 Jan 2026 11:08:59 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="Nwl9+wO5";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.15])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 9F91B10E670;
 Wed, 28 Jan 2026 11:08:58 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1769598538; x=1801134538;
 h=from:to:cc:subject:in-reply-to:references:date:
 message-id:mime-version;
 bh=O94qbvvf2ZiN2hTRJdwF6VJOBsrqvvkBYizKzu16mgM=;
 b=Nwl9+wO5OX1ArmGRTy3sBjdiX0Alik9BEEFRmPXw3ZfsvZksbt6LIZLV
 D9YX46VONcgUtlLORnlXCLuhL2RbHtN7Fcg2Iu1HmVsGuMWc94TuaJXMQ
 lckqxJ8USPDgez5y//5O5sz745Xyqrk1yqNlsKferBYcHJ7o1C/79hgcJ
 PPLpSAxnu5mkv08FtJykFRu3zllIqsi8thGsKyhCwbYynqiAox9XQ0tLB
 p8LuiHq9iBhSx63A/4mFhPpMaDiVsRudZH9Xre8KttIVUkETkDhLY/PPq
 jkAJZ5XymEH+9lZ/vHn+mDbNaJiSWst2PEDgZd5i1cCMC8uYc9Jg1En8p Q==;
X-CSE-ConnectionGUID: w4Vk8xYUSBW3NEn7kBPPJg==
X-CSE-MsgGUID: 0DZAhHtvTImNLlB6EigxjA==
X-IronPort-AV: E=McAfee;i="6800,10657,11684"; a="70898225"
X-IronPort-AV: E=Sophos;i="6.21,258,1763452800"; d="scan'208";a="70898225"
Received: from fmviesa003.fm.intel.com ([10.60.135.143])
 by fmvoesa109.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 28 Jan 2026 03:08:58 -0800
X-CSE-ConnectionGUID: XEr8HY/RTmKFofnB1GWFSw==
X-CSE-MsgGUID: gKI1PtRJTjezk7WFKkzj/A==
X-ExtLoop1: 1
Received: from ettammin-mobl2.ger.corp.intel.com (HELO localhost)
 ([10.245.246.207])
 by fmviesa003-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 28 Jan 2026 03:08:56 -0800
From: Jani Nikula <jani.nikula@linux.intel.com>
To: Suraj Kandpal <suraj.kandpal@intel.com>, intel-xe@lists.freedesktop.org,
 intel-gfx@lists.freedesktop.org
Cc: ankit.k.nautiyal@intel.com, arun.r.murthy@intel.com, Suraj Kandpal
 <suraj.kandpal@intel.com>
Subject: Re: [PATCH] drm/i915/dp: Add a meaningful return to
 intel_dp_read_dsc_dpcd
In-Reply-To: <20260128044904.1293185-1-suraj.kandpal@intel.com>
Organization: Intel Finland Oy - BIC 0357606-4 - c/o Alberga Business Park,
 6 krs Bertel Jungin Aukio 5, 02600 Espoo, Finland
References: <20260128044904.1293185-1-suraj.kandpal@intel.com>
Date: Wed, 28 Jan 2026 13:08:53 +0200
Message-ID: <51a869ec09c61bd8ba56db858c983bb9667ac11b@intel.com>
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
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [0.19 / 15.00];
	MID_RHS_MATCH_TO(1.00)[];
	R_MISSING_CHARSET(0.50)[];
	DMARC_POLICY_ALLOW(-0.50)[intel.com,none];
	MAILLIST(-0.20)[mailman];
	R_SPF_ALLOW(-0.20)[+ip4:131.252.210.177:c];
	R_DKIM_ALLOW(-0.20)[intel.com:s=Intel];
	RWL_MAILSPIKE_GOOD(-0.10)[131.252.210.177:from];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_COUNT_THREE(0.00)[4];
	HAS_ORG_HEADER(0.00)[];
	MIME_TRACE(0.00)[0:+];
	ARC_NA(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	TO_DN_SOME(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	RCPT_COUNT_FIVE(0.00)[6];
	FROM_NEQ_ENVFROM(0.00)[jani.nikula@linux.intel.com,intel-gfx-bounces@lists.freedesktop.org];
	FROM_HAS_DN(0.00)[];
	DKIM_TRACE(0.00)[intel.com:+];
	NEURAL_HAM(-0.00)[-1.000];
	TAGGED_RCPT(0.00)[intel-gfx];
	MID_RHS_MATCH_FROMTLD(0.00)[];
	MISSING_XM_UA(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[gabe.freedesktop.org:helo,gabe.freedesktop.org:rdns,intel.com:email,intel.com:dkim,intel.com:mid]
X-Rspamd-Queue-Id: 2E623A013D
X-Rspamd-Action: no action

On Wed, 28 Jan 2026, Suraj Kandpal <suraj.kandpal@intel.com> wrote:
> Add a meaningful return to intel_dp_read_dsc_dpcd so tha we avoid
> unwanted DPCD reads which are not needed once we know DSC DPCD
> read fails. While we are at it remove the drm_err since we do not
> shout error during intel_dp_detect phase since it may take time
> to come up after pps_on is called for eDP scenario.

Please pay more attention to the commit message.

> Signed-off-by: Suraj Kandpal <suraj.kandpal@intel.com>
> ---
>  drivers/gpu/drm/i915/display/intel_dp.c | 24 +++++++++++++++---------
>  1 file changed, 15 insertions(+), 9 deletions(-)
>
> diff --git a/drivers/gpu/drm/i915/display/intel_dp.c b/drivers/gpu/drm/i915/display/intel_dp.c
> index 79fd3b8d8b25..d2ed8ec145a2 100644
> --- a/drivers/gpu/drm/i915/display/intel_dp.c
> +++ b/drivers/gpu/drm/i915/display/intel_dp.c
> @@ -4281,20 +4281,21 @@ static bool intel_dp_get_colorimetry_status(struct intel_dp *intel_dp)
>  	return dprx & DP_VSC_SDP_EXT_FOR_COLORIMETRY_SUPPORTED;
>  }
>  
> -static void intel_dp_read_dsc_dpcd(struct drm_dp_aux *aux,
> -				   u8 dsc_dpcd[DP_DSC_RECEIVER_CAP_SIZE])
> +static int intel_dp_read_dsc_dpcd(struct drm_dp_aux *aux,
> +				  u8 dsc_dpcd[DP_DSC_RECEIVER_CAP_SIZE])
>  {
>  	if (drm_dp_dpcd_read(aux, DP_DSC_SUPPORT, dsc_dpcd,
>  			     DP_DSC_RECEIVER_CAP_SIZE) < 0) {
> -		drm_err(aux->drm_dev,
> -			"Failed to read DPCD register 0x%x\n",
> -			DP_DSC_SUPPORT);
> -		return;
> +		drm_dbg_kms(aux->drm_dev,
> +			    "Could not read DSC DPCD register 0x%x\n",
> +			    DP_DSC_SUPPORT);
> +		return -EINVAL;

If we want to do this properly, then let's propagate the actual error
code instead of inventing -EINVAL here. And switch to
drm_dp_dpcd_read_data(), which returns an error if not all bytes were
transferred (also a case the current implementation completely ignores).

Finlly, the debug logging could log the error code. A combo of %pe in
the format string and ERR_PTR(ret) in the corresponding parameter will
do it nicely.

>  	}
>  
>  	drm_dbg_kms(aux->drm_dev, "DSC DPCD: %*ph\n",
>  		    DP_DSC_RECEIVER_CAP_SIZE,
>  		    dsc_dpcd);
> +	return 0;
>  }
>  
>  static void init_dsc_overall_throughput_limits(struct intel_connector *connector, bool is_branch)
> @@ -4345,8 +4346,11 @@ void intel_dp_get_dsc_sink_cap(u8 dpcd_rev,
>  	if (dpcd_rev < DP_DPCD_REV_14)
>  		return;
>  
> -	intel_dp_read_dsc_dpcd(connector->dp.dsc_decompression_aux,
> -			       connector->dp.dsc_dpcd);
> +	if (intel_dp_read_dsc_dpcd(connector->dp.dsc_decompression_aux,
> +				   connector->dp.dsc_dpcd) < 0) {
> +		drm_err(display->drm, "Failed to read DSC DPCD register\n");
> +		return;
> +	}
>  
>  	if (drm_dp_dpcd_readb(connector->dp.dsc_decompression_aux, DP_FEC_CAPABILITY,
>  			      &connector->dp.fec_capability) < 0) {
> @@ -4376,7 +4380,9 @@ static void intel_edp_get_dsc_sink_cap(u8 edp_dpcd_rev, struct intel_connector *
>  	if (edp_dpcd_rev < DP_EDP_14)
>  		return;
>  
> -	intel_dp_read_dsc_dpcd(connector->dp.dsc_decompression_aux, connector->dp.dsc_dpcd);
> +	if (intel_dp_read_dsc_dpcd(connector->dp.dsc_decompression_aux,
> +				   connector->dp.dsc_dpcd) < 0)
> +		return;
>  
>  	if (connector->dp.dsc_dpcd[0] & DP_DSC_DECOMPRESSION_IS_SUPPORTED)
>  		init_dsc_overall_throughput_limits(connector, false);

-- 
Jani Nikula, Intel
