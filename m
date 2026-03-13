Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id YPXJNVsEtGnjfQAAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Fri, 13 Mar 2026 13:34:35 +0100
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 3DFF5283138
	for <lists+intel-gfx@lfdr.de>; Fri, 13 Mar 2026 13:34:34 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id C646310EB8D;
	Fri, 13 Mar 2026 12:34:32 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="IIkGL3fn";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.21])
 by gabe.freedesktop.org (Postfix) with ESMTPS id B4E3610E11E;
 Fri, 13 Mar 2026 12:34:31 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1773405272; x=1804941272;
 h=date:from:to:cc:subject:message-id:references:
 mime-version:content-transfer-encoding:in-reply-to;
 bh=3GcBQEEt8aOJAmyiXiT93a/YWK2uh0iuk0X0BSZHDS8=;
 b=IIkGL3fnR5IhNHykay0awid8QSv2U+mpnA0fIXP7aQVhzLzSqlj+sHRE
 zsrBqU78nnUl3ErDEbIHD1Ot6zXfX0Ouks2Cm35WiK5QZ/eXOowMtHHRw
 dMXv5xlxyr9fOyUF9vJTSo5caMpsXiqzfhaojZLqfgcw5ORe6ZjW3ONCZ
 E+1Mn9PnOw76ZSxNuoQAgLlsUQOkhbfMDz1C3T85vuyKDGduTHhOZa29v
 KHBNVhVmRozG5A1R0Sub19K3KLzkAsRfZQh3G9FpQia02xrOyyiJ1qXej
 YSNRd69SqGKMFzWNYjjdAtCPTIF2Y9LEJsjYvmE9KKiMa3mjZQ3Jbd3Nv Q==;
X-CSE-ConnectionGUID: 4+mwLJbqT/WTKgzYKBwxNQ==
X-CSE-MsgGUID: s1u22pjOTzOoxjnG1tfMsg==
X-IronPort-AV: E=McAfee;i="6800,10657,11727"; a="74391374"
X-IronPort-AV: E=Sophos;i="6.23,118,1770624000"; d="scan'208";a="74391374"
Received: from orviesa001.jf.intel.com ([10.64.159.141])
 by orvoesa113.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 13 Mar 2026 05:34:32 -0700
X-CSE-ConnectionGUID: rx6dW0HCRu+dLQchD7V1RQ==
X-CSE-MsgGUID: UpXZZD/nQbOJ8wn1urs3QQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.23,118,1770624000"; d="scan'208";a="259044922"
Received: from smoticic-mobl1.ger.corp.intel.com (HELO localhost)
 ([10.245.244.21])
 by smtpauth.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 13 Mar 2026 05:34:29 -0700
Date: Fri, 13 Mar 2026 14:34:26 +0200
From: Ville =?iso-8859-1?Q?Syrj=E4l=E4?= <ville.syrjala@linux.intel.com>
To: Ankit Nautiyal <ankit.k.nautiyal@intel.com>
Cc: intel-gfx@lists.freedesktop.org, intel-xe@lists.freedesktop.org,
 dri-devel@lists.freedesktop.org, jouni.hogander@intel.com,
 animesh.manna@intel.com
Subject: Re: [PATCH 12/19] drm/i915/psr: Write the PR config DPCDs in burst
 mode
Message-ID: <abQEUmV5SZVWCAX7@intel.com>
References: <20260311113611.3393194-1-ankit.k.nautiyal@intel.com>
 <20260311113611.3393194-13-ankit.k.nautiyal@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=iso-8859-1
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <20260311113611.3393194-13-ankit.k.nautiyal@intel.com>
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
X-Spamd-Result: default: False [0.25 / 15.00];
	MID_RHS_MATCH_TO(1.00)[];
	R_MIXED_CHARSET(0.56)[subject];
	DMARC_POLICY_ALLOW(-0.50)[intel.com,none];
	MAILLIST(-0.20)[mailman];
	R_DKIM_ALLOW(-0.20)[intel.com:s=Intel];
	R_SPF_ALLOW(-0.20)[+ip4:131.252.210.177:c];
	RWL_MAILSPIKE_GOOD(-0.10)[131.252.210.177:from];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_COUNT_THREE(0.00)[4];
	FROM_HAS_DN(0.00)[];
	HAS_ORG_HEADER(0.00)[];
	MIME_TRACE(0.00)[0:+];
	ARC_NA(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	TO_DN_SOME(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	RCPT_COUNT_FIVE(0.00)[6];
	NEURAL_HAM(-0.00)[-1.000];
	FROM_NEQ_ENVFROM(0.00)[ville.syrjala@linux.intel.com,intel-gfx-bounces@lists.freedesktop.org];
	DKIM_TRACE(0.00)[intel.com:+];
	MID_RHS_MATCH_FROMTLD(0.00)[];
	ASN(0.00)[asn:6366, ipnet:131.252.0.0/16, country:US];
	TAGGED_RCPT(0.00)[intel-gfx];
	MISSING_XM_UA(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[gabe.freedesktop.org:helo,gabe.freedesktop.org:rdns,intel.com:dkim,intel.com:email,intel.com:mid]
X-Rspamd-Queue-Id: 3DFF5283138
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

On Wed, Mar 11, 2026 at 05:06:04PM +0530, Ankit Nautiyal wrote:
> Replace the consecutive single-byte writes to PANEL_REPLAY_CONFIG and
> CONFIG2 with one drm_dp_dpcd_write() burst starting at PANEL_REPLAY_CONFIG,
> reducing AUX transactions.
> 
> Suggested-by: Ville Syrjälä <ville.syrjala@linux.intel.com>
> Signed-off-by: Ankit Nautiyal <ankit.k.nautiyal@intel.com>
> ---
>  drivers/gpu/drm/i915/display/intel_psr.c | 18 ++++++++++++------
>  1 file changed, 12 insertions(+), 6 deletions(-)
> 
> diff --git a/drivers/gpu/drm/i915/display/intel_psr.c b/drivers/gpu/drm/i915/display/intel_psr.c
> index 5041a5a138d1..ee6e26abd05e 100644
> --- a/drivers/gpu/drm/i915/display/intel_psr.c
> +++ b/drivers/gpu/drm/i915/display/intel_psr.c
> @@ -774,27 +774,33 @@ static bool psr2_su_region_et_valid(struct intel_connector *connector, bool pane
>  static void _panel_replay_enable_sink(struct intel_dp *intel_dp,
>  				      const struct intel_crtc_state *crtc_state)
>  {
> -	u8 val = DP_PANEL_REPLAY_ENABLE |
> +	struct intel_display *display = to_intel_display(intel_dp);
> +	u8 panel_replay_config = DP_PANEL_REPLAY_ENABLE |
>  		DP_PANEL_REPLAY_VSC_SDP_CRC_EN |
>  		DP_PANEL_REPLAY_UNRECOVERABLE_ERROR_EN |
>  		DP_PANEL_REPLAY_RFB_STORAGE_ERROR_EN |
>  		DP_PANEL_REPLAY_ACTIVE_FRAME_CRC_ERROR_EN;
>  	u8 panel_replay_config2 = DP_PANEL_REPLAY_CRC_VERIFICATION;
> +	u8 buf[2];

u8 panel_replay_config[2];

would reduce the number of variables we have to contend with.

> +	int ret;
>  
>  	if (crtc_state->has_sel_update)
> -		val |= DP_PANEL_REPLAY_SU_ENABLE;
> +		panel_replay_config |= DP_PANEL_REPLAY_SU_ENABLE;
>  
>  	if (crtc_state->enable_psr2_su_region_et)
> -		val |= DP_PANEL_REPLAY_ENABLE_SU_REGION_ET;
> +		panel_replay_config |= DP_PANEL_REPLAY_ENABLE_SU_REGION_ET;
>  
>  	if (crtc_state->req_psr2_sdp_prior_scanline)
>  		panel_replay_config2 |=
>  			DP_PANEL_REPLAY_SU_REGION_SCANLINE_CAPTURE;
>  
> -	drm_dp_dpcd_writeb(&intel_dp->aux, PANEL_REPLAY_CONFIG, val);
> +	buf[0] = panel_replay_config;
> +	buf[1] = panel_replay_config2;
> +
> +	ret = drm_dp_dpcd_write(&intel_dp->aux, PANEL_REPLAY_CONFIG, buf, sizeof(buf));
>  
> -	drm_dp_dpcd_writeb(&intel_dp->aux, PANEL_REPLAY_CONFIG2,
> -			   panel_replay_config2);
> +	if (ret < 0 || ret != sizeof(buf))

The < 0 check is redunadnt.

> +		drm_dbg_kms(display->drm, "Failed to write Panel Replay Configs\n");
>  }
>  
>  static void _psr_enable_sink(struct intel_dp *intel_dp,
> -- 
> 2.45.2

-- 
Ville Syrjälä
Intel
