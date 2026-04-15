Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id WGNFMZAj4GmbcwAAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Thu, 16 Apr 2026 01:47:28 +0200
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 77AD0409113
	for <lists+intel-gfx@lfdr.de>; Thu, 16 Apr 2026 01:47:28 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 6383210E7E8;
	Wed, 15 Apr 2026 23:47:26 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="RVGEfrRN";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.15])
 by gabe.freedesktop.org (Postfix) with ESMTPS id C84DC10E7D1;
 Wed, 15 Apr 2026 23:47:10 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1776296831; x=1807832831;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=pQd5BjoomDM5hBDCT6MfGmpKNtEaet00t76VpnHOsow=;
 b=RVGEfrRNwTurmzQjruf2qcPCkIsFQpRHza6xzXDGSj7p5SFfiZJufR4c
 LwCoqd6pSSZgvHXbB521ALTwRHd5WRRoUuntFNPDUq44CfS9XSMNO8g6D
 oXvttLl33yBYwy5x7TY2vMnHlxqcUI6a95E5hFnHDIAEQaXVg0219eHl4
 iBLtIj86JUcLaUftlyfPJv1Iy75r4ki4Kc2XgWM/561RVxovu41sA/BPz
 ord3fSNv2oIpuFlFyQWgn405Y8OBSUCv4ilv3sKF8Rch/k238zOWa7USf
 HIzTJavdfq1F31xu0x3pq2uE9az7DqNAEEPdVun9PgbRPwclKKAeH/SiF w==;
X-CSE-ConnectionGUID: aS6hQTXjTHODid2DpuTpZA==
X-CSE-MsgGUID: amuUhsddSby/PAlyG3aE7g==
X-IronPort-AV: E=McAfee;i="6800,10657,11760"; a="77403499"
X-IronPort-AV: E=Sophos;i="6.23,181,1770624000"; d="scan'208";a="77403499"
Received: from fmviesa005.fm.intel.com ([10.60.135.145])
 by fmvoesa109.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 15 Apr 2026 16:47:11 -0700
X-CSE-ConnectionGUID: p6SnR2XCRG6hOZEIovvp4g==
X-CSE-MsgGUID: yYj5DUzpQFWeuQbi25rQgg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.23,181,1770624000"; d="scan'208";a="235511180"
Received: from administrator-system-product-name.igk.intel.com (HELO
 dev-417.igk.intel.com) ([10.91.214.181])
 by fmviesa005.fm.intel.com with ESMTP; 15 Apr 2026 16:47:09 -0700
From: =?UTF-8?q?Micha=C5=82=20Grzelak?= <michal.grzelak@intel.com>
To: intel-gfx@lists.freedesktop.org,
	intel-xe@lists.freedesktop.org
Cc: Jani Nikula <jani.nikula@intel.com>,
 =?UTF-8?q?Micha=C5=82=20Grzelak?= <michal.grzelak@intel.com>
Subject: [PATCH v2 13/32] drm/i915/ddi: add wrapper for calling
 ->get_buf_trans() hook
Date: Thu, 16 Apr 2026 01:46:20 +0200
Message-ID: <20260415234639.3577774-14-michal.grzelak@intel.com>
X-Mailer: git-send-email 2.45.2
In-Reply-To: <20260415234639.3577774-1-michal.grzelak@intel.com>
References: <20260415234639.3577774-1-michal.grzelak@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Organization: Intel Technology Poland sp. z o.o. - ul. Slowackiego 173,
 80-298 Gdansk - KRS 101882 - NIP 957-07-52-316
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
X-Spamd-Result: default: False [-0.31 / 15.00];
	MID_CONTAINS_FROM(1.00)[];
	DMARC_POLICY_ALLOW(-0.50)[intel.com,none];
	R_SPF_ALLOW(-0.20)[+ip4:131.252.210.177:c];
	MAILLIST(-0.20)[mailman];
	R_DKIM_ALLOW(-0.20)[intel.com:s=Intel];
	MIME_GOOD(-0.10)[text/plain];
	RWL_MAILSPIKE_GOOD(-0.10)[131.252.210.177:from];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_COUNT_THREE(0.00)[4];
	ARC_NA(0.00)[];
	HAS_ORG_HEADER(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	MIME_TRACE(0.00)[0:+];
	RCVD_TLS_LAST(0.00)[];
	FROM_HAS_DN(0.00)[];
	TO_DN_SOME(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	FROM_NEQ_ENVFROM(0.00)[michal.grzelak@intel.com,intel-gfx-bounces@lists.freedesktop.org];
	DKIM_TRACE(0.00)[intel.com:+];
	TAGGED_RCPT(0.00)[intel-gfx];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	ASN(0.00)[asn:6366, ipnet:131.252.0.0/16, country:US];
	RCPT_COUNT_THREE(0.00)[4];
	DBL_BLOCKED_OPENRESOLVER(0.00)[intel.com:email,intel.com:dkim,intel.com:mid,gabe.freedesktop.org:helo,gabe.freedesktop.org:rdns]
X-Rspamd-Queue-Id: 77AD0409113
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

From: Jani Nikula <jani.nikula@intel.com>

Add intel_ddi_buf_trans_get() wrapper for calling the
encoder->get_buf_trans() hooks, allowing for a centralized place to e.g.
check for VBT overrides for the buf translations.

Cc: Michał Grzelak <michal.grzelak@intel.com>
Signed-off-by: Jani Nikula <jani.nikula@intel.com>
Signed-off-by: Michał Grzelak <michal.grzelak@intel.com>
---
 drivers/gpu/drm/i915/display/intel_cx0_phy.c     |  2 +-
 drivers/gpu/drm/i915/display/intel_ddi.c         | 16 ++++++++--------
 .../gpu/drm/i915/display/intel_ddi_buf_trans.c   |  7 +++++++
 .../gpu/drm/i915/display/intel_ddi_buf_trans.h   |  3 +++
 drivers/gpu/drm/i915/display/intel_dpio_phy.c    |  2 +-
 drivers/gpu/drm/i915/display/intel_fdi.c         |  3 ++-
 drivers/gpu/drm/i915/display/intel_lt_phy.c      |  2 +-
 drivers/gpu/drm/i915/display/intel_snps_phy.c    |  2 +-
 8 files changed, 24 insertions(+), 13 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_cx0_phy.c b/drivers/gpu/drm/i915/display/intel_cx0_phy.c
index 7e59409bbf013..d832e44ef62a2 100644
--- a/drivers/gpu/drm/i915/display/intel_cx0_phy.c
+++ b/drivers/gpu/drm/i915/display/intel_cx0_phy.c
@@ -492,7 +492,7 @@ void intel_cx0_phy_set_signal_levels(struct intel_encoder *encoder,
 
 	wakeref = intel_cx0_phy_transaction_begin(encoder);
 
-	trans = encoder->get_buf_trans(encoder, crtc_state, &n_entries);
+	trans = intel_ddi_buf_trans_get(encoder, crtc_state, &n_entries);
 	if (drm_WARN_ON_ONCE(display->drm, !trans)) {
 		intel_cx0_phy_transaction_end(encoder, wakeref);
 		return;
diff --git a/drivers/gpu/drm/i915/display/intel_ddi.c b/drivers/gpu/drm/i915/display/intel_ddi.c
index 54727b8593cfd..eb188b27ec96b 100644
--- a/drivers/gpu/drm/i915/display/intel_ddi.c
+++ b/drivers/gpu/drm/i915/display/intel_ddi.c
@@ -140,7 +140,7 @@ void hsw_prepare_dp_ddi_buffers(struct intel_encoder *encoder,
 	enum port port = encoder->port;
 	const struct intel_ddi_buf_trans *trans;
 
-	trans = encoder->get_buf_trans(encoder, crtc_state, &n_entries);
+	trans = intel_ddi_buf_trans_get(encoder, crtc_state, &n_entries);
 	if (drm_WARN_ON_ONCE(display->drm, !trans))
 		return;
 
@@ -172,7 +172,7 @@ static void hsw_prepare_hdmi_ddi_buffers(struct intel_encoder *encoder,
 	enum port port = encoder->port;
 	const struct intel_ddi_buf_trans *trans;
 
-	trans = encoder->get_buf_trans(encoder, crtc_state, &n_entries);
+	trans = intel_ddi_buf_trans_get(encoder, crtc_state, &n_entries);
 	if (drm_WARN_ON_ONCE(display->drm, !trans))
 		return;
 
@@ -1106,7 +1106,7 @@ static void skl_ddi_set_iboost(struct intel_encoder *encoder,
 		const struct intel_ddi_buf_trans *trans;
 		int n_entries;
 
-		trans = encoder->get_buf_trans(encoder, crtc_state, &n_entries);
+		trans = intel_ddi_buf_trans_get(encoder, crtc_state, &n_entries);
 		if (drm_WARN_ON_ONCE(display->drm, !trans))
 			return;
 
@@ -1132,7 +1132,7 @@ static u8 intel_ddi_dp_voltage_max(struct intel_dp *intel_dp,
 	struct intel_encoder *encoder = &dp_to_dig_port(intel_dp)->base;
 	int n_entries;
 
-	encoder->get_buf_trans(encoder, crtc_state, &n_entries);
+	intel_ddi_buf_trans_get(encoder, crtc_state, &n_entries);
 
 	if (drm_WARN_ON(display->drm, n_entries < 1))
 		n_entries = 1;
@@ -1175,7 +1175,7 @@ static void icl_ddi_combo_vswing_program(struct intel_encoder *encoder,
 	int n_entries, ln;
 	u32 val;
 
-	trans = encoder->get_buf_trans(encoder, crtc_state, &n_entries);
+	trans = intel_ddi_buf_trans_get(encoder, crtc_state, &n_entries);
 	if (drm_WARN_ON_ONCE(display->drm, !trans))
 		return;
 
@@ -1293,7 +1293,7 @@ static void icl_mg_phy_set_signal_levels(struct intel_encoder *encoder,
 	if (intel_tc_port_in_tbt_alt_mode(enc_to_dig_port(encoder)))
 		return;
 
-	trans = encoder->get_buf_trans(encoder, crtc_state, &n_entries);
+	trans = intel_ddi_buf_trans_get(encoder, crtc_state, &n_entries);
 	if (drm_WARN_ON_ONCE(display->drm, !trans))
 		return;
 
@@ -1394,7 +1394,7 @@ static void tgl_dkl_phy_set_signal_levels(struct intel_encoder *encoder,
 	if (intel_tc_port_in_tbt_alt_mode(enc_to_dig_port(encoder)))
 		return;
 
-	trans = encoder->get_buf_trans(encoder, crtc_state, &n_entries);
+	trans = intel_ddi_buf_trans_get(encoder, crtc_state, &n_entries);
 	if (drm_WARN_ON_ONCE(display->drm, !trans))
 		return;
 
@@ -1511,7 +1511,7 @@ int intel_ddi_level(struct intel_encoder *encoder,
 	const struct intel_ddi_buf_trans *trans;
 	int level, n_entries;
 
-	trans = encoder->get_buf_trans(encoder, crtc_state, &n_entries);
+	trans = intel_ddi_buf_trans_get(encoder, crtc_state, &n_entries);
 	if (drm_WARN_ON_ONCE(display->drm, !trans))
 		return 0;
 
diff --git a/drivers/gpu/drm/i915/display/intel_ddi_buf_trans.c b/drivers/gpu/drm/i915/display/intel_ddi_buf_trans.c
index de5f6f89374e0..eefac4bc4eb7c 100644
--- a/drivers/gpu/drm/i915/display/intel_ddi_buf_trans.c
+++ b/drivers/gpu/drm/i915/display/intel_ddi_buf_trans.c
@@ -1852,3 +1852,10 @@ void intel_ddi_buf_trans_init(struct intel_encoder *encoder)
 		MISSING_CASE(pdev->device);
 	}
 }
+
+const struct intel_ddi_buf_trans *intel_ddi_buf_trans_get(struct intel_encoder *encoder,
+							  const struct intel_crtc_state *crtc_state,
+							  int *n_entries)
+{
+	return encoder->get_buf_trans(encoder, crtc_state, n_entries);
+}
diff --git a/drivers/gpu/drm/i915/display/intel_ddi_buf_trans.h b/drivers/gpu/drm/i915/display/intel_ddi_buf_trans.h
index 7703c6c0a0cbf..ac9acdec6d298 100644
--- a/drivers/gpu/drm/i915/display/intel_ddi_buf_trans.h
+++ b/drivers/gpu/drm/i915/display/intel_ddi_buf_trans.h
@@ -77,5 +77,8 @@ struct intel_ddi_buf_trans {
 bool is_hobl_buf_trans(const struct intel_ddi_buf_trans *table);
 
 void intel_ddi_buf_trans_init(struct intel_encoder *encoder);
+const struct intel_ddi_buf_trans *
+intel_ddi_buf_trans_get(struct intel_encoder *encoder,
+			const struct intel_crtc_state *crtc_state, int *n_entries);
 
 #endif
diff --git a/drivers/gpu/drm/i915/display/intel_dpio_phy.c b/drivers/gpu/drm/i915/display/intel_dpio_phy.c
index 0e16132d09238..68802b652316a 100644
--- a/drivers/gpu/drm/i915/display/intel_dpio_phy.c
+++ b/drivers/gpu/drm/i915/display/intel_dpio_phy.c
@@ -301,7 +301,7 @@ void bxt_dpio_phy_set_signal_levels(struct intel_encoder *encoder,
 	enum dpio_phy phy;
 	int lane, n_entries;
 
-	trans = encoder->get_buf_trans(encoder, crtc_state, &n_entries);
+	trans = intel_ddi_buf_trans_get(encoder, crtc_state, &n_entries);
 	if (drm_WARN_ON_ONCE(display->drm, !trans))
 		return;
 
diff --git a/drivers/gpu/drm/i915/display/intel_fdi.c b/drivers/gpu/drm/i915/display/intel_fdi.c
index 24ce8a7842c7d..917f020650af2 100644
--- a/drivers/gpu/drm/i915/display/intel_fdi.c
+++ b/drivers/gpu/drm/i915/display/intel_fdi.c
@@ -11,6 +11,7 @@
 #include "intel_atomic.h"
 #include "intel_crtc.h"
 #include "intel_ddi.h"
+#include "intel_ddi_buf_trans.h"
 #include "intel_de.h"
 #include "intel_display_regs.h"
 #include "intel_display_types.h"
@@ -852,7 +853,7 @@ void hsw_fdi_link_train(struct intel_encoder *encoder,
 	u32 temp, i, rx_ctl_val;
 	int n_entries;
 
-	encoder->get_buf_trans(encoder, crtc_state, &n_entries);
+	intel_ddi_buf_trans_get(encoder, crtc_state, &n_entries);
 
 	hsw_prepare_dp_ddi_buffers(encoder, crtc_state);
 
diff --git a/drivers/gpu/drm/i915/display/intel_lt_phy.c b/drivers/gpu/drm/i915/display/intel_lt_phy.c
index 657ad5cb0eff9..e2f9e1a2745f8 100644
--- a/drivers/gpu/drm/i915/display/intel_lt_phy.c
+++ b/drivers/gpu/drm/i915/display/intel_lt_phy.c
@@ -2135,7 +2135,7 @@ void intel_lt_phy_set_signal_levels(struct intel_encoder *encoder,
 
 	wakeref = intel_lt_phy_transaction_begin(encoder);
 
-	trans = encoder->get_buf_trans(encoder, crtc_state, &n_entries);
+	trans = intel_ddi_buf_trans_get(encoder, crtc_state, &n_entries);
 	if (drm_WARN_ON_ONCE(display->drm, !trans)) {
 		intel_lt_phy_transaction_end(encoder, wakeref);
 		return;
diff --git a/drivers/gpu/drm/i915/display/intel_snps_phy.c b/drivers/gpu/drm/i915/display/intel_snps_phy.c
index 295030742294b..5e5dde8f3e3a2 100644
--- a/drivers/gpu/drm/i915/display/intel_snps_phy.c
+++ b/drivers/gpu/drm/i915/display/intel_snps_phy.c
@@ -72,7 +72,7 @@ void intel_snps_phy_set_signal_levels(struct intel_encoder *encoder,
 	enum phy phy = intel_encoder_to_phy(encoder);
 	int n_entries, ln;
 
-	trans = encoder->get_buf_trans(encoder, crtc_state, &n_entries);
+	trans = intel_ddi_buf_trans_get(encoder, crtc_state, &n_entries);
 	if (drm_WARN_ON_ONCE(display->drm, !trans))
 		return;
 
-- 
2.45.2

