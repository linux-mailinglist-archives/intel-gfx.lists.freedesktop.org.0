Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 3696F7B327D
	for <lists+intel-gfx@lfdr.de>; Fri, 29 Sep 2023 14:25:57 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id CFC2410E717;
	Fri, 29 Sep 2023 12:25:53 +0000 (UTC)
X-Original-To: Intel-gfx@lists.freedesktop.org
Delivered-To: Intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [134.134.136.31])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 2AECC10E710;
 Fri, 29 Sep 2023 12:25:38 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1695990338; x=1727526338;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=SBlohh86QOHfY143nw7+zFyN4Bvc25Dx3drHIT9j2NQ=;
 b=ky2C3u8g9ahTZn70rtzSR6I6ixja5K5VZs/j9DbyhLgY2kb+A0ShQC1I
 ln9XqBUKdaOO/YclaJZzIqMyRfdE2SL6CMpj+yGO14Eyv6xzuglzSi2cA
 hI0uCCGgJemnKS5ga/hqkbOOwz9bqOldL7gZsz+29RbW7iZhO+/pR80QT
 bdd279SQegiI6k8z5OBB1SM4ISkjKL3kTgtz/drhaia7b7CyqtNykLhvh
 SJcEQMTHby7OfEKrhh51UzPH4NGjoyeebsZteNhkRCmZo4ilvaqqSS+M4
 Qj+bbYEtRFYuO/tErwu/i5FuLp1iuPmKuZGZ/cF8UumyNL0ofuj4TjzOT w==;
X-IronPort-AV: E=McAfee;i="6600,9927,10847"; a="446443782"
X-IronPort-AV: E=Sophos;i="6.03,187,1694761200"; d="scan'208";a="446443782"
Received: from orsmga006.jf.intel.com ([10.7.209.51])
 by orsmga104.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 29 Sep 2023 05:25:38 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10847"; a="726577183"
X-IronPort-AV: E=Sophos;i="6.03,187,1694761200"; d="scan'208";a="726577183"
Received: from pbrady4x-mobl1.ger.corp.intel.com (HELO localhost.localdomain)
 ([10.213.203.84])
 by orsmga006-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 29 Sep 2023 05:25:36 -0700
From: Tvrtko Ursulin <tvrtko.ursulin@linux.intel.com>
To: igt-dev@lists.freedesktop.org,
	Intel-gfx@lists.freedesktop.org
Date: Fri, 29 Sep 2023 13:25:15 +0100
Message-Id: <20230929122517.349348-11-tvrtko.ursulin@linux.intel.com>
X-Mailer: git-send-email 2.39.2
In-Reply-To: <20230929122517.349348-1-tvrtko.ursulin@linux.intel.com>
References: <20230929122517.349348-1-tvrtko.ursulin@linux.intel.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH i-g-t 10/12] tools/intel_gpu_top: Fully wrap
 clients operations
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
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

From: Tvrtko Ursulin <tvrtko.ursulin@intel.com>

Wrap all operations on clients via the Intel specific wrappers in order to
simplify upcoming work.

Signed-off-by: Tvrtko Ursulin <tvrtko.ursulin@intel.com>
---
 tools/intel_gpu_top.c | 42 ++++++++++++++++++++++--------------------
 1 file changed, 22 insertions(+), 20 deletions(-)

diff --git a/tools/intel_gpu_top.c b/tools/intel_gpu_top.c
index 5d44ba45335e..4b9ef306ca8e 100644
--- a/tools/intel_gpu_top.c
+++ b/tools/intel_gpu_top.c
@@ -132,6 +132,7 @@ struct engines {
 struct intel_clients {
 	const char *pci_slot;
 	struct igt_drm_client_engines classes;
+	struct igt_drm_clients *clients;
 };
 
 static struct termios termios_orig;
@@ -2432,19 +2433,22 @@ intel_init_clients(struct intel_clients *iclients,
 		iclients->classes.capacity[i] = engines->class[i].num_engines;
 		iclients->classes.names[i] = strdup(engines->class[i].name);
 	}
+
+	iclients->clients = igt_drm_clients_init(iclients);
 }
 
 static void intel_free_clients(struct intel_clients *iclients)
 {
+	if (iclients->clients)
+		igt_drm_clients_free(iclients->clients);
+
 	free((void *)iclients->pci_slot);
 	free(iclients->classes.capacity);
 	free(iclients->classes.names);
 }
 
-int main(int argc, char **argv)
+static void intel_scan_clients(struct intel_clients *iclients)
 {
-	unsigned int period_us = DEFAULT_PERIOD_MS * 1000;
-	struct igt_drm_clients *clients = NULL;
 	static const char *engine_map[] = {
 		"render",
 		"copy",
@@ -2452,6 +2456,15 @@ int main(int argc, char **argv)
 		"video-enhance",
 		"compute",
 	};
+
+	igt_drm_clients_scan(iclients->clients, client_match,
+			     engine_map, ARRAY_SIZE(engine_map),
+			     NULL, 0);
+}
+
+int main(int argc, char **argv)
+{
+	unsigned int period_us = DEFAULT_PERIOD_MS * 1000;
 	bool physical_engines = false;
 	struct intel_clients iclients;
 	int con_w = -1, con_h = -1;
@@ -2609,15 +2622,11 @@ int main(int argc, char **argv)
 
 	init_engine_classes(engines);
 
-	if (has_drm_fdinfo(&card)) {
+	if (has_drm_fdinfo(&card))
 		intel_init_clients(&iclients, &card, engines);
-		clients = igt_drm_clients_init(&iclients);
-	}
 
 	pmu_sample(engines);
-	igt_drm_clients_scan(clients, client_match,
-			     engine_map, ARRAY_SIZE(engine_map),
-			     NULL, 0);
+	intel_scan_clients(&iclients);
 	gettime(&ts);
 
 	if (output_mode == JSON)
@@ -2648,12 +2657,8 @@ int main(int argc, char **argv)
 		pmu_sample(engines);
 		t = (double)(engines->ts.cur - engines->ts.prev) / 1e9;
 
-		disp_clients =
-			display_clients(igt_drm_clients_scan(clients,
-							     client_match,
-							     engine_map,
-							     ARRAY_SIZE(engine_map),
-							     NULL, 0));
+		intel_scan_clients(&iclients);
+		disp_clients = display_clients(iclients.clients);
 		scan_us = elapsed_us(&ts, period_us);
 
 		if (stop_top)
@@ -2704,7 +2709,7 @@ int main(int argc, char **argv)
 			pops->close_struct();
 		}
 
-		if (disp_clients != clients)
+		if (disp_clients != iclients.clients)
 			free_display_clients(disp_clients);
 
 		if (stop_top)
@@ -2719,10 +2724,7 @@ int main(int argc, char **argv)
 	if (output_mode == JSON)
 		printf("]\n");
 
-	if (clients) {
-		igt_drm_clients_free(clients);
-		intel_free_clients(&iclients);
-	}
+	intel_free_clients(&iclients);
 
 	free(codename);
 err_pmu:
-- 
2.39.2

