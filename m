Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id C457C4D8808
	for <lists+intel-gfx@lfdr.de>; Mon, 14 Mar 2022 16:27:00 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 0BA7F10E9D0;
	Mon, 14 Mar 2022 15:26:57 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 1E1D410E9D0
 for <intel-gfx@lists.freedesktop.org>; Mon, 14 Mar 2022 15:26:56 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1647271616; x=1678807616;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=5rtgawwpZKL5GQN5e8EO40iIau9sto9cnYmfe5fliP0=;
 b=Gj9Z0NK1MiQDFhSKWGbGDld3snHZJsF5afxuKV3HyPeMbvMRRXx/1uvE
 KUkD7jPIntL+zsFPlBsZlnl1kB/Llsm4hAv8n7Gnx18dWixza1KLNqsAO
 TL/F040b4KdlDT9zNti+pbbQfen1N15sNJ9z4nLEBEvlWsXlq7XZ6CppX
 W5Y6niVGWkcmrTeyXUs7c58e5bXVYn8KE6xFDcN23v+OxHJLX+Od5befv
 O/MBcQTuJoA59Lu5TpBIZCn14xeqRc9rudB8IBav/DfXRJX5J4Oj/A/Ph
 WuFfRJSGEZlqCA/CDTCxo/K0TFGsn1TaWeq6TjPNdto92WSLiOtGutMGD A==;
X-IronPort-AV: E=McAfee;i="6200,9189,10285"; a="243505648"
X-IronPort-AV: E=Sophos;i="5.90,181,1643702400"; d="scan'208";a="243505648"
Received: from fmsmga007.fm.intel.com ([10.253.24.52])
 by orsmga101.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 14 Mar 2022 08:26:55 -0700
X-IronPort-AV: E=Sophos;i="5.90,181,1643702400"; d="scan'208";a="549245126"
Received: from josouza-mobl2.fso.intel.com (HELO josouza-mobl2.intel.com)
 ([10.230.19.131])
 by fmsmga007-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 14 Mar 2022 08:26:54 -0700
From: =?UTF-8?q?Jos=C3=A9=20Roberto=20de=20Souza?= <jose.souza@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Mon, 14 Mar 2022 08:27:53 -0700
Message-Id: <20220314152753.85081-1-jose.souza@intel.com>
X-Mailer: git-send-email 2.35.1
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH] drm/i915/display/adlp: Update eDP voltage swing
 table
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

Up to now alderlake-p was using the same eDP voltage swing table for
frequencies up to HBR2 as icelake but now it has its own table.

BSpec: 49291
Cc: Clinton A Taylor <clinton.a.taylor@intel.com>
Signed-off-by: José Roberto de Souza <jose.souza@intel.com>
---
 .../gpu/drm/i915/display/intel_ddi_buf_trans.c | 18 ++++++++++++++++--
 1 file changed, 16 insertions(+), 2 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_ddi_buf_trans.c b/drivers/gpu/drm/i915/display/intel_ddi_buf_trans.c
index 934a9f9e7dabb..9a2b14927895e 100644
--- a/drivers/gpu/drm/i915/display/intel_ddi_buf_trans.c
+++ b/drivers/gpu/drm/i915/display/intel_ddi_buf_trans.c
@@ -931,6 +931,20 @@ static const union intel_ddi_buf_trans_entry _adlp_combo_phy_trans_dp_hbr2_hbr3[
 	{ .icl = { 0x6, 0x7F, 0x3F, 0x00, 0x00 } },	/* 900   900      0.0   */
 };
 
+static const union intel_ddi_buf_trans_entry _adlp_combo_phy_trans_edp_hbr2[] = {
+							/* NT mV Trans mV db    */
+	{ .icl = { 0x4, 0x50, 0x38, 0x00, 0x07 } },	/* 200   200      0.0   */
+	{ .icl = { 0x4, 0x58, 0x35, 0x00, 0x0A } },	/* 200   250      1.9   */
+	{ .icl = { 0x4, 0x60, 0x34, 0x00, 0x0B } },	/* 200   300      3.5   */
+	{ .icl = { 0x4, 0x6A, 0x32, 0x00, 0x0D } },	/* 200   350      4.9   */
+	{ .icl = { 0x4, 0x5E, 0x38, 0x00, 0x07 } },	/* 250   250      0.0   */
+	{ .icl = { 0x4, 0x61, 0x36, 0x00, 0x09 } },	/* 250   300      1.6   */
+	{ .icl = { 0x4, 0x6B, 0x34, 0x00, 0x0B } },	/* 250   350      2.9   */
+	{ .icl = { 0x4, 0x69, 0x39, 0x00, 0x06 } },	/* 300   300      0.0   */
+	{ .icl = { 0x4, 0x73, 0x37, 0x00, 0x08 } },	/* 300   350      1.3   */
+	{ .icl = { 0x4, 0x7A, 0x38, 0x00, 0x07 } },	/* 350   350      0.0   */
+};
+
 static const struct intel_ddi_buf_trans adlp_combo_phy_trans_dp_hbr2_hbr3 = {
 	.entries = _adlp_combo_phy_trans_dp_hbr2_hbr3,
 	.num_entries = ARRAY_SIZE(_adlp_combo_phy_trans_dp_hbr2_hbr3),
@@ -942,8 +956,8 @@ static const struct intel_ddi_buf_trans adlp_combo_phy_trans_edp_hbr3 = {
 };
 
 static const struct intel_ddi_buf_trans adlp_combo_phy_trans_edp_up_to_hbr2 = {
-	.entries = _icl_combo_phy_trans_edp_hbr2,
-	.num_entries = ARRAY_SIZE(_icl_combo_phy_trans_edp_hbr2),
+	.entries = _adlp_combo_phy_trans_edp_hbr2,
+	.num_entries = ARRAY_SIZE(_adlp_combo_phy_trans_edp_hbr2),
 };
 
 static const union intel_ddi_buf_trans_entry _adlp_dkl_phy_trans_dp_hbr[] = {
-- 
2.35.1

