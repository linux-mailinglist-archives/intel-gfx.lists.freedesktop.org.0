Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id AB1701EEA4B
	for <lists+intel-gfx@lfdr.de>; Thu,  4 Jun 2020 20:30:43 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 00F9F6E53E;
	Thu,  4 Jun 2020 18:30:42 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga05.intel.com (mga05.intel.com [192.55.52.43])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 464846E53E
 for <intel-gfx@lists.freedesktop.org>; Thu,  4 Jun 2020 18:30:40 +0000 (UTC)
IronPort-SDR: VQ5/29T8ob45lBh7R335Mz2vh3c5W1hbYTZD5k4/Op0qgtDx71wSzS7jK4Ri+RNJ3W03j1XM5e
 ePnvpJFdzAeQ==
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
 by fmsmga105.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 04 Jun 2020 11:29:25 -0700
IronPort-SDR: cznbuxKQ4/4mLhFSZhTYAh2z+gOee2YAorsAI1/m2KLr1F58sKwt9lg3Bz9fZ4eMF9rHItRCS+
 p6uHnDcnljJA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.73,472,1583222400"; d="scan'208";a="378496328"
Received: from ayazahma-nuc8i7beh.iind.intel.com ([10.145.162.59])
 by fmsmga001.fm.intel.com with ESMTP; 04 Jun 2020 11:29:23 -0700
From: Ayaz A Siddiqui <ayaz.siddiqui@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Thu,  4 Jun 2020 23:56:58 +0530
Message-Id: <20200604182658.878417-1-ayaz.siddiqui@intel.com>
X-Mailer: git-send-email 2.26.2
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH v2] drm/i915/gt: Initialize reserved and
 unspecified MOCS indices
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

In order to avoid functional breakage of mis-programmed applications that
have grown to depend on unused MOCS entries, we are programming
those entries to be equal to fully cached ("L3 + LLC") entry as per the
recommendation from architecture team.

These reserved and unspecified entries should not be used as they may be
changed to less performant variants with better coherency in the future
if more entries are needed.

Signed-off-by: Ayaz A Siddiqui <ayaz.siddiqui@intel.com>
Cc: Joonas Lahtinen <joonas.lahtinen@linux.intel.com>
---
 drivers/gpu/drm/i915/gt/intel_mocs.c | 93 ++++++++++++++++++++++++++--
 1 file changed, 89 insertions(+), 4 deletions(-)

diff --git a/drivers/gpu/drm/i915/gt/intel_mocs.c b/drivers/gpu/drm/i915/gt/intel_mocs.c
index 632e08a4592b..1089bd5fdba2 100644
--- a/drivers/gpu/drm/i915/gt/intel_mocs.c
+++ b/drivers/gpu/drm/i915/gt/intel_mocs.c
@@ -234,10 +234,6 @@ static const struct drm_i915_mocs_entry broxton_mocs_table[] = {
 		   L3_1_UC)
 
 static const struct drm_i915_mocs_entry tgl_mocs_table[] = {
-	/* Base - Error (Reserved for Non-Use) */
-	MOCS_ENTRY(0, 0x0, 0x0),
-	/* Base - Reserved */
-	MOCS_ENTRY(1, 0x0, 0x0),
 
 	GEN11_MOCS_ENTRIES,
 
@@ -265,6 +261,95 @@ static const struct drm_i915_mocs_entry tgl_mocs_table[] = {
 	MOCS_ENTRY(61,
 		   LE_1_UC | LE_TC_1_LLC,
 		   L3_3_WB),
+
+	/* NOTE:
+	 * Reserved and unspecified MOCS indices have been set to (L3 + LCC).
+	 * These reserved entry should never be used, they may be chanaged
+	 * to low performant variants with better coherency in the future if
+	 * more entries are needed.
+	 */
+
+	/* Reserved index 0 and 1 */
+	MOCS_ENTRY(0, LE_3_WB | LE_TC_1_LLC | LE_LRUM(3),
+		   L3_3_WB),
+	MOCS_ENTRY(1, LE_3_WB | LE_TC_1_LLC | LE_LRUM(3),
+		   L3_3_WB),
+
+	/* Reserved index 16 and 17 */
+	MOCS_ENTRY(16, LE_3_WB | LE_TC_1_LLC | LE_LRUM(3),
+		   L3_3_WB),
+	MOCS_ENTRY(17, LE_3_WB | LE_TC_1_LLC | LE_LRUM(3),
+		   L3_3_WB),
+
+	/* Reserved index 24 and 25 */
+	MOCS_ENTRY(24, LE_3_WB | LE_TC_1_LLC | LE_LRUM(3),
+		   L3_3_WB),
+	MOCS_ENTRY(25, LE_3_WB | LE_TC_1_LLC | LE_LRUM(3),
+		   L3_3_WB),
+
+	/* Unspecified indices 26 to 47 */
+	MOCS_ENTRY(26, LE_3_WB | LE_TC_1_LLC | LE_LRUM(3),
+		   L3_3_WB),
+	MOCS_ENTRY(27, LE_3_WB | LE_TC_1_LLC | LE_LRUM(3),
+		   L3_3_WB),
+	MOCS_ENTRY(28, LE_3_WB | LE_TC_1_LLC | LE_LRUM(3),
+		   L3_3_WB),
+	MOCS_ENTRY(29, LE_3_WB | LE_TC_1_LLC | LE_LRUM(3),
+		   L3_3_WB),
+	MOCS_ENTRY(30, LE_3_WB | LE_TC_1_LLC | LE_LRUM(3),
+		   L3_3_WB),
+	MOCS_ENTRY(31, LE_3_WB | LE_TC_1_LLC | LE_LRUM(3),
+		   L3_3_WB),
+	MOCS_ENTRY(32, LE_3_WB | LE_TC_1_LLC | LE_LRUM(3),
+		   L3_3_WB),
+	MOCS_ENTRY(33, LE_3_WB | LE_TC_1_LLC | LE_LRUM(3),
+		   L3_3_WB),
+	MOCS_ENTRY(34, LE_3_WB | LE_TC_1_LLC | LE_LRUM(3),
+		   L3_3_WB),
+	MOCS_ENTRY(35, LE_3_WB | LE_TC_1_LLC | LE_LRUM(3),
+		   L3_3_WB),
+	MOCS_ENTRY(36, LE_3_WB | LE_TC_1_LLC | LE_LRUM(3),
+		   L3_3_WB),
+	MOCS_ENTRY(37, LE_3_WB | LE_TC_1_LLC | LE_LRUM(3),
+		   L3_3_WB),
+	MOCS_ENTRY(38, LE_3_WB | LE_TC_1_LLC | LE_LRUM(3),
+		   L3_3_WB),
+	MOCS_ENTRY(39, LE_3_WB | LE_TC_1_LLC | LE_LRUM(3),
+		   L3_3_WB),
+	MOCS_ENTRY(40, LE_3_WB | LE_TC_1_LLC | LE_LRUM(3),
+		   L3_3_WB),
+	MOCS_ENTRY(41, LE_3_WB | LE_TC_1_LLC | LE_LRUM(3),
+		   L3_3_WB),
+	MOCS_ENTRY(42, LE_3_WB | LE_TC_1_LLC | LE_LRUM(3),
+		   L3_3_WB),
+	MOCS_ENTRY(43, LE_3_WB | LE_TC_1_LLC | LE_LRUM(3),
+		   L3_3_WB),
+	MOCS_ENTRY(44, LE_3_WB | LE_TC_1_LLC | LE_LRUM(3),
+		   L3_3_WB),
+	MOCS_ENTRY(45, LE_3_WB | LE_TC_1_LLC | LE_LRUM(3),
+		   L3_3_WB),
+	MOCS_ENTRY(46, LE_3_WB | LE_TC_1_LLC | LE_LRUM(3),
+		   L3_3_WB),
+	MOCS_ENTRY(47, LE_3_WB | LE_TC_1_LLC | LE_LRUM(3),
+		   L3_3_WB),
+
+	/* Unspecified indices 52 to 59 */
+	MOCS_ENTRY(52, LE_3_WB | LE_TC_1_LLC | LE_LRUM(3),
+		   L3_3_WB),
+	MOCS_ENTRY(53, LE_3_WB | LE_TC_1_LLC | LE_LRUM(3),
+		   L3_3_WB),
+	MOCS_ENTRY(54, LE_3_WB | LE_TC_1_LLC | LE_LRUM(3),
+		   L3_3_WB),
+	MOCS_ENTRY(55, LE_3_WB | LE_TC_1_LLC | LE_LRUM(3),
+		   L3_3_WB),
+	MOCS_ENTRY(56, LE_3_WB | LE_TC_1_LLC | LE_LRUM(3),
+		   L3_3_WB),
+	MOCS_ENTRY(57, LE_3_WB | LE_TC_1_LLC | LE_LRUM(3),
+		   L3_3_WB),
+	MOCS_ENTRY(58, LE_3_WB | LE_TC_1_LLC | LE_LRUM(3),
+		   L3_3_WB),
+	MOCS_ENTRY(59, LE_3_WB | LE_TC_1_LLC | LE_LRUM(3),
+		   L3_3_WB)
 };
 
 static const struct drm_i915_mocs_entry icl_mocs_table[] = {
-- 
2.26.2

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
