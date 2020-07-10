Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 737CB21B256
	for <lists+intel-gfx@lfdr.de>; Fri, 10 Jul 2020 11:32:52 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 2D2556EBC3;
	Fri, 10 Jul 2020 09:32:46 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (unknown [77.68.26.236])
 by gabe.freedesktop.org (Postfix) with ESMTPS id A04E26E082;
 Fri, 10 Jul 2020 09:32:43 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from haswell.alporthouse.com (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP id 21774855-1500050 
 for multiple; Fri, 10 Jul 2020 10:32:37 +0100
From: Chris Wilson <chris@chris-wilson.co.uk>
To: intel-gfx@lists.freedesktop.org
Date: Fri, 10 Jul 2020 10:32:30 +0100
Message-Id: <20200710093234.1438712-2-chris@chris-wilson.co.uk>
X-Mailer: git-send-email 2.27.0
In-Reply-To: <20200710093234.1438712-1-chris@chris-wilson.co.uk>
References: <20200710093234.1438712-1-chris@chris-wilson.co.uk>
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH i-g-t 2/6] tools: Use the gt number stored in
 the device info
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
Cc: igt-dev@lists.freedesktop.org, Chris Wilson <chris@chris-wilson.co.uk>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

Don't use the encoded information within the PCI-ID for the GT value, as
the rules keep changing. Use the device info instead.

Signed-off-by: Chris Wilson <chris@chris-wilson.co.uk>
---
 lib/intel_chipset.h       |  1 -
 lib/intel_device_info.c   | 23 -----------------------
 tools/intel_l3_parity.c   |  5 +++--
 tools/intel_reg_checker.c |  5 +++++
 4 files changed, 8 insertions(+), 26 deletions(-)

diff --git a/lib/intel_chipset.h b/lib/intel_chipset.h
index 929fac530..84b259692 100644
--- a/lib/intel_chipset.h
+++ b/lib/intel_chipset.h
@@ -79,7 +79,6 @@ struct intel_device_info {
 const struct intel_device_info *intel_get_device_info(uint16_t devid) __attribute__((pure));
 
 unsigned intel_gen(uint16_t devid) __attribute__((pure));
-unsigned intel_gt(uint16_t devid) __attribute__((pure));
 
 extern enum pch_type intel_pch;
 
diff --git a/lib/intel_device_info.c b/lib/intel_device_info.c
index dfa43f490..5f3e8c191 100644
--- a/lib/intel_device_info.c
+++ b/lib/intel_device_info.c
@@ -453,26 +453,3 @@ unsigned intel_gen(uint16_t devid)
 {
 	return ffs(intel_get_device_info(devid)->gen) ?: -1u;
 }
-
-/**
- * intel_gt:
- * @devid: pci device id
- *
- * Computes the Intel GFX GT size for the given device id.
- *
- * Returns:
- * The GT size.
- */
-unsigned intel_gt(uint16_t devid)
-{
-	unsigned mask = intel_gen(devid);
-
-	if (mask >= 8)
-		mask = 0xf;
-	else if (mask >= 6)
-		mask = 0x3;
-	else
-		mask = 0;
-
-	return (devid >> 4) & mask;
-}
diff --git a/tools/intel_l3_parity.c b/tools/intel_l3_parity.c
index 340f94b1a..484dd0281 100644
--- a/tools/intel_l3_parity.c
+++ b/tools/intel_l3_parity.c
@@ -44,10 +44,11 @@
 #include "intel_l3_parity.h"
 
 static unsigned int devid;
+
 /* L3 size is always a function of banks. The number of banks cannot be
  * determined by number of slices however */
 static inline int num_banks(void) {
-	switch (intel_gt(devid)) {
+	switch (intel_get_device_info(devid)->gt) {
 	case 2: return 8;
 	case 1: return 4;
 	default: return 2;
@@ -61,7 +62,7 @@ static inline int num_banks(void) {
 #define MAX_ROW (1<<12)
 #define MAX_BANKS_PER_SLICE 4
 #define NUM_REGS (MAX_BANKS_PER_SLICE * NUM_SUBBANKS)
-#define MAX_SLICES (intel_gt(devid) > 1 ? 2 : 1)
+#define MAX_SLICES (intel_get_device_info(devid)->gt > 1 ? 2 : 1)
 #define REAL_MAX_SLICES 2
 /* TODO support SLM config */
 #define L3_SIZE ((MAX_ROW * 4) * NUM_SUBBANKS *  num_banks())
diff --git a/tools/intel_reg_checker.c b/tools/intel_reg_checker.c
index 3f90de824..2aefabc67 100644
--- a/tools/intel_reg_checker.c
+++ b/tools/intel_reg_checker.c
@@ -143,6 +143,11 @@ check_gfx_mode(void)
 	check_perf_bit(gfx_mode, 13, "Flush TLB Invalidation Mode", true);
 }
 
+static unsigned intel_gt(uint16_t __devid)
+{
+	return intel_get_device_info(__devid)->gt;
+}
+
 static void
 check_gt_mode(void)
 {
-- 
2.27.0

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
