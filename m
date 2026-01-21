Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id gAOxNLurcGkgZAAAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Wed, 21 Jan 2026 11:34:35 +0100
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 54B0C55459
	for <lists+intel-gfx@lfdr.de>; Wed, 21 Jan 2026 11:34:35 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id C6E3210E042;
	Wed, 21 Jan 2026 10:34:33 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="DP085RRC";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.11])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 55A4910E042;
 Wed, 21 Jan 2026 10:34:32 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1768991673; x=1800527673;
 h=from:to:cc:subject:in-reply-to:references:date:
 message-id:mime-version;
 bh=JioRDQtRKND6HzfCYrHV493DSMJZ6SMQfJV4r3za/z4=;
 b=DP085RRCBMa14QeW1AaS9/ASdFKa4v2HhX93qCaZk45xMg1tmLgCbWdq
 mj7S8wGtWSATOIOE5xKOGWSrMBwdqeE+RowKc4GqVATJ3hFfDNQk6HejN
 MMGAA0Y4OVfbRfZ3gogOEMkXWRF/j6SocspZ7VnCEMLOX/ATSSv62sifZ
 0OFa5XxDW13J4v25zPaYx4Qzqa3K8YkNI1+Lz16oliozpVl0OHQPxdV7X
 9Jgm4xlsnu0dZpGm/BbGAut+QT+DpxaZRVqkWxBhqSnS4TMc1YpXzxOGk
 WFq+DN3xzKLLMs+vKnNGw4YE1jWIVvZ3Ff1Y7UgS3e54zexxcSVhFbfSH w==;
X-CSE-ConnectionGUID: IZ7nc3OoRXqMmyX8AiT4TQ==
X-CSE-MsgGUID: LHE2cEhYSUKZur1t9Dg8PQ==
X-IronPort-AV: E=McAfee;i="6800,10657,11677"; a="80518429"
X-IronPort-AV: E=Sophos;i="6.21,242,1763452800"; d="scan'208";a="80518429"
Received: from orviesa003.jf.intel.com ([10.64.159.143])
 by orvoesa103.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 21 Jan 2026 02:34:33 -0800
X-CSE-ConnectionGUID: uX77XKFxQ3y1j5TDhuChaQ==
X-CSE-MsgGUID: HITJppWZQ9qdmKRzqWJbXA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.21,242,1763452800"; d="scan'208";a="210580376"
Received: from mjarzebo-mobl1.ger.corp.intel.com (HELO localhost)
 ([10.245.246.119])
 by ORVIESA003-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 21 Jan 2026 02:34:29 -0800
From: Jani Nikula <jani.nikula@linux.intel.com>
To: Suraj Kandpal <suraj.kandpal@intel.com>, intel-xe@lists.freedesktop.org,
 intel-gfx@lists.freedesktop.org
Cc: ankit.k.nautiyal@intel.com, Suraj Kandpal <suraj.kandpal@intel.com>,
 Nemesa Garg <nemesa.garg@intel.com>
Subject: Re: [PATCH v2] drm/i915/display: Disable DMG Clock Gating
In-Reply-To: <20260121030257.662294-1-suraj.kandpal@intel.com>
Organization: Intel Finland Oy - BIC 0357606-4 - c/o Alberga Business Park,
 6 krs Bertel Jungin Aukio 5, 02600 Espoo, Finland
References: <20260120050033.635681-1-suraj.kandpal@intel.com>
 <20260121030257.662294-1-suraj.kandpal@intel.com>
Date: Wed, 21 Jan 2026 12:34:26 +0200
Message-ID: <411543f0b3c1ff4948fe416c64a505ed9caf4896@intel.com>
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
	R_MISSING_CHARSET(0.50)[];
	DMARC_POLICY_ALLOW(-0.50)[intel.com,none];
	R_DKIM_ALLOW(-0.20)[intel.com:s=Intel];
	R_SPF_ALLOW(-0.20)[+ip4:131.252.210.177:c];
	MAILLIST(-0.20)[mailman];
	MIME_GOOD(-0.10)[text/plain];
	RWL_MAILSPIKE_GOOD(-0.10)[131.252.210.177:from];
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
	MID_RHS_MATCH_FROMTLD(0.00)[];
	ASN(0.00)[asn:6366, ipnet:131.252.0.0/16, country:US];
	TAGGED_RCPT(0.00)[intel-gfx];
	MISSING_XM_UA(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[intel.com:email,intel.com:dkim,intel.com:mid,gabe.freedesktop.org:rdns,gabe.freedesktop.org:helo]
X-Rspamd-Queue-Id: 54B0C55459
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

On Wed, 21 Jan 2026, Suraj Kandpal <suraj.kandpal@intel.com> wrote:
> Incorrect clock is connected to DMG registers.
> Disable DMG Clock gating during display initialization.
>
> WA: 22021451799
> Bspec: 69095
> Signed-off-by: Suraj Kandpal <suraj.kandpal@intel.com>
> Reviewed-by: Nemesa Garg <nemesa.garg@intel.com>
> ---
>
> v1 -> v2:
> -Remove details from comment (Nemesa)
> -Add details in commit message (Ville)
>
>  drivers/gpu/drm/i915/display/intel_modeset_setup.c | 4 ++++
>  drivers/gpu/drm/i915/i915_reg.h                    | 1 +
>  drivers/gpu/drm/tests/drm_hdmi_state_helper_test.c | 1 +
>  3 files changed, 6 insertions(+)
>
> diff --git a/drivers/gpu/drm/i915/display/intel_modeset_setup.c b/drivers/gpu/drm/i915/display/intel_modeset_setup.c
> index d10cbf69a5f8..7180e54af50b 100644
> --- a/drivers/gpu/drm/i915/display/intel_modeset_setup.c
> +++ b/drivers/gpu/drm/i915/display/intel_modeset_setup.c
> @@ -910,6 +910,10 @@ get_encoder_power_domains(struct intel_display *display)
>  
>  static void intel_early_display_was(struct intel_display *display)
>  {
> +	/* Wa_22021451799 */
> +	if (DISPLAY_VER(display) == 35)
> +		intel_de_rmw(display, GEN9_CLKGATE_DIS_0, 0, DMG_GATING_DIS);
> +
>  	/*
>  	 * Display WA #1185 WaDisableDARBFClkGating:glk,icl,ehl,tgl
>  	 * Also known as Wa_14010480278.
> diff --git a/drivers/gpu/drm/i915/i915_reg.h b/drivers/gpu/drm/i915/i915_reg.h
> index 5bf3b4ab2baa..f928db78a3fa 100644
> --- a/drivers/gpu/drm/i915/i915_reg.h
> +++ b/drivers/gpu/drm/i915/i915_reg.h
> @@ -763,6 +763,7 @@
>   */
>  #define GEN9_CLKGATE_DIS_0		_MMIO(0x46530)
>  #define   DARBF_GATING_DIS		REG_BIT(27)
> +#define   DMG_GATING_DIS		REG_BIT(21)
>  #define   MTL_PIPEDMC_GATING_DIS(pipe)	REG_BIT(15 - (pipe))
>  #define   PWM2_GATING_DIS		REG_BIT(14)
>  #define   PWM1_GATING_DIS		REG_BIT(13)
> diff --git a/drivers/gpu/drm/tests/drm_hdmi_state_helper_test.c b/drivers/gpu/drm/tests/drm_hdmi_state_helper_test.c
> index d95786faf181..c4c4058c8ac5 100644
> --- a/drivers/gpu/drm/tests/drm_hdmi_state_helper_test.c
> +++ b/drivers/gpu/drm/tests/drm_hdmi_state_helper_test.c
> @@ -2923,6 +2923,7 @@ static void drm_test_check_reject_hdr_infoframe_bpc_10(struct kunit *test)
>  						&new_conn_state->hdr_output_metadata,
>  						hdr_blob->base.id,
>  						sizeof(struct hdr_output_metadata), -1,
> +						sizeof(struct hdr_output_metadata),
>  						&replaced);

Stray change.


>  	KUNIT_ASSERT_EQ(test, ret, 0);
>  	KUNIT_ASSERT_EQ(test, replaced, true);

-- 
Jani Nikula, Intel
