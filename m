Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 2AAAE5B6B51
	for <lists+intel-gfx@lfdr.de>; Tue, 13 Sep 2022 12:03:48 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 3DCCE10E695;
	Tue, 13 Sep 2022 10:03:44 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 22CF610E695
 for <intel-gfx@lists.freedesktop.org>; Tue, 13 Sep 2022 10:03:38 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1663063418; x=1694599418;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=fX1SZzyajr0CuwYBJ4a9+ZkkIA80c3PJaqmyuBY2TGw=;
 b=gaon5B5flx8jdQgthz++JmNde86zIFmYWHBzP4q7kwpGIupLBEuqNeGz
 Tmcsa6CValMx8eFyuP8KDu5gs5mknHnQGUN1O5guC9HUo3a+urKkOiwVO
 1//ZxkKviIJxRPVpLWzgAFc+bPA/PDzGy2y45/U6XFK88N3LyybrrlF9O
 7DrxIpBRvu2l4K3qSyVyWrhBRf5Aaa8uR/DPhejrKc6wmzvcC1QgN8wyX
 hTwx/co82AlI09/IBB4oV4jTeaAufOd8jp5wX3FRO9yjrVDqGnBDy2mw5
 rMnWHolTxQ+DmhO5bMRt9t22ze74sEecB4yMzoJh+yRuGoi5QZbWCmRU4 w==;
X-IronPort-AV: E=McAfee;i="6500,9779,10468"; a="285119569"
X-IronPort-AV: E=Sophos;i="5.93,312,1654585200"; d="scan'208";a="285119569"
Received: from fmsmga008.fm.intel.com ([10.253.24.58])
 by orsmga101.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 13 Sep 2022 03:03:37 -0700
X-IronPort-AV: E=Sophos;i="5.93,312,1654585200"; d="scan'208";a="678496237"
Received: from abaczek-mobl.ger.corp.intel.com (HELO
 kdrobnik-desk.toya.net.pl) ([10.213.8.5])
 by fmsmga008-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 13 Sep 2022 03:03:35 -0700
From: Karolina Drobnik <karolina.drobnik@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Tue, 13 Sep 2022 12:03:28 +0200
Message-Id: <20220913100328.579271-1-karolina.drobnik@intel.com>
X-Mailer: git-send-email 2.25.1
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH] drm/i915/selftests: Check for incomplete LRI
 from the context image
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
Cc: Chris Wilson <chris@chris-wilson.co.uk>
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
so that we have the full list of user accesisble registers.)

Similarly, emit a warning if we do try to emit an invalid zero-length
LRI.

Reported-by: Daniele Ceraolo Spurio <daniele.ceraolospurio@intel.com>
Signed-off-by: Chris Wilson <chris@chris-wilson.co.uk>
Cc: Daniele Ceraolo Spurio <daniele.ceraolospurio@intel.com>
Signed-off-by: Karolina Drobnik <karolina.drobnik@intel.com>
---
 drivers/gpu/drm/i915/gt/selftest_lrc.c | 61 +++++++++++++++++++++++---
 1 file changed, 54 insertions(+), 7 deletions(-)

diff --git a/drivers/gpu/drm/i915/gt/selftest_lrc.c b/drivers/gpu/drm/i915/gt/selftest_lrc.c
index 1109088fe8f6..954a1c5c10ef 100644
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
@@ -987,18 +990,40 @@ store_context(struct intel_context *ce, struct i915_vma *scratch)
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
@@ -1150,18 +1175,29 @@ static struct i915_vma *load_context(struct intel_context *ce, u32 poison)
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
@@ -1292,18 +1328,29 @@ static int compare_isolation(struct intel_engine_cs *engine,
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

