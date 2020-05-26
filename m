Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 8F45D1DC3D6
	for <lists+intel-gfx@lfdr.de>; Thu, 21 May 2020 02:38:27 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id A34366E8D8;
	Thu, 21 May 2020 00:38:13 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga05.intel.com (mga05.intel.com [192.55.52.43])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 7D4AD6E8CB
 for <intel-gfx@lists.freedesktop.org>; Thu, 21 May 2020 00:38:10 +0000 (UTC)
IronPort-SDR: 0IQmVw0yrLaC2cLshFUeTX6iyedNnNO7G5Q6Ay8C9PH69ZwO5WsFufZKljaCevOL8WSi6dD3dG
 8Au4Pxr8iHsA==
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga006.fm.intel.com ([10.253.24.20])
 by fmsmga105.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 20 May 2020 17:38:10 -0700
IronPort-SDR: TCV8gdFvy/6osgIJ0OR61SUbGi8kK+MLhQNV6YscHrs0+oW01u4d3SXGE4ao/qRH9nL2i+Smdc
 /LtYW3b+1q+g==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.73,415,1583222400"; d="scan'208";a="466720897"
Received: from ldmartin1-desk.jf.intel.com ([10.165.21.151])
 by fmsmga006.fm.intel.com with ESMTP; 20 May 2020 17:38:10 -0700
From: Lucas De Marchi <lucas.demarchi@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Wed, 20 May 2020 17:37:41 -0700
Message-Id: <20200521003803.18936-16-lucas.demarchi@intel.com>
X-Mailer: git-send-email 2.26.2
In-Reply-To: <20200521003803.18936-1-lucas.demarchi@intel.com>
References: <20200521003803.18936-1-lucas.demarchi@intel.com>
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH 15/37] drm/i915/dg1: Define MOCS table for DG1
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
Cc: fernando.pacheco@intel.com, Matthew Auld <matthew.auld@intel.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

DG1 has a new MOCS table. We still use the old definition of the table,
but as for any dgfx card it doesn't contain the control_value values
(these values don't matter as we won't program them).

Bspec: 45101

Cc: Daniele Ceraolo Spurio <daniele.ceraolospurio@intel.com>
Cc: Rodrigo Vivi <rodrigo.vivi@intel.com>
Signed-off-by: Lucas De Marchi <lucas.demarchi@intel.com>
---
 drivers/gpu/drm/i915/gt/intel_mocs.c | 39 +++++++++++++++++++++++++++-
 1 file changed, 38 insertions(+), 1 deletion(-)

diff --git a/drivers/gpu/drm/i915/gt/intel_mocs.c b/drivers/gpu/drm/i915/gt/intel_mocs.c
index 632e08a4592b..7217c6e2087c 100644
--- a/drivers/gpu/drm/i915/gt/intel_mocs.c
+++ b/drivers/gpu/drm/i915/gt/intel_mocs.c
@@ -280,6 +280,39 @@ static const struct drm_i915_mocs_entry icl_mocs_table[] = {
 	GEN11_MOCS_ENTRIES
 };
 
+static const struct drm_i915_mocs_entry dg1_mocs_table[] = {
+	/* Error */
+	MOCS_ENTRY(0, 0, L3_0_DIRECT),
+
+	/* UC */
+	MOCS_ENTRY(1, 0, L3_1_UC),
+
+	/* Reserved */
+	MOCS_ENTRY(2, 0, L3_0_DIRECT),
+	MOCS_ENTRY(3, 0, L3_0_DIRECT),
+	MOCS_ENTRY(4, 0, L3_0_DIRECT),
+
+	/* WB - L3 */
+	MOCS_ENTRY(5, 0, L3_3_WB),
+	/* WB - L3 50% */
+	MOCS_ENTRY(6, 0, L3_ESC(1) | L3_SCC(1) | L3_3_WB),
+	/* WB - L3 25% */
+	MOCS_ENTRY(7, 0, L3_ESC(1) | L3_SCC(3) | L3_3_WB),
+	/* WB - L3 12.5% */
+	MOCS_ENTRY(8, 0, L3_ESC(1) | L3_SCC(7) | L3_3_WB),
+
+	/* HDC:L1 + L3 */
+	MOCS_ENTRY(48, 0, L3_3_WB),
+	/* HDC:L1 */
+	MOCS_ENTRY(49, 0, L3_1_UC),
+
+	/* HW Reserved */
+	MOCS_ENTRY(60, 0, L3_1_UC),
+	MOCS_ENTRY(61, 0, L3_1_UC),
+	MOCS_ENTRY(62, 0, L3_1_UC),
+	MOCS_ENTRY(63, 0, L3_1_UC),
+};
+
 enum {
 	HAS_GLOBAL_MOCS = BIT(0),
 	HAS_ENGINE_MOCS = BIT(1),
@@ -306,7 +339,11 @@ static unsigned int get_mocs_settings(const struct drm_i915_private *i915,
 {
 	unsigned int flags;
 
-	if (INTEL_GEN(i915) >= 12) {
+	if (IS_DG1(i915)) {
+		table->size = ARRAY_SIZE(dg1_mocs_table);
+		table->table = dg1_mocs_table;
+		table->n_entries = GEN11_NUM_MOCS_ENTRIES;
+	} else if (INTEL_GEN(i915) >= 12) {
 		table->size  = ARRAY_SIZE(tgl_mocs_table);
 		table->table = tgl_mocs_table;
 		table->n_entries = GEN11_NUM_MOCS_ENTRIES;
-- 
2.26.2

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
