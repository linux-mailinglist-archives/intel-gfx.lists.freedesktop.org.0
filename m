Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id E401D231CB6
	for <lists+intel-gfx@lfdr.de>; Wed, 29 Jul 2020 12:29:19 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 517E66E4AE;
	Wed, 29 Jul 2020 10:29:18 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga18.intel.com (mga18.intel.com [134.134.136.126])
 by gabe.freedesktop.org (Postfix) with ESMTPS id C5DC56E4AE
 for <intel-gfx@lists.freedesktop.org>; Wed, 29 Jul 2020 10:29:16 +0000 (UTC)
IronPort-SDR: B3abC94W3DcS3ksEAo0WcXi9uanj/QHA/u/AZDN/OabCoJAbTE7WEsHQZ6t00QT5xWAKwpJbk6
 KPPquBXYOANA==
X-IronPort-AV: E=McAfee;i="6000,8403,9696"; a="138921585"
X-IronPort-AV: E=Sophos;i="5.75,410,1589266800"; d="scan'208";a="138921585"
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga008.fm.intel.com ([10.253.24.58])
 by orsmga106.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 29 Jul 2020 03:29:16 -0700
IronPort-SDR: IRRXTxjpkNrjiRn9Smn3dc7Q2MC4eun+wvvEEpVqT0lC826M6yXFCML5JZB+bc6hg0HsebQN1S
 mkOeKyOES9jg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.75,410,1589266800"; d="scan'208";a="273851369"
Received: from ayazahma-nuc8i7beh.iind.intel.com ([10.145.162.59])
 by fmsmga008.fm.intel.com with ESMTP; 29 Jul 2020 03:29:12 -0700
From: Ayaz A Siddiqui <ayaz.siddiqui@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Wed, 29 Jul 2020 15:55:39 +0530
Message-Id: <20200729102539.134731-2-ayaz.siddiqui@intel.com>
X-Mailer: git-send-email 2.26.2
In-Reply-To: <20200729102539.134731-1-ayaz.siddiqui@intel.com>
References: <20200729102539.134731-1-ayaz.siddiqui@intel.com>
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH v4 1/1] drm/i915/gt: Initialize reserved and
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

V2: As suggested by Lucas De Marchi to utilise __init_mocs_table for
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
Reviewed-by: Lucas De Marchi <lucas.demarchi@intel.com>
---
 drivers/gpu/drm/i915/gt/intel_mocs.c | 15 +++++++++++----
 1 file changed, 11 insertions(+), 4 deletions(-)

diff --git a/drivers/gpu/drm/i915/gt/intel_mocs.c b/drivers/gpu/drm/i915/gt/intel_mocs.c
index 632e08a4592b..f5dde723f612 100644
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
+	 * These reserved entries should never be used, they may be changed
+	 * to low performant variants with better coherency in the future if
+	 * more entries are needed. We are programming index I915_MOCS_PTE(1)
+	 * only, __init_mocs_table() take care to program unused index with
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
