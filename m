Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 3F2A07AB2EB
	for <lists+intel-gfx@lfdr.de>; Fri, 22 Sep 2023 15:46:10 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id A242E10E673;
	Fri, 22 Sep 2023 13:46:06 +0000 (UTC)
X-Original-To: Intel-gfx@lists.freedesktop.org
Delivered-To: Intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.55.52.93])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 19B8510E66B;
 Fri, 22 Sep 2023 13:45:41 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1695390341; x=1726926341;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=adCZNLUCZ7uY5BPeOIFOoCuGXlax+PNTuajWcjCuRhg=;
 b=Ptf6g8asnHFS3JWnzKfVixsWz9246f0AF6lYG1aEj3dHt0fLYbGo4Bys
 WPuIR8Z7S4ZAVvR1AjFkUyYj3pfdrVPAqrCxHiWADs5mvjBT3pF0Y+d/O
 S5BxxH7xGncjn8xeBWVPgf8SWGO73N74mb6e548vCnLI3ydJVLdDsAdTr
 31Gu/5LpBT+jdTs80w6pGtSLDtGQLU3IIGo0FI3ebQuszmlm/zTlZ2zEP
 2MF1EyP4qmOeyVBh8zrux6gbQbvhA9T0oL18chyhODBd3lG4T9wHgYQ/a
 7QEMRNQfmRnkTqAaiem5qGWpD5alP622Imk+skLRzdVnCkUe55aPP3fax Q==;
X-IronPort-AV: E=McAfee;i="6600,9927,10841"; a="378117159"
X-IronPort-AV: E=Sophos;i="6.03,167,1694761200"; d="scan'208";a="378117159"
Received: from orsmga004.jf.intel.com ([10.7.209.38])
 by fmsmga102.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 22 Sep 2023 06:44:57 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10841"; a="871243620"
X-IronPort-AV: E=Sophos;i="6.03,167,1694761200"; d="scan'208";a="871243620"
Received: from placki-mobl.ger.corp.intel.com (HELO localhost.localdomain)
 ([10.213.200.149])
 by orsmga004-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 22 Sep 2023 06:44:56 -0700
From: Tvrtko Ursulin <tvrtko.ursulin@linux.intel.com>
To: igt-dev@lists.freedesktop.org,
	Intel-gfx@lists.freedesktop.org
Date: Fri, 22 Sep 2023 14:44:35 +0100
Message-Id: <20230922134437.234888-11-tvrtko.ursulin@linux.intel.com>
X-Mailer: git-send-email 2.39.2
In-Reply-To: <20230922134437.234888-1-tvrtko.ursulin@linux.intel.com>
References: <20230922134437.234888-1-tvrtko.ursulin@linux.intel.com>
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
index eb0ef00abeaf..27503ac03ebd 100644
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

