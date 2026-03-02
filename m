Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id uIVyNmVepWlc+QUAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Mon, 02 Mar 2026 10:54:45 +0100
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 16EAA1D5CFA
	for <lists+intel-gfx@lfdr.de>; Mon, 02 Mar 2026 10:54:44 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id AEE1810E47A;
	Mon,  2 Mar 2026 09:54:42 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="hArpjd1/";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.19])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 9F48E10E47A;
 Mon,  2 Mar 2026 09:54:40 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1772445280; x=1803981280;
 h=from:to:cc:subject:in-reply-to:references:date:
 message-id:mime-version;
 bh=K4MMrTe+rvb+RCL/2V5MbkbBSdjlsppF1PJOSsFzFyQ=;
 b=hArpjd1/hoSTIn4uPqIcgh4x9rns1J/IGG5rrUig4cX9eUFQ7CHulpoT
 g0wGk2PyDErPaQEpy0FP23WQq05R++0VvnwC2q5bfcmohcjFq5fwIy10w
 vLNVWHZeD71VpMl7ktKxt2zHmfpp5thJusePRsjLMny94m15PfUbTvh9g
 I+quG3hBq8R2diNHHiySjCAxafNLJ9rRskahdVb+ultNAQ0xNr6yhE1Rz
 63CK/WuWb6RBUexBosngsbl4hUPBsa68JamqL9uzsH3Sg6y7nfps7grXh
 qqeDK6thzx8hy+z4ew+YTyJYD8JbBDTYTCeu6Nm0I4qLTGObk05b8tVVM g==;
X-CSE-ConnectionGUID: 7ATLImvVSeWkc/9NVfdS+g==
X-CSE-MsgGUID: JKL24cfnSDSgf4yLCJ9dgw==
X-IronPort-AV: E=McAfee;i="6800,10657,11716"; a="73357578"
X-IronPort-AV: E=Sophos;i="6.21,319,1763452800"; d="scan'208";a="73357578"
Received: from orviesa003.jf.intel.com ([10.64.159.143])
 by orvoesa111.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 02 Mar 2026 01:54:40 -0800
X-CSE-ConnectionGUID: 5oxR9HPqQB2Xmahkgtg3pg==
X-CSE-MsgGUID: P+hcbt7YQXCVN0znwtMYyw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.21,319,1763452800"; d="scan'208";a="221756576"
Received: from mjarzebo-mobl1.ger.corp.intel.com (HELO localhost)
 ([10.245.246.238])
 by ORVIESA003-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 02 Mar 2026 01:54:37 -0800
From: Jani Nikula <jani.nikula@intel.com>
To: Animesh Manna <animesh.manna@intel.com>,
 intel-gfx@lists.freedesktop.org, intel-xe@lists.freedesktop.org
Cc: jouni.hogander@intel.com, Animesh Manna <animesh.manna@intel.com>, Arun
 R Murthy <arun.r.murthy@intel.com>
Subject: Re: [PATCH v4] drm/i915/display: Panel Replay BW optimization for
 DP2.0 tunneling
In-Reply-To: <20260227093923.3170382-1-animesh.manna@intel.com>
Organization: Intel Finland Oy - BIC 0357606-4 - c/o Alberga Business Park,
 6 krs Bertel Jungin Aukio 5, 02600 Espoo, Finland
References: <20260227093923.3170382-1-animesh.manna@intel.com>
Date: Mon, 02 Mar 2026 11:54:34 +0200
Message-ID: <a6605b447ad026476d7c0da467ac123778be2dbc@intel.com>
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
X-Spamd-Result: default: False [-0.81 / 15.00];
	R_MISSING_CHARSET(0.50)[];
	DMARC_POLICY_ALLOW(-0.50)[intel.com,none];
	R_SPF_ALLOW(-0.20)[+ip4:131.252.210.177:c];
	R_DKIM_ALLOW(-0.20)[intel.com:s=Intel];
	MAILLIST(-0.20)[mailman];
	RWL_MAILSPIKE_GOOD(-0.10)[131.252.210.177:from];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_COUNT_THREE(0.00)[4];
	TO_DN_SOME(0.00)[];
	ARC_NA(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	MIME_TRACE(0.00)[0:+];
	HAS_ORG_HEADER(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	RCPT_COUNT_FIVE(0.00)[6];
	NEURAL_HAM(-0.00)[-1.000];
	FROM_NEQ_ENVFROM(0.00)[jani.nikula@intel.com,intel-gfx-bounces@lists.freedesktop.org];
	FROM_HAS_DN(0.00)[];
	DKIM_TRACE(0.00)[intel.com:+];
	MID_RHS_MATCH_FROM(0.00)[];
	ASN(0.00)[asn:6366, ipnet:131.252.0.0/16, country:US];
	TAGGED_RCPT(0.00)[intel-gfx];
	MISSING_XM_UA(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[gabe.freedesktop.org:helo,gabe.freedesktop.org:rdns,intel.com:mid,intel.com:dkim,intel.com:email]
X-Rspamd-Queue-Id: 16EAA1D5CFA
X-Rspamd-Action: no action

On Fri, 27 Feb 2026, Animesh Manna <animesh.manna@intel.com> wrote:
> Unused bandwidth can be used by external display agents for Panel Replay
> enabled DP panel during idleness with link on. Enable source to replace
> dummy data from the display with data from another agent by programming
> TRANS_DP2_CTL [Panel Replay Tunneling Enable].
>
> v2:
> - Enable pr bw optimization along with panel replay enable. [Jani]
>
> v3:
> - Write TRANS_DP2_CTL once for both bw optimization and panel replay
> enable. [Jani]
>
> v4:
> - Read DPCD once in init() and store in panel_replay_caps. [Jouni]
>
> Bspec: 68920
> Reviewed-by: Arun R Murthy <arun.r.murthy@intel.com>
> Signed-off-by: Animesh Manna <animesh.manna@intel.com>
> ---
>  .../gpu/drm/i915/display/intel_display_regs.h |  1 +
>  .../drm/i915/display/intel_display_types.h    |  1 +
>  drivers/gpu/drm/i915/display/intel_dp.c       |  1 +
>  drivers/gpu/drm/i915/display/intel_psr.c      | 30 +++++++++++++++++--
>  4 files changed, 31 insertions(+), 2 deletions(-)
>
> diff --git a/drivers/gpu/drm/i915/display/intel_display_regs.h b/drivers/gpu/drm/i915/display/intel_display_regs.h
> index 49e2a9e3ee0e..71411b26e918 100644
> --- a/drivers/gpu/drm/i915/display/intel_display_regs.h
> +++ b/drivers/gpu/drm/i915/display/intel_display_regs.h
> @@ -2265,6 +2265,7 @@
>  #define TRANS_DP2_CTL(trans)			_MMIO_TRANS(trans, _TRANS_DP2_CTL_A, _TRANS_DP2_CTL_B)
>  #define  TRANS_DP2_128B132B_CHANNEL_CODING	REG_BIT(31)
>  #define  TRANS_DP2_PANEL_REPLAY_ENABLE		REG_BIT(30)
> +#define  TRANS_DP2_PR_TUNNELING_ENABLE		REG_BIT(26)
>  #define  TRANS_DP2_DEBUG_ENABLE			REG_BIT(23)
>  
>  #define _TRANS_DP2_VFREQHIGH_A			0x600a4
> diff --git a/drivers/gpu/drm/i915/display/intel_display_types.h b/drivers/gpu/drm/i915/display/intel_display_types.h
> index e8e4af03a6a6..0b30f9085afb 100644
> --- a/drivers/gpu/drm/i915/display/intel_display_types.h
> +++ b/drivers/gpu/drm/i915/display/intel_display_types.h
> @@ -576,6 +576,7 @@ struct intel_connector {
>  
>  			bool support;
>  			bool su_support;
> +			bool optimization_support;
>  			enum intel_panel_replay_dsc_support dsc_support;
>  
>  			u16 su_w_granularity;
> diff --git a/drivers/gpu/drm/i915/display/intel_dp.c b/drivers/gpu/drm/i915/display/intel_dp.c
> index 025e906b63a9..f35aafe1e86f 100644
> --- a/drivers/gpu/drm/i915/display/intel_dp.c
> +++ b/drivers/gpu/drm/i915/display/intel_dp.c
> @@ -6250,6 +6250,7 @@ intel_dp_detect(struct drm_connector *_connector,
>  		intel_dp->psr.sink_panel_replay_support = false;
>  		connector->dp.panel_replay_caps.support = false;
>  		connector->dp.panel_replay_caps.su_support = false;
> +		connector->dp.panel_replay_caps.optimization_support = false;
>  		connector->dp.panel_replay_caps.dsc_support =
>  			INTEL_DP_PANEL_REPLAY_DSC_NOT_SUPPORTED;
>  
> diff --git a/drivers/gpu/drm/i915/display/intel_psr.c b/drivers/gpu/drm/i915/display/intel_psr.c
> index 5bea2eda744b..dc3e4d8885fa 100644
> --- a/drivers/gpu/drm/i915/display/intel_psr.c
> +++ b/drivers/gpu/drm/i915/display/intel_psr.c
> @@ -43,6 +43,7 @@
>  #include "intel_dmc.h"
>  #include "intel_dp.h"
>  #include "intel_dp_aux.h"
> +#include "intel_dp_tunnel.h"
>  #include "intel_dsb.h"
>  #include "intel_frontbuffer.h"
>  #include "intel_hdmi.h"
> @@ -603,6 +604,7 @@ static void _panel_replay_init_dpcd(struct intel_dp *intel_dp, struct intel_conn
>  {
>  	struct intel_display *display = to_intel_display(intel_dp);
>  	int ret;
> +	u8 val;
>  
>  	/* TODO: Enable Panel Replay on MST once it's properly implemented. */
>  	if (intel_dp->mst_detect == DRM_DP_MST)
> @@ -650,6 +652,10 @@ static void _panel_replay_init_dpcd(struct intel_dp *intel_dp, struct intel_conn
>  		    connector->dp.panel_replay_caps.su_support ?
>  		    "selective_update " : "",
>  		    panel_replay_dsc_support_str(connector->dp.panel_replay_caps.dsc_support));
> +
> +	drm_dp_dpcd_readb(&intel_dp->aux, DP_TUNNELING_CAPABILITIES, &val);

drm_dp_dpcd_read_byte() is preferred over drm_dp_dpcd_readb().

> +	connector->dp.panel_replay_caps.optimization_support =
> +		(val & DP_PANEL_REPLAY_OPTIMIZATION_SUPPORT) ? true : false;

Drive-by comment, this can be simplified to just:

	connector->dp.panel_replay_caps.optimization_support = val & DP_PANEL_REPLAY_OPTIMIZATION_SUPPORT;

>  }
>  
>  static void _psr_init_dpcd(struct intel_dp *intel_dp, struct intel_connector *connector)
> @@ -1022,11 +1028,29 @@ static u8 frames_before_su_entry(struct intel_dp *intel_dp)
>  	return frames_before_su_entry;
>  }
>  
> +static bool intel_psr_allow_pr_bw_optimization(struct intel_dp *intel_dp)
> +{
> +	struct intel_display *display = to_intel_display(intel_dp);
> +	struct intel_connector *connector = intel_dp->attached_connector;
> +
> +	if (DISPLAY_VER(display) < 35)
> +		return false;
> +
> +	if (!intel_dp_tunnel_bw_alloc_is_enabled(intel_dp))
> +		return false;
> +
> +	if (!(connector->dp.panel_replay_caps.optimization_support))

Excess parenthesis.

> +		return false;
> +
> +	return true;
> +}
> +
>  static void dg2_activate_panel_replay(struct intel_dp *intel_dp)
>  {
>  	struct intel_display *display = to_intel_display(intel_dp);
>  	struct intel_psr *psr = &intel_dp->psr;
>  	enum transcoder cpu_transcoder = intel_dp->psr.transcoder;
> +	u32 dp2_ctl_val = TRANS_DP2_PANEL_REPLAY_ENABLE;
>  
>  	if (intel_dp_is_edp(intel_dp) && psr->sel_update_enabled) {
>  		u32 val = psr->su_region_et_enabled ?
> @@ -1039,12 +1063,14 @@ static void dg2_activate_panel_replay(struct intel_dp *intel_dp)
>  			       val);
>  	}
>  
> +	if (!intel_dp_is_edp(intel_dp) && intel_psr_allow_pr_bw_optimization(intel_dp))
> +		dp2_ctl_val |= TRANS_DP2_PR_TUNNELING_ENABLE;
> +
>  	intel_de_rmw(display,
>  		     PSR2_MAN_TRK_CTL(display, intel_dp->psr.transcoder),
>  		     0, ADLP_PSR2_MAN_TRK_CTL_SF_CONTINUOS_FULL_FRAME);
>  
> -	intel_de_rmw(display, TRANS_DP2_CTL(intel_dp->psr.transcoder), 0,
> -		     TRANS_DP2_PANEL_REPLAY_ENABLE);
> +	intel_de_rmw(display, TRANS_DP2_CTL(intel_dp->psr.transcoder), 0, dp2_ctl_val);
>  }
>  
>  static void hsw_activate_psr2(struct intel_dp *intel_dp)

-- 
Jani Nikula, Intel
