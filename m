Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id E935121B464
	for <lists+intel-gfx@lfdr.de>; Fri, 10 Jul 2020 13:59:20 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 6FCEE6EBE8;
	Fri, 10 Jul 2020 11:59:19 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
 by gabe.freedesktop.org (Postfix) with ESMTPS id A6BA56EBE8
 for <intel-gfx@lists.freedesktop.org>; Fri, 10 Jul 2020 11:59:17 +0000 (UTC)
IronPort-SDR: BSXvQHOpSOd3JGOAsUgNhgp78BPzMbqmy5/lBPV5fhw0uXmD0DOrvElFnDOL8o6YF+ZIpFPn3i
 WZxzQmcc4muw==
X-IronPort-AV: E=McAfee;i="6000,8403,9677"; a="149653652"
X-IronPort-AV: E=Sophos;i="5.75,335,1589266800"; d="scan'208";a="149653652"
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga005.jf.intel.com ([10.7.209.41])
 by orsmga102.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 10 Jul 2020 04:59:17 -0700
IronPort-SDR: rw7mMDi94LQCo7NyFtLwj1UzafphnhmHv9L84sxiMTQn4zCmG1KJhKzY8UEeUNM8a0oykKBkUZ
 71bwbV11kVMQ==
X-IronPort-AV: E=Sophos;i="5.75,335,1589266800"; d="scan'208";a="458257359"
Received: from nmartino-mobl1.ger.corp.intel.com (HELO
 mwahaha-bdw.ger.corp.intel.com) ([10.255.207.224])
 by orsmga005-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 10 Jul 2020 04:59:14 -0700
From: Matthew Auld <matthew.auld@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Fri, 10 Jul 2020 12:57:05 +0100
Message-Id: <20200710115757.290984-9-matthew.auld@intel.com>
X-Mailer: git-send-email 2.26.2
In-Reply-To: <20200710115757.290984-1-matthew.auld@intel.com>
References: <20200710115757.290984-1-matthew.auld@intel.com>
MIME-Version: 1.0
Subject: [Intel-gfx] [RFC 08/60] drm/i915/dg1: Define MOCS table for DG1
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
Cc: Lucas De Marchi <lucas.demarchi@intel.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

From: Lucas De Marchi <lucas.demarchi@intel.com>

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
