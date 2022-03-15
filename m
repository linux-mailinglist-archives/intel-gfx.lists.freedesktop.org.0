Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 117014DA43A
	for <lists+intel-gfx@lfdr.de>; Tue, 15 Mar 2022 21:50:26 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 3B93010E088;
	Tue, 15 Mar 2022 20:50:24 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga06.intel.com (mga06.intel.com [134.134.136.31])
 by gabe.freedesktop.org (Postfix) with ESMTPS id A361C10E088
 for <intel-gfx@lists.freedesktop.org>; Tue, 15 Mar 2022 20:50:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1647377422; x=1678913422;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=/McvxRMPkG9NMoRlDsA/ILun9Tgumj+5yRIzop3OX2g=;
 b=DkOXK/wbfDRi7KXtj0R7AwhDk1sOP87L1Ti37zywOv6DaoCW5jZQNjva
 2ZRpHSuvqnOSqNmFfATkqP7frEG4YURvJzm+KSra+91afdQomhohOC4hY
 tPYRMFadAfb80FX0Af5q/mS1rkBLxdh9U2kt0VmpB8SnPkHeJHKrme6VK
 59Kc/+Rhm3SSdCWPMBROH9wc4cllhNvX2ZoFVMrR7DQiNT0uR0JmjypGR
 nIrt/H4yF22F7jZsSjdmLSzKDplASEfIfYki5iEZAHlkLykGZwfUDtPZi
 oI3MO09UWBrmmBq6+l5byKoZOkIc+UNuP0zJYjZqmJlWyftsR9ZxXjzBR w==;
X-IronPort-AV: E=McAfee;i="6200,9189,10286"; a="317142116"
X-IronPort-AV: E=Sophos;i="5.90,184,1643702400"; d="scan'208";a="317142116"
Received: from orsmga008.jf.intel.com ([10.7.209.65])
 by orsmga104.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 15 Mar 2022 13:50:21 -0700
X-IronPort-AV: E=Sophos;i="5.90,184,1643702400"; d="scan'208";a="557107593"
Received: from syee1-mobl.amr.corp.intel.com (HELO
 josouza-mobl2.amr.corp.intel.com) ([10.212.36.121])
 by orsmga008-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 15 Mar 2022 13:50:20 -0700
From: =?UTF-8?q?Jos=C3=A9=20Roberto=20de=20Souza?= <jose.souza@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Tue, 15 Mar 2022 13:51:22 -0700
Message-Id: <20220315205122.202701-1-jose.souza@intel.com>
X-Mailer: git-send-email 2.35.1
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH] drm/i915/display/adlp: More voltage swing table
 updates
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

A few more updates in the alderlake-P voltage swing tables.

eDP HBR3 table was the same as icelake one but now it has changes for
voltage 0 and pre-emphasis 2 line.
And DP tables also had one line change in each.

Bspec: 49291
Signed-off-by: José Roberto de Souza <jose.souza@intel.com>
---
 .../drm/i915/display/intel_ddi_buf_trans.c    | 22 +++++++++++++++----
 1 file changed, 18 insertions(+), 4 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_ddi_buf_trans.c b/drivers/gpu/drm/i915/display/intel_ddi_buf_trans.c
index 9a2b14927895e..94e64661b4fdb 100644
--- a/drivers/gpu/drm/i915/display/intel_ddi_buf_trans.c
+++ b/drivers/gpu/drm/i915/display/intel_ddi_buf_trans.c
@@ -907,7 +907,7 @@ static const union intel_ddi_buf_trans_entry _adlp_combo_phy_trans_dp_hbr[] = {
 	{ .icl = { 0xA, 0x4C, 0x3F, 0x00, 0x00 } },	/* 500   500      0.0   */
 	{ .icl = { 0xC, 0x73, 0x34, 0x00, 0x0B } },	/* 500   700      2.9   */
 	{ .icl = { 0x6, 0x7F, 0x2F, 0x00, 0x10 } },	/* 500   900      5.1   */
-	{ .icl = { 0xC, 0x73, 0x3E, 0x00, 0x01 } },	/* 650   700      0.6   */
+	{ .icl = { 0xC, 0x7C, 0x3C, 0x00, 0x03 } },	/* 650   700      0.6   */
 	{ .icl = { 0x6, 0x7F, 0x35, 0x00, 0x0A } },	/* 600   900      3.5   */
 	{ .icl = { 0x6, 0x7F, 0x3F, 0x00, 0x00 } },	/* 900   900      0.0   */
 };
@@ -921,7 +921,7 @@ static const union intel_ddi_buf_trans_entry _adlp_combo_phy_trans_dp_hbr2_hbr3[
 							/* NT mV Trans mV db    */
 	{ .icl = { 0xA, 0x35, 0x3F, 0x00, 0x00 } },	/* 350   350      0.0   */
 	{ .icl = { 0xA, 0x4F, 0x37, 0x00, 0x08 } },	/* 350   500      3.1   */
-	{ .icl = { 0xC, 0x71, 0x2F, 0x00, 0x10 } },	/* 350   700      6.0   */
+	{ .icl = { 0xC, 0x71, 0x30, 0x00, 0x0F } },	/* 350   700      6.0   */
 	{ .icl = { 0x6, 0x7F, 0x2B, 0x00, 0x14 } },	/* 350   900      8.2   */
 	{ .icl = { 0xA, 0x4C, 0x3F, 0x00, 0x00 } },	/* 500   500      0.0   */
 	{ .icl = { 0xC, 0x73, 0x34, 0x00, 0x0B } },	/* 500   700      2.9   */
@@ -945,14 +945,28 @@ static const union intel_ddi_buf_trans_entry _adlp_combo_phy_trans_edp_hbr2[] =
 	{ .icl = { 0x4, 0x7A, 0x38, 0x00, 0x07 } },	/* 350   350      0.0   */
 };
 
+static const union intel_ddi_buf_trans_entry _adlp_combo_phy_trans_dp_hbr2_edp_hbr3[] = {
+							/* NT mV Trans mV db    */
+	{ .icl = { 0xA, 0x35, 0x3F, 0x00, 0x00 } },	/* 350   350      0.0   */
+	{ .icl = { 0xA, 0x4F, 0x37, 0x00, 0x08 } },	/* 350   500      3.1   */
+	{ .icl = { 0xC, 0x71, 0x30, 0x00, 0x0f } },	/* 350   700      6.0   */
+	{ .icl = { 0x6, 0x7F, 0x2B, 0x00, 0x14 } },	/* 350   900      8.2   */
+	{ .icl = { 0xA, 0x4C, 0x3F, 0x00, 0x00 } },	/* 500   500      0.0   */
+	{ .icl = { 0xC, 0x73, 0x34, 0x00, 0x0B } },	/* 500   700      2.9   */
+	{ .icl = { 0x6, 0x7F, 0x2F, 0x00, 0x10 } },	/* 500   900      5.1   */
+	{ .icl = { 0xC, 0x6C, 0x3C, 0x00, 0x03 } },	/* 650   700      0.6   */
+	{ .icl = { 0x6, 0x7F, 0x35, 0x00, 0x0A } },	/* 600   900      3.5   */
+	{ .icl = { 0x6, 0x7F, 0x3F, 0x00, 0x00 } },	/* 900   900      0.0   */
+};
+
 static const struct intel_ddi_buf_trans adlp_combo_phy_trans_dp_hbr2_hbr3 = {
 	.entries = _adlp_combo_phy_trans_dp_hbr2_hbr3,
 	.num_entries = ARRAY_SIZE(_adlp_combo_phy_trans_dp_hbr2_hbr3),
 };
 
 static const struct intel_ddi_buf_trans adlp_combo_phy_trans_edp_hbr3 = {
-	.entries = _icl_combo_phy_trans_dp_hbr2_edp_hbr3,
-	.num_entries = ARRAY_SIZE(_icl_combo_phy_trans_dp_hbr2_edp_hbr3),
+	.entries = _adlp_combo_phy_trans_dp_hbr2_edp_hbr3,
+	.num_entries = ARRAY_SIZE(_adlp_combo_phy_trans_dp_hbr2_edp_hbr3),
 };
 
 static const struct intel_ddi_buf_trans adlp_combo_phy_trans_edp_up_to_hbr2 = {
-- 
2.35.1

