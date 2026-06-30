Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id Smx1HE2uQ2rnewoAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Tue, 30 Jun 2026 13:53:49 +0200
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 1C8296E3DAD
	for <lists+intel-gfx@lfdr.de>; Tue, 30 Jun 2026 13:53:49 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=intel.com header.s=Intel header.b=lf+2qpgd;
	spf=pass (mail.lfdr.de: domain of intel-gfx-bounces@lists.freedesktop.org designates 131.252.210.177 as permitted sender) smtp.mailfrom=intel-gfx-bounces@lists.freedesktop.org;
	dmarc=pass (policy=none) header.from=intel.com
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 8766010EC40;
	Tue, 30 Jun 2026 11:53:47 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.8])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 058FC10EC39;
 Tue, 30 Jun 2026 11:53:46 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1782820426; x=1814356426;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=wDaamAXaV2j9crDZ0xLhHLaidrmBRIDAaTEbbnnNQiM=;
 b=lf+2qpgdC5+I30tbjOpMPrahacqmmzh9HDQoHAuMSiENJe7mN2flFdWQ
 5RLuCOsG9+G+c0hZWKUvbG4cHkuexOOWIFeolVfLNcnnsrz6XMBAa/jSV
 OoLfpmZo8yjeFtXvekI41HBMr5wt626Zpv2fb/NWiZtJ2jFHSfXnzqoU3
 fRvSyv3saiXmJ3fqg+p2JLDmBG3zffm67Dfjl+DW9vGDCdIBWYdTgBGVf
 PYH3CvgES+y1T0Bo/cYtkjzMi3Ato1hd+fRNFqtVQUIEJ77sWMjwtZT/h
 LXZTB0ynRa0U5GrqP8tmwDDyKFh0/UuSfMqaPZJJlqcwAUMEt7yikI+bs A==;
X-CSE-ConnectionGUID: 5/hebJZfQf606ddx3wsvbA==
X-CSE-MsgGUID: 1Fa2B/ftQOKXl/+cp5dsJw==
X-IronPort-AV: E=McAfee;i="6800,10657,11832"; a="101074310"
X-IronPort-AV: E=Sophos;i="6.24,233,1774335600"; d="scan'208";a="101074310"
Received: from fmviesa007.fm.intel.com ([10.60.135.147])
 by fmvoesa102.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 30 Jun 2026 04:53:46 -0700
X-CSE-ConnectionGUID: HSfNiCsaSWaq337Nq6TT5A==
X-CSE-MsgGUID: 0Ns+ZCHqSROEaWQLz445wQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.24,233,1774335600"; d="scan'208";a="248876768"
Received: from display-adls.igk.intel.com ([10.211.131.198])
 by fmviesa007.fm.intel.com with ESMTP; 30 Jun 2026 04:53:45 -0700
From: Mika Kahola <mika.kahola@intel.com>
To: intel-gfx@lists.freedesktop.org,
	intel-xe@lists.freedesktop.org
Cc: Mika Kahola <mika.kahola@intel.com>,
 =?UTF-8?q?Micha=C5=82=20Grzelak?= <michal.grzelak@intel.com>
Subject: [PATCH v2 4/4] drm/i915/display: Switch DG2 to use DPLL framework
Date: Tue, 30 Jun 2026 11:53:36 +0000
Message-ID: <20260630115336.1059976-5-mika.kahola@intel.com>
X-Mailer: git-send-email 2.43.0
In-Reply-To: <20260630115336.1059976-1-mika.kahola@intel.com>
References: <20260630115336.1059976-1-mika.kahola@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
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
	MID_CONTAINS_FROM(1.00)[];
	DMARC_POLICY_ALLOW(-0.50)[intel.com,none];
	R_SPF_ALLOW(-0.20)[+ip4:131.252.210.177:c];
	MAILLIST(-0.20)[mailman];
	R_DKIM_ALLOW(-0.20)[intel.com:s=Intel];
	MIME_GOOD(-0.10)[text/plain];
	RWL_MAILSPIKE_GOOD(-0.10)[131.252.210.177:from];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	RCVD_COUNT_THREE(0.00)[4];
	ARC_NA(0.00)[];
	TO_DN_SOME(0.00)[];
	MIME_TRACE(0.00)[0:+];
	URIBL_MULTI_FAIL(0.00)[gabe.freedesktop.org:server fail,intel.com:server fail,lists.freedesktop.org:server fail];
	FROM_HAS_DN(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	ALIAS_RESOLVED(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[mika.kahola@intel.com,intel-gfx-bounces@lists.freedesktop.org];
	DKIM_TRACE(0.00)[intel.com:+];
	TAGGED_RCPT(0.00)[intel-gfx];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	ASN(0.00)[asn:6366, ipnet:131.252.0.0/16, country:US];
	RCPT_COUNT_THREE(0.00)[4];
	DBL_BLOCKED_OPENRESOLVER(0.00)[gabe.freedesktop.org:rdns,gabe.freedesktop.org:helo,intel.com:dkim,intel.com:email,intel.com:mid,intel.com:from_mime,lists.freedesktop.org:from_smtp]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: 1C8296E3DAD

Now that DG2 has a DPLL manager and its users are prepared to obtain
clock state through the framework, switch the platform over to use the
shared DPLL manager.

Remove specific MPLLB state verification and use .compare_hw function
hook to compare HW and SW PLL states.

Assisted-by: Copilot:claude-sonnet-4-6
Signed-off-by: Mika Kahola <mika.kahola@intel.com>
Reviewed-by: Michał Grzelak <michal.grzelak@intel.com>
---
 drivers/gpu/drm/i915/display/intel_ddi.c      |  2 -
 drivers/gpu/drm/i915/display/intel_dpll_mgr.c | 13 +++--
 .../drm/i915/display/intel_modeset_verify.c   |  1 -
 drivers/gpu/drm/i915/display/intel_snps_phy.c | 49 -------------------
 4 files changed, 8 insertions(+), 57 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_ddi.c b/drivers/gpu/drm/i915/display/intel_ddi.c
index 3429ddba5683..ec3584c1f826 100644
--- a/drivers/gpu/drm/i915/display/intel_ddi.c
+++ b/drivers/gpu/drm/i915/display/intel_ddi.c
@@ -5350,8 +5350,6 @@ void intel_ddi_init(struct intel_display *display,
 		else
 			encoder->get_config = mtl_ddi_non_tc_phy_get_config;
 	} else if (display->platform.dg2) {
-		encoder->enable_clock = intel_mpllb_enable;
-		encoder->disable_clock = intel_mpllb_disable;
 		encoder->get_config = dg2_ddi_get_config;
 	} else if (display->platform.alderlake_s) {
 		encoder->enable_clock = adls_ddi_enable_clock;
diff --git a/drivers/gpu/drm/i915/display/intel_dpll_mgr.c b/drivers/gpu/drm/i915/display/intel_dpll_mgr.c
index 3f9ed7f63eb2..bfd6f0a19725 100644
--- a/drivers/gpu/drm/i915/display/intel_dpll_mgr.c
+++ b/drivers/gpu/drm/i915/display/intel_dpll_mgr.c
@@ -4933,7 +4933,6 @@ static bool dg2_compare_hw_state(const struct intel_dpll_hw_state *_a,
 		a->mpllb_sscstep == b->mpllb_sscstep;
 }
 
-__maybe_unused
 static const struct intel_dpll_mgr dg2_pll_mgr = {
 	.dpll_info = dg2_plls,
 	.compute_dplls = dg2_compute_dplls,
@@ -4960,8 +4959,7 @@ void intel_dpll_init(struct intel_display *display)
 	mutex_init(&display->dpll.lock);
 
 	if (display->platform.dg2)
-		/* No shared DPLLs on DG2; port PLLs are part of the PHY */
-		dpll_mgr = NULL;
+		dpll_mgr = &dg2_pll_mgr;
 	else if (DISPLAY_VER(display) >= 35)
 		dpll_mgr = &xe3plpd_pll_mgr;
 	else if (DISPLAY_VER(display) >= 14)
@@ -5330,8 +5328,13 @@ verify_single_dpll_state(struct intel_display *display,
 
 	if (pll->on) {
 		const struct intel_dpll_mgr *dpll_mgr = display->dpll.mgr;
-
-		if (HAS_LT_PHY(display))
+		/*
+		 * Avoid direct struct comparison here. Some hw state fields, such
+		 * as DG2 MPLLB ref_control or LT PHY config[1], are written by
+		 * firmware and may differ from the software state without indicating
+		 * a real mismatch.
+		 */
+		if (HAS_LT_PHY(display) || display->platform.dg2)
 			pll_mismatch = !dpll_mgr->compare_hw_state(&pll->state.hw_state,
 								   &dpll_hw_state);
 		else
diff --git a/drivers/gpu/drm/i915/display/intel_modeset_verify.c b/drivers/gpu/drm/i915/display/intel_modeset_verify.c
index 2ec17c2bfe0f..f0761d8a7437 100644
--- a/drivers/gpu/drm/i915/display/intel_modeset_verify.c
+++ b/drivers/gpu/drm/i915/display/intel_modeset_verify.c
@@ -245,7 +245,6 @@ void intel_modeset_verify_crtc(struct intel_atomic_state *state,
 	verify_connector_state(state, crtc);
 	verify_crtc_state(state, crtc);
 	intel_dpll_state_verify(state, crtc);
-	intel_mpllb_state_verify(state, crtc);
 }
 
 void intel_modeset_verify_disabled(struct intel_atomic_state *state)
diff --git a/drivers/gpu/drm/i915/display/intel_snps_phy.c b/drivers/gpu/drm/i915/display/intel_snps_phy.c
index dfb3a5c35c85..ce94ac689064 100644
--- a/drivers/gpu/drm/i915/display/intel_snps_phy.c
+++ b/drivers/gpu/drm/i915/display/intel_snps_phy.c
@@ -1982,52 +1982,3 @@ void intel_mpllb_readout_hw_state(struct intel_encoder *encoder,
 	 */
 	pll_state->mpllb_div &= ~SNPS_PHY_MPLLB_FORCE_EN;
 }
-
-void intel_mpllb_state_verify(struct intel_atomic_state *state,
-			      struct intel_crtc *crtc)
-{
-	struct intel_display *display = to_intel_display(state);
-	const struct intel_crtc_state *new_crtc_state =
-		intel_atomic_get_new_crtc_state(state, crtc);
-	struct intel_mpllb_state mpllb_hw_state = {};
-	const struct intel_mpllb_state *mpllb_sw_state = &new_crtc_state->dpll_hw_state.mpllb;
-	struct intel_encoder *encoder;
-
-	if (!display->platform.dg2)
-		return;
-
-	if (!new_crtc_state->hw.active)
-		return;
-
-	/* intel_get_crtc_new_encoder() only works for modeset/fastset commits */
-	if (!intel_crtc_needs_modeset(new_crtc_state) &&
-	    !intel_crtc_needs_fastset(new_crtc_state))
-		return;
-
-	encoder = intel_get_crtc_new_encoder(state, new_crtc_state);
-	intel_mpllb_readout_hw_state(encoder, &mpllb_hw_state);
-
-#define MPLLB_CHECK(__name)						\
-	INTEL_DISPLAY_STATE_WARN(display, mpllb_sw_state->__name != mpllb_hw_state.__name, \
-				 "[CRTC:%d:%s] mismatch in MPLLB: %s (expected 0x%08x, found 0x%08x)", \
-				 crtc->base.base.id, crtc->base.name,	\
-				 __stringify(__name),			\
-				 mpllb_sw_state->__name, mpllb_hw_state.__name)
-
-	MPLLB_CHECK(mpllb_cp);
-	MPLLB_CHECK(mpllb_div);
-	MPLLB_CHECK(mpllb_div2);
-	MPLLB_CHECK(mpllb_fracn1);
-	MPLLB_CHECK(mpllb_fracn2);
-	MPLLB_CHECK(mpllb_sscen);
-	MPLLB_CHECK(mpllb_sscstep);
-
-	/*
-	 * ref_control is handled by the hardware/firemware and never
-	 * programmed by the software, but the proper values are supplied
-	 * in the bspec for verification purposes.
-	 */
-	MPLLB_CHECK(ref_control);
-
-#undef MPLLB_CHECK
-}
-- 
2.43.0

