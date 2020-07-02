Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 16080212539
	for <lists+intel-gfx@lfdr.de>; Thu,  2 Jul 2020 15:51:57 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 7640D6E954;
	Thu,  2 Jul 2020 13:51:55 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga18.intel.com (mga18.intel.com [134.134.136.126])
 by gabe.freedesktop.org (Postfix) with ESMTPS id D0B576E954
 for <intel-gfx@lists.freedesktop.org>; Thu,  2 Jul 2020 13:51:54 +0000 (UTC)
IronPort-SDR: ibUmnI0wtfM4GT2QuyY1mc3iD0tYXkvKrwoshGt68p+bXg/KyzwRT1m7x2LT1PxSGjwcS8I4Xx
 wc3g9wglWfTA==
X-IronPort-AV: E=McAfee;i="6000,8403,9669"; a="134352877"
X-IronPort-AV: E=Sophos;i="5.75,304,1589266800"; d="scan'208";a="134352877"
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
 by orsmga106.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 02 Jul 2020 06:51:54 -0700
IronPort-SDR: QCS05Js+VnSZQXhFt4VXTO6YJHaqIeK3AX9D8iYWl4QQrqtnTw7AZJmpz/P4dH1GHvLvdk5gsa
 Zltm5qjIat6g==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.75,304,1589266800"; d="scan'208";a="314137552"
Received: from ayazahma-nuc8i7beh.iind.intel.com ([10.145.162.59])
 by fmsmga002.fm.intel.com with ESMTP; 02 Jul 2020 06:51:48 -0700
From: Ayaz A Siddiqui <ayaz.siddiqui@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Thu,  2 Jul 2020 19:19:03 +0530
Message-Id: <20200702134903.602364-2-ayaz.siddiqui@intel.com>
X-Mailer: git-send-email 2.26.2
In-Reply-To: <20200702134903.602364-1-ayaz.siddiqui@intel.com>
References: <20200702134903.602364-1-ayaz.siddiqui@intel.com>
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH v2 1/1] drm/i915/gt: Initialize reserved and
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
Cc: Spruit Neil R <neil.r.spruit@intel.com>,
 Mathew Alwin <alwin.mathew@intel.com>, Zhou Cheng <cheng.zhou@intel.com>,
 Lucas De Marchi <lucas.demarchi@intel.com>,
 Chris Wilson <chris@chris-wilson.co.uk>,
 Benemelis Mike G <mike.g.benemelis@intel.com>,
 Mcguire Russell W <russell.w.mcguire@intel.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

In order to avoid functional breakage of mis-programmed applications that
have grown to depend on unused MOCS entries, we are programming
those entries to be equal to fully cached ("L3 + LLC") entry.

These reserved and unspecified entries should not be used as they may be
changed to less performant variants with better coherency in the future
if more entries are needed.

V2: As suggested by Lucas "De Marchi" to utilise __init_mocs_table for
programming default value, setting I915_MOCS_PTE index of tgl_mocs_table
with desired value.

Cc: Chris Wilson <chris@chris-wilson.co.uk>
Cc: Lucas De Marchi <lucas.demarchi@intel.com>
Cc: Tomasz Lis <tomasz.lis@intel.com>
Cc: Matt Roper <matthew.d.roper@intel.com>
Cc: Joonas Lahtinen <joonas.lahtinen@linux.intel.com>
Cc: Francisco Jerez <currojerez@riseup.net>
Cc: Mathew Alwin <alwin.mathew@intel.com>
Cc: Mcguire Russell W <russell.w.mcguire@intel.com>
Cc: Spruit Neil R <neil.r.spruit@intel.com>
Cc: Zhou Cheng <cheng.zhou@intel.com>
Cc: Benemelis Mike G <mike.g.benemelis@intel.com>

Signed-off-by: Ayaz A Siddiqui <ayaz.siddiqui@intel.com>
---
 drivers/gpu/drm/i915/gt/intel_mocs.c | 15 +++++++++++----
 1 file changed, 11 insertions(+), 4 deletions(-)

diff --git a/drivers/gpu/drm/i915/gt/intel_mocs.c b/drivers/gpu/drm/i915/gt/intel_mocs.c
index 632e08a4592b2..c32f90bd56693 100644
--- a/drivers/gpu/drm/i915/gt/intel_mocs.c
+++ b/drivers/gpu/drm/i915/gt/intel_mocs.c
@@ -234,11 +234,17 @@ static const struct drm_i915_mocs_entry broxton_mocs_table[] = {
 		   L3_1_UC)
 
 static const struct drm_i915_mocs_entry tgl_mocs_table[] = {
-	/* Base - Error (Reserved for Non-Use) */
-	MOCS_ENTRY(0, 0x0, 0x0),
-	/* Base - Reserved */
-	MOCS_ENTRY(1, 0x0, 0x0),
 
+	/* NOTE:
+	 * Reserved and unspecified MOCS indices have been set to (L3 + LCC).
+	 * These reserved entry should never be used, they may be chanaged
+	 * to low performant variants with better coherency in the future if
+	 * more entries are needed. We are programming index I915_MOCS_PTE(1)
+	 * only, __init_mocs_table() take care to prgramm unseud index with
+	 * this entry.
+	 */
+	MOCS_ENTRY(1, LE_3_WB | LE_TC_1_LLC | LE_LRUM(3),
+		   L3_3_WB),
 	GEN11_MOCS_ENTRIES,
 
 	/* Implicitly enable L1 - HDC:L1 + L3 + LLC */
@@ -265,6 +271,7 @@ static const struct drm_i915_mocs_entry tgl_mocs_table[] = {
 	MOCS_ENTRY(61,
 		   LE_1_UC | LE_TC_1_LLC,
 		   L3_3_WB),
+
 };
 
 static const struct drm_i915_mocs_entry icl_mocs_table[] = {
-- 
2.26.2

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
