Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id ABD07728C52
	for <lists+intel-gfx@lfdr.de>; Fri,  9 Jun 2023 02:21:59 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 6D93410E61C;
	Fri,  9 Jun 2023 00:21:56 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga03.intel.com (mga03.intel.com [134.134.136.65])
 by gabe.freedesktop.org (Postfix) with ESMTPS id AD1D310E61C
 for <intel-gfx@lists.freedesktop.org>; Fri,  9 Jun 2023 00:21:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1686270113; x=1717806113;
 h=from:to:cc:subject:date:message-id:in-reply-to: references;
 bh=f4O2kubyXuGTHMnoBjbUcmdDU4hBQ2dIPB9NhAfkFCg=;
 b=Dx/rLjK18WaKcJfHAl7k4DOrKobNQdVeiujtukVdEGCQ4f2XTuYYh2I6
 ExU/6Qtpihx09mvvtgI1cUd1VLKJZ5DP4/2fXhHROLMXpQetzGQ63ngKk
 7v2m/KE22qZVEo+fUV7w9rfb/5ygMhyHV88dzJ0mcwE6rewdqiOt74ZPG
 83xC++KfyVtU908XrJfDRsekiutIajUasyZNQ1l9YBvdMP+bxE+fRpiRY
 FkqIwo0erHoSjcT41AOYmUkwcDJ2uJhiFrzf6hruO3w2Q2HNpvY4CUVO1
 okzZRCZjsCrzc7YQE8kG6xac2t8AL0cehuSzRCFgiQaP0X4o5B31dSDsQ w==;
X-IronPort-AV: E=McAfee;i="6600,9927,10735"; a="360828148"
X-IronPort-AV: E=Sophos;i="6.00,228,1681196400"; d="scan'208";a="360828148"
Received: from orsmga004.jf.intel.com ([10.7.209.38])
 by orsmga103.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 08 Jun 2023 17:21:52 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10735"; a="834406655"
X-IronPort-AV: E=Sophos;i="6.00,228,1681196400"; d="scan'208";a="834406655"
Received: from shawnle1-build-machine.itwn.intel.com ([10.5.253.78])
 by orsmga004.jf.intel.com with ESMTP; 08 Jun 2023 17:21:51 -0700
From: Lee Shawn C <shawn.c.lee@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Fri,  9 Jun 2023 08:20:38 +0800
Message-Id: <20230609002038.11516-1-shawn.c.lee@intel.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20230606104306.32001-1-shawn.c.lee@intel.com>
References: <20230606104306.32001-1-shawn.c.lee@intel.com>
Subject: [Intel-gfx] [v4] drm/i915/mtl: Add new vswing table for C20 phy to
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
v3: add default_entry for mtl_c20_trans_dp14
v4: rename mtl_cx0_trans_dp14

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
index b7d20485bde5..8d2932d079cf 100644
--- a/drivers/gpu/drm/i915/display/intel_ddi_buf_trans.c
+++ b/drivers/gpu/drm/i915/display/intel_ddi_buf_trans.c
@@ -1049,12 +1049,26 @@ static const union intel_ddi_buf_trans_entry _mtl_c10_trans_dp14[] = {
 	{ .snps = { 62, 0, 0  } },      /* preset 9 */
 };
 
-static const struct intel_ddi_buf_trans mtl_cx0_trans = {
+static const struct intel_ddi_buf_trans mtl_c10_trans_dp14 = {
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
+		return intel_get_buf_trans(&mtl_c10_trans_dp14, n_entries);
 }
 
 void intel_ddi_buf_trans_init(struct intel_encoder *encoder)
-- 
2.17.1

