Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id MfFkB8VBNWpDqQYAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Fri, 19 Jun 2026 15:19:01 +0200
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id A4C266A609F
	for <lists+intel-gfx@lfdr.de>; Fri, 19 Jun 2026 15:19:00 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=intel.com header.s=Intel header.b=mPf4iGOU;
	spf=pass (mail.lfdr.de: domain of intel-gfx-bounces@lists.freedesktop.org designates 131.252.210.177 as permitted sender) smtp.mailfrom=intel-gfx-bounces@lists.freedesktop.org;
	dmarc=pass (policy=none) header.from=intel.com
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 2F64310F5CC;
	Fri, 19 Jun 2026 13:18:59 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.8])
 by gabe.freedesktop.org (Postfix) with ESMTPS id C7BC010F5CC;
 Fri, 19 Jun 2026 13:18:58 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1781875139; x=1813411139;
 h=date:from:to:cc:subject:in-reply-to:message-id:
 references:mime-version:content-id;
 bh=C1NCR9r1r3rNzniWYkxxuRr+GtV+8PlRZNbzX4AVK8Y=;
 b=mPf4iGOUST39h/OD1CpuxHU9AnJXyAwZGhUuhimp19DzD1MYsPgdYTYx
 G9bDjOkp9vyMDB7DgkmoOIljpBZmhPepPI2IzuHnBHseTPX8KAmgRu0d1
 QOnOm8EJBLFCUujepN06t0lzRa5RNXiAayO75/oxDpqfMNwT6KWupPW/n
 84FKFgrWPr0kLPrX9II/p/fk7EhDwEwrHy/6ZbDQRqCeyIQO6nkspG2I7
 oLy6UTilkHraQRGULS2CJjCStquTcIBdQ13N8SRQ95EiLCYyQEPaekn/T
 jLqJhkGvBji8HbhbEfA8zTri3PbKSQr9yxOtqmoo5jHGChxDWrBfVKkvu Q==;
X-CSE-ConnectionGUID: fTQAZXk5TIa8OCYvgBfNEQ==
X-CSE-MsgGUID: Xq7TWjowQbyjkyUK9N4aEQ==
X-IronPort-AV: E=McAfee;i="6800,10657,11821"; a="100271846"
X-IronPort-AV: E=Sophos;i="6.24,213,1774335600"; d="scan'208";a="100271846"
Received: from orviesa009.jf.intel.com ([10.64.159.149])
 by fmvoesa102.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 19 Jun 2026 06:18:58 -0700
X-CSE-ConnectionGUID: uHmFYDEZQ3Wb64qHax9Lbw==
X-CSE-MsgGUID: QbL9i0GKSO2RaIfMlJwI9w==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.24,213,1774335600"; d="scan'208";a="248695420"
Received: from dev-417.igk.intel.com ([10.91.214.181])
 by orviesa009.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 19 Jun 2026 06:18:58 -0700
Date: Fri, 19 Jun 2026 15:18:55 +0200 (CEST)
From: =?ISO-8859-2?Q?Micha=B3_Grzelak?= <michal.grzelak@intel.com>
To: Mika Kahola <mika.kahola@intel.com>
cc: intel-gfx@lists.freedesktop.org, intel-xe@lists.freedesktop.org
Subject: Re: [PATCH 3/4] drm/i915/display: Prepare DG2 DDI and compute paths
 for DPLL framework
In-Reply-To: <20260518103642.3678448-4-mika.kahola@intel.com>
Message-ID: <113fd3df-10c7-f202-3bc7-3dabd066054b@intel.com>
References: <20260518103642.3678448-1-mika.kahola@intel.com>
 <20260518103642.3678448-4-mika.kahola@intel.com>
MIME-Version: 1.0
Content-Type: multipart/mixed; BOUNDARY="8323329-1279074742-1781874014=:605841"
Content-ID: <51ed230a-ebf8-e9d6-b368-4b248e83cebb@intel.com>
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
X-Rspamd-Action: no action
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
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	RCVD_COUNT_THREE(0.00)[4];
	FROM_HAS_DN(0.00)[];
	RCPT_COUNT_THREE(0.00)[3];
	FORGED_SENDER_MAILLIST(0.00)[];
	ALIAS_RESOLVED(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[michal.grzelak@intel.com,intel-gfx-bounces@lists.freedesktop.org];
	DKIM_TRACE(0.00)[intel.com:+];
	MID_RHS_MATCH_FROM(0.00)[];
	ASN(0.00)[asn:6366, ipnet:131.252.0.0/16, country:US];
	TAGGED_RCPT(0.00)[intel-gfx];
	MISSING_XM_UA(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[lists.freedesktop.org:from_smtp,gabe.freedesktop.org:rdns,gabe.freedesktop.org:helo,intel.com:dkim,intel.com:email,intel.com:mid,intel.com:from_mime]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: A4C266A609F

  This message is in MIME format.  The first part should be readable text,
  while the remaining parts are likely unreadable without MIME-aware tools.

--8323329-1279074742-1781874014=:605841
Content-Type: text/plain; CHARSET=ISO-8859-2; format=flowed
Content-Transfer-Encoding: 8BIT
Content-ID: <4ce9dccb-9b1c-4f63-e799-5eb0985fb3e9@intel.com>

On Mon, 18 May 2026, Mika Kahola wrote:
> Prepare DG2 users to obtain clock state and reserve PLLs through the
> shared DPLL framework.
>
> Replace the DG2-specific compute hook with the generic framework-backed
> helpers.
>
> Assisted-by: Copilot:claude-sonnet-4-6
> Signed-off-by: Mika Kahola <mika.kahola@intel.com>

Reviewed-by: Micha³ Grzelak <michal.grzelak@intel.com>

BR,
Micha³

> ---
> drivers/gpu/drm/i915/display/intel_ddi.c  | 28 ++++++++++++++++++++---
> drivers/gpu/drm/i915/display/intel_dpll.c | 22 ++----------------
> 2 files changed, 27 insertions(+), 23 deletions(-)
>
> diff --git a/drivers/gpu/drm/i915/display/intel_ddi.c b/drivers/gpu/drm/i915/display/intel_ddi.c
> index 86520848892e..b6799ed24de4 100644
> --- a/drivers/gpu/drm/i915/display/intel_ddi.c
> +++ b/drivers/gpu/drm/i915/display/intel_ddi.c
> @@ -4307,11 +4307,33 @@ static void mtl_ddi_tc_phy_get_config(struct intel_encoder *encoder,
> 				       mtl_port_to_pll_id(display, encoder->port));
> }
>
> +static struct intel_dpll *dg2_ddi_get_pll(struct intel_encoder *encoder)
> +{
> +	struct intel_display *display = to_intel_display(encoder);
> +
> +	return intel_get_dpll_by_id(display, dg2_port_to_pll_id(encoder->port));
> +}
> +
> static void dg2_ddi_get_config(struct intel_encoder *encoder,
> -				struct intel_crtc_state *crtc_state)
> +			       struct intel_crtc_state *crtc_state)
> {
> -	intel_mpllb_readout_hw_state(encoder, &crtc_state->dpll_hw_state.mpllb);
> -	crtc_state->port_clock = intel_mpllb_calc_port_clock(encoder, &crtc_state->dpll_hw_state.mpllb);
> +	struct icl_port_dpll *port_dpll = &crtc_state->icl_port_dplls[ICL_PORT_DPLL_DEFAULT];
> +	struct intel_dpll *pll = dg2_ddi_get_pll(encoder);
> +
> +	if (pll)
> +		intel_ddi_get_clock(encoder, crtc_state, pll);
> +
> +	/*
> +	 * Keep the hw readout robust against unexpected NULL PLL lookups,
> +	 * so modeset verify always has intel_dpll populated for DG2.
> +	 */
> +	if (!crtc_state->intel_dpll) {
> +		port_dpll->pll = pll;
> +		intel_mpllb_readout_hw_state(encoder, &port_dpll->hw_state.mpllb);
> +		icl_set_active_port_dpll(crtc_state, ICL_PORT_DPLL_DEFAULT);
> +		crtc_state->port_clock = intel_mpllb_calc_port_clock(encoder,
> +								     &port_dpll->hw_state.mpllb);
> +	}
>
> 	intel_ddi_get_config(encoder, crtc_state);
> }
> diff --git a/drivers/gpu/drm/i915/display/intel_dpll.c b/drivers/gpu/drm/i915/display/intel_dpll.c
> index f40807a5566b..20fd091cb9db 100644
> --- a/drivers/gpu/drm/i915/display/intel_dpll.c
> +++ b/drivers/gpu/drm/i915/display/intel_dpll.c
> @@ -22,7 +22,6 @@
> #include "intel_lvds_regs.h"
> #include "intel_panel.h"
> #include "intel_pps.h"
> -#include "intel_snps_phy.h"
> #include "vlv_dpio_phy_regs.h"
> #include "vlv_sideband.h"
>
> @@ -1194,24 +1193,6 @@ static int hsw_crtc_get_dpll(struct intel_atomic_state *state,
> 	return intel_dpll_reserve(state, crtc, encoder);
> }
>
> -static int dg2_crtc_compute_clock(struct intel_atomic_state *state,
> -				  struct intel_crtc *crtc)
> -{
> -	struct intel_crtc_state *crtc_state =
> -		intel_atomic_get_new_crtc_state(state, crtc);
> -	struct intel_encoder *encoder =
> -		intel_get_crtc_new_encoder(state, crtc_state);
> -	int ret;
> -
> -	ret = intel_mpllb_calc_state(crtc_state, encoder);
> -	if (ret)
> -		return ret;
> -
> -	crtc_state->hw.adjusted_mode.crtc_clock = intel_crtc_dotclock(crtc_state);
> -
> -	return 0;
> -}
> -
> static int ilk_fb_cb_factor(const struct intel_crtc_state *crtc_state)
> {
> 	struct intel_display *display = to_intel_display(crtc_state);
> @@ -1682,7 +1663,8 @@ static const struct intel_dpll_global_funcs mtl_dpll_funcs = {
> };
>
> static const struct intel_dpll_global_funcs dg2_dpll_funcs = {
> -	.crtc_compute_clock = dg2_crtc_compute_clock,
> +	.crtc_compute_clock = hsw_crtc_compute_clock,
> +	.crtc_get_dpll = hsw_crtc_get_dpll,
> };
>
> static const struct intel_dpll_global_funcs hsw_dpll_funcs = {
> -- 
> 2.43.0
>
>
--8323329-1279074742-1781874014=:605841--
