Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id CTiECkquQ2rfewoAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Tue, 30 Jun 2026 13:53:46 +0200
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 9C1286E3D95
	for <lists+intel-gfx@lfdr.de>; Tue, 30 Jun 2026 13:53:45 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=intel.com header.s=Intel header.b=ljJxk18F;
	spf=pass (mail.lfdr.de: domain of intel-gfx-bounces@lists.freedesktop.org designates 131.252.210.177 as permitted sender) smtp.mailfrom=intel-gfx-bounces@lists.freedesktop.org;
	dmarc=pass (policy=none) header.from=intel.com
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 2E59710EC41;
	Tue, 30 Jun 2026 11:53:43 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.8])
 by gabe.freedesktop.org (Postfix) with ESMTPS id C32D610EBFB;
 Tue, 30 Jun 2026 11:53:41 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1782820422; x=1814356422;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=SrlmM0XoFuMKmBBe1oIRenobNPfogFDht/ab3XIS9gk=;
 b=ljJxk18FWpJeEWanfhyjBug9Fh1UlJgV+z5RQZXwoxASpZcoRunBXunV
 CfC425BMhNvex8HBS2Ju05idW1KJBuunAeNkv83ivDb+czH2qJVRreqYh
 u4uWgvYbAxV8pf1k3xR00Kpw9dosrdDyQ77ZjQXmnOyCWrf1Uh7IUmcMC
 egwcgdWRcYwdB3B5cWWQ4buRIE2uRzoS4am7b3PHhoOV/cdSjHvd6qPKL
 fNYV5KK8LlMkgrULPRxytLHNzR5rZAaCibOou+ldd27OuCwIpbNEFxHtl
 mVULzDpyCfI5eXK9LM2Yeq7pWVLFAalbXfdijHy1u667bKcQIhNt1K1Eg Q==;
X-CSE-ConnectionGUID: DA1J9WvKRrKD5cce4lWcPw==
X-CSE-MsgGUID: 7D0ZBaKhQCasg08XbQmvMA==
X-IronPort-AV: E=McAfee;i="6800,10657,11832"; a="101074295"
X-IronPort-AV: E=Sophos;i="6.24,233,1774335600"; d="scan'208";a="101074295"
Received: from fmviesa007.fm.intel.com ([10.60.135.147])
 by fmvoesa102.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 30 Jun 2026 04:53:42 -0700
X-CSE-ConnectionGUID: +IMjw2bbRsGbNqFgUYUNcg==
X-CSE-MsgGUID: O7lqQRlMR+WuMc8vV1CLyA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.24,233,1774335600"; d="scan'208";a="248876758"
Received: from display-adls.igk.intel.com ([10.211.131.198])
 by fmviesa007.fm.intel.com with ESMTP; 30 Jun 2026 04:53:40 -0700
From: Mika Kahola <mika.kahola@intel.com>
To: intel-gfx@lists.freedesktop.org,
	intel-xe@lists.freedesktop.org
Cc: Mika Kahola <mika.kahola@intel.com>,
 =?UTF-8?q?Micha=C5=82=20Grzelak?= <michal.grzelak@intel.com>
Subject: [PATCH v2 1/4] drm/i915/display: Split out DG2 MPLLB enable helper
Date: Tue, 30 Jun 2026 11:53:33 +0000
Message-ID: <20260630115336.1059976-2-mika.kahola@intel.com>
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
	URIBL_MULTI_FAIL(0.00)[gabe.freedesktop.org:server fail,lists.freedesktop.org:server fail,intel.com:server fail];
	FROM_HAS_DN(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	ALIAS_RESOLVED(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[mika.kahola@intel.com,intel-gfx-bounces@lists.freedesktop.org];
	DKIM_TRACE(0.00)[intel.com:+];
	TAGGED_RCPT(0.00)[intel-gfx];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	ASN(0.00)[asn:6366, ipnet:131.252.0.0/16, country:US];
	RCPT_COUNT_THREE(0.00)[4];
	DBL_BLOCKED_OPENRESOLVER(0.00)[gabe.freedesktop.org:rdns,gabe.freedesktop.org:helo,lists.freedesktop.org:from_smtp,intel.com:dkim,intel.com:email,intel.com:mid,intel.com:from_mime]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: 9C1286E3D95

Refactor the DG2 MPLLB enable path by splitting out a helper that
programs the PHY directly from an intel_mpllb_state.

This is preparatory work for moving DG2 MPLLB handling under the DPLL
framework, where callbacks operate on dpll_hw_state rather than the
full crtc_state.

Assisted-by: Copilot:claude-sonnet-4-6
Signed-off-by: Mika Kahola <mika.kahola@intel.com>
Reviewed-by: Michał Grzelak <michal.grzelak@intel.com>
---
 drivers/gpu/drm/i915/display/intel_snps_phy.c | 11 ++++++++---
 drivers/gpu/drm/i915/display/intel_snps_phy.h |  2 ++
 2 files changed, 10 insertions(+), 3 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_snps_phy.c b/drivers/gpu/drm/i915/display/intel_snps_phy.c
index bf9df566630f..dfb3a5c35c85 100644
--- a/drivers/gpu/drm/i915/display/intel_snps_phy.c
+++ b/drivers/gpu/drm/i915/display/intel_snps_phy.c
@@ -1816,11 +1816,10 @@ int intel_mpllb_calc_state(struct intel_crtc_state *crtc_state,
 	return -EINVAL;
 }
 
-void intel_mpllb_enable(struct intel_encoder *encoder,
-			const struct intel_crtc_state *crtc_state)
+void intel_mpllb_enable_phy(struct intel_encoder *encoder,
+			    const struct intel_mpllb_state *pll_state)
 {
 	struct intel_display *display = to_intel_display(encoder);
-	const struct intel_mpllb_state *pll_state = &crtc_state->dpll_hw_state.mpllb;
 	enum phy phy = intel_encoder_to_phy(encoder);
 	intel_reg_t enable_reg = (phy <= PHY_D ?
 				 DG2_PLL_ENABLE(phy) : MG_PLL_ENABLE(0));
@@ -1875,6 +1874,12 @@ void intel_mpllb_enable(struct intel_encoder *encoder,
 	 */
 }
 
+void intel_mpllb_enable(struct intel_encoder *encoder,
+			const struct intel_crtc_state *crtc_state)
+{
+	intel_mpllb_enable_phy(encoder, &crtc_state->dpll_hw_state.mpllb);
+}
+
 void intel_mpllb_disable(struct intel_encoder *encoder)
 {
 	struct intel_display *display = to_intel_display(encoder);
diff --git a/drivers/gpu/drm/i915/display/intel_snps_phy.h b/drivers/gpu/drm/i915/display/intel_snps_phy.h
index 7f96da22d028..2c7a5f2040f1 100644
--- a/drivers/gpu/drm/i915/display/intel_snps_phy.h
+++ b/drivers/gpu/drm/i915/display/intel_snps_phy.h
@@ -22,6 +22,8 @@ void intel_snps_phy_update_psr_power_state(struct intel_encoder *encoder,
 
 int intel_mpllb_calc_state(struct intel_crtc_state *crtc_state,
 			   struct intel_encoder *encoder);
+void intel_mpllb_enable_phy(struct intel_encoder *encoder,
+			    const struct intel_mpllb_state *pll_state);
 void intel_mpllb_enable(struct intel_encoder *encoder,
 			const struct intel_crtc_state *crtc_state);
 void intel_mpllb_disable(struct intel_encoder *encoder);
-- 
2.43.0

