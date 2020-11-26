Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id CF7C82C5878
	for <lists+intel-gfx@lfdr.de>; Thu, 26 Nov 2020 16:49:12 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 578B96E97C;
	Thu, 26 Nov 2020 15:49:10 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (unknown [77.68.26.236])
 by gabe.freedesktop.org (Postfix) with ESMTPS id AFF026E97C;
 Thu, 26 Nov 2020 15:49:08 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from haswell.alporthouse.com (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP id 23118817-1500050 
 for multiple; Thu, 26 Nov 2020 15:48:57 +0000
From: Chris Wilson <chris@chris-wilson.co.uk>
To: intel-gfx@lists.freedesktop.org
Date: Thu, 26 Nov 2020 15:48:56 +0000
Message-Id: <20201126154856.738141-1-chris@chris-wilson.co.uk>
X-Mailer: git-send-email 2.29.2
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH i-g-t] tools/intel_gpu_top: Fixup imc event
 parsing
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

After combining rapl_parse and imc_parse into a single pmu_parse, I left
the "energy-" prefixes used by rapl (but not imc) in place. Lift the
prefix to rapl_open() so that pmu_parse() does work for both rapl and
imc!

Reported-by: Tvrtko Ursulin <tvrtko.ursulin@intel.com>
Fixes: d0b71b967ccd ("tools/intel_gpu_top: Consolidate imc to use pmu_counter")
Signed-off-by: Chris Wilson <chris@chris-wilson.co.uk>
Cc: Tvrtko Ursulin <tvrtko.ursulin@intel.com>
---
 tools/intel_gpu_top.c | 10 +++++-----
 1 file changed, 5 insertions(+), 5 deletions(-)

diff --git a/tools/intel_gpu_top.c b/tools/intel_gpu_top.c
index 5d42a2fad..3ff9236ed 100644
--- a/tools/intel_gpu_top.c
+++ b/tools/intel_gpu_top.c
@@ -151,13 +151,13 @@ static int pmu_parse(struct pmu_counter *pmu, const char *path, const char *str)
 
 	result &= igt_sysfs_scanf(dir, "type", "%"PRIu64, &pmu->type) == 1;
 
-	snprintf(buf, sizeof(buf) - 1, "events/energy-%s", str);
+	snprintf(buf, sizeof(buf) - 1, "events/%s", str);
 	result &= igt_sysfs_scanf(dir, buf, "event=%"PRIx64, &pmu->config) == 1;
 
-	snprintf(buf, sizeof(buf) - 1, "events/energy-%s.scale", str);
+	snprintf(buf, sizeof(buf) - 1, "events/%s.scale", str);
 	result &= igt_sysfs_scanf(dir, buf, "%lf", &pmu->scale) == 1;
 
-	snprintf(buf, sizeof(buf) - 1, "events/energy-%s.unit", str);
+	snprintf(buf, sizeof(buf) - 1, "events/%s.unit", str);
 	result &= igt_sysfs_scanf(dir, buf, "%127s", buf) == 1;
 	pmu->units = strdup(buf);
 
@@ -217,13 +217,13 @@ rapl_open(struct pmu_counter *pmu,
 static void gpu_power_open(struct pmu_counter *pmu,
 			   struct engines *engines)
 {
-	rapl_open(pmu, "gpu", engines);
+	rapl_open(pmu, "energy-gpu", engines);
 }
 
 static void pkg_power_open(struct pmu_counter *pmu,
 			   struct engines *engines)
 {
-	rapl_open(pmu, "pkg", engines);
+	rapl_open(pmu, "energy-pkg", engines);
 }
 
 static uint64_t
-- 
2.29.2

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
