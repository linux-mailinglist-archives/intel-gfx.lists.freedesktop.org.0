Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 3A3DF7275FA
	for <lists+intel-gfx@lfdr.de>; Thu,  8 Jun 2023 06:11:04 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 562FF10E599;
	Thu,  8 Jun 2023 04:11:01 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga07.intel.com (mga07.intel.com [134.134.136.100])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 2165B10E593
 for <intel-gfx@lists.freedesktop.org>; Thu,  8 Jun 2023 04:10:58 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1686197459; x=1717733459;
 h=from:to:cc:subject:date:message-id:in-reply-to: references;
 bh=uljdyR2RHXiTyyz+U4OCqj/AUbHj+REq0jPaltsLHs4=;
 b=bXkOd7Clm95ZnAhsTDq++ff8th06mtdWeHVRq6Hd8Sy0v7BBp9rQV9Tg
 H38m08N8rOGLwumKbxHj0AjNc3/Cf2Fh/al5xOx8fs7Ud4nGN3AGbe2bl
 e429ZhV91fQGiD0955xk0Jme5MDrdWbkZOyg6jTgCJONkhmKKHdCEOClp
 6hgjiSKyauHS9vayOdP6WkjK5yx3aSTQAlmZZKkx/JkPbU28pA/fJK6o2
 AL7rFYc8XCuNmz2aXJ803W7WyoLjH//NuCBzs0bRrrOdy6oLyHf4N6gVQ
 Dr20L6cTH/kQMC/TdaIxkidfACpACmAhNNO1yFSc25w2aCHGxt1Ci6qZs w==;
X-IronPort-AV: E=McAfee;i="6600,9927,10734"; a="423041375"
X-IronPort-AV: E=Sophos;i="6.00,226,1681196400"; d="scan'208";a="423041375"
Received: from orsmga003.jf.intel.com ([10.7.209.27])
 by orsmga105.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 07 Jun 2023 21:10:58 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10734"; a="660215146"
X-IronPort-AV: E=Sophos;i="6.00,226,1681196400"; d="scan'208";a="660215146"
Received: from shawnle1-build-machine.itwn.intel.com ([10.5.253.78])
 by orsmga003.jf.intel.com with ESMTP; 07 Jun 2023 21:10:56 -0700
From: Lee Shawn C <shawn.c.lee@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Thu,  8 Jun 2023 12:09:44 +0800
Message-Id: <20230608040944.7874-1-shawn.c.lee@intel.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20230606104306.32001-1-shawn.c.lee@intel.com>
References: <20230606104306.32001-1-shawn.c.lee@intel.com>
Subject: [Intel-gfx] [v2] drm/i915/mtl: Add new vswing table for C20 phy to
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

Bspec: 74104
Signed-off-by: Lee Shawn C <shawn.c.lee@intel.com>
Cc: Mika Kahola <mika.kahola@intel.com>
Cc: Clint Taylor <Clinton.A.Taylor@intel.com>
Cc: Radhakrishna Sripada <radhakrishna.sripada@intel.com>
Cc: Uma Shankar <uma.shankar@intel.com>
Reviewed-by: Mika Kahola <mika.kahola@intel.com>
Reviewed-by: Radhakrishna Sripada <radhakrishna.sripada@intel.com>
---
 .../drm/i915/display/intel_ddi_buf_trans.c    | 25 +++++++++++++++++--
 1 file changed, 23 insertions(+), 2 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_ddi_buf_trans.c b/drivers/gpu/drm/i915/display/intel_ddi_buf_trans.c
index b7d20485bde5..a6276a9ba61c 100644
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
@@ -1090,6 +1104,11 @@ static const struct intel_ddi_buf_trans mtl_c20_trans_hdmi = {
 	.hdmi_default_entry = 0,
 };
 
+static const struct intel_ddi_buf_trans mtl_c20_trans_dp14 = {
+	.entries = _mtl_c20_trans_dp14,
+	.num_entries = ARRAY_SIZE(_mtl_c20_trans_dp14),
+};
+
 static const struct intel_ddi_buf_trans mtl_c20_trans_uhbr = {
 	.entries = _mtl_c20_trans_uhbr,
 	.num_entries = ARRAY_SIZE(_mtl_c20_trans_uhbr),
@@ -1678,8 +1697,10 @@ mtl_get_cx0_buf_trans(struct intel_encoder *encoder,
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

