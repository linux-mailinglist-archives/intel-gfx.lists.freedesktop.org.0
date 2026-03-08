Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id CCoqCMB4rWlj3QEAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Sun, 08 Mar 2026 14:25:20 +0100
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id C316D230691
	for <lists+intel-gfx@lfdr.de>; Sun, 08 Mar 2026 14:25:19 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 3846F10E36C;
	Sun,  8 Mar 2026 13:25:18 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="iiFZSiKx";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.14])
 by gabe.freedesktop.org (Postfix) with ESMTPS id EEACB10E178;
 Sun,  8 Mar 2026 13:25:12 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1772976313; x=1804512313;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=3ofEo5bG8KYNyWPizhORO2e0SFfm9K8oT+kar0uiN90=;
 b=iiFZSiKxClTZXB3au8zBY7Q13ZkRuNj1kKqSFx93PQR//Fuku4SY8JQE
 Ng8++nbRxiZ+FpsbqPUB+xG0wwURs3Kjti5MDrojTiw0kZN+OjZ0arY3n
 MP55nCsbbXvLgYae5A8TxLXNSZK5Oy+jM5orYYnWy0Ir2s7KhJqMP5ibK
 bhHSm7W+BrLgc7vLgROSieS5WwbLp72oBGiKXzwOohSF5y8QdhPdNiSh5
 ucVEtGax1t1bgAccCR3QKkos0/GHRIRZiHU2bXm+167m90SLkRiRcUfdq
 7WyqXi0UooyHcv5n2C0x5ZuiwBy6LhJ1I/DzG+UBli9+XoVJlg5ctzgWX w==;
X-CSE-ConnectionGUID: CvA7yzkjRMyN65riTUJLXA==
X-CSE-MsgGUID: venqafGURp2Xml8fMZ9aIw==
X-IronPort-AV: E=McAfee;i="6800,10657,11722"; a="77871408"
X-IronPort-AV: E=Sophos;i="6.23,108,1770624000"; d="scan'208";a="77871408"
Received: from fmviesa008.fm.intel.com ([10.60.135.148])
 by orvoesa106.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 08 Mar 2026 06:25:13 -0700
X-CSE-ConnectionGUID: fzUtHyVYQeOMsaSlfSGcwA==
X-CSE-MsgGUID: YGk5u7fbSAOHMf9yXQvPAw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.23,108,1770624000"; d="scan'208";a="217598185"
Received: from administrator-system-product-name.igk.intel.com (HELO
 dev-417.igk.intel.com) ([10.91.214.181])
 by fmviesa008.fm.intel.com with ESMTP; 08 Mar 2026 06:25:11 -0700
From: =?UTF-8?q?Micha=C5=82=20Grzelak?= <michal.grzelak@intel.com>
To: intel-gfx@lists.freedesktop.org,
	intel-xe@lists.freedesktop.org
Cc: =?UTF-8?q?Micha=C5=82=20Grzelak?= <michal.grzelak@intel.com>
Subject: [RFC v1 09/11] drm/i915/xe3p: add V/P Override support for xe3p
Date: Sun,  8 Mar 2026 14:24:44 +0100
Message-ID: <20260308132446.3320848-10-michal.grzelak@intel.com>
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
X-Rspamd-Queue-Id: C316D230691
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
for xe3p.

Add separate intel_ddi_buf_trans_entry to be overridden for xe3plpd.
Set & return it when port requests to override default table.

Set the value by extracting the lowest byte from entry from the table.

There are no changes to intel_ddi_dp_level() since selection of correct
row of intel_ddi_buf_trans_entry is same as when no override request has
been done.

Add FIXME & warning when EDP is requested to be overridden.

beware of endianness:
during VBT parsing, u32's were split into u8;
read u32 from selected row to restore it;
windows assumes u8, so extract the lowest byte.

Signed-off-by: Michał Grzelak <michal.grzelak@intel.com>
---
 .../drm/i915/display/intel_ddi_buf_trans.c    | 102 +++++++++++++++++-
 1 file changed, 99 insertions(+), 3 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_ddi_buf_trans.c b/drivers/gpu/drm/i915/display/intel_ddi_buf_trans.c
index 528a0ccfe8a2..632a5fe08381 100644
--- a/drivers/gpu/drm/i915/display/intel_ddi_buf_trans.c
+++ b/drivers/gpu/drm/i915/display/intel_ddi_buf_trans.c
@@ -12,6 +12,16 @@
 #include "intel_dp.h"
 #include "intel_lt_phy.h"
 
+#define XE3P_VS_PE_EDP 3
+#define XE3P_VS_PE_DP14 4
+#define XE3P_VS_PE_DP21 5
+
+#define XE3P_VS_PE_COL 5
+#define XE3P_VS_PE_ROW 16
+
+#define VS_PE_MASK 0x000000ff
+
+#define LOW(x) ((x) & (VS_PE_MASK))
 /* HDMI/DVI modes ignore everything but the last 2 items. So we share
  * them for both DP and FDI transports, allowing those ports to
  * automatically adapt to HDMI connections as well
@@ -1164,6 +1174,25 @@ static const union intel_ddi_buf_trans_entry _xe3plpd_lt_trans_edp[] = {
 	{ .lt = { 26, 0, 0, 1, 3 } },
 };
 
+static union intel_ddi_buf_trans_entry _xe3plpd_lt_trans_override[] = {
+	{ .lt = { 0, 0, 0, 0, 0 } },
+	{ .lt = { 0, 0, 0, 0, 0 } },
+	{ .lt = { 0, 0, 0, 0, 0 } },
+	{ .lt = { 0, 0, 0, 0, 0 } },
+	{ .lt = { 0, 0, 0, 0, 0 } },
+	{ .lt = { 0, 0, 0, 0, 0 } },
+	{ .lt = { 0, 0, 0, 0, 0 } },
+	{ .lt = { 0, 0, 0, 0, 0 } },
+	{ .lt = { 0, 0, 0, 0, 0 } },
+	{ .lt = { 0, 0, 0, 0, 0 } },
+	{ .lt = { 0, 0, 0, 0, 0 } },
+	{ .lt = { 0, 0, 0, 0, 0 } },
+	{ .lt = { 0, 0, 0, 0, 0 } },
+	{ .lt = { 0, 0, 0, 0, 0 } },
+	{ .lt = { 0, 0, 0, 0, 0 } },
+	{ .lt = { 0, 0, 0, 0, 0 } },
+};
+
 static const struct intel_ddi_buf_trans xe3plpd_lt_trans_dp14 = {
 	.entries = _xe3plpd_lt_trans_dp14,
 	.num_entries = ARRAY_SIZE(_xe3plpd_lt_trans_dp14),
@@ -1179,11 +1208,29 @@ static const struct intel_ddi_buf_trans xe3plpd_lt_trans_edp = {
 	.num_entries = ARRAY_SIZE(_xe3plpd_lt_trans_edp),
 };
 
+static struct intel_ddi_buf_trans xe3plpd_lt_trans_override = {
+	.entries = _xe3plpd_lt_trans_override,
+	.num_entries = ARRAY_SIZE(_xe3plpd_lt_trans_override),
+};
+
 bool is_hobl_buf_trans(const struct intel_ddi_buf_trans *table)
 {
 	return table == &tgl_combo_phy_trans_edp_hbr2_hobl;
 }
 
+static const u32 *find_row(const u32 *tables,
+			   int idx,
+			   int row,
+			   int row_no,
+			   int col_no)
+{
+	size_t ent_sz = sizeof(*tables);
+	size_t row_sz = col_no * ent_sz;
+	size_t tbl_sz = row_no * row_sz;
+	size_t offset = idx * tbl_sz + row * row_sz;
+	return &tables[offset];
+}
+
 static bool intel_dp_above_hbr1(const struct intel_crtc_state *crtc_state)
 {
 	if (crtc_state->port_clock > 270000)
@@ -1785,17 +1832,66 @@ mtl_get_c20_buf_trans(struct intel_encoder *encoder,
 		return intel_get_buf_trans(&mtl_c20_trans_dp14, n_entries);
 }
 
+static const struct intel_ddi_buf_trans *
+xe3plpd_set_lt_buf_trans(struct intel_encoder *encoder,
+			 int idx,
+			 int *n_entries)
+{
+	struct intel_display *display = to_intel_display(encoder);
+	struct intel_ddi_buf_trans *buf_trans = &xe3plpd_lt_trans_override;
+	union intel_ddi_buf_trans_entry *entries, *entry;
+	const u32 *tables = display->vbt.override_vswing;
+	const u32 *vals;
+
+	entries = (union intel_ddi_buf_trans_entry *) buf_trans->entries;
+	for (int row = 0; row < XE3P_VS_PE_ROW; row++) {
+		entry = &entries[row];
+		vals = find_row(tables,
+				idx,
+				row,
+				XE3P_VS_PE_ROW,
+				XE3P_VS_PE_COL);
+
+		entry->lt.main_cursor = LOW(vals[0]);
+		entry->lt.pre_cursor = LOW(vals[1]);
+		entry->lt.post_cursor = LOW(vals[2]);
+		entry->lt.txswing = LOW(vals[3]);
+		entry->lt.txswing_level = LOW(vals[4]);
+	}
+
+	return intel_get_buf_trans(&xe3plpd_lt_trans_override, n_entries);
+}
+
 static const struct intel_ddi_buf_trans *
 xe3plpd_get_lt_buf_trans(struct intel_encoder *encoder,
 			 const struct intel_crtc_state *crtc_state,
 			 int *n_entries)
 {
-	if (intel_crtc_has_dp_encoder(crtc_state) && intel_dp_is_uhbr(crtc_state))
+	if (intel_crtc_has_dp_encoder(crtc_state) && intel_dp_is_uhbr(crtc_state)) {
+		if (intel_bios_encoder_overrides_vswing(encoder->devdata))
+			return xe3plpd_set_lt_buf_trans(encoder,
+							XE3P_VS_PE_DP21,
+							n_entries);
 		return intel_get_buf_trans(&xe3plpd_lt_trans_uhbr, n_entries);
-	else if (intel_crtc_has_type(crtc_state, INTEL_OUTPUT_EDP))
+	} else if (intel_crtc_has_type(crtc_state, INTEL_OUTPUT_EDP)) {
+		 /* FIXME need to check correct parsing & table index should
+		 * this ever trigger.
+		 * return xe3plpd_set_lt_buf_trans(encoder,
+		 * 				   XE3P_VS_PE_EDP,
+		 *				   n_entries);
+		 */
+		drm_WARN(to_intel_display(encoder)->drm,
+			 intel_bios_encoder_overrides_vswing(encoder->devdata),
+			 "Port %s asks to override EDP's vswing/preemph tables\n",
+			 port_name(intel_bios_encoder_port(encoder->devdata)));
 		return intel_get_buf_trans(&xe3plpd_lt_trans_edp, n_entries);
-	else
+	} else {
+		if (intel_bios_encoder_overrides_vswing(encoder->devdata))
+			return xe3plpd_set_lt_buf_trans(encoder,
+							XE3P_VS_PE_DP14,
+							n_entries);
 		return intel_get_buf_trans(&xe3plpd_lt_trans_dp14, n_entries);
+	}
 }
 
 void intel_ddi_buf_trans_init(struct intel_encoder *encoder)
-- 
2.45.2

