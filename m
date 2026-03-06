Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id YEnQCAvBqmk1WwEAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Fri, 06 Mar 2026 12:56:59 +0100
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 8B5A521FF51
	for <lists+intel-gfx@lfdr.de>; Fri, 06 Mar 2026 12:56:58 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id CECB710ED06;
	Fri,  6 Mar 2026 11:56:51 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (unknown [198.175.65.15])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 9CFC310ED06;
 Fri,  6 Mar 2026 11:56:45 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1772798206; x=1804334206;
 h=date:from:to:cc:subject:message-id:references:
 mime-version:content-transfer-encoding:in-reply-to;
 bh=D+7Wl2o7NbAzGciJQqAieN4jpLDP9FpOISSIAuNDhiA=;
 b=O9juYK/JSZ8jvXJrTive0EObkVfqPXeWBsTfiSu6Ub3cTX092Nkz3NVR
 dH5SO2PpqG/QcpJQ9Zqj6UfCNO3MaFmG1BFlsfqQRDx+hMa0j/FGbQ813
 wvk3b38ndMTQ8pKzg8wxT8GPZC1akotQWCvQfsgUlllOxlEkCg6TUI09u
 r+prbRLLUYcXPFScIEb7N/7nCldv5FKiNUy2rG5iBH9c0IDlRxZn6OBF2
 0O3OEjdtGJXGp1fmZ5dIAz8PRhbqvIf0DGDgIYPk+4FaK5i16Ldw6xzXP
 0zcSIAtPSTnkJcDDFJeY8Maq/jt3z/o3td4JLtRRfq3mARm6mzgju/n9F g==;
X-CSE-ConnectionGUID: mVEkkuLDR9mIR2yZXBFiGA==
X-CSE-MsgGUID: ig4SIKAnROGRcfElkxc2VA==
X-IronPort-AV: E=McAfee;i="6800,10657,11720"; a="77504749"
X-IronPort-AV: E=Sophos;i="6.23,104,1770624000"; d="scan'208";a="77504749"
Received: from orviesa001.jf.intel.com ([10.64.159.141])
 by orvoesa107.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 06 Mar 2026 03:56:36 -0800
X-CSE-ConnectionGUID: M0/VDMFGQoeoLtXlDWACmA==
X-CSE-MsgGUID: Df4TXnNTTE2jEDUGRCH3fA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.23,104,1770624000"; d="scan'208";a="256910976"
Received: from abityuts-desk.ger.corp.intel.com (HELO localhost)
 ([10.245.244.250])
 by smtpauth.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 06 Mar 2026 03:56:33 -0800
Date: Fri, 6 Mar 2026 13:56:30 +0200
From: Ville =?iso-8859-1?Q?Syrj=E4l=E4?= <ville.syrjala@linux.intel.com>
To: Ankit Nautiyal <ankit.k.nautiyal@intel.com>
Cc: intel-gfx@lists.freedesktop.org, intel-xe@lists.freedesktop.org,
 arun.r.murthy@intel.com
Subject: Re: [PATCH 5/5] drm/i915/dp: Enable Common SDP Transmission line
Message-ID: <aarA7lXSU00IUgjv@intel.com>
References: <20260305040118.2576312-1-ankit.k.nautiyal@intel.com>
 <20260305040118.2576312-6-ankit.k.nautiyal@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=iso-8859-1
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <20260305040118.2576312-6-ankit.k.nautiyal@intel.com>
X-Patchwork-Hint: comment
Organization: Intel Finland Oy - BIC 0357606-4 - c/o Alberga Business Park, 6
 krs Bertel Jungin Aukio 5, 02600 Espoo, Finland
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
X-Rspamd-Queue-Id: 8B5A521FF51
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [0.36 / 15.00];
	MID_RHS_MATCH_TO(1.00)[];
	R_MIXED_CHARSET(0.67)[subject];
	DMARC_POLICY_ALLOW(-0.50)[intel.com,none];
	R_SPF_ALLOW(-0.20)[+ip4:131.252.210.177:c];
	R_DKIM_ALLOW(-0.20)[intel.com:s=Intel];
	MAILLIST(-0.20)[mailman];
	MIME_GOOD(-0.10)[text/plain];
	RWL_MAILSPIKE_GOOD(-0.10)[131.252.210.177:from];
	HAS_LIST_UNSUB(-0.01)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	MIME_TRACE(0.00)[0:+];
	HAS_ORG_HEADER(0.00)[];
	RCVD_COUNT_THREE(0.00)[4];
	ARC_NA(0.00)[];
	FROM_HAS_DN(0.00)[];
	RCPT_COUNT_THREE(0.00)[4];
	MID_RHS_MATCH_FROMTLD(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	FROM_NEQ_ENVFROM(0.00)[ville.syrjala@linux.intel.com,intel-gfx-bounces@lists.freedesktop.org];
	DKIM_TRACE(0.00)[intel.com:+];
	TAGGED_RCPT(0.00)[intel-gfx];
	MISSING_XM_UA(0.00)[];
	ASN(0.00)[asn:6366, ipnet:131.252.0.0/16, country:US];
	TO_DN_SOME(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[]
X-Rspamd-Action: no action

On Thu, Mar 05, 2026 at 09:31:18AM +0530, Ankit Nautiyal wrote:
> Enable the Common SDP Transmission line for the SDP packets.
> We get the clear picture about the SDPs and guardband only in
> intel_dp_sdp_compute_config_late() therefore we must configure the
> crtc_state members related to Common SDP Transmission line at this
> point.
> 
> Currently, the stagger values are set as per the default policy of the
> Hardware. This can be optimized later if we come up with a specific
> driver policy to sequence the SDPs better.
> 
> Signed-off-by: Ankit Nautiyal <ankit.k.nautiyal@intel.com>
> ---
>  drivers/gpu/drm/i915/display/intel_ddi.c |  3 ++
>  drivers/gpu/drm/i915/display/intel_dp.c  | 64 ++++++++++++++++++++++++
>  2 files changed, 67 insertions(+)
> 
> diff --git a/drivers/gpu/drm/i915/display/intel_ddi.c b/drivers/gpu/drm/i915/display/intel_ddi.c
> index bdbd89600bee..e1e95f18f0ed 100644
> --- a/drivers/gpu/drm/i915/display/intel_ddi.c
> +++ b/drivers/gpu/drm/i915/display/intel_ddi.c
> @@ -2726,6 +2726,8 @@ static void mtl_ddi_pre_enable_dp(struct intel_atomic_state *state,
>  	/* 6.o Configure and enable FEC if needed */
>  	intel_ddi_enable_fec(encoder, crtc_state);
>  
> +	intel_dp_cmn_sdp_transmission_line_enable(crtc_state);
> +
>  	/* 7.a 128b/132b SST. */
>  	if (!is_mst && intel_dp_is_uhbr(crtc_state)) {
>  		/* VCPID 1, start slot 0 for 128b/132b, tu slots */
> @@ -3113,6 +3115,7 @@ static void intel_ddi_buf_disable(struct intel_encoder *encoder,
>  			     DP_TP_CTL_ENABLE, 0);
>  	}
>  
> +	intel_dp_cmn_sdp_transmission_line_disable(crtc_state);
>  	intel_ddi_disable_fec(encoder, crtc_state);
>  
>  	if (DISPLAY_VER(display) < 14)
> diff --git a/drivers/gpu/drm/i915/display/intel_dp.c b/drivers/gpu/drm/i915/display/intel_dp.c
> index 59a8fa5e5ba9..87d73d0239bc 100644
> --- a/drivers/gpu/drm/i915/display/intel_dp.c
> +++ b/drivers/gpu/drm/i915/display/intel_dp.c
> @@ -7189,6 +7189,68 @@ void intel_dp_mst_resume(struct intel_display *display)
>  	}
>  }
>  
> +static
> +void intel_dp_cmn_sdp_tl_compute_config_late(struct intel_crtc_state *crtc_state)
> +{
> +	struct intel_display *display = to_intel_display(crtc_state);
> +	bool as_sdp, gmp_sdp, pps_sdp, vsc_sdp, vsc_ext_sdp;
> +
> +	if (!HAS_CMN_SDP_TL(display))
> +		return;
> +
> +	as_sdp = crtc_state->infoframes.enable &
> +		 intel_hdmi_infoframe_enable(DP_SDP_ADAPTIVE_SYNC);
> +
> +	gmp_sdp = crtc_state->infoframes.enable &
> +		  intel_hdmi_infoframe_enable(HDMI_PACKET_TYPE_GAMUT_METADATA);
> +
> +	pps_sdp = crtc_state->infoframes.enable &
> +		  intel_hdmi_infoframe_enable(DP_SDP_PPS);
> +
> +	vsc_sdp = crtc_state->infoframes.enable &
> +		  intel_hdmi_infoframe_enable(DP_SDP_VSC);
> +
> +	vsc_ext_sdp = crtc_state->infoframes.enable &
> +		      (intel_hdmi_infoframe_enable(DP_SDP_VSC_EXT_VESA) |
> +		       intel_hdmi_infoframe_enable(DP_SDP_VSC_EXT_CEA));
> +
> +	if (!gmp_sdp && !pps_sdp && !vsc_sdp && !vsc_ext_sdp)
> +		return;

I don't see why we wouldn't just always program this stuff.

> +
> +	crtc_state->cmn_sdp_tl.enable = true;
> +
> +	/*
> +	 * When AS SDP is enabled :
> +	 *  - The common SDP Transmission Line matches the EMP SDP Transmission Line.
> +	 *
> +	 * When AS SDP is disabled:
> +	 *  - Bspec mentions the positions as lines of delayed vblank.
> +	 *  - Guardband = 1st line of delayed vblank
> +	 *  - Common SDP Transmission line is set to 2nd line of delayed vblank.
> +	 */
> +
> +	if (as_sdp)
> +		crtc_state->cmn_sdp_tl.transmission_line =
> +			intel_dp_emp_as_sdp_tl(crtc_state);
> +	else
> +		crtc_state->cmn_sdp_tl.transmission_line =
> +			crtc_state->vrr.guardband - 1;
> +
> +	/*
> +	 * Currently we are programming the default stagger values, but these
> +	 * can be optimized if required, based on number of SDPs enabled.
> +	 *
> +	 * Default values of the Transmission lines for SDPs other than AS SDP:
> +	 * VSC : CMN SDP Transmission line
> +	 * GMP : CMN SDP Transmission line
> +	 * PPS : CMN SDP Transmission line + 1
> +	 * VSC_EXT: CMN SDP Transmission line + 2
> +	 */
> +	crtc_state->cmn_sdp_tl.gmp_stagger = GMP_STAGGER_DEFAULT;
> +	crtc_state->cmn_sdp_tl.pps_stagger = PPS_STAGGER_DEFAULT;
> +	crtc_state->cmn_sdp_tl.vsc_ext_stagger = VSC_EXT_STAGGER_DEFAULT;
> +}
> +
>  static
>  int intel_dp_sdp_compute_config_late(struct intel_crtc_state *crtc_state)
>  {
> @@ -7202,6 +7264,8 @@ int intel_dp_sdp_compute_config_late(struct intel_crtc_state *crtc_state)
>  		return -EINVAL;
>  	}
>  
> +	intel_dp_cmn_sdp_tl_compute_config_late(crtc_state);
> +
>  	return 0;
>  }
>  
> -- 
> 2.45.2

-- 
Ville Syrjälä
Intel
