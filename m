Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id E9332671384
	for <lists+intel-gfx@lfdr.de>; Wed, 18 Jan 2023 07:01:31 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id E1E1D10E685;
	Wed, 18 Jan 2023 06:01:29 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 8AE1810E683
 for <intel-gfx@lists.freedesktop.org>; Wed, 18 Jan 2023 06:01:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1674021685; x=1705557685;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=3eMMqzsx3uLccaAQURzRWwWzRLzBFVlgCt3sOpezKe0=;
 b=cmmHBtiNNHPLVw6eSO630no3D4gSBYieAzd/momEeX2z1SFLrNV7cweS
 mHAJ+i9Sitl3qMpSkJJgf4w/KpRI0o4tIsP1dam9Ctv581wBkOsV9gSWN
 fUgUyhCkkz5oIpEnrC7QplCPsrv6s8H30+SVMsTDi8XHm0RJgg/7UyV1I
 gez8G9dagoSk0l1HkIhZi+Mluc0X4veXjWY4l35BUjLaOs59jz5fLZ8Bc
 ZEy8QqlYApppj4WdDMlqA9CtbSGp5cs3pSjvL1q3dsc32nJ39KGMbtaSq
 d3F9cZk4xqYsa8f+2UCdY3+dVuLy9B0rI3w9/YKnqtsaguffynkRtOCz+ w==;
X-IronPort-AV: E=McAfee;i="6500,9779,10593"; a="326176260"
X-IronPort-AV: E=Sophos;i="5.97,224,1669104000"; d="scan'208";a="326176260"
Received: from orsmga003.jf.intel.com ([10.7.209.27])
 by orsmga102.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 17 Jan 2023 22:01:25 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6500,9779,10593"; a="609512423"
X-IronPort-AV: E=Sophos;i="5.97,224,1669104000"; d="scan'208";a="609512423"
Received: from kandpal-x299-ud4-pro.iind.intel.com ([10.190.239.32])
 by orsmga003.jf.intel.com with ESMTP; 17 Jan 2023 22:01:22 -0800
From: Suraj Kandpal <suraj.kandpal@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Wed, 18 Jan 2023 11:30:00 +0530
Message-Id: <20230118060002.2369838-5-suraj.kandpal@intel.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20230118060002.2369838-1-suraj.kandpal@intel.com>
References: <20230118060002.2369838-1-suraj.kandpal@intel.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH v8 4/6] drm/i915: Enable YCbCr420 for VDSC
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

Implementation of VDSC for YCbCr420.
Add QP tables for 8,10,12 BPC from rc_tables.h in intel_qp_tables.c
(Derived from C-Model, which is given along with DSC1.2a Spec from Vesa)
intel_lookup_range_min/max_qp functons need to take into account the
output format. Based on that appropriate qp table need to be chosen.
Other rc_parameters need to be set where currently values for 444 format
is hardcoded in calculate_rc_parameters( ).
vdsc_cfg struct needs to be filled with output format information, where
these are hardcoded for 444 format.
Bspec: 49259

Signed-off-by: Suraj Kandpal <suraj.kandpal@intel.com>
Reviewed-by: Vandita Kulkarni <Vandita.kulkarni@intel.com>
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
index 207b2a648d32..ed16f63d6355 100644
--- a/drivers/gpu/drm/i915/display/intel_vdsc.c
+++ b/drivers/gpu/drm/i915/display/intel_vdsc.c
@@ -422,9 +422,9 @@ calculate_rc_params(struct rc_parameters *rc,
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

