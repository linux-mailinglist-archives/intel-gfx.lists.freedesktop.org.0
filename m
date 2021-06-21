Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 861583AE9C0
	for <lists+intel-gfx@lfdr.de>; Mon, 21 Jun 2021 15:09:04 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 5C1E989A92;
	Mon, 21 Jun 2021 13:09:02 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
 by gabe.freedesktop.org (Postfix) with ESMTPS id F202689A92
 for <intel-gfx@lists.freedesktop.org>; Mon, 21 Jun 2021 13:09:00 +0000 (UTC)
IronPort-SDR: uq9s2kxIYRZ5D/Az7CmRNs+V3tnGJVlYWYNK09ngollMHR+hAO2Ro5frzTbf5fU6Txd0kQnpQe
 Kxe/s82dj3Zw==
X-IronPort-AV: E=McAfee;i="6200,9189,10021"; a="206784301"
X-IronPort-AV: E=Sophos;i="5.83,289,1616482800"; d="scan'208";a="206784301"
Received: from fmsmga007.fm.intel.com ([10.253.24.52])
 by orsmga102.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 21 Jun 2021 06:05:18 -0700
IronPort-SDR: bPWc9e62rNXZjfK6Jmz51Hz6wM9denWkj1TChhYYe6+Kc2QxmQ9nA6aUWysnwTfP+aA9womN9M
 Vcxl3vHN7nJQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.83,289,1616482800"; d="scan'208";a="417054936"
Received: from tejas-system-product-name.iind.intel.com ([10.145.162.130])
 by fmsmga007.fm.intel.com with ESMTP; 21 Jun 2021 06:05:17 -0700
From: Tejas Upadhyay <tejaskumarx.surendrakumar.upadhyay@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Mon, 21 Jun 2021 18:26:22 +0530
Message-Id: <20210621125622.877864-1-tejaskumarx.surendrakumar.upadhyay@intel.com>
X-Mailer: git-send-email 2.31.1
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH V2] drm/i915/ehl: Update MOCS table for EHL
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

From: Matt Roper <matthew.d.roper@intel.com>

These extra EHL entries were not behaving as expected without proper
flushing implemented in kernel.
Commit a679f58d0510 ("drm/i915: Flush pages on acquisition")
introduces proper flushing to make it work as expected.

Hence adding those EHL entries back.

Changes since V1:
	- commit message modified with Commit - Joonas

Cc: Francisco Jerez <francisco.jerez.plata@intel.com>
Cc: Jon Bloomfield <jon.bloomfield@intel.com>
Cc: Lucas De Marchi <lucas.demarchi@intel.com>
Cc: <stable@vger.kernel.org>
Signed-off-by: Matt Roper <matthew.d.roper@intel.com>
Fixes: 046091758b50 ("Revert "drm/i915/ehl: Update MOCS table for EHL"")
Link: https://patchwork.freedesktop.org/patch/msgid/20191112224757.25116-1-matthew.d.roper@intel.com
---
 drivers/gpu/drm/i915/gt/intel_mocs.c | 8 ++++++++
 1 file changed, 8 insertions(+)

diff --git a/drivers/gpu/drm/i915/gt/intel_mocs.c b/drivers/gpu/drm/i915/gt/intel_mocs.c
index 17848807f111..7d9ef0210805 100644
--- a/drivers/gpu/drm/i915/gt/intel_mocs.c
+++ b/drivers/gpu/drm/i915/gt/intel_mocs.c
@@ -194,6 +194,14 @@ static const struct drm_i915_mocs_entry broxton_mocs_table[] = {
 	MOCS_ENTRY(15, \
 		   LE_3_WB | LE_TC_1_LLC | LE_LRUM(2) | LE_AOM(1), \
 		   L3_3_WB), \
+	/* Bypass LLC - Uncached (EHL+) */ \
+	MOCS_ENTRY(16, \
+		   LE_1_UC | LE_TC_1_LLC | LE_SCF(1), \
+		   L3_1_UC), \
+	/* Bypass LLC - L3 (Read-Only) (EHL+) */ \
+	MOCS_ENTRY(17, \
+		   LE_1_UC | LE_TC_1_LLC | LE_SCF(1), \
+		   L3_3_WB), \
 	/* Self-Snoop - L3 + LLC */ \
 	MOCS_ENTRY(18, \
 		   LE_3_WB | LE_TC_1_LLC | LE_LRUM(3) | LE_SSE(3), \
-- 
2.31.1

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
