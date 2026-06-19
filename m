Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id kn2GBLg+NWqTpwYAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Fri, 19 Jun 2026 15:06:00 +0200
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id F3C9B6A5F58
	for <lists+intel-gfx@lfdr.de>; Fri, 19 Jun 2026 15:05:58 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=intel.com header.s=Intel header.b=Sc2MJI5l;
	spf=pass (mail.lfdr.de: domain of intel-gfx-bounces@lists.freedesktop.org designates 131.252.210.177 as permitted sender) smtp.mailfrom=intel-gfx-bounces@lists.freedesktop.org;
	dmarc=pass (policy=none) header.from=intel.com
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 7595510F5CA;
	Fri, 19 Jun 2026 13:05:57 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.20])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 4DC6610F5CA;
 Fri, 19 Jun 2026 13:05:56 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1781874356; x=1813410356;
 h=date:from:to:cc:subject:in-reply-to:message-id:
 references:mime-version:content-id;
 bh=wKvK464AwcLvpiIXWDgelWyj8HkkuxiI0uBSgJsEZ9w=;
 b=Sc2MJI5le0VuvSB1/u7dzTAxY0i2Ml4JHFMz5t1JU6QnbgtnbUPalcb0
 HHYHRAoKSuOI5UopyTebyJ22lfX5BO6tZncyfA13j+E0QBYxm22fYM0AA
 05dKjdFd9cr+cjwyt+hbeuxGYwBM02k3IuutZYvyAVrvQMAQRzJM3SlbA
 IPLhGDGuT1xT1AAswDBRKHknDIIv5eBXtCbHMfNAzpy5vk4PgzmAcqG2h
 OMnv63w0qnaVJ/2DPquR2S4lP9GYP1Kob0f2BtR/MrwV9HNOvRP4OYtl9
 sJbR7xZf/KlZb1T6qfi7eo0oRCr8CafbdqF/g4vw3LpWUNK7HYt2RUNcp Q==;
X-CSE-ConnectionGUID: 8Sd0qubfSKGlsP3vz4gsTA==
X-CSE-MsgGUID: 7PFb9m4HS16CZOxfwuQGDw==
X-IronPort-AV: E=McAfee;i="6800,10657,11821"; a="82495642"
X-IronPort-AV: E=Sophos;i="6.24,213,1774335600"; d="scan'208";a="82495642"
Received: from orviesa001.jf.intel.com ([10.64.159.141])
 by orvoesa112.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 19 Jun 2026 06:05:44 -0700
X-CSE-ConnectionGUID: NDOcLLVtTf6QCNugcNTZRA==
X-CSE-MsgGUID: RgHWgZ0FQKW1CWWDiH+/Xg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.24,213,1774335600"; d="scan'208";a="286751523"
Received: from dev-417.igk.intel.com ([10.91.214.181])
 by orviesa001.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 19 Jun 2026 06:05:43 -0700
Date: Fri, 19 Jun 2026 15:05:41 +0200 (CEST)
From: =?ISO-8859-2?Q?Micha=B3_Grzelak?= <michal.grzelak@intel.com>
To: Mika Kahola <mika.kahola@intel.com>
cc: intel-gfx@lists.freedesktop.org, intel-xe@lists.freedesktop.org
Subject: Re: [PATCH 1/4] drm/i915/display: Split out DG2 MPLLB enable
 helper
In-Reply-To: <20260518103642.3678448-2-mika.kahola@intel.com>
Message-ID: <ed3fc87d-7e43-d274-6bf4-5a24e78f48f3@intel.com>
References: <20260518103642.3678448-1-mika.kahola@intel.com>
 <20260518103642.3678448-2-mika.kahola@intel.com>
MIME-Version: 1.0
Content-Type: multipart/mixed; BOUNDARY="8323329-67387381-1781872600=:605841"
Content-ID: <3b835ecc-36ee-2527-2a4e-7f6cc21b73ed@intel.com>
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
	DBL_BLOCKED_OPENRESOLVER(0.00)[gabe.freedesktop.org:rdns,gabe.freedesktop.org:helo,intel.com:dkim,intel.com:email,intel.com:mid,intel.com:from_mime,lists.freedesktop.org:from_smtp]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: F3C9B6A5F58

  This message is in MIME format.  The first part should be readable text,
  while the remaining parts are likely unreadable without MIME-aware tools.

--8323329-67387381-1781872600=:605841
Content-Type: text/plain; CHARSET=ISO-8859-2; format=flowed
Content-Transfer-Encoding: 8BIT
Content-ID: <d43a9ee5-e767-12b5-25ed-e59f89b6a8c4@intel.com>

On Mon, 18 May 2026, Mika Kahola wrote:
> Refactor the DG2 MPLLB enable path by splitting out a helper that
> programs the PHY directly from an intel_mpllb_state.
>
> This is preparatory work for moving DG2 MPLLB handling under the DPLL
> framework, where callbacks operate on dpll_hw_state rather than the
> full crtc_state.
>
> Assisted-by: Copilot:claude-sonnet-4-6
> Signed-off-by: Mika Kahola <mika.kahola@intel.com>

Reviewed-by: Micha³ Grzelak <michal.grzelak@intel.com>

BR,
Micha³

> ---
> drivers/gpu/drm/i915/display/intel_snps_phy.c | 11 ++++++++---
> drivers/gpu/drm/i915/display/intel_snps_phy.h |  2 ++
> 2 files changed, 10 insertions(+), 3 deletions(-)
>
> diff --git a/drivers/gpu/drm/i915/display/intel_snps_phy.c b/drivers/gpu/drm/i915/display/intel_snps_phy.c
> index bf9df566630f..dfb3a5c35c85 100644
> --- a/drivers/gpu/drm/i915/display/intel_snps_phy.c
> +++ b/drivers/gpu/drm/i915/display/intel_snps_phy.c
> @@ -1816,11 +1816,10 @@ int intel_mpllb_calc_state(struct intel_crtc_state *crtc_state,
> 	return -EINVAL;
> }
>
> -void intel_mpllb_enable(struct intel_encoder *encoder,
> -			const struct intel_crtc_state *crtc_state)
> +void intel_mpllb_enable_phy(struct intel_encoder *encoder,
> +			    const struct intel_mpllb_state *pll_state)
> {
> 	struct intel_display *display = to_intel_display(encoder);
> -	const struct intel_mpllb_state *pll_state = &crtc_state->dpll_hw_state.mpllb;
> 	enum phy phy = intel_encoder_to_phy(encoder);
> 	intel_reg_t enable_reg = (phy <= PHY_D ?
> 				 DG2_PLL_ENABLE(phy) : MG_PLL_ENABLE(0));
> @@ -1875,6 +1874,12 @@ void intel_mpllb_enable(struct intel_encoder *encoder,
> 	 */
> }
>
> +void intel_mpllb_enable(struct intel_encoder *encoder,
> +			const struct intel_crtc_state *crtc_state)
> +{
> +	intel_mpllb_enable_phy(encoder, &crtc_state->dpll_hw_state.mpllb);
> +}
> +
> void intel_mpllb_disable(struct intel_encoder *encoder)
> {
> 	struct intel_display *display = to_intel_display(encoder);
> diff --git a/drivers/gpu/drm/i915/display/intel_snps_phy.h b/drivers/gpu/drm/i915/display/intel_snps_phy.h
> index 7f96da22d028..2c7a5f2040f1 100644
> --- a/drivers/gpu/drm/i915/display/intel_snps_phy.h
> +++ b/drivers/gpu/drm/i915/display/intel_snps_phy.h
> @@ -22,6 +22,8 @@ void intel_snps_phy_update_psr_power_state(struct intel_encoder *encoder,
>
> int intel_mpllb_calc_state(struct intel_crtc_state *crtc_state,
> 			   struct intel_encoder *encoder);
> +void intel_mpllb_enable_phy(struct intel_encoder *encoder,
> +			    const struct intel_mpllb_state *pll_state);
> void intel_mpllb_enable(struct intel_encoder *encoder,
> 			const struct intel_crtc_state *crtc_state);
> void intel_mpllb_disable(struct intel_encoder *encoder);
> -- 
> 2.43.0
>
>
--8323329-67387381-1781872600=:605841--
