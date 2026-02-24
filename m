Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id OGAqKZ9dnWmxOgQAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Tue, 24 Feb 2026 09:13:19 +0100
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 99334183741
	for <lists+intel-gfx@lfdr.de>; Tue, 24 Feb 2026 09:13:18 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 1BE5F10E4D6;
	Tue, 24 Feb 2026 08:13:17 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="Uhz9AuJw";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.9])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 93F4E10E4DB;
 Tue, 24 Feb 2026 08:13:14 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1771920795; x=1803456795;
 h=date:from:to:cc:subject:message-id:references:
 mime-version:content-transfer-encoding:in-reply-to;
 bh=8LNxIxfiCC285Pv3YrINYJoJK4jLXts2bnzxZ4SIzbA=;
 b=Uhz9AuJwgyYn96pc+eSohkB4nEnlUD+CJKRN73LBsRDJG2JYnwSGPX1Z
 oVszhdG7caU5Q8pImDkKOjmlhqhkMm8turGtCLMIocVFSmS6aWlIWNLuM
 7juUY6s35B/xTWqpL62a8MkogOjhdMNyS1PhQcXmcECUj2ZQV2GsQQD9p
 RHb0QcEwGlDfcPXi0ykOzMja7st/VfyrOsbBorDa3EMTvJ7K/i3+zH+r3
 /MoLg3+vHFxoBC/VdAnqavC6pARMJDSWgYLalNJeRmidljqvSFcTRncZW
 5KqM4yuCFRxL3ChSRmXxTxU1XGerJ3TViG/qIm9GB5YfH0a5NM3QOqAvO w==;
X-CSE-ConnectionGUID: ZuuzoxQiRfO2MldWBge3fA==
X-CSE-MsgGUID: iACCg81RQS2085h7M9nXog==
X-IronPort-AV: E=McAfee;i="6800,10657,11710"; a="95544520"
X-IronPort-AV: E=Sophos;i="6.21,308,1763452800"; d="scan'208";a="95544520"
Received: from orviesa010.jf.intel.com ([10.64.159.150])
 by orvoesa101.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 24 Feb 2026 00:13:14 -0800
X-CSE-ConnectionGUID: QX8dZIupTYmH5hexSn9Vlw==
X-CSE-MsgGUID: 2itRm7YzTR+r6f0WN6Ureg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.21,308,1763452800"; d="scan'208";a="215068147"
Received: from pgcooper-mobl3.ger.corp.intel.com (HELO localhost)
 ([10.245.244.101])
 by orviesa010-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 24 Feb 2026 00:13:12 -0800
Date: Tue, 24 Feb 2026 10:13:09 +0200
From: Ville =?iso-8859-1?Q?Syrj=E4l=E4?= <ville.syrjala@linux.intel.com>
To: Uma Shankar <uma.shankar@intel.com>
Cc: intel-gfx@lists.freedesktop.org, intel-xe@lists.freedesktop.org,
 mitulkumar.ajitkumar.golani@intel.com, ankit.k.nautiyal@intel.com
Subject: Re: [PATCH] drm/i915/display: Enable AS SDP Skip Frames
Message-ID: <aZ1dlZbH0h21YoQs@intel.com>
References: <20260223210707.1039982-1-uma.shankar@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=iso-8859-1
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <20260223210707.1039982-1-uma.shankar@intel.com>
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
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [0.46 / 15.00];
	MID_RHS_MATCH_TO(1.00)[];
	R_MIXED_CHARSET(0.77)[subject];
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
	RCPT_COUNT_FIVE(0.00)[5];
	NEURAL_HAM(-0.00)[-1.000];
	FROM_NEQ_ENVFROM(0.00)[ville.syrjala@linux.intel.com,intel-gfx-bounces@lists.freedesktop.org];
	DKIM_TRACE(0.00)[intel.com:+];
	MID_RHS_MATCH_FROMTLD(0.00)[];
	ASN(0.00)[asn:6366, ipnet:131.252.0.0/16, country:US];
	TAGGED_RCPT(0.00)[intel-gfx];
	MISSING_XM_UA(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[gabe.freedesktop.org:helo,gabe.freedesktop.org:rdns,intel.com:mid,intel.com:dkim,intel.com:email]
X-Rspamd-Queue-Id: 99334183741
X-Rspamd-Action: no action

On Tue, Feb 24, 2026 at 02:37:07AM +0530, Uma Shankar wrote:
> Hardware provides mechanism to skip AS SDP for programmed
> number of frames. Enable the same to drive to 1Hz if hardware
> supports it.
> 
> Signed-off-by: Uma Shankar <uma.shankar@intel.com>
> ---
>  drivers/gpu/drm/i915/display/intel_alpm.c     | 3 +++
>  drivers/gpu/drm/i915/display/intel_psr_regs.h | 2 ++
>  2 files changed, 5 insertions(+)
> 
> diff --git a/drivers/gpu/drm/i915/display/intel_alpm.c b/drivers/gpu/drm/i915/display/intel_alpm.c
> index b3334bc4d0f9..76a8919cdba2 100644
> --- a/drivers/gpu/drm/i915/display/intel_alpm.c
> +++ b/drivers/gpu/drm/i915/display/intel_alpm.c
> @@ -395,6 +395,9 @@ static void lnl_alpm_configure(struct intel_dp *intel_dp,
>  			if (crtc_state->disable_as_sdp_when_pr_active)
>  				pr_alpm_ctl |= PR_ALPM_CTL_AS_SDP_TRANSMISSION_IN_ACTIVE_DISABLE;
>  
> +			if (DISPLAY_VER(display) >= 35)
> +				pr_alpm_ctl |= PR_ALPM_CTL_ASSDP_SKIP_FRAMES(32);

Where did that magic 32 frames come from?

This whole thing seems to involve a lot of details (Bspec:75539)
that someone needs to think through.

There are also some things in the DP 2.1a spec (eg. 2.18.8.1.1
Enabling Autonomous Sink Device Refresh Rate Timing) that seem
relevant for this stuff. Sadly the bspec page makes no mention
of any of this :/

> +
>  			intel_de_write(display, PR_ALPM_CTL(display, cpu_transcoder),
>  				       pr_alpm_ctl);
>  		}
> diff --git a/drivers/gpu/drm/i915/display/intel_psr_regs.h b/drivers/gpu/drm/i915/display/intel_psr_regs.h
> index 8afbf5a38335..8c35df795955 100644
> --- a/drivers/gpu/drm/i915/display/intel_psr_regs.h
> +++ b/drivers/gpu/drm/i915/display/intel_psr_regs.h
> @@ -268,6 +268,8 @@
>  
>  #define _PR_ALPM_CTL_A	0x60948
>  #define PR_ALPM_CTL(dev_priv, tran)	_MMIO_TRANS2(dev_priv, tran, _PR_ALPM_CTL_A)
> +#define  PR_ALPM_CTL_ASSDP_SKIP_FRAMES_MASK			REG_GENMASK(27, 16)
> +#define  PR_ALPM_CTL_ASSDP_SKIP_FRAMES(val)			REG_FIELD_PREP(PR_ALPM_CTL_ASSDP_SKIP_FRAMES_MASK, val)
>  #define  PR_ALPM_CTL_ALLOW_LINK_OFF_BETWEEN_AS_SDP_AND_SU	BIT(6)
>  #define  PR_ALPM_CTL_RFB_UPDATE_CONTROL				BIT(5)
>  #define  PR_ALPM_CTL_AS_SDP_TRANSMISSION_IN_ACTIVE_DISABLE	BIT(4)
> -- 
> 2.50.1

-- 
Ville Syrjälä
Intel
