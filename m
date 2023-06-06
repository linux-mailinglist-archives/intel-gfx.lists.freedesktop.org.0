Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 94693723FF1
	for <lists+intel-gfx@lfdr.de>; Tue,  6 Jun 2023 12:44:23 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 10E6010E234;
	Tue,  6 Jun 2023 10:44:22 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga17.intel.com (mga17.intel.com [192.55.52.151])
 by gabe.freedesktop.org (Postfix) with ESMTPS id C042710E234
 for <intel-gfx@lists.freedesktop.org>; Tue,  6 Jun 2023 10:44:19 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1686048259; x=1717584259;
 h=from:to:cc:subject:date:message-id;
 bh=obh9VfUjY/c0g7SH0NXn7CERkSrJ3vlDOZVFJWw81zM=;
 b=PkQIvxqBm3UbHZ0lYmyT+gBiBm9j1tGsPPnssudhQQFx4gyQ76+EIYCR
 8K4Dg+8cymyLFLRJrfZScPGLC2j2DvIsoUkPykiA/G5PT8AL69bWLo68h
 k0WMrorbwgKewuelb9bGhy5kCk2eBi/RNtryAJaaOKq3bfZgHvGFFPpjH
 sFVS+YRKeq9QSmL+tEbOQD5YmGgFDpeXfpc6TN9wRS7MvxuHV0kxMBBW2
 IFx9mQUc+Mki+jKq5z9F5waDrKEdqj6IqnaNDrknvaNilLXrdvbmrUW3w
 /JxOlxMJ49GVz4t+DPXNHwHAeJHTS0mIME45M4319hDo1EqBE8EopC009 A==;
X-IronPort-AV: E=McAfee;i="6600,9927,10732"; a="336987175"
X-IronPort-AV: E=Sophos;i="6.00,221,1681196400"; d="scan'208";a="336987175"
Received: from fmsmga004.fm.intel.com ([10.253.24.48])
 by fmsmga107.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 06 Jun 2023 03:44:19 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10732"; a="778942996"
X-IronPort-AV: E=Sophos;i="6.00,221,1681196400"; d="scan'208";a="778942996"
Received: from shawnle1-build-machine.itwn.intel.com ([10.5.253.78])
 by fmsmga004.fm.intel.com with ESMTP; 06 Jun 2023 03:44:18 -0700
From: Lee Shawn C <shawn.c.lee@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Tue,  6 Jun 2023 18:43:06 +0800
Message-Id: <20230606104306.32001-1-shawn.c.lee@intel.com>
X-Mailer: git-send-email 2.17.1
Subject: [Intel-gfx] [PATCH] drm/i915/mtl: Add new vswing table for C20 phy
 to support DP 1.4
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

Bspec: 74104
Signed-off-by: Lee Shawn C <shawn.c.lee@intel.com>
Cc: Mika Kahola <mika.kahola@intel.com>
Cc: Clint Taylor <Clinton.A.Taylor@intel.com>
Cc: Radhakrishna Sripada <radhakrishna.sripada@intel.com>
Cc: Uma Shankar <uma.shankar@intel.com>
---
 .../drm/i915/display/intel_ddi_buf_trans.c    | 21 +++++++++++++++++++
 1 file changed, 21 insertions(+)

diff --git a/drivers/gpu/drm/i915/display/intel_ddi_buf_trans.c b/drivers/gpu/drm/i915/display/intel_ddi_buf_trans.c
index b7d20485bde5..6a1507515119 100644
--- a/drivers/gpu/drm/i915/display/intel_ddi_buf_trans.c
+++ b/drivers/gpu/drm/i915/display/intel_ddi_buf_trans.c
@@ -1055,6 +1055,20 @@ static const struct intel_ddi_buf_trans mtl_cx0_trans = {
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
@@ -1678,6 +1697,8 @@ mtl_get_cx0_buf_trans(struct intel_encoder *encoder,
 		return intel_get_buf_trans(&mtl_c20_trans_uhbr, n_entries);
 	else if (intel_crtc_has_type(crtc_state, INTEL_OUTPUT_HDMI) && !(intel_is_c10phy(i915, phy)))
 		return intel_get_buf_trans(&mtl_c20_trans_hdmi, n_entries);
+	else if (!intel_is_c10phy(i915, phy))
+		return intel_get_buf_trans(&mtl_c20_trans_dp14, n_entries);
 	else
 		return intel_get_buf_trans(&mtl_cx0_trans, n_entries);
 }
-- 
2.31.1

