Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 8056D7C6778
	for <lists+intel-gfx@lfdr.de>; Thu, 12 Oct 2023 10:16:17 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 0E57210E456;
	Thu, 12 Oct 2023 08:16:11 +0000 (UTC)
X-Original-To: Intel-gfx@lists.freedesktop.org
Delivered-To: Intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.9])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 1076310E443;
 Thu, 12 Oct 2023 08:16:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1697098566; x=1728634566;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=udGJs6oNm3lXfAiELSmjJpfFL4Tn6/gjdDWtw7dc1Yc=;
 b=m14YMTMSb4U+UUMeYb2/RtTD/e+DvnG7YGeHNh7w0qs3xrh7DT3YRa8y
 djc2BxVmQYnzro7MjcWuMKTcOC/HDHaaGzkRVbe1ZmoDVlAsc7T4ciiIk
 x7KjHrglt35k8//wqXnZBLLXM3f0QqOg09Wn6tWbBnWlQLivYNa2BcmM8
 alB9ynfaeFrsceV+E6TMQ+EBUpaUwAbYw6zrB37fjx5rCt3ZLICyNnGhM
 Dn+mB/f2c9t+oCASaui4XZoCUFAnOXtxh7ezVFucHwTbDjiMtiarS5SzV
 yJJLzNx4PwUmuAkEICt8lQVYM6bjQNC6iZ1DLy03JTYX5R5fr5iEdhKZq Q==;
X-IronPort-AV: E=McAfee;i="6600,9927,10860"; a="3454693"
X-IronPort-AV: E=Sophos;i="6.03,218,1694761200"; 
   d="scan'208";a="3454693"
Received: from orsmga008.jf.intel.com ([10.7.209.65])
 by orvoesa101.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 12 Oct 2023 01:16:05 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10860"; a="783599350"
X-IronPort-AV: E=Sophos;i="6.03,218,1694761200"; d="scan'208";a="783599350"
Received: from maloneyj-mobl.ger.corp.intel.com (HELO localhost.localdomain)
 ([10.213.239.225])
 by orsmga008-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 12 Oct 2023 01:16:03 -0700
From: Tvrtko Ursulin <tvrtko.ursulin@linux.intel.com>
To: igt-dev@lists.freedesktop.org,
	Intel-gfx@lists.freedesktop.org
Date: Thu, 12 Oct 2023 09:15:45 +0100
Message-Id: <20231012081547.852052-8-tvrtko.ursulin@linux.intel.com>
X-Mailer: git-send-email 2.39.2
In-Reply-To: <20231012081547.852052-1-tvrtko.ursulin@linux.intel.com>
References: <20231012081547.852052-1-tvrtko.ursulin@linux.intel.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH i-g-t 7/9] tools/intel_gpu_top: Fully wrap
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
Cc: Tvrtko Ursulin <tvrtko.ursulin@intel.com>
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
index 091fe28068dc..b2e81d5f9ffb 100644
--- a/tools/intel_gpu_top.c
+++ b/tools/intel_gpu_top.c
@@ -132,6 +132,7 @@ struct engines {
 struct intel_clients {
 	const char *pci_slot;
 	struct igt_drm_client_engines classes;
+	struct igt_drm_clients *clients;
 };
 
 static struct termios termios_orig;
@@ -2436,19 +2437,22 @@ intel_init_clients(struct intel_clients *iclients,
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
@@ -2456,6 +2460,15 @@ int main(int argc, char **argv)
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
@@ -2613,15 +2626,11 @@ int main(int argc, char **argv)
 
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
@@ -2652,12 +2661,8 @@ int main(int argc, char **argv)
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
@@ -2708,7 +2713,7 @@ int main(int argc, char **argv)
 			pops->close_struct();
 		}
 
-		if (disp_clients != clients)
+		if (disp_clients != iclients.clients)
 			free_display_clients(disp_clients);
 
 		if (stop_top)
@@ -2723,10 +2728,7 @@ int main(int argc, char **argv)
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

