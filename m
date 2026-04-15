Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id AM2FNLJ732k5UAAAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Wed, 15 Apr 2026 13:51:14 +0200
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 2F7DE4040AE
	for <lists+intel-gfx@lfdr.de>; Wed, 15 Apr 2026 13:51:14 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 9502E10E6D1;
	Wed, 15 Apr 2026 11:51:12 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="bWtEfxqo";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.13])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 1B4B410E6CF;
 Wed, 15 Apr 2026 11:51:10 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1776253870; x=1807789870;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=KKAZaViesEnruVlkdoPXWUArPeOnMZxLd4e9gfeWpy8=;
 b=bWtEfxqoxlWD6+8pfHw4Brg/UVuj5oamzKq9my0ijiZjVO/wqRPnyWgD
 I4Mq5LyxL+X5bmmGCMqjUQ4kVh8cJENfrImb/6gV5VX3+9JokG2WFfQyc
 PN1F0cJhj0clScfyQyEOsIsg8qbyK0bamLIavSigzNoG+v/xc61SYVcqB
 Mrzz5D7hRFc7lDzD7hzZJNK5uO5bk8R4yMfUV3YIQL874q8N/vsbGXTHi
 vJZprihmIWw0bCUYgAWZ3XQSh6uW8yIOeRrPtsvVjAFfpiEe+iCmF9+pm
 UAu5cy1YGq+4uOaVMrSWKDibCt7bNK6x03QSYHu+4IAS6UgpEQJ7pnE6x A==;
X-CSE-ConnectionGUID: H7BCI+u2T6CmxRguu/YhEQ==
X-CSE-MsgGUID: L7HIMB3ERqydlE4T7deAKA==
X-IronPort-AV: E=McAfee;i="6800,10657,11759"; a="88307737"
X-IronPort-AV: E=Sophos;i="6.23,179,1770624000"; d="scan'208";a="88307737"
Received: from fmviesa005.fm.intel.com ([10.60.135.145])
 by orvoesa105.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 15 Apr 2026 04:51:10 -0700
X-CSE-ConnectionGUID: fCHZ4RRFQ2OVxqBUy4tjEA==
X-CSE-MsgGUID: Fv4Wbmx2RkSSl8DtQK/SCw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.23,179,1770624000"; d="scan'208";a="235345097"
Received: from mjarzebo-mobl1.ger.corp.intel.com (HELO localhost)
 ([10.245.246.25])
 by fmviesa005-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 15 Apr 2026 04:51:07 -0700
From: Jani Nikula <jani.nikula@intel.com>
To: intel-gfx@lists.freedesktop.org,
	intel-xe@lists.freedesktop.org
Cc: jani.nikula@intel.com,
 =?UTF-8?q?Micha=C5=82=20Grzelak?= <michal.grzelak@intel.com>
Subject: [PATCH] drm/i915/ddi: add wrapper for calling ->get_buf_trans() hook
Date: Wed, 15 Apr 2026 14:51:03 +0300
Message-ID: <20260415115104.1721008-1-jani.nikula@intel.com>
X-Mailer: git-send-email 2.47.3
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Organization: Intel Finland Oy - BIC 0357606-4 - c/o Alberga Business Park,
 6 krs Bertel Jungin Aukio 5, 02600 Espoo, Finland
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
	R_DKIM_ALLOW(-0.20)[intel.com:s=Intel];
	MAILLIST(-0.20)[mailman];
	R_SPF_ALLOW(-0.20)[+ip4:131.252.210.177];
	RWL_MAILSPIKE_GOOD(-0.10)[131.252.210.177:from];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	RCVD_COUNT_THREE(0.00)[4];
	FORGED_SENDER_MAILLIST(0.00)[];
	MIME_TRACE(0.00)[0:+];
	HAS_ORG_HEADER(0.00)[];
	TO_DN_SOME(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	DKIM_TRACE(0.00)[intel.com:+];
	RCPT_COUNT_THREE(0.00)[4];
	FROM_NEQ_ENVFROM(0.00)[jani.nikula@intel.com,intel-gfx-bounces@lists.freedesktop.org];
	FROM_HAS_DN(0.00)[];
	ARC_NA(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	ASN(0.00)[asn:6366, ipnet:131.252.0.0/16, country:US];
	TAGGED_RCPT(0.00)[intel-gfx];
	DBL_BLOCKED_OPENRESOLVER(0.00)[intel.com:email,intel.com:dkim,intel.com:mid,gabe.freedesktop.org:helo,gabe.freedesktop.org:rdns]
X-Rspamd-Queue-Id: 2F7DE4040AE
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

Add intel_ddi_buf_trans_get() wrapper for calling the
encoder->get_buf_trans() hooks, allowing for a centralized place to
e.g. check for VBT overrides for the buf translations.

Cc: Michał Grzelak <michal.grzelak@intel.com>
Signed-off-by: Jani Nikula <jani.nikula@intel.com>
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
index 7e59409bbf01..d832e44ef62a 100644
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
index 178074316a2c..2681940a5cfe 100644
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
index 395dba8c9e4d..f0839938fe10 100644
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
index cec332090a20..9698697f3917 100644
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
index 0e16132d0923..68802b652316 100644
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
index 24ce8a7842c7..917f020650af 100644
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
index 657ad5cb0eff..e2f9e1a2745f 100644
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
index 295030742294..5e5dde8f3e3a 100644
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
2.47.3

