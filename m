Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id B36EA3D341B
	for <lists+intel-gfx@lfdr.de>; Fri, 23 Jul 2021 07:34:14 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id F22076FA46;
	Fri, 23 Jul 2021 05:34:10 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 195C26FA44
 for <intel-gfx@lists.freedesktop.org>; Fri, 23 Jul 2021 05:34:10 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6200,9189,10053"; a="233648413"
X-IronPort-AV: E=Sophos;i="5.84,263,1620716400"; d="scan'208";a="233648413"
Received: from fmsmga008.fm.intel.com ([10.253.24.58])
 by fmsmga101.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 22 Jul 2021 22:34:09 -0700
X-IronPort-AV: E=Sophos;i="5.84,263,1620716400"; d="scan'208";a="470991799"
Received: from mdroper-desk1.fm.intel.com ([10.1.27.134])
 by fmsmga008-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 22 Jul 2021 22:34:09 -0700
From: Matt Roper <matthew.d.roper@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Thu, 22 Jul 2021 22:34:00 -0700
Message-Id: <20210723053401.1269829-2-matthew.d.roper@intel.com>
X-Mailer: git-send-email 2.25.4
In-Reply-To: <20210723053401.1269829-1-matthew.d.roper@intel.com>
References: <20210723053401.1269829-1-matthew.d.roper@intel.com>
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH 1/2] drm/i915/adl_s: Update ddi buf translation
 tables
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

The hardware team updates the translation tables on 2021-06-23.  Let's
update the driver accordingly.

Bspec: 49291
Signed-off-by: Matt Roper <matthew.d.roper@intel.com>
---
 .../drm/i915/display/intel_ddi_buf_trans.c    | 44 +++++++++----------
 1 file changed, 22 insertions(+), 22 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_ddi_buf_trans.c b/drivers/gpu/drm/i915/display/intel_ddi_buf_trans.c
index 63b1ae830d9a..cdd0df467287 100644
--- a/drivers/gpu/drm/i915/display/intel_ddi_buf_trans.c
+++ b/drivers/gpu/drm/i915/display/intel_ddi_buf_trans.c
@@ -1004,13 +1004,13 @@ static const union intel_ddi_buf_trans_entry _adls_combo_phy_ddi_translations_dp
 							/* NT mV Trans mV db    */
 	{ .cnl = { 0xA, 0x35, 0x3F, 0x00, 0x00 } },	/* 350   350      0.0   */
 	{ .cnl = { 0xA, 0x4F, 0x37, 0x00, 0x08 } },	/* 350   500      3.1   */
-	{ .cnl = { 0xC, 0x63, 0x30, 0x00, 0x0F } },	/* 350   700      6.0   */
-	{ .cnl = { 0x6, 0x7F, 0x2B, 0x00, 0x14 } },	/* 350   900      8.2   */
+	{ .cnl = { 0xC, 0x63, 0x31, 0x00, 0x0E } },	/* 350   700      6.0   */
+	{ .cnl = { 0x6, 0x7F, 0x2C, 0x00, 0x13 } },	/* 350   900      8.2   */
 	{ .cnl = { 0xA, 0x47, 0x3F, 0x00, 0x00 } },	/* 500   500      0.0   */
 	{ .cnl = { 0xC, 0x63, 0x37, 0x00, 0x08 } },	/* 500   700      2.9   */
-	{ .cnl = { 0x6, 0x7F, 0x31, 0x00, 0x0E } },	/* 500   900      5.1   */
-	{ .cnl = { 0xC, 0x61, 0x3C, 0x00, 0x03 } },	/* 650   700      0.6   */
-	{ .cnl = { 0x6, 0x7B, 0x35, 0x00, 0x0A } },	/* 600   900      3.5   */
+	{ .cnl = { 0x6, 0x73, 0x32, 0x00, 0x0D } },	/* 500   900      5.1   */
+	{ .cnl = { 0xC, 0x58, 0x3F, 0x00, 0x00 } },	/* 650   700      0.6   */
+	{ .cnl = { 0x6, 0x7F, 0x35, 0x00, 0x0A } },	/* 600   900      3.5   */
 	{ .cnl = { 0x6, 0x7F, 0x3F, 0x00, 0x00 } },	/* 900   900      0.0   */
 };
 
@@ -1021,16 +1021,16 @@ static const struct intel_ddi_buf_trans adls_combo_phy_ddi_translations_dp_hbr2_
 
 static const union intel_ddi_buf_trans_entry _adls_combo_phy_ddi_translations_edp_hbr2[] = {
 							/* NT mV Trans mV db    */
-	{ .cnl = { 0x9, 0x70, 0x3C, 0x00, 0x03 } },	/* 200   200      0.0   */
-	{ .cnl = { 0x9, 0x6D, 0x3A, 0x00, 0x05 } },	/* 200   250      1.9   */
-	{ .cnl = { 0x9, 0x7F, 0x36, 0x00, 0x09 } },	/* 200   300      3.5   */
-	{ .cnl = { 0x4, 0x59, 0x32, 0x00, 0x0D } },	/* 200   350      4.9   */
-	{ .cnl = { 0x2, 0x77, 0x3A, 0x00, 0x05 } },	/* 250   250      0.0   */
-	{ .cnl = { 0x2, 0x7F, 0x38, 0x00, 0x07 } },	/* 250   300      1.6   */
+	{ .cnl = { 0x9, 0x73, 0x3D, 0x00, 0x02 } },	/* 200   200      0.0   */
+	{ .cnl = { 0x9, 0x7A, 0x3C, 0x00, 0x03 } },	/* 200   250      1.9   */
+	{ .cnl = { 0x9, 0x7F, 0x3B, 0x00, 0x04 } },	/* 200   300      3.5   */
+	{ .cnl = { 0x4, 0x6C, 0x33, 0x00, 0x0C } },	/* 200   350      4.9   */
+	{ .cnl = { 0x2, 0x73, 0x3A, 0x00, 0x05 } },	/* 250   250      0.0   */
+	{ .cnl = { 0x2, 0x7C, 0x38, 0x00, 0x07 } },	/* 250   300      1.6   */
 	{ .cnl = { 0x4, 0x5A, 0x36, 0x00, 0x09 } },	/* 250   350      2.9   */
-	{ .cnl = { 0x4, 0x5E, 0x3D, 0x00, 0x04 } },	/* 300   300      0.0   */
+	{ .cnl = { 0x4, 0x57, 0x3D, 0x00, 0x02 } },	/* 300   300      0.0   */
 	{ .cnl = { 0x4, 0x65, 0x38, 0x00, 0x07 } },	/* 300   350      1.3   */
-	{ .cnl = { 0x4, 0x6F, 0x3A, 0x00, 0x05 } },	/* 350   350      0.0   */
+	{ .cnl = { 0x4, 0x6C, 0x3A, 0x00, 0x05 } },	/* 350   350      0.0   */
 };
 
 static const struct intel_ddi_buf_trans adls_combo_phy_ddi_translations_edp_hbr2 = {
@@ -1040,15 +1040,15 @@ static const struct intel_ddi_buf_trans adls_combo_phy_ddi_translations_edp_hbr2
 
 static const union intel_ddi_buf_trans_entry _adls_combo_phy_ddi_translations_edp_hbr3[] = {
 							/* NT mV Trans mV db    */
-	{ .cnl = { 0xA, 0x5E, 0x34, 0x00, 0x0B } },	/* 350   350      0.0   */
-	{ .cnl = { 0xA, 0x69, 0x32, 0x00, 0x0D } },	/* 350   500      3.1   */
-	{ .cnl = { 0xC, 0x74, 0x31, 0x00, 0x0E } },	/* 350   700      6.0   */
-	{ .cnl = { 0x6, 0x7F, 0x2E, 0x00, 0x11 } },	/* 350   900      8.2   */
-	{ .cnl = { 0xA, 0x5C, 0x3F, 0x00, 0x00 } },	/* 500   500      0.0   */
-	{ .cnl = { 0xC, 0x7F, 0x34, 0x00, 0x0B } },	/* 500   700      2.9   */
-	{ .cnl = { 0x6, 0x7F, 0x33, 0x00, 0x0C } },	/* 500   900      5.1   */
-	{ .cnl = { 0xC, 0x7F, 0x3F, 0x00, 0x00 } },	/* 650   700      0.6   */
-	{ .cnl = { 0x6, 0x7F, 0x3C, 0x00, 0x03 } },	/* 600   900      3.5   */
+	{ .cnl = { 0xA, 0x35, 0x3F, 0x00, 0x00 } },	/* 350   350      0.0   */
+	{ .cnl = { 0xA, 0x4F, 0x37, 0x00, 0x08 } },	/* 350   500      3.1   */
+	{ .cnl = { 0xC, 0x63, 0x31, 0x00, 0x0E } },	/* 350   700      6.0   */
+	{ .cnl = { 0x6, 0x7F, 0x2C, 0x00, 0x13 } },	/* 350   900      8.2   */
+	{ .cnl = { 0xA, 0x47, 0x3F, 0x00, 0x00 } },	/* 500   500      0.0   */
+	{ .cnl = { 0xC, 0x63, 0x37, 0x00, 0x08 } },	/* 500   700      2.9   */
+	{ .cnl = { 0x6, 0x73, 0x32, 0x00, 0x0D } },	/* 500   900      5.1   */
+	{ .cnl = { 0xC, 0x58, 0x3F, 0x00, 0x00 } },	/* 650   700      0.6   */
+	{ .cnl = { 0x6, 0x7F, 0x35, 0x00, 0x0A } },	/* 600   900      3.5   */
 	{ .cnl = { 0x6, 0x7F, 0x3F, 0x00, 0x00 } },	/* 900   900      0.0   */
 };
 
-- 
2.25.4

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
