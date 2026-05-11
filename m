Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id cGM6EMDYAWqvlQEAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Mon, 11 May 2026 15:25:20 +0200
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 1C09A50ED6C
	for <lists+intel-gfx@lfdr.de>; Mon, 11 May 2026 15:25:18 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 818A310E538;
	Mon, 11 May 2026 13:25:17 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="DFuX4BST";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.19])
 by gabe.freedesktop.org (Postfix) with ESMTPS id D92B710E728;
 Mon, 11 May 2026 13:25:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1778505917; x=1810041917;
 h=date:from:to:cc:subject:in-reply-to:message-id:
 references:mime-version:content-id;
 bh=0AJH8elwU2s8KFirikXSOPnVKp9/S963D5Srz8NT0/4=;
 b=DFuX4BSTk8z7PofQyp7bVjolwsX98p7aC/CA7mrMUC6x++g4vnOfuIhy
 F6jY1fmmtOYdzZSHzZoEuY9Q7uCT/TyB9iQ2doxsiS0ctNmwToe8XrBwI
 YCjzZgrage5uBeFuGlOiYh5l1OJxzipnr7yHWynMy3Z9KAxwUIf+oBd0u
 nXkzLSw39h2l40Ruq6gGXPKvDjMW1qJNL//Hvo7T4cDL/XwSo8wAJ0KqZ
 UL4KaWd10Ma2x3LB29XBEsWPzugSIuEn52B14/WSfYW27rbsmlvUBsc/k
 IdrRloUYiqf3mM2YPF82qZITbmCSCzIP+89C/+J88PvftwnsryxGfXlf4 A==;
X-CSE-ConnectionGUID: oleDvYAVQ0SUTzA62wM9bw==
X-CSE-MsgGUID: vJaREap6RTi6cfiHZBcubw==
X-IronPort-AV: E=McAfee;i="6800,10657,11783"; a="79338087"
X-IronPort-AV: E=Sophos;i="6.23,229,1770624000"; d="scan'208";a="79338087"
Received: from orviesa002.jf.intel.com ([10.64.159.142])
 by orvoesa111.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 11 May 2026 06:25:17 -0700
X-CSE-ConnectionGUID: SOQn5w02SqyGbvz9M4gOtw==
X-CSE-MsgGUID: k16o8aNPSXWDBj1xxUsmeg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.23,229,1770624000"; d="scan'208";a="267810814"
Received: from dev-417.igk.intel.com ([10.91.214.181])
 by orviesa002.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 11 May 2026 06:25:16 -0700
Date: Mon, 11 May 2026 15:25:13 +0200 (CEST)
From: =?ISO-8859-2?Q?Micha=B3_Grzelak?= <michal.grzelak@intel.com>
To: =?ISO-8859-15?Q?Jouni_H=F6gander?= <jouni.hogander@intel.com>
cc: intel-gfx@lists.freedesktop.org, intel-xe@lists.freedesktop.org, 
 stable@vger.kernel.org
Subject: Re: [PATCH 2/2] drm/i915/psr: Use DC_OFF wake reference to block
 DC6 on vblank enable
In-Reply-To: <20260511121551.2373824-2-jouni.hogander@intel.com>
Message-ID: <7af4c9b9-c2f8-8970-ec4f-b244df92dd08@intel.com>
References: <20260511121551.2373824-1-jouni.hogander@intel.com>
 <20260511121551.2373824-2-jouni.hogander@intel.com>
MIME-Version: 1.0
Content-Type: multipart/mixed; BOUNDARY="8323329-983092090-1778505731=:541093"
Content-ID: <135e2c34-5465-c537-ee08-5e56dd62c7ab@intel.com>
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
X-Rspamd-Queue-Id: 1C09A50ED6C
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-0.31 / 15.00];
	CTYPE_MIXED_BOGUS(1.00)[];
	DMARC_POLICY_ALLOW(-0.50)[intel.com,none];
	R_SPF_ALLOW(-0.20)[+ip4:131.252.210.177:c];
	R_DKIM_ALLOW(-0.20)[intel.com:s=Intel];
	MAILLIST(-0.20)[mailman];
	RWL_MAILSPIKE_GOOD(-0.10)[131.252.210.177:from];
	MIME_GOOD(-0.10)[multipart/mixed,text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	TO_DN_SOME(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	MIME_TRACE(0.00)[0:+,1:+];
	ARC_NA(0.00)[];
	DKIM_TRACE(0.00)[intel.com:+];
	RCVD_COUNT_THREE(0.00)[4];
	FROM_HAS_DN(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	FROM_NEQ_ENVFROM(0.00)[michal.grzelak@intel.com,intel-gfx-bounces@lists.freedesktop.org];
	RCPT_COUNT_THREE(0.00)[4];
	MID_RHS_MATCH_FROM(0.00)[];
	ASN(0.00)[asn:6366, ipnet:131.252.0.0/16, country:US];
	TAGGED_RCPT(0.00)[intel-gfx];
	MISSING_XM_UA(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[intel.com:email,intel.com:mid,intel.com:dkim,gabe.freedesktop.org:helo,gabe.freedesktop.org:rdns]
X-Rspamd-Action: no action

  This message is in MIME format.  The first part should be readable text,
  while the remaining parts are likely unreadable without MIME-aware tools.

--8323329-983092090-1778505731=:541093
Content-Type: text/plain; CHARSET=ISO-8859-2; format=flowed
Content-Transfer-Encoding: 8BIT
Content-ID: <98b15bf3-fc96-01fc-9e4c-282201889e14@intel.com>

On Mon, 11 May 2026, Jouni Högander wrote:
> We are observing following warnings:
>
> *ERROR* power well DC_off state mismatch (refcount 0/enabled 1)
>
> gen9_dc_off_power_well_enabled is concidering target state DC_STATE_DISABLE

s/concidering/considering/

Reviewed-by: Micha³ Grzelak <michal.grzelak@intel.com>

BR,
Micha³

> as DC_OFF power well being enabled. Fix this by using wakeref for the
> purpose.
>
> Fixes: aa451abcffb5 ("drm/i915/display: Prevent DC6 while vblank is enabled for Panel Replay")
> Cc: <stable@vger.kernel.org> # v6.13+
> Signed-off-by: Jouni Högander <jouni.hogander@intel.com>
> ---
> .../drm/i915/display/intel_display_types.h    |  2 ++
> drivers/gpu/drm/i915/display/intel_psr.c      | 24 +++++++------------
> 2 files changed, 11 insertions(+), 15 deletions(-)
>
> diff --git a/drivers/gpu/drm/i915/display/intel_display_types.h b/drivers/gpu/drm/i915/display/intel_display_types.h
> index 26e59110e743..e2861476b215 100644
> --- a/drivers/gpu/drm/i915/display/intel_display_types.h
> +++ b/drivers/gpu/drm/i915/display/intel_display_types.h
> @@ -1789,6 +1789,8 @@ struct intel_psr {
> 	u8 active_non_psr_pipes;
>
> 	const char *no_psr_reason;
> +
> +	struct ref_tracker *vblank_wakeref;
> };
>
> struct intel_dp {
> diff --git a/drivers/gpu/drm/i915/display/intel_psr.c b/drivers/gpu/drm/i915/display/intel_psr.c
> index 657b1614cd65..a8f02f928bd8 100644
> --- a/drivers/gpu/drm/i915/display/intel_psr.c
> +++ b/drivers/gpu/drm/i915/display/intel_psr.c
> @@ -4141,14 +4141,20 @@ void intel_psr_notify_vblank_enable_disable(struct intel_display *display,
> 					    bool enable)
> {
> 	struct intel_encoder *encoder;
> -	bool block_dc_states = false;
>
> 	for_each_intel_encoder_with_psr(display->drm, encoder) {
> 		struct intel_dp *intel_dp = enc_to_intel_dp(encoder);
>
> 		mutex_lock(&intel_dp->psr.lock);
> -		if (CAN_PANEL_REPLAY(intel_dp))
> -			block_dc_states = true;
> +		if (CAN_PANEL_REPLAY(intel_dp)) {
> +			if (enable)
> +				intel_dp->psr.vblank_wakeref =
> +					intel_display_power_get(display,
> +								POWER_DOMAIN_DC_OFF);
> +			else
> +				intel_display_power_put(display, POWER_DOMAIN_DC_OFF,
> +							intel_dp->psr.vblank_wakeref);
> +		}
>
> 		if (intel_dp->psr.enabled && !intel_dp->psr.panel_replay_enabled &&
> 		    intel_dp->psr.pkg_c_latency_used)
> @@ -4156,18 +4162,6 @@ void intel_psr_notify_vblank_enable_disable(struct intel_display *display,
>
> 		mutex_unlock(&intel_dp->psr.lock);
> 	}
> -
> -	/*
> -	 * NOTE: intel_display_power_set_target_dc_state is used
> -	 * only by PSR code for DC3CO handling. DC3CO target
> -	 * state is currently disabled in * PSR code. If DC3CO
> -	 * is taken into use we need take that into account here
> -	 * as well.
> -	 */
> -	if (block_dc_states)
> -		intel_display_power_set_target_dc_state(display, enable ?
> -							DC_STATE_DISABLE :
> -							DC_STATE_EN_UPTO_DC6);
> }
>
> static void
> -- 
> 2.43.0
>
>
--8323329-983092090-1778505731=:541093--
