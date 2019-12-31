Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 49E8012D57B
	for <lists+intel-gfx@lfdr.de>; Tue, 31 Dec 2019 02:33:32 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 1DD336E0AA;
	Tue, 31 Dec 2019 01:33:28 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (mail.fireflyinternet.com [109.228.58.192])
 by gabe.freedesktop.org (Postfix) with ESMTPS id AE8286E092
 for <intel-gfx@lists.freedesktop.org>; Tue, 31 Dec 2019 01:33:25 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from haswell.alporthouse.com (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP id 19730572-1500050 
 for multiple; Tue, 31 Dec 2019 01:33:11 +0000
From: Chris Wilson <chris@chris-wilson.co.uk>
To: intel-gfx@lists.freedesktop.org
Date: Tue, 31 Dec 2019 01:33:05 +0000
Message-Id: <20191231013309.3998505-1-chris@chris-wilson.co.uk>
X-Mailer: git-send-email 2.25.0.rc0
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH 1/5] drm/i915/gt: Include a bunch more rcs image
 state
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

Empirically the minimal context image we use for rcs is insufficient to
state the engine. This is demonstrated if we poison the context image
such that any uninitialised state is invalid, and so if the engine
samples beyond our defined region, will fail to start.

Signed-off-by: Chris Wilson <chris@chris-wilson.co.uk>
---
 drivers/gpu/drm/i915/gt/intel_lrc.c    | 161 +++++++++++++++++++++++--
 drivers/gpu/drm/i915/gt/selftest_lrc.c |   7 ++
 2 files changed, 161 insertions(+), 7 deletions(-)

diff --git a/drivers/gpu/drm/i915/gt/intel_lrc.c b/drivers/gpu/drm/i915/gt/intel_lrc.c
index 00895f83f61e..72490e326d66 100644
--- a/drivers/gpu/drm/i915/gt/intel_lrc.c
+++ b/drivers/gpu/drm/i915/gt/intel_lrc.c
@@ -488,11 +488,72 @@ lrc_descriptor(struct intel_context *ce, struct intel_engine_cs *engine)
 	return desc;
 }
 
+/*
+static void hex2offsets(FILE *file)
+{
+	char *line = NULL;
+	size_t len = 0;
+	int lri = 0;
+	int nop = 0;
+
+	while (getline(&line, &len, file) > 0) {
+		unsigned x[8];
+		int n, i;
+		char *s;
+
+		s = strrchr(line, ']');
+		if (!s)
+			continue;
+
+		n = sscanf(s + 1, "%x %x %x %x %x %x %x %x",
+			   &x[0], &x[1], &x[2], &x[3],
+			   &x[4], &x[5], &x[6], &x[7]);
+		if (n <= 0)
+			continue;
+
+		for (i = 0; i < n; ) {
+			if (lri) {
+				unsigned int reg = x[i] & 0xfff;
+				if (reg > 0x200)
+					printf("REG16(%#x),\n", reg);
+				else
+					printf("REG(%#x),\n", reg);
+				if (!--lri)
+					printf("\n");
+				i += 2;
+				continue;
+			}
+			if (x[i] == 0) {
+				nop++;
+				i++;
+				continue;
+			}
+			if (nop) {
+				printf("NOP(%d),\n", nop);
+				nop = 0;
+			}
+			if (x[i] >> 24 == 0x11) {
+				lri = ((x[i] & 0xff) + 1) / 2;
+				printf("LRI(%d, %s),\n",
+				       lri, (x[i] & (1 << 12) ? "POSTED" : "0"));
+				i++;
+				continue;
+			}
+
+			printf("CMD(0x%x),\n", x[i++]);
+		}
+	}
+	printf("END()\n");
+
+	free(line);
+}
+*/
+
 static u32 *set_offsets(u32 *regs,
 			const u8 *data,
 			const struct intel_engine_cs *engine)
 #define NOP(x) (BIT(7) | (x))
-#define LRI(count, flags) ((flags) << 6 | (count))
+#define LRI(count, flags) ((flags) << 6 | (count) | BUILD_BUG_ON_ZERO(count >= BIT(6)))
 #define POSTED BIT(0)
 #define REG(x) (((x) >> 2) | BUILD_BUG_ON_ZERO(x >= 0x200))
 #define REG16(x) \
@@ -695,10 +756,10 @@ static const u8 gen8_rcs_offsets[] = {
 	NOP(1),
 	LRI(14, POSTED),
 	REG16(0x244),
-	REG(0x034),
-	REG(0x030),
-	REG(0x038),
-	REG(0x03c),
+	REG(0x34),
+	REG(0x30),
+	REG(0x38),
+	REG(0x3c),
 	REG(0x168),
 	REG(0x140),
 	REG(0x110),
@@ -723,9 +784,93 @@ static const u8 gen8_rcs_offsets[] = {
 
 	NOP(13),
 	LRI(1, 0),
-	REG(0x0c8),
+	REG(0xc8),
 
-	END(),
+	END()
+};
+
+static const u8 gen9_rcs_offsets[] = {
+	NOP(1),
+	LRI(14, POSTED),
+	REG16(0x244),
+	REG(0x34),
+	REG(0x30),
+	REG(0x38),
+	REG(0x3c),
+	REG(0x168),
+	REG(0x140),
+	REG(0x110),
+	REG(0x11c),
+	REG(0x114),
+	REG(0x118),
+	REG(0x1c0),
+	REG(0x1c4),
+	REG(0x1c8),
+
+	NOP(3),
+	LRI(9, POSTED),
+	REG16(0x3a8),
+	REG16(0x28c),
+	REG16(0x288),
+	REG16(0x284),
+	REG16(0x280),
+	REG16(0x27c),
+	REG16(0x278),
+	REG16(0x274),
+	REG16(0x270),
+
+	NOP(13),
+	LRI(1, 0),
+	REG(0xc8),
+
+	NOP(13),
+	LRI(44, POSTED),
+	REG(0x28),
+	REG(0x9c),
+	REG(0xc0),
+	REG(0x178),
+	REG(0x17c),
+	REG16(0x358),
+	REG(0x170),
+	REG(0x150),
+	REG(0x154),
+	REG(0x158),
+	REG16(0x41c),
+	REG16(0x600),
+	REG16(0x604),
+	REG16(0x608),
+	REG16(0x60c),
+	REG16(0x610),
+	REG16(0x614),
+	REG16(0x618),
+	REG16(0x61c),
+	REG16(0x620),
+	REG16(0x624),
+	REG16(0x628),
+	REG16(0x62c),
+	REG16(0x630),
+	REG16(0x634),
+	REG16(0x638),
+	REG16(0x63c),
+	REG16(0x640),
+	REG16(0x644),
+	REG16(0x648),
+	REG16(0x64c),
+	REG16(0x650),
+	REG16(0x654),
+	REG16(0x658),
+	REG16(0x65c),
+	REG16(0x660),
+	REG16(0x664),
+	REG16(0x668),
+	REG16(0x66c),
+	REG16(0x670),
+	REG16(0x674),
+	REG16(0x678),
+	REG16(0x67c),
+	REG(0x68),
+
+	END()
 };
 
 static const u8 gen11_rcs_offsets[] = {
@@ -832,6 +977,8 @@ static const u8 *reg_offsets(const struct intel_engine_cs *engine)
 			return gen12_rcs_offsets;
 		else if (INTEL_GEN(engine->i915) >= 11)
 			return gen11_rcs_offsets;
+		else if (INTEL_GEN(engine->i915) >= 9)
+			return gen9_rcs_offsets;
 		else
 			return gen8_rcs_offsets;
 	} else {
diff --git a/drivers/gpu/drm/i915/gt/selftest_lrc.c b/drivers/gpu/drm/i915/gt/selftest_lrc.c
index 9ec9833c9c7b..943b623f00e9 100644
--- a/drivers/gpu/drm/i915/gt/selftest_lrc.c
+++ b/drivers/gpu/drm/i915/gt/selftest_lrc.c
@@ -3406,6 +3406,13 @@ static int live_lrc_layout(void *arg)
 				continue;
 			}
 
+			if (lrc[dw] == 0) {
+				pr_debug("%s: skipped instruction %x at dword %d\n",
+					 engine->name, lri, dw);
+				dw++;
+				continue;
+			}
+
 			if ((lri & GENMASK(31, 23)) != MI_INSTR(0x22, 0)) {
 				pr_err("%s: Expected LRI command at dword %d, found %08x\n",
 				       engine->name, dw, lri);
-- 
2.25.0.rc0

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
