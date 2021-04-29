Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 2415036E72D
	for <lists+intel-gfx@lfdr.de>; Thu, 29 Apr 2021 10:41:52 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id B04CD6EDBD;
	Thu, 29 Apr 2021 08:41:49 +0000 (UTC)
X-Original-To: Intel-gfx@lists.freedesktop.org
Delivered-To: Intel-gfx@lists.freedesktop.org
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
 by gabe.freedesktop.org (Postfix) with ESMTPS id BCF876EDBC;
 Thu, 29 Apr 2021 08:41:48 +0000 (UTC)
IronPort-SDR: GReknZF/1aP/S9aFQRqvNQUwsqFxinCxgjwA3S45OE4nyd5Fab/jMLB4gN7sdSZtS7r3ySJur/
 LYbK6xoSQ2Ig==
X-IronPort-AV: E=McAfee;i="6200,9189,9968"; a="197058912"
X-IronPort-AV: E=Sophos;i="5.82,258,1613462400"; d="scan'208";a="197058912"
Received: from fmsmga008.fm.intel.com ([10.253.24.58])
 by orsmga102.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 29 Apr 2021 01:41:46 -0700
IronPort-SDR: uMUD0TpNYS68iTP2b/oqD/FuVaaKem7AS2hQ6gv2KmMT+hZVEU+1Hk9n2V8D8EGUqjNOf0K39O
 VVnh/qr/X16Q==
X-IronPort-AV: E=Sophos;i="5.82,258,1613462400"; d="scan'208";a="423974335"
Received: from gwaise-mobl1.ger.corp.intel.com (HELO tursulin-mobl2.home)
 ([10.213.208.64])
 by fmsmga008-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 29 Apr 2021 01:41:38 -0700
From: Tvrtko Ursulin <tvrtko.ursulin@linux.intel.com>
To: igt-dev@lists.freedesktop.org
Date: Thu, 29 Apr 2021 09:41:30 +0100
Message-Id: <20210429084130.850426-1-tvrtko.ursulin@linux.intel.com>
X-Mailer: git-send-email 2.30.2
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH i-g-t] tests/i915/gem_workarounds: Prepare for
 read mask
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
Cc: Intel-gfx@lists.freedesktop.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

From: Tvrtko Ursulin <tvrtko.ursulin@intel.com>

I plan to extend i915 to expose the read mask in i915_wa_registers so
prepare the IGT for that format change.

Signed-off-by: Tvrtko Ursulin <tvrtko.ursulin@intel.com>
---
 tests/i915/gem_workarounds.c | 19 ++++++++++++++-----
 1 file changed, 14 insertions(+), 5 deletions(-)

diff --git a/tests/i915/gem_workarounds.c b/tests/i915/gem_workarounds.c
index 00b475c27ff1..be5c5d83f405 100644
--- a/tests/i915/gem_workarounds.c
+++ b/tests/i915/gem_workarounds.c
@@ -47,6 +47,7 @@ struct intel_wa_reg {
 	uint32_t addr;
 	uint32_t value;
 	uint32_t mask;
+	uint32_t read;
 };
 
 static struct write_only_list {
@@ -157,8 +158,8 @@ static int workaround_fail_count(int i915, uint32_t ctx)
 		if (out[i] == 0)
 			out[i] = *(volatile uint32_t *)(igt_global_mmio + wa_regs[i].addr);
 
-		if ((wa_regs[i].value & wa_regs[i].mask) ==
-		    (out[i] & wa_regs[i].mask)) {
+		if ((wa_regs[i].value & wa_regs[i].read) ==
+		    (out[i] & wa_regs[i].read)) {
 			igt_debug("%s\tOK\n", buf);
 		} else if (write_only(wa_regs[i].addr)) {
 			igt_debug("%s\tIGNORED (w/o)\n", buf);
@@ -274,7 +275,7 @@ igt_main
 		sscanf(str, "Workarounds applied: %d", &num_wa_regs);
 		igt_require(num_wa_regs > 0);
 
-		wa_regs = malloc(num_wa_regs * sizeof(*wa_regs));
+		wa_regs = calloc(num_wa_regs, sizeof(*wa_regs));
 		igt_assert(wa_regs);
 
 		i = 0;
@@ -283,11 +284,19 @@ igt_main
 				break;
 
 			igt_debug("%s", line);
-			if (sscanf(line, "0x%X: 0x%08X, mask: 0x%08X",
+			if (sscanf(line, "0x%X: 0x%08X, mask: 0x%08X, read: 0x%08X",
 				   &wa_regs[i].addr,
 				   &wa_regs[i].value,
-				   &wa_regs[i].mask) == 3)
+				   &wa_regs[i].mask,
+				   &wa_regs[i].read) == 4) {
 				i++;
+			} else if (sscanf(line, "0x%X: 0x%08X, mask: 0x%08X",
+				   &wa_regs[i].addr,
+				   &wa_regs[i].value,
+				   &wa_regs[i].mask) == 3) {
+				wa_regs[i].read = wa_regs[i].mask;
+				i++;
+			}
 		}
 
 		igt_assert_lte(i, num_wa_regs);
-- 
2.30.2

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
