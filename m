Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id MOqtFL94rWlv3QEAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Sun, 08 Mar 2026 14:25:19 +0100
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id DB0FF23068A
	for <lists+intel-gfx@lfdr.de>; Sun, 08 Mar 2026 14:25:18 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 60D9610E120;
	Sun,  8 Mar 2026 13:25:17 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="MtHj8gv4";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.14])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 3F05910E179;
 Sun,  8 Mar 2026 13:25:15 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1772976315; x=1804512315;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=eWFb2B6xgiZC4FUZ/N1wzyBAuIMQ2CGxVoqdqt4WyPY=;
 b=MtHj8gv4YoiK7SpqAorZnOtP1shN0F8VH4Uz0EJjUr/M4bRJOKdQ0+Bx
 PUJ5aaxMEfJQ5FpnMXzEBSucazANxbNLxLYxh98KgMhbeTtOJ53fBfOGl
 3BgnmHt2His3zdkgPXhgo+YEaQM9khmFAY6Wzi3pkCdpTYB7s6WH6EqFC
 nZf3J3FE3GC6/Zz/qep9AQSdkP1yGAUOUcL9JBkLdmCCQnks40JShsu1J
 qRpOxfn8awTHMZz4Kq5gTwbjCcIkLsXIsVrlkwJ4lmd4R0ojcXqtGUggL
 zZpZ69WogKleTrZOBa8Gpcqa8Vq1F4roC5GQad9OIbNGrRrcRWbX16WU2 w==;
X-CSE-ConnectionGUID: uhXT3Ws2SKCyHrZDTTL+vQ==
X-CSE-MsgGUID: 9q3pJ7rWR5W3GF4SJlGeLg==
X-IronPort-AV: E=McAfee;i="6800,10657,11722"; a="77871410"
X-IronPort-AV: E=Sophos;i="6.23,108,1770624000"; d="scan'208";a="77871410"
Received: from fmviesa008.fm.intel.com ([10.60.135.148])
 by orvoesa106.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 08 Mar 2026 06:25:15 -0700
X-CSE-ConnectionGUID: PNQpiOuoRMOzqt94rYzOYw==
X-CSE-MsgGUID: qWgHrS1fS6qNdHMNKCbvNw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.23,108,1770624000"; d="scan'208";a="217598195"
Received: from administrator-system-product-name.igk.intel.com (HELO
 dev-417.igk.intel.com) ([10.91.214.181])
 by fmviesa008.fm.intel.com with ESMTP; 08 Mar 2026 06:25:14 -0700
From: =?UTF-8?q?Micha=C5=82=20Grzelak?= <michal.grzelak@intel.com>
To: intel-gfx@lists.freedesktop.org,
	intel-xe@lists.freedesktop.org
Cc: =?UTF-8?q?Micha=C5=82=20Grzelak?= <michal.grzelak@intel.com>
Subject: [RFC v1 11/11] drm/i915/mtl: add V/P Override support for mtl+
Date: Sun,  8 Mar 2026 14:24:46 +0100
Message-ID: <20260308132446.3320848-12-michal.grzelak@intel.com>
X-Mailer: git-send-email 2.45.2
In-Reply-To: <20260308132446.3320848-1-michal.grzelak@intel.com>
References: <20260308132446.3320848-1-michal.grzelak@intel.com>
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
X-Rspamd-Queue-Id: DB0FF23068A
X-Rspamd-Server: lfdr
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
	NEURAL_HAM(-0.00)[-0.994];
	FROM_NEQ_ENVFROM(0.00)[michal.grzelak@intel.com,intel-gfx-bounces@lists.freedesktop.org];
	DKIM_TRACE(0.00)[intel.com:+];
	TAGGED_RCPT(0.00)[intel-gfx];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	ASN(0.00)[asn:6366, ipnet:131.252.0.0/16, country:US];
	RCPT_COUNT_THREE(0.00)[3];
	DBL_BLOCKED_OPENRESOLVER(0.00)[intel.com:dkim,intel.com:email,intel.com:mid,gabe.freedesktop.org:rdns,gabe.freedesktop.org:helo]
X-Rspamd-Action: no action

Add macros to reflect the layout of vswing/preemphasis override tables
for mtl. Add separate macros for C10 & C20.

Add separate intel_ddi_buf_trans_entry to be overridden for mtl onward.
Set & return it when port requests to override default table. Use same
setter for both C10 & C20 cases.

Set the value by extracting the lowest byte from entry from the table.

There are no changes to intel_ddi_dp_level() since selection of correct
row of intel_ddi_buf_trans_entry is same as when no override request has
been done.

Signed-off-by: Michał Grzelak <michal.grzelak@intel.com>
---
 .../drm/i915/display/intel_ddi_buf_trans.c    | 99 ++++++++++++++++++-
 1 file changed, 96 insertions(+), 3 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_ddi_buf_trans.c b/drivers/gpu/drm/i915/display/intel_ddi_buf_trans.c
index 1b30c9888f95..7798320a4968 100644
--- a/drivers/gpu/drm/i915/display/intel_ddi_buf_trans.c
+++ b/drivers/gpu/drm/i915/display/intel_ddi_buf_trans.c
@@ -12,6 +12,17 @@
 #include "intel_dp.h"
 #include "intel_lt_phy.h"
 
+#define MTL_C10_VS_PE_DP14_RBR_HBR 0
+#define MTL_C10_VS_PE_DP14_HBR2_HBR3 1
+#define MTL_C10_VS_PE_EDP_NON_HBR3 2
+#define MTL_C10_VS_PE_EDP_HBR3 3
+
+#define MTL_C20_VS_PE_DP14 4
+#define MTL_C20_VS_PE_DP20 5
+
+#define MTL_CX0_VS_PE_COL 3
+#define MTL_CX0_VS_PE_ROW 16
+
 #define XE3P_VS_PE_EDP 3
 #define XE3P_VS_PE_DP14 4
 #define XE3P_VS_PE_DP21 5
@@ -1109,6 +1120,25 @@ static const union intel_ddi_buf_trans_entry _mtl_c20_trans_hdmi[] = {
 	{ .snps = { 32, 4, 12 } },      /* preset 4 */
 };
 
+static union intel_ddi_buf_trans_entry _mtl_cx0_trans_override[] = {
+	{ .snps = { 0, 0, 0 } },
+	{ .snps = { 0, 0, 0 } },
+	{ .snps = { 0, 0, 0 } },
+	{ .snps = { 0, 0, 0 } },
+	{ .snps = { 0, 0, 0 } },
+	{ .snps = { 0, 0, 0 } },
+	{ .snps = { 0, 0, 0 } },
+	{ .snps = { 0, 0, 0 } },
+	{ .snps = { 0, 0, 0 } },
+	{ .snps = { 0, 0, 0 } },
+	{ .snps = { 0, 0, 0 } },
+	{ .snps = { 0, 0, 0 } },
+	{ .snps = { 0, 0, 0 } },
+	{ .snps = { 0, 0, 0 } },
+	{ .snps = { 0, 0, 0 } },
+	{ .snps = { 0, 0, 0 } },
+};
+
 static const struct intel_ddi_buf_trans mtl_c20_trans_hdmi = {
 	.entries = _mtl_c20_trans_hdmi,
 	.num_entries = ARRAY_SIZE(_mtl_c20_trans_hdmi),
@@ -1126,6 +1156,11 @@ static const struct intel_ddi_buf_trans mtl_c20_trans_uhbr = {
 	.num_entries = ARRAY_SIZE(_mtl_c20_trans_uhbr),
 };
 
+static struct intel_ddi_buf_trans mtl_cx0_trans_override = {
+	.entries = _mtl_cx0_trans_override,
+	.num_entries = ARRAY_SIZE(_mtl_cx0_trans_override),
+};
+
 /* DP1.4 */
 static const union intel_ddi_buf_trans_entry _xe3plpd_lt_trans_dp14[] = {
 	{ .lt = { 21, 0, 0 , 1, 0 } },
@@ -1815,11 +1850,60 @@ dg2_get_snps_buf_trans(struct intel_encoder *encoder,
 		return intel_get_buf_trans(&dg2_snps_trans, n_entries);
 }
 
+static const struct intel_ddi_buf_trans *
+mtl_set_cx0_buf_trans(struct intel_encoder *encoder,
+		      int idx,
+		      int *n_entries)
+{
+	struct intel_display *display = to_intel_display(encoder);
+	struct intel_ddi_buf_trans *buf_trans = &mtl_cx0_trans_override;
+	union intel_ddi_buf_trans_entry *entries, *entry;
+	const u32 *tables = display->vbt.override_vswing;
+	const u32 *vals;
+
+	entries = (union intel_ddi_buf_trans_entry *) buf_trans->entries;
+	for (int row = 0; row < MTL_CX0_VS_PE_ROW; row++) {
+		entry = &entries[row];
+		vals = find_row(tables,
+				idx,
+				row,
+				MTL_CX0_VS_PE_ROW,
+				MTL_CX0_VS_PE_COL);
+
+		entry->snps.vswing = LOW(vals[0]);
+		entry->snps.pre_cursor = LOW(vals[1]);
+		entry->snps.post_cursor = LOW(vals[2]);
+	}
+
+	return intel_get_buf_trans(&mtl_cx0_trans_override, n_entries);
+}
+
 static const struct intel_ddi_buf_trans *
 mtl_get_c10_buf_trans(struct intel_encoder *encoder,
 		      const struct intel_crtc_state *crtc_state,
 		      int *n_entries)
 {
+	if (intel_bios_encoder_overrides_vswing(encoder->devdata)) {
+		if (intel_crtc_has_type(crtc_state, INTEL_OUTPUT_DP)) {
+			if (intel_dp_above_hbr1(crtc_state))
+				return mtl_set_cx0_buf_trans(encoder,
+							     MTL_C10_VS_PE_DP14_HBR2_HBR3,
+							     n_entries);
+			else
+				return mtl_set_cx0_buf_trans(encoder,
+							     MTL_C10_VS_PE_DP14_RBR_HBR,
+							     n_entries);
+		} else if (intel_crtc_has_type(crtc_state, INTEL_OUTPUT_EDP)){
+			if (intel_edp_above_hbr2(crtc_state))
+				return mtl_set_cx0_buf_trans(encoder,
+							     MTL_C10_VS_PE_EDP_HBR3,
+							     n_entries);
+			else
+				return mtl_set_cx0_buf_trans(encoder,
+							     MTL_C10_VS_PE_EDP_NON_HBR3,
+							     n_entries);
+		}
+	}
 	return intel_get_buf_trans(&mtl_c10_trans_dp14, n_entries);
 }
 
@@ -1828,12 +1912,21 @@ mtl_get_c20_buf_trans(struct intel_encoder *encoder,
 		      const struct intel_crtc_state *crtc_state,
 		      int *n_entries)
 {
-	if (intel_crtc_has_dp_encoder(crtc_state) && intel_dp_is_uhbr(crtc_state))
+	if (intel_crtc_has_dp_encoder(crtc_state) && intel_dp_is_uhbr(crtc_state)) {
+		if (intel_bios_encoder_overrides_vswing(encoder->devdata))
+			return mtl_set_cx0_buf_trans(encoder,
+						     MTL_C20_VS_PE_DP20,
+						     n_entries);
 		return intel_get_buf_trans(&mtl_c20_trans_uhbr, n_entries);
-	else if (intel_crtc_has_type(crtc_state, INTEL_OUTPUT_HDMI))
+	} else if (intel_crtc_has_type(crtc_state, INTEL_OUTPUT_HDMI)) {
 		return intel_get_buf_trans(&mtl_c20_trans_hdmi, n_entries);
-	else
+	} else {
+		if (intel_bios_encoder_overrides_vswing(encoder->devdata))
+			return mtl_set_cx0_buf_trans(encoder,
+						     MTL_C20_VS_PE_DP14,
+						     n_entries);
 		return intel_get_buf_trans(&mtl_c20_trans_dp14, n_entries);
+	}
 }
 
 static const struct intel_ddi_buf_trans *
-- 
2.45.2

