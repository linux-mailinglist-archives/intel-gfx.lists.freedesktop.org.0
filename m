Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id C636E3B976F
	for <lists+intel-gfx@lfdr.de>; Thu,  1 Jul 2021 22:26:36 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 1E8076EC05;
	Thu,  1 Jul 2021 20:25:37 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga14.intel.com (mga14.intel.com [192.55.52.115])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 471146EC11;
 Thu,  1 Jul 2021 20:25:24 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6200,9189,10032"; a="208436160"
X-IronPort-AV: E=Sophos;i="5.83,315,1616482800"; d="scan'208";a="208436160"
Received: from fmsmga005.fm.intel.com ([10.253.24.32])
 by fmsmga103.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 01 Jul 2021 13:25:21 -0700
X-IronPort-AV: E=Sophos;i="5.83,315,1616482800"; d="scan'208";a="644564475"
Received: from mdroper-desk1.fm.intel.com ([10.1.27.134])
 by fmsmga005-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 01 Jul 2021 13:25:19 -0700
From: Matt Roper <matthew.d.roper@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Thu,  1 Jul 2021 13:23:55 -0700
Message-Id: <20210701202427.1547543-22-matthew.d.roper@intel.com>
X-Mailer: git-send-email 2.25.4
In-Reply-To: <20210701202427.1547543-1-matthew.d.roper@intel.com>
References: <20210701202427.1547543-1-matthew.d.roper@intel.com>
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH 21/53] drm/i915/xehpsdv: Define MOCS table for
 XeHP SDV
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
Cc: Lucas De Marchi <lucas.demarchi@intel.com>, dri-devel@lists.freedesktop.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

From: Lucas De Marchi <lucas.demarchi@intel.com>

Like DG1, XeHP SDV doesn't have LLC/eDRAM control values due to being a
dgfx card. XeHP SDV adds 2 more bits: L3_GLBGO to "push the Go point to
memory for L3 destined transaction" and L3_LKP to "enable Lookup for
uncacheable accesses".

Bspec: 45101
Cc: Daniele Ceraolo Spurio <daniele.ceraolospurio@intel.com>
Signed-off-by: Lucas De Marchi <lucas.demarchi@intel.com>
Signed-off-by: Stuart Summers <stuart.summers@intel.com>
Signed-off-by: Matt Roper <matthew.d.roper@intel.com>
---
 drivers/gpu/drm/i915/gt/intel_mocs.c | 33 +++++++++++++++++++++++++++-
 1 file changed, 32 insertions(+), 1 deletion(-)

diff --git a/drivers/gpu/drm/i915/gt/intel_mocs.c b/drivers/gpu/drm/i915/gt/intel_mocs.c
index 17848807f111..0c9d0b936c20 100644
--- a/drivers/gpu/drm/i915/gt/intel_mocs.c
+++ b/drivers/gpu/drm/i915/gt/intel_mocs.c
@@ -40,6 +40,8 @@ struct drm_i915_mocs_table {
 #define L3_ESC(value)		((value) << 0)
 #define L3_SCC(value)		((value) << 1)
 #define _L3_CACHEABILITY(value)	((value) << 4)
+#define L3_GLBGO(value)		((value) << 6)
+#define L3_LKUP(value)		((value) << 7)
 
 /* Helper defines */
 #define GEN9_NUM_MOCS_ENTRIES	64  /* 63-64 are reserved, but configured. */
@@ -314,6 +316,31 @@ static const struct drm_i915_mocs_entry dg1_mocs_table[] = {
 	MOCS_ENTRY(63, 0, L3_1_UC),
 };
 
+static const struct drm_i915_mocs_entry xehpsdv_mocs_table[] = {
+	/* wa_1608975824 */
+	MOCS_ENTRY(0, 0, L3_3_WB | L3_LKUP(1)),
+
+	/* UC - Coherent; GO:L3 */
+	MOCS_ENTRY(1, 0, L3_1_UC | L3_LKUP(1)),
+	/* UC - Coherent; GO:Memory */
+	MOCS_ENTRY(2, 0, L3_1_UC | L3_GLBGO(1) | L3_LKUP(1)),
+	/* UC - Non-Coherent; GO:Memory */
+	MOCS_ENTRY(3, 0, L3_1_UC | L3_GLBGO(1)),
+	/* UC - Non-Coherent; GO:L3 */
+	MOCS_ENTRY(4, 0, L3_1_UC),
+
+	/* WB */
+	MOCS_ENTRY(5, 0, L3_3_WB | L3_LKUP(1)),
+
+	/* HW Reserved - SW program but never use. */
+	MOCS_ENTRY(48, 0, L3_3_WB | L3_LKUP(1)),
+	MOCS_ENTRY(49, 0, L3_1_UC | L3_LKUP(1)),
+	MOCS_ENTRY(60, 0, L3_1_UC),
+	MOCS_ENTRY(61, 0, L3_1_UC),
+	MOCS_ENTRY(62, 0, L3_1_UC),
+	MOCS_ENTRY(63, 0, L3_1_UC),
+};
+
 enum {
 	HAS_GLOBAL_MOCS = BIT(0),
 	HAS_ENGINE_MOCS = BIT(1),
@@ -340,7 +367,11 @@ static unsigned int get_mocs_settings(const struct drm_i915_private *i915,
 {
 	unsigned int flags;
 
-	if (IS_DG1(i915)) {
+	if (IS_XEHPSDV(i915)) {
+		table->size = ARRAY_SIZE(xehpsdv_mocs_table);
+		table->table = xehpsdv_mocs_table;
+		table->n_entries = GEN9_NUM_MOCS_ENTRIES;
+	} else if (IS_DG1(i915)) {
 		table->size = ARRAY_SIZE(dg1_mocs_table);
 		table->table = dg1_mocs_table;
 		table->n_entries = GEN9_NUM_MOCS_ENTRIES;
-- 
2.25.4

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
