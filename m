Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id WKwaCYFODGpIeQUAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Tue, 19 May 2026 13:50:25 +0200
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id BA65E57E052
	for <lists+intel-gfx@lfdr.de>; Tue, 19 May 2026 13:50:24 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 47A5D10EC72;
	Tue, 19 May 2026 11:50:23 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="PUu6H7oo";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.14])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 97E2610E5E6;
 Tue, 19 May 2026 11:50:21 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1779191422; x=1810727422;
 h=from:to:cc:subject:in-reply-to:references:date:
 message-id:mime-version;
 bh=bQ4DH/nbn8zRDgQscMKFnw+OhUSe6BBsqoGmaaq4xWk=;
 b=PUu6H7oowvl/8BC0ksqMpq/cwDJ6RVentjKJ9zYi97qeSFhdt+YC5pUa
 VSW90Kolpjq7Dxh68zcQFG+Phan3HCBnUB8OQ9r1101263V3mxNG1xgsW
 ALAZmtCeQcXAd8byL5dbqgnegjBuBKuRrGt0J1Y07hJ/Dk+I4ELS9CjJt
 CjsmjHm7FiGpQysoCpGkEihE6ujG2bXJY7O/V23ZN12eyjAWb5BnqlX2U
 PLWkug3l6bZn2lkxoBxmjQS3QwggpycSrPEzvJyX/lbS8OcE82VNVmLsn
 Y2lRjlG35M/MTKu8ZGOVQgKl90uBPABlkzMOb/VrbtUn72JObF1QW/GCx Q==;
X-CSE-ConnectionGUID: Ugudp/QlSLegMJ5k4UIWCw==
X-CSE-MsgGUID: tTY0GUVlQnacIe4Aefz4/w==
X-IronPort-AV: E=McAfee;i="6800,10657,11790"; a="80096899"
X-IronPort-AV: E=Sophos;i="6.23,243,1770624000"; d="scan'208";a="80096899"
Received: from fmviesa004.fm.intel.com ([10.60.135.144])
 by fmvoesa108.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 19 May 2026 04:50:21 -0700
X-CSE-ConnectionGUID: XW0TP70ARf6Ij8KKFzKxFA==
X-CSE-MsgGUID: WaAq91OeTHub8/s9NShWMA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.23,243,1770624000"; d="scan'208";a="241586183"
Received: from pgcooper-mobl3.ger.corp.intel.com (HELO localhost)
 ([10.245.244.218])
 by fmviesa004-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 19 May 2026 04:50:19 -0700
From: Jani Nikula <jani.nikula@linux.intel.com>
To: Luca Coelho <luciano.coelho@intel.com>, intel-gfx@lists.freedesktop.org
Cc: intel-xe@lists.freedesktop.org
Subject: Re: [PATCH 2/4] drm/i915/display: harden shifts in
 ICL_DPCLKA_CFGCR0_DDI_CLK_SEL macros
In-Reply-To: <20260519112243.1454375-3-luciano.coelho@intel.com>
Organization: Intel Finland Oy - BIC 0357606-4 - c/o Alberga Business Park,
 6 krs Bertel Jungin Aukio 5, 02600 Espoo, Finland
References: <20260519112243.1454375-1-luciano.coelho@intel.com>
 <20260519112243.1454375-3-luciano.coelho@intel.com>
Date: Tue, 19 May 2026 14:50:17 +0300
Message-ID: <ddb9dc51c32a0f681825a42e84f7a671715825d6@intel.com>
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
X-Spamd-Result: default: False [0.19 / 15.00];
	MID_RHS_MATCH_TO(1.00)[];
	DMARC_POLICY_ALLOW(-0.50)[intel.com,none];
	R_MISSING_CHARSET(0.50)[];
	R_SPF_ALLOW(-0.20)[+ip4:131.252.210.177:c];
	MAILLIST(-0.20)[mailman];
	R_DKIM_ALLOW(-0.20)[intel.com:s=Intel];
	MIME_GOOD(-0.10)[text/plain];
	RWL_MAILSPIKE_GOOD(-0.10)[131.252.210.177:from];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	RCVD_COUNT_THREE(0.00)[4];
	ARC_NA(0.00)[];
	MIME_TRACE(0.00)[0:+];
	HAS_ORG_HEADER(0.00)[];
	TO_DN_SOME(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	RCPT_COUNT_THREE(0.00)[3];
	FORGED_SENDER_MAILLIST(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[jani.nikula@linux.intel.com,intel-gfx-bounces@lists.freedesktop.org];
	FROM_HAS_DN(0.00)[];
	DKIM_TRACE(0.00)[intel.com:+];
	MID_RHS_MATCH_FROMTLD(0.00)[];
	ASN(0.00)[asn:6366, ipnet:131.252.0.0/16, country:US];
	TAGGED_RCPT(0.00)[intel-gfx];
	MISSING_XM_UA(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[gabe.freedesktop.org:rdns,gabe.freedesktop.org:helo,intel.com:email,intel.com:mid,intel.com:dkim]
X-Rspamd-Queue-Id: BA65E57E052
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

On Tue, 19 May 2026, Luca Coelho <luciano.coelho@intel.com> wrote:
> ICL_DPCLKA_CFGCR0 has a 2-bit DDI_CLK_SEL field per combo PHY, for
> PHY_A..PHY_D only.  Any other phy value (PHY_NONE, Type-C/SNPS PHYs)
> is not valid here.
>
> This is not a problem with the current implementation, because phy is
> always valid when these macros are called, but it's more robust to
> cast to unsigned so the shift is always well-defined.
>
> Signed-off-by: Luca Coelho <luciano.coelho@intel.com>
> ---
>  drivers/gpu/drm/i915/display/intel_display_regs.h | 13 ++++++++++---
>  1 file changed, 10 insertions(+), 3 deletions(-)
>
> diff --git a/drivers/gpu/drm/i915/display/intel_display_regs.h b/drivers/gpu/drm/i915/display/intel_display_regs.h
> index 4321f8b529da..bc90a21e8b46 100644
> --- a/drivers/gpu/drm/i915/display/intel_display_regs.h
> +++ b/drivers/gpu/drm/i915/display/intel_display_regs.h
> @@ -2869,9 +2869,16 @@ enum skl_power_gate {
>  #define  ICL_DPCLKA_CFGCR0_TC_CLK_OFF(tc_port)	(1 << ((tc_port) < TC_PORT_4 ? \
>  						       (tc_port) + 12 : \
>  						       (tc_port) - TC_PORT_4 + 21))
> -#define  ICL_DPCLKA_CFGCR0_DDI_CLK_SEL_SHIFT(phy)	((phy) * 2)
> -#define  ICL_DPCLKA_CFGCR0_DDI_CLK_SEL_MASK(phy)	(3 << ICL_DPCLKA_CFGCR0_DDI_CLK_SEL_SHIFT(phy))
> -#define  ICL_DPCLKA_CFGCR0_DDI_CLK_SEL(pll, phy)	((pll) << ICL_DPCLKA_CFGCR0_DDI_CLK_SEL_SHIFT(phy))
> +/*
> + * ICL_DPCLKA_CFGCR0 has a 2-bit DDI_CLK_SEL field per combo PHY, for
> + * PHY_A..PHY_D only.  Any other phy value (PHY_NONE, TypeC/SNPS PHYs)
> + * is not valid here.  Cast to unsigned so the shift is always
> + * well-defined.
> + */
> +#define  ICL_DPCLKA_CFGCR0_DDI_CLK_SEL_SHIFT(phy)	((unsigned int)(phy) * 2)
> +#define  ICL_DPCLKA_CFGCR0_DDI_CLK_SEL_MASK(phy)	((u32)3 << ICL_DPCLKA_CFGCR0_DDI_CLK_SEL_SHIFT(phy))
> +#define  ICL_DPCLKA_CFGCR0_DDI_CLK_SEL(pll, phy)	((u32)(pll) << ICL_DPCLKA_CFGCR0_DDI_CLK_SEL_SHIFT(phy))
> +

Here too, please avoid direct casts; we have the REG_* helpers exactly
for this purpose.

BR,
Jani.

>  #define  RKL_DPCLKA_CFGCR0_DDI_CLK_SEL_SHIFT(phy)	_PICK(phy, 0, 2, 4, 27)
>  #define  RKL_DPCLKA_CFGCR0_DDI_CLK_SEL_MASK(phy) \
>  	(3 << RKL_DPCLKA_CFGCR0_DDI_CLK_SEL_SHIFT(phy))

-- 
Jani Nikula, Intel
