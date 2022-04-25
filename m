Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id BBB2550DF85
	for <lists+intel-gfx@lfdr.de>; Mon, 25 Apr 2022 13:57:43 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id EA29E10E588;
	Mon, 25 Apr 2022 11:57:37 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
 by gabe.freedesktop.org (Postfix) with ESMTPS id C751D10E50F;
 Mon, 25 Apr 2022 11:57:36 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1650887856; x=1682423856;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=xbyYxnS68cnrI41zQhBsLbg+jXYl2mwY3c0wk/tkcdI=;
 b=SX0zc5UxWb4KV4EfcjT0fsg20rIJsq0KwGxLIy+5w0oUY5NpTq1EvMSz
 6bwAtl6fjfmZg5c9jUJ5Nx65GgI3w//0HbQBOEv+2RXyEIsCtGJCASX7g
 RONh0JlZ15mvdgZZ53FPM+gLfWPmQ+Er+AzydSCGrzq17ohjSZRaIf+nQ
 Fj0I+Un3lItBscwgzWt36d2Rggz/K4OyAkVPqVSuaoq7OrCUry4xD7bgl
 32MWjTGHui4TxeV9ffhUspRNUOOCGrUPkTE3Oreylvl8dVGyW2HuwnHHU
 V3Dwut/XhXeXYK6hQb7VdrBtoCEG+GEFC7bMRwuETcwcUIKB+7LYQQVAy A==;
X-IronPort-AV: E=McAfee;i="6400,9594,10327"; a="290363128"
X-IronPort-AV: E=Sophos;i="5.90,288,1643702400"; d="scan'208";a="290363128"
Received: from orsmga007.jf.intel.com ([10.7.209.58])
 by fmsmga101.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 25 Apr 2022 04:57:36 -0700
X-IronPort-AV: E=Sophos;i="5.90,288,1643702400"; d="scan'208";a="557695899"
Received: from ramaling-i9x.iind.intel.com ([10.203.144.108])
 by orsmga007-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 25 Apr 2022 04:57:34 -0700
From: Ramalingam C <ramalingam.c@intel.com>
To: intel-gfx <intel-gfx@lists.freedesktop.org>,
 dri-devel <dri-devel@lists.freedesktop.org>
Date: Mon, 25 Apr 2022 17:28:26 +0530
Message-Id: <20220425115828.21473-3-ramalingam.c@intel.com>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20220425115828.21473-1-ramalingam.c@intel.com>
References: <20220425115828.21473-1-ramalingam.c@intel.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH v2 2/4] drm/i915/selftests: Check for incomplete
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
seen all the context registers by that point. (Mostly true for all gen so far,
though the render context does have LRI after the first page that we
have been ignoring so far. It would be useful to extract those as well
so that we have the full list of user accessible registers.)

Similarly, emit a warning if we do try to emit an invalid zero-length
LRI.

Reported-by: Daniele Ceraolo Spurio <daniele.ceraolospurio@intel.com>
Signed-off-by: Chris Wilson <chris@chris-wilson.co.uk>
Cc: Daniele Ceraolo Spurio <daniele.ceraolospurio@intel.com>
Signed-off-by: Ramalingam C <ramalingam.c@intel.com>
Acked-by: Thomas Hellstrom <thomas.hellstrom@linux.intel.com>
---
 drivers/gpu/drm/i915/gt/selftest_lrc.c | 61 +++++++++++++++++++++++---
 1 file changed, 54 insertions(+), 7 deletions(-)

diff --git a/drivers/gpu/drm/i915/gt/selftest_lrc.c b/drivers/gpu/drm/i915/gt/selftest_lrc.c
index 33f22f17e358..684a63de156a 100644
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
@@ -180,7 +183,7 @@ static int live_lrc_layout(void *arg)
 				continue;
 			}
 
-			if ((lri & GENMASK(31, 23)) != MI_INSTR(0x22, 0)) {
+			if ((lri & GENMASK(31, 23)) != LRI_HEADER) {
 				pr_err("%s: Expected LRI command at dword %d, found %08x\n",
 				       engine->name, dw, lri);
 				err = -EINVAL;
@@ -945,18 +948,40 @@ store_context(struct intel_context *ce, struct i915_vma *scratch)
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
@@ -1108,18 +1133,29 @@ static struct i915_vma *load_context(struct intel_context *ce, u32 poison)
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
@@ -1248,18 +1284,29 @@ static int compare_isolation(struct intel_engine_cs *engine,
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
2.20.1

