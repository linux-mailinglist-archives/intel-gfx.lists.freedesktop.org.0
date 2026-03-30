Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id 6EaXIAvUymkOAgYAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Mon, 30 Mar 2026 21:50:35 +0200
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 0B56C360A40
	for <lists+intel-gfx@lfdr.de>; Mon, 30 Mar 2026 21:50:34 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 20A6310E5D8;
	Mon, 30 Mar 2026 19:50:33 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="cot/6bZO";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.16])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 4B10710E147;
 Mon, 30 Mar 2026 19:50:31 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1774900231; x=1806436231;
 h=date:from:to:cc:subject:message-id:references:
 mime-version:content-transfer-encoding:in-reply-to;
 bh=hE9lA8PiSHGTrwDmpqmId+ivyX0E/CLvvIokY9OuoUY=;
 b=cot/6bZOm1ipgAIpt2hAPaVlZ4fqsfz/dptUsMUY4Kxebec0NAbahj68
 y2+eXArvs/KVkaSSwEvli+j8FuW1a5u5m0p6o8nWMi5cVr2Z3erbZj4+C
 FHo7gln7WEcNO6apaxW4GchwUSCDTJJjtDbAJZ9GdWJpfsv2FSUheJpG1
 bKb850b+/hs9ds7IL1UaON5r5ZtwyQDgCSbLJQVt2PE9ndUHr9FnVNip7
 Yoy4WVAekbOn6xYkp39ofKnZvzD7j3BDHw4IEVe+64TkworTaTNlT9Afg
 NTgEliSEC47HMkDn+8WjqjriXhSWb2tt09eF/Y5qHaSEDoHfTrQfuQ55b g==;
X-CSE-ConnectionGUID: uQD4KtHoQHCtjNkrEofv7g==
X-CSE-MsgGUID: Wpa5U75vQBSepRxwvp4VFg==
X-IronPort-AV: E=McAfee;i="6800,10657,11744"; a="76094535"
X-IronPort-AV: E=Sophos;i="6.23,150,1770624000"; d="scan'208";a="76094535"
Received: from fmviesa001.fm.intel.com ([10.60.135.141])
 by orvoesa108.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 30 Mar 2026 12:50:31 -0700
X-CSE-ConnectionGUID: tvdv9p87RKOnspIBRZgS+A==
X-CSE-MsgGUID: SdbdySu2RCyTT1baK1NmcQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.23,150,1770624000"; d="scan'208";a="249366216"
Received: from pgcooper-mobl3.ger.corp.intel.com (HELO localhost)
 ([10.245.245.155])
 by smtpauth.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 30 Mar 2026 12:50:28 -0700
Date: Mon, 30 Mar 2026 22:50:25 +0300
From: Ville =?iso-8859-1?Q?Syrj=E4l=E4?= <ville.syrjala@linux.intel.com>
To: Ankit Nautiyal <ankit.k.nautiyal@intel.com>
Cc: intel-gfx@lists.freedesktop.org, intel-xe@lists.freedesktop.org,
 dri-devel@lists.freedesktop.org, jouni.hogander@intel.com,
 animesh.manna@intel.com
Subject: Re: [PATCH 19/19] drm/i915/dp: Always enable AS SDP if supported by
 source + sink
Message-ID: <acrUAfRP4nLXSBMD@intel.com>
References: <20260330040656.4116502-1-ankit.k.nautiyal@intel.com>
 <20260330040656.4116502-20-ankit.k.nautiyal@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=iso-8859-1
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <20260330040656.4116502-20-ankit.k.nautiyal@intel.com>
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
X-Spamd-Result: default: False [0.22 / 15.00];
	MID_RHS_MATCH_TO(1.00)[];
	R_MIXED_CHARSET(0.53)[subject];
	DMARC_POLICY_ALLOW(-0.50)[intel.com,none];
	R_SPF_ALLOW(-0.20)[+ip4:131.252.210.177:c];
	MAILLIST(-0.20)[mailman];
	R_DKIM_ALLOW(-0.20)[intel.com:s=Intel];
	RWL_MAILSPIKE_GOOD(-0.10)[131.252.210.177:from];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_COUNT_THREE(0.00)[4];
	ARC_NA(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	TO_DN_SOME(0.00)[];
	MIME_TRACE(0.00)[0:+];
	HAS_ORG_HEADER(0.00)[];
	FROM_HAS_DN(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	MID_RHS_MATCH_FROMTLD(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	FROM_NEQ_ENVFROM(0.00)[ville.syrjala@linux.intel.com,intel-gfx-bounces@lists.freedesktop.org];
	DKIM_TRACE(0.00)[intel.com:+];
	TAGGED_RCPT(0.00)[intel-gfx];
	MISSING_XM_UA(0.00)[];
	ASN(0.00)[asn:6366, ipnet:131.252.0.0/16, country:US];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCPT_COUNT_FIVE(0.00)[6]
X-Rspamd-Queue-Id: 0B56C360A40
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

On Mon, Mar 30, 2026 at 09:36:56AM +0530, Ankit Nautiyal wrote:
> Currently AS SDP is only configured when VRR is enabled. However, other
> use cases like CMRR, Panel Replay, etc. also send information to the sink
> via AS SDPs.
> 
> With optimized guardband, we also need to account for wakeup time and other
> relevant details that depend on the AS SDP position whenever AS SDP is
> enabled. If a feature enabling AS SDP gets turned on later (after modeset),
> the guardband might not be sufficient and may need to increase, triggering
> a full modeset.
> 
> To avoid this, always send AS SDP whenever the source and sink both
> support it.
> 
> Signed-off-by: Ankit Nautiyal <ankit.k.nautiyal@intel.com>
> ---
>  drivers/gpu/drm/i915/display/intel_dp.c | 2 +-
>  1 file changed, 1 insertion(+), 1 deletion(-)
> 
> diff --git a/drivers/gpu/drm/i915/display/intel_dp.c b/drivers/gpu/drm/i915/display/intel_dp.c
> index 7da3dee226a0..81be0767927e 100644
> --- a/drivers/gpu/drm/i915/display/intel_dp.c
> +++ b/drivers/gpu/drm/i915/display/intel_dp.c
> @@ -3136,7 +3136,7 @@ static bool intel_dp_can_use_as_sdp(struct intel_dp *intel_dp,
>  	if (drm_dp_is_branch(intel_dp->dpcd))
>  		return false;
>  
> -	return crtc_state->vrr.enable;
> +	return true;

I think what we actually want is something like

...
	if (pr_auxless_alpm &&
	    DP_PANEL_REPLAY_ASYNC_VIDEO_TIMING_NOT_SUPPORTED_IN_PR)
		return true;
	return intel_vrr_possible();
}

That way non-VRR PR panels that don't need the AS SDP to maintain
the synchronization can avoid the AS SDP, and thus potentially use
a smaller guardband.

>  }
>  
>  static void intel_dp_compute_as_sdp(struct intel_dp *intel_dp,
> -- 
> 2.45.2

-- 
Ville Syrjälä
Intel
