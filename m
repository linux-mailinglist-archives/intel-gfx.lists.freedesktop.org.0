Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 38104610F8A
	for <lists+intel-gfx@lfdr.de>; Fri, 28 Oct 2022 13:19:00 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 0FF2210E807;
	Fri, 28 Oct 2022 11:18:48 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga06.intel.com (mga06b.intel.com [134.134.136.31])
 by gabe.freedesktop.org (Postfix) with ESMTPS id AABC910E7EB
 for <intel-gfx@lists.freedesktop.org>; Fri, 28 Oct 2022 11:18:20 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1666955900; x=1698491900;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=Q7+DsiYeCq17ojKXWC72IsB593rfM+JqYRu7lINsAVg=;
 b=h3SlLqKXah7F5kYcDuCld8eUpT/740mw7XERPunqelfTsH51y0D80EyK
 AHVE5r/1lsUkqKcmTBHmMFmA30VPYylN7Rm8WwLu7C2INJU8KkNXLmUcr
 Pf6sZWHkCcnCH+X1jAVRYXiuxRJ2Qu6tgkWLDrqDp7rfk2hwnt6ergv0l
 LLnQ5dhncVwbh0rRZDI29KyHqePZ/7RtK730O2Z9vwzPsx63uOiPX1Dk5
 whnnHQQELE87SIqtnYf1T6h1/HL4ycElcdnQgt8oD4Imki81UQGN69cme
 zCkwBMX5dz6SjoV7mxks8BadUzPOiW9wk8xt5qsk6O3IKfiuMyki7+9w1 Q==;
X-IronPort-AV: E=McAfee;i="6500,9779,10513"; a="370534667"
X-IronPort-AV: E=Sophos;i="5.95,220,1661842800"; d="scan'208";a="370534667"
Received: from fmsmga004.fm.intel.com ([10.253.24.48])
 by orsmga104.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 28 Oct 2022 04:18:20 -0700
X-IronPort-AV: E=McAfee;i="6500,9779,10513"; a="701701527"
X-IronPort-AV: E=Sophos;i="5.95,220,1661842800"; d="scan'208";a="701701527"
Received: from srr4-3-linux-118-swatish2.iind.intel.com ([10.223.34.130])
 by fmsmga004-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 28 Oct 2022 04:18:19 -0700
From: Swati Sharma <swati2.sharma@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Fri, 28 Oct 2022 16:49:49 +0530
Message-Id: <20221028111953.12552-5-swati2.sharma@intel.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20221028111953.12552-1-swati2.sharma@intel.com>
References: <20221028111953.12552-1-swati2.sharma@intel.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH v4 4/8] drm/i915: Enable YCbCr420 for VDSC
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

From: Suraj Kandpal <suraj.kandpal@intel.com>

Implementation of VDSC for YCbCr420.

Signed-off-by: Suraj Kandpal <suraj.kandpal@intel.com>
---
 .../gpu/drm/i915/display/intel_qp_tables.c    | 187 ++++++++++++++++--
 .../gpu/drm/i915/display/intel_qp_tables.h    |   4 +-
 drivers/gpu/drm/i915/display/intel_vdsc.c     |   4 +-
 3 files changed, 180 insertions(+), 15 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_qp_tables.c b/drivers/gpu/drm/i915/display/intel_qp_tables.c
index 6f8e4ec5c0fb..6e86c0971d24 100644
--- a/drivers/gpu/drm/i915/display/intel_qp_tables.c
+++ b/drivers/gpu/drm/i915/display/intel_qp_tables.c
@@ -17,6 +17,15 @@
 /* from BPP 6 to 36 in steps of 0.5 */
 #define RC_RANGE_QP444_12BPC_MAX_NUM_BPP	61
 
+/* from BPP 6 to 24 in steps of 0.5 */
+#define RC_RANGE_QP420_8BPC_MAX_NUM_BPP		17
+
+/* from BPP 6 to 30 in steps of 0.5 */
+#define RC_RANGE_QP420_10BPC_MAX_NUM_BPP	23
+
+/* from BPP 6 to 36 in steps of 0.5 */
+#define RC_RANGE_QP420_12BPC_MAX_NUM_BPP	29
+
 /*
  * These qp tables are as per the C model
  * and it has the rows pointing to bpps which increment
@@ -283,26 +292,182 @@ static const u8 rc_range_maxqp444_12bpc[DSC_NUM_BUF_RANGES][RC_RANGE_QP444_12BPC
 	  11, 11, 10, 10, 10, 10, 10, 9, 9, 8, 8, 8, 8, 8, 7, 7, 6, 6, 6, 6, 5, 5, 4 }
 };
 
-#define PARAM_TABLE(_minmax, _bpc, _row, _col)  do { \
-	if (bpc == (_bpc)) \
-		return rc_range_##_minmax##qp444_##_bpc##bpc[_row][_col]; \
+static const u8 rc_range_minqp420_8bpc[DSC_NUM_BUF_RANGES][RC_RANGE_QP420_8BPC_MAX_NUM_BPP] = {
+	{ 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0 },
+	{ 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0 },
+	{ 1, 1, 1, 1, 1, 1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0 },
+	{ 1, 1, 1, 1, 1, 1, 1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0 },
+	{ 3, 3, 3, 3, 3, 2, 1, 1, 1, 1, 1, 1, 1, 0, 0, 0, 0 },
+	{ 3, 3, 3, 3, 3, 2, 2, 1, 1, 1, 1, 1, 1, 1, 0, 0, 0 },
+	{ 3, 3, 3, 3, 3, 3, 2, 2, 1, 1, 1, 1, 1, 1, 1, 0, 0 },
+	{ 3, 3, 3, 3, 3, 3, 2, 2, 2, 2, 2, 2, 2, 1, 1, 1, 0 },
+	{ 3, 3, 3, 3, 3, 3, 2, 2, 2, 2, 2, 2, 2, 2, 1, 1, 0 },
+	{ 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 2, 2, 1, 1 },
+	{ 5, 5, 5, 5, 5, 4, 4, 4, 4, 4, 3, 3, 3, 3, 2, 1, 1 },
+	{ 5, 5, 5, 5, 5, 5, 5, 4, 4, 4, 4, 4, 4, 3, 2, 2, 1 },
+	{ 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 4, 4, 3, 3, 2, 1 },
+	{ 9, 8, 8, 7, 7, 7, 7, 7, 7, 6, 5, 5, 4, 3, 3, 3, 2 },
+	{ 13, 12, 12, 11, 10, 10, 9, 8, 8, 7, 6, 6, 5, 5, 4, 4, 3 }
+};
+
+static const u8 rc_range_maxqp420_8bpc[DSC_NUM_BUF_RANGES][RC_RANGE_QP420_8BPC_MAX_NUM_BPP] = {
+	{ 4, 4, 3, 3, 2, 2, 1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0 },
+	{ 4, 4, 4, 4, 4, 3, 2, 2, 1, 1, 1, 1, 0, 0, 0, 0, 0 },
+	{ 5, 5, 5, 5, 5, 4, 3, 2, 1, 1, 1, 1, 1, 1, 0, 0, 0 },
+	{ 6, 6, 6, 6, 6, 5, 4, 3, 2, 2, 2, 1, 1, 1, 1, 0, 0 },
+	{ 7, 7, 7, 7, 7, 5, 4, 3, 2, 2, 2, 2, 2, 1, 1, 1, 0 },
+	{ 7, 7, 7, 7, 7, 6, 5, 4, 3, 3, 3, 2, 2, 2, 1, 1, 0 },
+	{ 7, 7, 7, 7, 7, 6, 5, 4, 3, 3, 3, 3, 2, 2, 2, 1, 1 },
+	{ 8, 8, 8, 8, 8, 7, 6, 5, 4, 4, 4, 3, 3, 2, 2, 2, 1 },
+	{ 9, 9, 9, 8, 8, 7, 6, 6, 5, 5, 4, 4, 3, 3, 2, 2, 1 },
+	{ 10, 10, 9, 9, 9, 8, 7, 6, 5, 5, 5, 4, 4, 3, 3, 2, 2 },
+	{ 10, 10, 10, 9, 9, 8, 8, 7, 6, 6, 5, 5, 4, 4, 3, 2, 2 },
+	{ 11, 11, 10, 10, 9, 9, 8, 7, 7, 6, 6, 5, 5, 4, 3, 3, 2 },
+	{ 11, 11, 11, 10, 9, 9, 9, 8, 7, 7, 6, 5, 5, 4, 4, 3, 2 },
+	{ 13, 12, 12, 11, 10, 10, 9, 8, 8, 7, 6, 6, 5, 4, 4, 4, 3 },
+	{ 14, 13, 13, 12, 11, 11, 10, 9, 9, 8, 7, 7, 6, 6, 5, 5, 4 }
+};
+
+static const u8 rc_range_minqp420_10bpc[DSC_NUM_BUF_RANGES][RC_RANGE_QP420_10BPC_MAX_NUM_BPP] = {
+	{ 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0 },
+	{ 4, 4, 4, 3, 2, 2, 2, 2, 2, 2, 2, 2, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0 },
+	{ 4, 4, 4, 3, 3, 3, 3, 3, 3, 2, 2, 2, 2, 2, 1, 0, 0, 0, 0, 0, 0, 0, 0 },
+	{ 5, 5, 5, 4, 4, 4, 4, 4, 4, 3, 3, 2, 2, 2, 2, 1, 0, 0, 0, 0, 0, 0, 0 },
+	{ 7, 7, 7, 6, 6, 5, 5, 4, 4, 3, 3, 3, 3, 2, 2, 2, 1, 1, 1, 0, 0, 0, 0 },
+	{ 7, 7, 7, 7, 7, 6, 5, 5, 5, 5, 5, 4, 3, 3, 2, 2, 1, 1, 1, 1, 1, 0, 0 },
+	{ 7, 7, 7, 7, 7, 6, 6, 5, 5, 5, 5, 4, 4, 4, 3, 2, 2, 2, 2, 1, 1, 1, 0 },
+	{ 7, 7, 7, 7, 7, 7, 6, 6, 6, 6, 6, 5, 4, 4, 4, 3, 2, 2, 2, 1, 1, 1, 0 },
+	{ 7, 7, 7, 7, 7, 7, 7, 7, 6, 6, 6, 6, 5, 5, 4, 4, 3, 3, 2, 2, 2, 1, 1 },
+	{ 7, 7, 7, 7, 7, 7, 7, 7, 7, 7, 7, 6, 6, 5, 5, 4, 4, 3, 3, 2, 2, 1, 1 },
+	{ 9, 9, 9, 9, 9, 8, 8, 8, 8, 8, 7, 7, 6, 6, 5, 5, 4, 4, 3, 3, 2, 2, 1 },
+	{ 9, 9, 9, 9, 9, 9, 8, 8, 8, 8, 8, 8, 8, 7, 6, 6, 5, 4, 4, 3, 3, 2, 1 },
+	{ 9, 9, 9, 9, 9, 9, 9, 9, 9, 9, 9, 8, 8, 7, 7, 6, 5, 4, 4, 3, 3, 2, 1 },
+	{ 13, 12, 12, 11, 11, 11, 11, 11, 11, 10, 9, 9, 8, 7, 7, 6, 5, 5, 4, 3, 3,
+	  2, 2 },
+	{ 17, 16, 16, 15, 14, 14, 13, 12, 12, 11, 10, 10, 10, 9, 8, 8, 7, 6, 6, 5,
+	  5, 4, 4 }
+};
+
+static const u8 rc_range_maxqp420_10bpc[DSC_NUM_BUF_RANGES][RC_RANGE_QP420_10BPC_MAX_NUM_BPP] = {
+	{ 8, 8, 7, 6, 4, 4, 3, 3, 2, 1, 1, 1, 1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0 },
+	{ 8, 8, 8, 7, 6, 5, 4, 4, 3, 3, 3, 3, 2, 1, 1, 1, 0, 0, 0, 0, 0, 0, 0 },
+	{ 9, 9, 9, 8, 8, 7, 6, 5, 4, 3, 3, 3, 3, 3, 2, 1, 1, 1, 0, 0, 0, 0, 0 },
+	{ 10, 10, 10, 9, 9, 8, 7, 6, 5, 4, 4, 3, 3, 3, 3, 2, 1, 1, 1, 1, 1, 0,
+	  0 },
+	{ 11, 11, 11, 10, 10, 8, 7, 6, 5, 4, 4, 4, 4, 3, 3, 3, 2, 2, 2, 1, 1, 1,
+	  0 },
+	{ 11, 11, 11, 10, 10, 9, 8, 7, 6, 6, 6, 5, 4, 4, 3, 3, 2, 2, 2, 2, 2, 1,
+	  1 },
+	{ 11, 11, 11, 11, 11, 10, 9, 8, 7, 7, 7, 6, 5, 5, 4, 3, 3, 3, 3, 2, 2, 2,
+	  1 },
+	{ 12, 12, 12, 12, 12, 11, 10, 9, 8, 8, 8, 7, 6, 5, 5, 4, 3, 3, 3, 2, 2,
+	  2, 1 },
+	{ 13, 13, 13, 12, 12, 11, 10, 10, 9, 9, 8, 8, 7, 7, 6, 5, 4, 4, 3, 3, 3,
+	  2, 2 },
+	{ 14, 14, 13, 13, 13, 12, 11, 10, 9, 9, 9, 8, 8, 7, 7, 6, 5, 4, 4, 3, 3,
+	  2, 2 },
+	{ 14, 14, 14, 13, 13, 12, 12, 11, 10, 10, 9, 9, 8, 8, 7, 6, 5, 5, 4, 4,
+	  3, 3, 2 },
+	{ 15, 15, 14, 14, 13, 13, 12, 11, 11, 10, 10, 9, 9, 8, 7, 7, 6, 5, 5, 4,
+	  4, 3, 2 },
+	{ 15, 15, 15, 14, 13, 13, 13, 12, 11, 11, 10, 9, 9, 8, 8, 7, 6, 5, 5, 4,
+	  4, 3, 2 },
+	{ 17, 16, 16, 15, 14, 14, 13, 12, 12, 11, 10, 10, 9, 8, 8, 7, 6, 6, 5, 4,
+	  4, 3, 3 },
+	{ 18, 17, 17, 16, 15, 15, 14, 13, 13, 12, 11, 11, 11, 10, 9, 9, 8, 7, 7,
+	  6, 6, 5, 5 }
+};
+
+static const u8 rc_range_minqp420_12bpc[DSC_NUM_BUF_RANGES][RC_RANGE_QP420_12BPC_MAX_NUM_BPP] = {
+	{ 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
+	  0, 0, 0, 0, 0 },
+	{ 4, 4, 4, 4, 4, 4, 3, 3, 2, 2, 2, 2, 2, 2, 2, 1, 0, 0, 0, 0, 0, 0, 0, 0,
+	  0, 0, 0, 0, 0 },
+	{ 9, 8, 8, 7, 7, 6, 5, 5, 4, 4, 4, 4, 3, 3, 3, 2, 2, 1, 0, 0, 0, 0, 0, 0,
+	  0, 0, 0, 0, 0 },
+	{ 10, 9, 9, 8, 8, 8, 7, 7, 6, 6, 6, 5, 5, 4, 4, 3, 2, 2, 1, 1, 1, 0, 0, 0,
+	  0, 0, 0, 0, 0 },
+	{ 11, 10, 10, 10, 10, 9, 9, 8, 7, 6, 6, 6, 6, 5, 5, 4, 3, 3, 3, 2, 2, 1,
+	  0, 0, 0, 0, 0, 0, 0 },
+	{ 11, 11, 11, 11, 11, 10, 10, 9, 9, 9, 9, 8, 7, 6, 5, 5, 4, 4, 3, 3, 3, 2,
+	  1, 1, 0, 0, 0, 0, 0 },
+	{ 11, 11, 11, 11, 11, 11, 10, 10, 9, 9, 9, 8, 8, 7, 6, 5, 5, 5, 5, 4, 3, 3,
+	  2, 1, 1, 1, 1, 1, 0 },
+	{ 11, 11, 11, 11, 11, 11, 11, 10, 10, 10, 10, 9, 8, 8, 8, 7, 6, 6, 5, 4, 4,
+	  3, 2, 2, 1, 1, 1, 1, 1 },
+	{ 11, 11, 11, 11, 11, 11, 11, 11, 11, 11, 10, 10, 9, 9, 8, 8, 7, 7, 6, 5,
+	  5, 4, 4, 2, 2, 1, 1, 1, 1 },
+	{ 11, 11, 11, 11, 11, 11, 11, 11, 11, 11, 11, 10, 10, 9, 9, 8, 8, 7, 7, 6,
+	  5, 4, 4, 3, 2, 2, 1, 1, 1 },
+	{ 13, 13, 13, 13, 13, 13, 13, 12, 12, 12, 11, 11, 10, 10, 9, 9, 8, 8, 7, 7,
+	  6, 5, 4, 3, 3, 2, 2, 1, 1 },
+	{ 13, 13, 13, 13, 13, 13, 13, 13, 13, 12, 12, 12, 12, 11, 10, 10, 9, 8, 8,
+	  7, 7, 6, 5, 4, 3, 3, 2, 2, 1 },
+	{ 13, 13, 13, 13, 13, 13, 13, 13, 13, 13, 13, 12, 12, 11, 11, 10, 9, 8, 8,
+	  7, 7, 6, 5, 4, 4, 3, 2, 2, 1 },
+	{ 15, 15, 15, 15, 15, 15, 15, 15, 15, 14, 13, 13, 12, 11, 11, 10, 9, 9, 8,
+	  8, 7, 6, 6, 5, 4, 4, 3, 3, 2 },
+	{ 21, 20, 20, 19, 18, 18, 17, 16, 16, 15, 14, 14, 14, 13, 12, 12, 11, 10,
+	  10, 10, 9, 8, 8, 7, 6, 6, 5, 5, 4 }
+};
+
+static const u8 rc_range_maxqp420_12bpc[DSC_NUM_BUF_RANGES][RC_RANGE_QP420_12BPC_MAX_NUM_BPP] = {
+	{ 11, 10, 9, 8, 6, 6, 5, 5, 4, 3, 3, 2, 2, 2, 1, 1, 1, 1, 1, 1, 1, 0, 0,
+	  0, 0, 0, 0, 0, 0 },
+	{ 12, 11, 11, 10, 9, 8, 7, 7, 6, 6, 5, 5, 4, 3, 3, 2, 1, 1, 1, 1, 1, 1,
+	  1, 0, 0, 0, 0, 0, 0 },
+	{ 13, 12, 12, 11, 11, 10, 9, 8, 7, 6, 6, 6, 5, 5, 4, 3, 3, 2, 1, 1, 1, 1,
+	  1, 0, 0, 0, 0, 0, 0 },
+	{ 14, 13, 13, 12, 12, 11, 10, 9, 8, 7, 7, 6, 6, 5, 5, 4, 3, 3, 2, 2, 2, 1,
+	  1, 1, 0, 0, 0, 0, 0 },
+	{ 15, 14, 14, 13, 13, 11, 10, 9, 8, 7, 7, 7, 7, 6, 6, 5, 4, 4, 4, 3, 3, 2,
+	  1, 1, 1, 0, 0, 0, 0 },
+	{ 15, 15, 15, 14, 14, 13, 12, 11, 10, 10, 10, 9, 8, 7, 6, 6, 5, 5, 4, 4,
+	  4, 3, 2, 2, 1, 1, 0, 0, 0 },
+	{ 15, 15, 15, 15, 15, 14, 13, 12, 11, 11, 11, 10, 9, 8, 7, 6, 6, 6, 6, 5,
+	  4, 4, 3, 2, 2, 2, 1, 1, 0 },
+	{ 16, 16, 16, 16, 16, 15, 14, 13, 12, 12, 12, 11, 10, 9, 9, 8, 7, 7, 6, 5,
+	  5, 4, 3, 3, 2, 2, 2, 1, 1 },
+	{ 17, 17, 17, 16, 16, 15, 14, 14, 13, 13, 12, 12, 11, 11, 10, 9, 8, 8, 7,
+	  6, 6, 5, 5, 3, 3, 2, 2, 1, 1 },
+	{ 18, 18, 17, 17, 17, 16, 15, 14, 13, 13, 13, 12, 12, 11, 11, 10, 9, 8, 8,
+	  7, 6, 5, 5, 4, 3, 3, 2, 2, 1 },
+	{ 18, 18, 18, 17, 17, 16, 16, 15, 14, 14, 13, 13, 12, 12, 11, 10, 9, 9, 8,
+	  8, 7, 6, 5, 4, 4, 3, 3, 2, 2 },
+	{ 19, 19, 18, 18, 17, 17, 16, 15, 15, 14, 14, 13, 13, 12, 11, 11, 10, 9,
+	  9, 8, 8, 7, 6, 5, 4, 4, 3, 3, 2 },
+	{ 19, 19, 19, 18, 17, 17, 17, 16, 15, 15, 14, 13, 13, 12, 12, 11, 10, 9,
+	  9, 8, 8, 7, 6, 5, 5, 4, 3, 3, 2 },
+	{ 21, 20, 20, 19, 18, 18, 17, 16, 16, 15, 14, 14, 13, 12, 12, 11, 10, 10,
+	  9, 9, 8, 7, 7, 6, 5, 5, 4, 4, 3 },
+	{ 22, 21, 21, 20, 19, 19, 18, 17, 17, 16, 15, 15, 15, 14, 13, 13, 12, 11,
+	  11, 11, 10, 9, 9, 8, 7, 7, 6, 6, 5 }
+};
+
+#define PARAM_TABLE(_minmax, _bpc, _row, _col, _is_420)  do { \
+	if (bpc == (_bpc)) {	\
+		if (_is_420)	\
+			return rc_range_##_minmax##qp420_##_bpc##bpc[_row][_col]; \
+		else	\
+			return rc_range_##_minmax##qp444_##_bpc##bpc[_row][_col]; \
+	}	\
 } while (0)
 
-u8 intel_lookup_range_min_qp(int bpc, int buf_i, int bpp_i)
+u8 intel_lookup_range_min_qp(int bpc, int buf_i, int bpp_i, bool is_420)
 {
-	PARAM_TABLE(min, 8, buf_i, bpp_i);
-	PARAM_TABLE(min, 10, buf_i, bpp_i);
-	PARAM_TABLE(min, 12, buf_i, bpp_i);
+	PARAM_TABLE(min, 8, buf_i, bpp_i, is_420);
+	PARAM_TABLE(min, 10, buf_i, bpp_i, is_420);
+	PARAM_TABLE(min, 12, buf_i, bpp_i, is_420);
 
 	MISSING_CASE(bpc);
 	return 0;
 }
 
-u8 intel_lookup_range_max_qp(int bpc, int buf_i, int bpp_i)
+u8 intel_lookup_range_max_qp(int bpc, int buf_i, int bpp_i, bool is_420)
 {
-	PARAM_TABLE(max, 8, buf_i, bpp_i);
-	PARAM_TABLE(max, 10, buf_i, bpp_i);
-	PARAM_TABLE(max, 12, buf_i, bpp_i);
+	PARAM_TABLE(max, 8, buf_i, bpp_i, is_420);
+	PARAM_TABLE(max, 10, buf_i, bpp_i, is_420);
+	PARAM_TABLE(max, 12, buf_i, bpp_i, is_420);
 
 	MISSING_CASE(bpc);
 	return 0;
diff --git a/drivers/gpu/drm/i915/display/intel_qp_tables.h b/drivers/gpu/drm/i915/display/intel_qp_tables.h
index 9fb3c36bd7c6..a9ff9ca29938 100644
--- a/drivers/gpu/drm/i915/display/intel_qp_tables.h
+++ b/drivers/gpu/drm/i915/display/intel_qp_tables.h
@@ -8,7 +8,7 @@
 
 #include <linux/types.h>
 
-u8 intel_lookup_range_min_qp(int bpc, int buf_i, int bpp_i);
-u8 intel_lookup_range_max_qp(int bpc, int buf_i, int bpp_i);
+u8 intel_lookup_range_min_qp(int bpc, int buf_i, int bpp_i, bool is_420);
+u8 intel_lookup_range_max_qp(int bpc, int buf_i, int bpp_i, bool is_420);
 
 #endif
diff --git a/drivers/gpu/drm/i915/display/intel_vdsc.c b/drivers/gpu/drm/i915/display/intel_vdsc.c
index 269f9792390d..a642975a1b61 100644
--- a/drivers/gpu/drm/i915/display/intel_vdsc.c
+++ b/drivers/gpu/drm/i915/display/intel_vdsc.c
@@ -424,9 +424,9 @@ calculate_rc_params(struct rc_parameters *rc,
 	for (buf_i = 0; buf_i < DSC_NUM_BUF_RANGES; buf_i++) {
 		/* Read range_minqp and range_max_qp from qp tables */
 		rc->rc_range_params[buf_i].range_min_qp =
-			intel_lookup_range_min_qp(bpc, buf_i, bpp_i);
+			intel_lookup_range_min_qp(bpc, buf_i, bpp_i, vdsc_cfg->native_420);
 		rc->rc_range_params[buf_i].range_max_qp =
-			intel_lookup_range_max_qp(bpc, buf_i, bpp_i);
+			intel_lookup_range_max_qp(bpc, buf_i, bpp_i, vdsc_cfg->native_420);
 
 		/* Calculate range_bgp_offset */
 		if (bpp <= 6) {
-- 
2.25.1

