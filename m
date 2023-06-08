Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 19286727703
	for <lists+intel-gfx@lfdr.de>; Thu,  8 Jun 2023 08:03:17 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id AC0A910E58A;
	Thu,  8 Jun 2023 06:03:14 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga12.intel.com (mga12.intel.com [192.55.52.136])
 by gabe.freedesktop.org (Postfix) with ESMTPS id DCC2810E58A
 for <intel-gfx@lists.freedesktop.org>; Thu,  8 Jun 2023 06:03:12 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1686204192; x=1717740192;
 h=from:to:cc:subject:date:message-id:in-reply-to: references;
 bh=X7VqFpBCeryjeeUm69CgrGDg+8cXsxDgbvIYCNDYl6o=;
 b=mL0DuLjKOnvIrxHUZ9B8eZvGaU3kTHO8M4aCmHF6gMER1+jZU7jmxYAl
 o2MBBNIUVboQOkIqz8buYVzJEgZUF2MmWiiBPZ5NYECqDzRzQQnvrkD6d
 gv8hDCDjSbgislqJtPXmAs7SKKq4BXlV8ckOocSMEc7J/FIC2v2ZAGb5d
 rnFW4ec8rDe57WWlJuosTX6gtBtVJqxwGI1sKruEJzYkkOfhcpr8ztMzs
 iv2+39gXeUu8SWmZOpqtjYPc856ATAA2l/MSUjfYqIrCfqWnntwHnoFNf
 JJGajMtKOih1oYkjhOXrHI5fZRcgXYT2Z0Mq6uM3W4GBdchOsfMYitB9W A==;
X-IronPort-AV: E=McAfee;i="6600,9927,10734"; a="336841953"
X-IronPort-AV: E=Sophos;i="6.00,226,1681196400"; d="scan'208";a="336841953"
Received: from fmsmga007.fm.intel.com ([10.253.24.52])
 by fmsmga106.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 07 Jun 2023 23:03:10 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10734"; a="712980498"
X-IronPort-AV: E=Sophos;i="6.00,226,1681196400"; d="scan'208";a="712980498"
Received: from shawnle1-build-machine.itwn.intel.com ([10.5.253.78])
 by fmsmga007.fm.intel.com with ESMTP; 07 Jun 2023 23:03:09 -0700
From: Lee Shawn C <shawn.c.lee@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Thu,  8 Jun 2023 14:01:58 +0800
Message-Id: <20230608060158.27907-1-shawn.c.lee@intel.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20230606104306.32001-1-shawn.c.lee@intel.com>
References: <20230606104306.32001-1-shawn.c.lee@intel.com>
Subject: [Intel-gfx] [v3] drm/i915/mtl: Add new vswing table for C20 phy to
 support DP 1.4
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

Add vswing table to support DP 1.4 for C20 phy.

v2: rename mtl_c10_trans
v3: add default_entry into mtl_c20_trans_dp14

Bspec: 74104
Signed-off-by: Lee Shawn C <shawn.c.lee@intel.com>
Cc: Mika Kahola <mika.kahola@intel.com>
Cc: Clint Taylor <Clinton.A.Taylor@intel.com>
Cc: Radhakrishna Sripada <radhakrishna.sripada@intel.com>
Cc: Uma Shankar <uma.shankar@intel.com>
Reviewed-by: Mika Kahola <mika.kahola@intel.com>
Reviewed-by: Radhakrishna Sripada <radhakrishna.sripada@intel.com>
---
 .../drm/i915/display/intel_ddi_buf_trans.c    | 26 +++++++++++++++++--
 1 file changed, 24 insertions(+), 2 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_ddi_buf_trans.c b/drivers/gpu/drm/i915/display/intel_ddi_buf_trans.c
index b7d20485bde5..d7301f13c5cd 100644
--- a/drivers/gpu/drm/i915/display/intel_ddi_buf_trans.c
+++ b/drivers/gpu/drm/i915/display/intel_ddi_buf_trans.c
@@ -1049,12 +1049,26 @@ static const union intel_ddi_buf_trans_entry _mtl_c10_trans_dp14[] = {
 	{ .snps = { 62, 0, 0  } },      /* preset 9 */
 };
 
-static const struct intel_ddi_buf_trans mtl_cx0_trans = {
+static const struct intel_ddi_buf_trans mtl_cx0_trans_dp14 = {
 	.entries = _mtl_c10_trans_dp14,
 	.num_entries = ARRAY_SIZE(_mtl_c10_trans_dp14),
 	.hdmi_default_entry = ARRAY_SIZE(_mtl_c10_trans_dp14) - 1,
 };
 
+/* DP1.4 */
+static const union intel_ddi_buf_trans_entry _mtl_c20_trans_dp14[] = {
+	{ .snps = { 20, 0, 0  } },      /* preset 0 */
+	{ .snps = { 24, 0, 4  } },      /* preset 1 */
+	{ .snps = { 30, 0, 9  } },      /* preset 2 */
+	{ .snps = { 34, 0, 14 } },      /* preset 3 */
+	{ .snps = { 29, 0, 0  } },      /* preset 4 */
+	{ .snps = { 34, 0, 5  } },      /* preset 5 */
+	{ .snps = { 38, 0, 10 } },      /* preset 6 */
+	{ .snps = { 36, 0, 0  } },      /* preset 7 */
+	{ .snps = { 40, 0, 6  } },      /* preset 8 */
+	{ .snps = { 48, 0, 0  } },      /* preset 9 */
+};
+
 /* DP2.0 */
 static const union intel_ddi_buf_trans_entry _mtl_c20_trans_uhbr[] = {
 	{ .snps = { 48, 0, 0 } },       /* preset 0 */
@@ -1090,6 +1104,12 @@ static const struct intel_ddi_buf_trans mtl_c20_trans_hdmi = {
 	.hdmi_default_entry = 0,
 };
 
+static const struct intel_ddi_buf_trans mtl_c20_trans_dp14 = {
+	.entries = _mtl_c20_trans_dp14,
+	.num_entries = ARRAY_SIZE(_mtl_c20_trans_dp14),
+	.hdmi_default_entry = ARRAY_SIZE(_mtl_c20_trans_dp14) - 1,
+};
+
 static const struct intel_ddi_buf_trans mtl_c20_trans_uhbr = {
 	.entries = _mtl_c20_trans_uhbr,
 	.num_entries = ARRAY_SIZE(_mtl_c20_trans_uhbr),
@@ -1678,8 +1698,10 @@ mtl_get_cx0_buf_trans(struct intel_encoder *encoder,
 		return intel_get_buf_trans(&mtl_c20_trans_uhbr, n_entries);
 	else if (intel_crtc_has_type(crtc_state, INTEL_OUTPUT_HDMI) && !(intel_is_c10phy(i915, phy)))
 		return intel_get_buf_trans(&mtl_c20_trans_hdmi, n_entries);
+	else if (!intel_is_c10phy(i915, phy))
+		return intel_get_buf_trans(&mtl_c20_trans_dp14, n_entries);
 	else
-		return intel_get_buf_trans(&mtl_cx0_trans, n_entries);
+		return intel_get_buf_trans(&mtl_cx0_trans_dp14, n_entries);
 }
 
 void intel_ddi_buf_trans_init(struct intel_encoder *encoder)
-- 
2.17.1

