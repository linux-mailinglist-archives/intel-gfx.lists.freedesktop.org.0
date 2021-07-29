Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 1B1163DA99C
	for <lists+intel-gfx@lfdr.de>; Thu, 29 Jul 2021 19:01:03 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 5AEA26EE06;
	Thu, 29 Jul 2021 17:01:01 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga03.intel.com (mga03.intel.com [134.134.136.65])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 3B4946EE04
 for <intel-gfx@lists.freedesktop.org>; Thu, 29 Jul 2021 17:00:25 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6200,9189,10060"; a="212966838"
X-IronPort-AV: E=Sophos;i="5.84,279,1620716400"; d="scan'208";a="212966838"
Received: from orsmga006.jf.intel.com ([10.7.209.51])
 by orsmga103.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 29 Jul 2021 10:00:24 -0700
X-IronPort-AV: E=Sophos;i="5.84,279,1620716400"; d="scan'208";a="417712183"
Received: from mdroper-desk1.fm.intel.com ([10.1.27.134])
 by orsmga006-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 29 Jul 2021 10:00:24 -0700
From: Matt Roper <matthew.d.roper@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Thu, 29 Jul 2021 10:00:03 -0700
Message-Id: <20210729170008.2836648-14-matthew.d.roper@intel.com>
X-Mailer: git-send-email 2.25.4
In-Reply-To: <20210729170008.2836648-1-matthew.d.roper@intel.com>
References: <20210729170008.2836648-1-matthew.d.roper@intel.com>
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH v4 13/18] drm/i915/dg2: Define MOCS table for DG2
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

Bspec: 45101, 45427
Cc: Ramalingam C <ramalingam.c@intel.com>(v5)
Signed-off-by: Matt Roper <matthew.d.roper@intel.com>
Reviewed-by: Matt Atwood <matthew.s.atwood@intel.com>
---
 drivers/gpu/drm/i915/gt/intel_mocs.c | 35 +++++++++++++++++++++++++++-
 1 file changed, 34 insertions(+), 1 deletion(-)

diff --git a/drivers/gpu/drm/i915/gt/intel_mocs.c b/drivers/gpu/drm/i915/gt/intel_mocs.c
index 0c9d0b936c20..ad021337225d 100644
--- a/drivers/gpu/drm/i915/gt/intel_mocs.c
+++ b/drivers/gpu/drm/i915/gt/intel_mocs.c
@@ -341,6 +341,30 @@ static const struct drm_i915_mocs_entry xehpsdv_mocs_table[] = {
 	MOCS_ENTRY(63, 0, L3_1_UC),
 };
 
+static const struct drm_i915_mocs_entry dg2_mocs_table[] = {
+	/* UC - Coherent; GO:L3 */
+	MOCS_ENTRY(0, 0, L3_1_UC | L3_LKUP(1)),
+	/* UC - Coherent; GO:Memory */
+	MOCS_ENTRY(1, 0, L3_1_UC | L3_GLBGO(1) | L3_LKUP(1)),
+	/* UC - Non-Coherent; GO:Memory */
+	MOCS_ENTRY(2, 0, L3_1_UC | L3_GLBGO(1)),
+
+	/* WB - LC */
+	MOCS_ENTRY(3, 0, L3_3_WB | L3_LKUP(1)),
+};
+
+static const struct drm_i915_mocs_entry dg2_mocs_table_g10_ax[] = {
+	/* Wa_14011441408: Set Go to Memory for MOCS#0 */
+	MOCS_ENTRY(0, 0, L3_1_UC | L3_GLBGO(1) | L3_LKUP(1)),
+	/* UC - Coherent; GO:Memory */
+	MOCS_ENTRY(1, 0, L3_1_UC | L3_GLBGO(1) | L3_LKUP(1)),
+	/* UC - Non-Coherent; GO:Memory */
+	MOCS_ENTRY(2, 0, L3_1_UC | L3_GLBGO(1)),
+
+	/* WB - LC */
+	MOCS_ENTRY(3, 0, L3_3_WB | L3_LKUP(1)),
+};
+
 enum {
 	HAS_GLOBAL_MOCS = BIT(0),
 	HAS_ENGINE_MOCS = BIT(1),
@@ -367,7 +391,16 @@ static unsigned int get_mocs_settings(const struct drm_i915_private *i915,
 {
 	unsigned int flags;
 
-	if (IS_XEHPSDV(i915)) {
+	if (IS_DG2(i915)) {
+		if (IS_DG2_GT_STEP(i915, G10, STEP_A0, STEP_B0)) {
+			table->size = ARRAY_SIZE(dg2_mocs_table_g10_ax);
+			table->table = dg2_mocs_table_g10_ax;
+		} else {
+			table->size = ARRAY_SIZE(dg2_mocs_table);
+			table->table = dg2_mocs_table;
+		}
+		table->n_entries = GEN9_NUM_MOCS_ENTRIES;
+	} else if (IS_XEHPSDV(i915)) {
 		table->size = ARRAY_SIZE(xehpsdv_mocs_table);
 		table->table = xehpsdv_mocs_table;
 		table->n_entries = GEN9_NUM_MOCS_ENTRIES;
-- 
2.25.4

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
