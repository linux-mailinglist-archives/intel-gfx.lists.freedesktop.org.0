Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 9A6CE180258
	for <lists+intel-gfx@lfdr.de>; Tue, 10 Mar 2020 16:49:18 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id CC1136E884;
	Tue, 10 Mar 2020 15:49:16 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga17.intel.com (mga17.intel.com [192.55.52.151])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 52C3E6E342
 for <intel-gfx@lists.freedesktop.org>; Tue, 10 Mar 2020 15:49:14 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga008.jf.intel.com ([10.7.209.65])
 by fmsmga107.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 10 Mar 2020 08:49:14 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.70,537,1574150400"; d="scan'208";a="236075914"
Received: from unknown (HELO amanna.iind.intel.com) ([10.223.74.53])
 by orsmga008.jf.intel.com with ESMTP; 10 Mar 2020 08:49:12 -0700
From: Animesh Manna <animesh.manna@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Tue, 10 Mar 2020 21:07:39 +0530
Message-Id: <20200310153745.22814-2-animesh.manna@intel.com>
X-Mailer: git-send-email 2.24.0
In-Reply-To: <20200310153745.22814-1-animesh.manna@intel.com>
References: <20200310153745.22814-1-animesh.manna@intel.com>
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH v4 1/7] drm/amd/display: Align macro name as per
 DP spec
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
Cc: Alex Deucher <alexander.deucher@amd.com>,
 Harry Wentland <harry.wentland@amd.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

[Why]:
Aligh with DP spec wanted to follow same naming convention.

[How]:
Changed the macro name of the dpcd address used for getting requested
test-pattern.

Cc: Harry Wentland <harry.wentland@amd.com>
Cc: Alex Deucher <alexander.deucher@amd.com>
Reviewed-by: Harry Wentland <harry.wentland@amd.com>
Signed-off-by: Animesh Manna <animesh.manna@intel.com>
---
 drivers/gpu/drm/amd/display/dc/core/dc_link_dp.c | 2 +-
 include/drm/drm_dp_helper.h                      | 2 +-
 2 files changed, 2 insertions(+), 2 deletions(-)

diff --git a/drivers/gpu/drm/amd/display/dc/core/dc_link_dp.c b/drivers/gpu/drm/amd/display/dc/core/dc_link_dp.c
index 93127bc90f3c..55181bd93c10 100644
--- a/drivers/gpu/drm/amd/display/dc/core/dc_link_dp.c
+++ b/drivers/gpu/drm/amd/display/dc/core/dc_link_dp.c
@@ -2528,7 +2528,7 @@ static void dp_test_send_phy_test_pattern(struct dc_link *link)
 	/* get phy test pattern and pattern parameters from DP receiver */
 	core_link_read_dpcd(
 			link,
-			DP_TEST_PHY_PATTERN,
+			DP_PHY_TEST_PATTERN,
 			&dpcd_test_pattern.raw,
 			sizeof(dpcd_test_pattern));
 	core_link_read_dpcd(
diff --git a/include/drm/drm_dp_helper.h b/include/drm/drm_dp_helper.h
index c6119e4c169a..10ddb622a73e 100644
--- a/include/drm/drm_dp_helper.h
+++ b/include/drm/drm_dp_helper.h
@@ -701,7 +701,7 @@
 # define DP_TEST_CRC_SUPPORTED		    (1 << 5)
 # define DP_TEST_COUNT_MASK		    0xf
 
-#define DP_TEST_PHY_PATTERN                 0x248
+#define DP_PHY_TEST_PATTERN                 0x248
 #define DP_TEST_80BIT_CUSTOM_PATTERN_7_0    0x250
 #define	DP_TEST_80BIT_CUSTOM_PATTERN_15_8   0x251
 #define	DP_TEST_80BIT_CUSTOM_PATTERN_23_16  0x252
-- 
2.24.0

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
