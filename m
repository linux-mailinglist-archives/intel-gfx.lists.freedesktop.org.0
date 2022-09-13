Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id E57405B7444
	for <lists+intel-gfx@lfdr.de>; Tue, 13 Sep 2022 17:22:47 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id CAC2A10E770;
	Tue, 13 Sep 2022 15:22:38 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 0F4A010E76C
 for <intel-gfx@lists.freedesktop.org>; Tue, 13 Sep 2022 15:22:26 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1663082546; x=1694618546;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=as3tLfMVrpkws0czxsFczYerumKmLoilAdjTAseCgS0=;
 b=cyHRHP2aEMqo1R3W9BH2dq/BQUALbF2x5ZfsqzlWFEhCcta/7kwJuYr3
 mgwWopFCpKcDFPBHmOSeiu9/QAZTMFBdt/jbmarhRkMUugoKQ+j/OolXG
 4wHwEWbr0OHP48ji/jZ6i9K/XoDC77UXhwyGof/4XZtaJX8JEtg37itAc
 OO7fv5tdr6ZQ9jcQsJGuHVUKr2XsIniVttu+491JTu8s6byfPx6MB49gy
 ZegCJKlC0UHqJdYYiXIaDFkur5Fygxficu5Luct19x9n0JQY8LWT4bVTx
 JgfbP+Q0ntF35v5lzHIWd4KOTZjZEoznN5wXtTUGhuAePz4reZwVTTb9Q w==;
X-IronPort-AV: E=McAfee;i="6500,9779,10469"; a="298963971"
X-IronPort-AV: E=Sophos;i="5.93,313,1654585200"; d="scan'208";a="298963971"
Received: from orsmga006.jf.intel.com ([10.7.209.51])
 by orsmga102.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 13 Sep 2022 08:22:24 -0700
X-IronPort-AV: E=Sophos;i="5.93,313,1654585200"; d="scan'208";a="593977882"
Received: from abaczek-mobl.ger.corp.intel.com (HELO
 kdrobnik-desk.toya.net.pl) ([10.213.8.5])
 by orsmga006-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 13 Sep 2022 08:22:20 -0700
From: Karolina Drobnik <karolina.drobnik@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Tue, 13 Sep 2022 17:21:49 +0200
Message-Id: <7377cb3b371a983dce02be69f6611fcf85c822bb.1663081418.git.karolina.drobnik@intel.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <cover.1663081418.git.karolina.drobnik@intel.com>
References: <cover.1663081418.git.karolina.drobnik@intel.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH v5 2/4] drm/i915/selftests: Check for incomplete
 LRI from the context image
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
Cc: Thomas Hellstrom <thomas.hellstrom@linux.intel.com>,
 Ramalingam C <ramalingampc2008@gmail.com>,
 Ramalingam C <ramalingam.c@intel.com>, Chris Wilson <chris.p.wilson@intel.com>,
 Chris Wilson <chris@chris-wilson.co.uk>
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

From: Chris Wilson <chris@chris-wilson.co.uk>

In order to keep the context image parser simple, we assume that all
commands follow a similar format. A few, especially not MI commands on
the render engines, have fixed lengths not encoded in a length field.
This caused us to incorrectly skip over 3D state commands, and start
interpreting context data as instructions. Eventually, as Daniele
discovered, this would lead us to find addition LRI as part of the data
and mistakenly add invalid LRI commands to the context probes.

Stop parsing after we see the first !MI command, as we know we will have
seen all the context registers by that point. (Mostly true for all gen
so far, though the render context does have LRI after the first page
that we have been ignoring so far. It would be useful to extract those
as well so that we have the full list of user accessible registers.)

Similarly, emit a warning if we do try to emit an invalid zero-length
LRI.

Testcase: igt@i915_selftest@live@gt_lrc
Closes: https://gitlab.freedesktop.org/drm/intel/-/issues/6580
Closes: https://gitlab.freedesktop.org/drm/intel/-/issues/6670

Reported-by: Daniele Ceraolo Spurio <daniele.ceraolospurio@intel.com>
Signed-off-by: Chris Wilson <chris@chris-wilson.co.uk>
Cc: Daniele Ceraolo Spurio <daniele.ceraolospurio@intel.com>
Signed-off-by: Ramalingam C <ramalingam.c@intel.com>
Acked-by: Thomas Hellstrom <thomas.hellstrom@linux.intel.com>
Signed-off-by: Karolina Drobnik <karolina.drobnik@intel.com>
Reviewed-by: Gwan-gyeong Mun <gwan-gyeong.mun@intel.com>
---
 drivers/gpu/drm/i915/gt/selftest_lrc.c | 61 +++++++++++++++++++++++---
 1 file changed, 54 insertions(+), 7 deletions(-)

diff --git a/drivers/gpu/drm/i915/gt/selftest_lrc.c b/drivers/gpu/drm/i915/gt/selftest_lrc.c
index 9fc031267e0f..8320eab7ac36 100644
--- a/drivers/gpu/drm/i915/gt/selftest_lrc.c
+++ b/drivers/gpu/drm/i915/gt/selftest_lrc.c
@@ -27,6 +27,9 @@
 #define NUM_GPR 16
 #define NUM_GPR_DW (NUM_GPR * 2) /* each GPR is 2 dwords */
 
+#define LRI_HEADER MI_INSTR(0x22, 0)
+#define LRI_LENGTH_MASK GENMASK(7, 0)
+
 static struct i915_vma *create_scratch(struct intel_gt *gt)
 {
 	return __vm_create_scratch_for_read_pinned(&gt->ggtt->vm, PAGE_SIZE);
@@ -202,7 +205,7 @@ static int live_lrc_layout(void *arg)
 				continue;
 			}
 
-			if ((lri & GENMASK(31, 23)) != MI_INSTR(0x22, 0)) {
+			if ((lri & GENMASK(31, 23)) != LRI_HEADER) {
 				pr_err("%s: Expected LRI command at dword %d, found %08x\n",
 				       engine->name, dw, lri);
 				err = -EINVAL;
@@ -992,18 +995,40 @@ store_context(struct intel_context *ce, struct i915_vma *scratch)
 	hw = defaults;
 	hw += LRC_STATE_OFFSET / sizeof(*hw);
 	do {
-		u32 len = hw[dw] & 0x7f;
+		u32 len = hw[dw] & LRI_LENGTH_MASK;
+
+		/*
+		 * Keep it simple, skip parsing complex commands
+		 *
+		 * At present, there are no more MI_LOAD_REGISTER_IMM
+		 * commands after the first 3D state command. Rather
+		 * than include a table (see i915_cmd_parser.c) of all
+		 * the possible commands and their instruction lengths
+		 * (or mask for variable length instructions), assume
+		 * we have gathered the complete list of registers and
+		 * bail out.
+		 */
+		if ((hw[dw] >> INSTR_CLIENT_SHIFT) != INSTR_MI_CLIENT)
+			break;
 
 		if (hw[dw] == 0) {
 			dw++;
 			continue;
 		}
 
-		if ((hw[dw] & GENMASK(31, 23)) != MI_INSTR(0x22, 0)) {
+		if ((hw[dw] & GENMASK(31, 23)) != LRI_HEADER) {
+			/* Assume all other MI commands match LRI length mask */
 			dw += len + 2;
 			continue;
 		}
 
+		if (!len) {
+			pr_err("%s: invalid LRI found in context image\n",
+			       ce->engine->name);
+			igt_hexdump(defaults, PAGE_SIZE);
+			break;
+		}
+
 		dw++;
 		len = (len + 1) / 2;
 		while (len--) {
@@ -1155,18 +1180,29 @@ static struct i915_vma *load_context(struct intel_context *ce, u32 poison)
 	hw = defaults;
 	hw += LRC_STATE_OFFSET / sizeof(*hw);
 	do {
-		u32 len = hw[dw] & 0x7f;
+		u32 len = hw[dw] & LRI_LENGTH_MASK;
+
+		/* For simplicity, break parsing at the first complex command */
+		if ((hw[dw] >> INSTR_CLIENT_SHIFT) != INSTR_MI_CLIENT)
+			break;
 
 		if (hw[dw] == 0) {
 			dw++;
 			continue;
 		}
 
-		if ((hw[dw] & GENMASK(31, 23)) != MI_INSTR(0x22, 0)) {
+		if ((hw[dw] & GENMASK(31, 23)) != LRI_HEADER) {
 			dw += len + 2;
 			continue;
 		}
 
+		if (!len) {
+			pr_err("%s: invalid LRI found in context image\n",
+			       ce->engine->name);
+			igt_hexdump(defaults, PAGE_SIZE);
+			break;
+		}
+
 		dw++;
 		len = (len + 1) / 2;
 		*cs++ = MI_LOAD_REGISTER_IMM(len);
@@ -1297,18 +1333,29 @@ static int compare_isolation(struct intel_engine_cs *engine,
 	hw = defaults;
 	hw += LRC_STATE_OFFSET / sizeof(*hw);
 	do {
-		u32 len = hw[dw] & 0x7f;
+		u32 len = hw[dw] & LRI_LENGTH_MASK;
+
+		/* For simplicity, break parsing at the first complex command */
+		if ((hw[dw] >> INSTR_CLIENT_SHIFT) != INSTR_MI_CLIENT)
+			break;
 
 		if (hw[dw] == 0) {
 			dw++;
 			continue;
 		}
 
-		if ((hw[dw] & GENMASK(31, 23)) != MI_INSTR(0x22, 0)) {
+		if ((hw[dw] & GENMASK(31, 23)) != LRI_HEADER) {
 			dw += len + 2;
 			continue;
 		}
 
+		if (!len) {
+			pr_err("%s: invalid LRI found in context image\n",
+			       engine->name);
+			igt_hexdump(defaults, PAGE_SIZE);
+			break;
+		}
+
 		dw++;
 		len = (len + 1) / 2;
 		while (len--) {
-- 
2.25.1

