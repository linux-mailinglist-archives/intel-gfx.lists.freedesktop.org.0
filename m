Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 5198EC05810
	for <lists+intel-gfx@lfdr.de>; Fri, 24 Oct 2025 12:08:21 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 1C5CB10EA3A;
	Fri, 24 Oct 2025 10:08:17 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="k3fRtrNl";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.12])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 5DF8010EA36;
 Fri, 24 Oct 2025 10:08:11 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1761300491; x=1792836491;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=lXErV8h5Z9kB/cMMWCpuw5wu0Qf+4aeNxOHiE12B8cw=;
 b=k3fRtrNlmuqU9kMaba84I7gJ8Yh+zY8UNpZmfoKoURBJYeJfoasnr+/p
 /iFjG6d/Us4o0jp/u6grNIT9Fj6zpY7UzoC2ZNBsejueQJgqDN6nCBqIO
 TsUecSKsnjdsMZTjjHC8DY/1SjsScvAVFKnyVJQSpU/GQOk8TiorbVJ2z
 Ibbgr5k9VphxO3ewvkSZpIKBImbq7tHm5V99QhpWwEm2luM81c96tRgN2
 7JEvvH+OviYtrzjD7h4yFQBuHv6RvBGZzv1vkrb2DzmWEzccBof0D6sSk
 I3nMckG2Q5OIjq2VNrj0iRH5DhGyfSR+73bJ/vCJv16hD7gvcwp8hNh4U A==;
X-CSE-ConnectionGUID: 2LIchZYdTaC3kGxYZ5DRzg==
X-CSE-MsgGUID: 1zS93iAZQSeVkI0m+0bptQ==
X-IronPort-AV: E=McAfee;i="6800,10657,11586"; a="67346844"
X-IronPort-AV: E=Sophos;i="6.19,252,1754982000"; d="scan'208";a="67346844"
Received: from fmviesa002.fm.intel.com ([10.60.135.142])
 by fmvoesa106.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 24 Oct 2025 03:08:11 -0700
X-CSE-ConnectionGUID: 0c26yORIQMa0VTfhOFRI3g==
X-CSE-MsgGUID: Yi2JBLQPTjyX8LIo5EdYmA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.19,252,1754982000"; d="scan'208";a="208039301"
Received: from kandpal-x299-ud4-pro.iind.intel.com ([10.190.239.10])
 by fmviesa002.fm.intel.com with ESMTP; 24 Oct 2025 03:08:08 -0700
From: Suraj Kandpal <suraj.kandpal@intel.com>
To: intel-xe@lists.freedesktop.org,
	intel-gfx@lists.freedesktop.org
Cc: ankit.k.nautiyal@intel.com, arun.r.murthy@intel.com, uma.shankar@intel.com,
 gustavo.sousa@intel.com, lucas.demarchi@intel.com,
 Suraj Kandpal <suraj.kandpal@intel.com>
Subject: [PATCH v2 18/26] drm/i915/ddi: Define LT Phy Swing tables
Date: Fri, 24 Oct 2025 15:37:04 +0530
Message-Id: <20251024100712.3776261-19-suraj.kandpal@intel.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20251024100712.3776261-1-suraj.kandpal@intel.com>
References: <20251024100712.3776261-1-suraj.kandpal@intel.com>
MIME-Version: 1.0
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

Define and initialize LT Phy Swing tables for DP 1.4, 2.1 and eDp.
HDMI TMDS is not needed since LT Phy H/w handles that.

Bspec: 74493
Signed-off-by: Suraj Kandpal <suraj.kandpal@intel.com>
Reviewed-by: Arun R Murthy <arun.r.murthy@intel.com>
---
 .../drm/i915/display/intel_ddi_buf_trans.c    | 81 ++++++++++++++++++-
 .../drm/i915/display/intel_ddi_buf_trans.h    |  9 +++
 2 files changed, 89 insertions(+), 1 deletion(-)

diff --git a/drivers/gpu/drm/i915/display/intel_ddi_buf_trans.c b/drivers/gpu/drm/i915/display/intel_ddi_buf_trans.c
index a238be5bc455..f39e690e9ed2 100644
--- a/drivers/gpu/drm/i915/display/intel_ddi_buf_trans.c
+++ b/drivers/gpu/drm/i915/display/intel_ddi_buf_trans.c
@@ -10,6 +10,7 @@
 #include "intel_de.h"
 #include "intel_display_types.h"
 #include "intel_dp.h"
+#include "intel_lt_phy.h"
 
 /* HDMI/DVI modes ignore everything but the last 2 items. So we share
  * them for both DP and FDI transports, allowing those ports to
@@ -1115,6 +1116,69 @@ static const struct intel_ddi_buf_trans mtl_c20_trans_uhbr = {
 	.num_entries = ARRAY_SIZE(_mtl_c20_trans_uhbr),
 };
 
+/* DP1.4 */
+static const union intel_ddi_buf_trans_entry _xe3plpd_lt_trans_dp14[] = {
+	{ .lt = { 1, 0, 0, 21, 0  } },
+	{ .lt = { 1, 1, 0, 24, 3  } },
+	{ .lt = { 1, 2, 0, 28, 7  } },
+	{ .lt = { 0, 3, 0, 35, 13 } },
+	{ .lt = { 1, 1, 0, 27, 0  } },
+	{ .lt = { 1, 2, 0, 31, 4  } },
+	{ .lt = { 0, 3, 0, 39, 9  } },
+	{ .lt = { 1, 2, 0, 35, 0  } },
+	{ .lt = { 0, 3, 0, 41, 7  } },
+	{ .lt = { 0, 3, 0, 48, 0  } },
+};
+
+/* DP2.1 */
+static const union intel_ddi_buf_trans_entry _xe3plpd_lt_trans_uhbr[] = {
+	{ .lt = { 0, 0, 0, 48, 0  } },
+	{ .lt = { 0, 0, 0, 43, 5  } },
+	{ .lt = { 0, 0, 0, 40, 8  } },
+	{ .lt = { 0, 0, 0, 37, 11 } },
+	{ .lt = { 0, 0, 0, 33, 15 } },
+	{ .lt = { 0, 0, 2, 46, 0  } },
+	{ .lt = { 0, 0, 2, 42, 4  } },
+	{ .lt = { 0, 0, 2, 38, 8  } },
+	{ .lt = { 0, 0, 2, 35, 11 } },
+	{ .lt = { 0, 0, 2, 33, 13 } },
+	{ .lt = { 0, 0, 4, 44, 0  } },
+	{ .lt = { 0, 0, 4, 40, 4  } },
+	{ .lt = { 0, 0, 4, 37, 7  } },
+	{ .lt = { 0, 0, 4, 33, 11 } },
+	{ .lt = { 0, 0, 8, 40, 0  } },
+	{ .lt = { 1, 0, 2, 26, 2  } },
+};
+
+/* eDp */
+static const union intel_ddi_buf_trans_entry _xe3plpd_lt_trans_edp[] = {
+	{ .lt = { 1, 0, 0, 12, 0 } },
+	{ .lt = { 1, 1, 0, 13, 1 } },
+	{ .lt = { 1, 2, 0, 15, 3 } },
+	{ .lt = { 1, 3, 0, 19, 7 } },
+	{ .lt = { 1, 1, 0, 14, 0 } },
+	{ .lt = { 1, 2, 0, 16, 2 } },
+	{ .lt = { 1, 3, 0, 21, 5 } },
+	{ .lt = { 1, 2, 0, 18, 0 } },
+	{ .lt = { 1, 3, 0, 22, 4 } },
+	{ .lt = { 1, 3, 0, 26, 0 } },
+};
+
+static const struct intel_ddi_buf_trans xe3plpd_lt_trans_dp14 = {
+	.entries = _xe3plpd_lt_trans_dp14,
+	.num_entries = ARRAY_SIZE(_xe3plpd_lt_trans_dp14),
+};
+
+static const struct intel_ddi_buf_trans xe3plpd_lt_trans_uhbr = {
+	.entries = _xe3plpd_lt_trans_uhbr,
+	.num_entries = ARRAY_SIZE(_xe3plpd_lt_trans_uhbr),
+};
+
+static const struct intel_ddi_buf_trans xe3plpd_lt_trans_edp = {
+	.entries = _xe3plpd_lt_trans_edp,
+	.num_entries = ARRAY_SIZE(_xe3plpd_lt_trans_edp),
+};
+
 bool is_hobl_buf_trans(const struct intel_ddi_buf_trans *table)
 {
 	return table == &tgl_combo_phy_trans_edp_hbr2_hobl;
@@ -1707,11 +1771,26 @@ mtl_get_c20_buf_trans(struct intel_encoder *encoder,
 		return intel_get_buf_trans(&mtl_c20_trans_dp14, n_entries);
 }
 
+static const struct intel_ddi_buf_trans *
+xe3plpd_get_lt_buf_trans(struct intel_encoder *encoder,
+			 const struct intel_crtc_state *crtc_state,
+			 int *n_entries)
+{
+	if (intel_crtc_has_dp_encoder(crtc_state) && intel_dp_is_uhbr(crtc_state))
+		return intel_get_buf_trans(&xe3plpd_lt_trans_uhbr, n_entries);
+	else if (intel_crtc_has_type(crtc_state, INTEL_OUTPUT_EDP))
+		return intel_get_buf_trans(&xe3plpd_lt_trans_edp, n_entries);
+	else
+		return intel_get_buf_trans(&xe3plpd_lt_trans_dp14, n_entries);
+}
+
 void intel_ddi_buf_trans_init(struct intel_encoder *encoder)
 {
 	struct intel_display *display = to_intel_display(encoder);
 
-	if (DISPLAY_VER(display) >= 14) {
+	if (HAS_LT_PHY(display)) {
+		encoder->get_buf_trans = xe3plpd_get_lt_buf_trans;
+	} else if (DISPLAY_VER(display) >= 14) {
 		if (intel_encoder_is_c10phy(encoder))
 			encoder->get_buf_trans = mtl_get_c10_buf_trans;
 		else
diff --git a/drivers/gpu/drm/i915/display/intel_ddi_buf_trans.h b/drivers/gpu/drm/i915/display/intel_ddi_buf_trans.h
index 29a190390192..cec332090a20 100644
--- a/drivers/gpu/drm/i915/display/intel_ddi_buf_trans.h
+++ b/drivers/gpu/drm/i915/display/intel_ddi_buf_trans.h
@@ -50,6 +50,14 @@ struct dg2_snps_phy_buf_trans {
 	u8 post_cursor;
 };
 
+struct xe3plpd_lt_phy_buf_trans {
+	u8 txswing;
+	u8 txswing_level;
+	u8 pre_cursor;
+	u8 main_cursor;
+	u8 post_cursor;
+};
+
 union intel_ddi_buf_trans_entry {
 	struct hsw_ddi_buf_trans hsw;
 	struct bxt_ddi_buf_trans bxt;
@@ -57,6 +65,7 @@ union intel_ddi_buf_trans_entry {
 	struct icl_mg_phy_ddi_buf_trans mg;
 	struct tgl_dkl_phy_ddi_buf_trans dkl;
 	struct dg2_snps_phy_buf_trans snps;
+	struct xe3plpd_lt_phy_buf_trans lt;
 };
 
 struct intel_ddi_buf_trans {
-- 
2.34.1

