Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id C84BC702E3E
	for <lists+intel-gfx@lfdr.de>; Mon, 15 May 2023 15:36:50 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 3671B10E210;
	Mon, 15 May 2023 13:36:45 +0000 (UTC)
X-Original-To: Intel-gfx@lists.freedesktop.org
Delivered-To: Intel-gfx@lists.freedesktop.org
Received: from mga06.intel.com (mga06b.intel.com [134.134.136.31])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 0D95A10E1D5;
 Mon, 15 May 2023 13:36:42 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1684157802; x=1715693802;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=zceu8jqmzJffbl8cB0tCzVmsdZXyuOvXSalDk4Rkh1g=;
 b=YjEVBUwPBZgxFRV9T9Um9QlrZpSxM/yQcYzB9u0//2JcAQE0G709JsN5
 syNkmaJOVI/2jp2tCg1xMnbMTc9/zBlLEE1lUe8CSpd9F4h+A5zmnDrjT
 OsNR8HmOTbwgsTz0SPwPTdmOouO7MHvQ80M6pyfva8L0YUoZw/OdmcKCE
 VDXnV6tjOcLuNg2H09YwzHl03/7qD/QKpxtwQMaV+EVKwc55qJJv4sJZL
 rnWZQa5IRblTDNMKDhFq3Su7cqqSyESlz9pTQMEh22CDsb3WtUd9i3hTj
 4Js5pE6a0wxOWdqR6psxBO1Q0c/XXDQdAL4ajDuMVNQf75eaJRBNIkQFN w==;
X-IronPort-AV: E=McAfee;i="6600,9927,10711"; a="414597324"
X-IronPort-AV: E=Sophos;i="5.99,276,1677571200"; d="scan'208";a="414597324"
Received: from orsmga002.jf.intel.com ([10.7.209.21])
 by orsmga104.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 15 May 2023 06:36:41 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10711"; a="700963784"
X-IronPort-AV: E=Sophos;i="5.99,276,1677571200"; d="scan'208";a="700963784"
Received: from zolayode-mobl.ger.corp.intel.com (HELO localhost.localdomain)
 ([10.213.214.133])
 by orsmga002-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 15 May 2023 06:36:40 -0700
From: Tvrtko Ursulin <tvrtko.ursulin@linux.intel.com>
To: igt-dev@lists.freedesktop.org,
	Intel-gfx@lists.freedesktop.org
Date: Mon, 15 May 2023 14:36:30 +0100
Message-Id: <20230515133630.2163170-3-tvrtko.ursulin@linux.intel.com>
X-Mailer: git-send-email 2.37.2
In-Reply-To: <20230515133630.2163170-1-tvrtko.ursulin@linux.intel.com>
References: <20230515133630.2163170-1-tvrtko.ursulin@linux.intel.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH i-g-t 2/2] intel_gpu_top: Move client name last
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
Cc: Rob Clark <robdclark@chromium.org>
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

From: Tvrtko Ursulin <tvrtko.ursulin@intel.com>

Move client name to be the right most field which visually aligns better
with top(1) and prepares for inserting memory usage fields somewhere in
the middle.

Signed-off-by: Tvrtko Ursulin <tvrtko.ursulin@intel.com>
Cc: Rob Clark <robdclark@chromium.org>
---
 tools/intel_gpu_top.c | 19 +++++++++----------
 1 file changed, 9 insertions(+), 10 deletions(-)

diff --git a/tools/intel_gpu_top.c b/tools/intel_gpu_top.c
index 453090c298bc..937280a7151a 100644
--- a/tools/intel_gpu_top.c
+++ b/tools/intel_gpu_top.c
@@ -1809,9 +1809,7 @@ print_clients_header(struct igt_drm_clients *clients, int lines,
 			return lines;
 
 		printf("\033[7m");
-		len = printf("%*s %*s ",
-			     clients->max_pid_len, "PID",
-			     clients->max_name_len, "NAME");
+		len = printf("%*s ", clients->max_pid_len, "PID");
 
 		if (lines++ >= con_h || len >= con_w)
 			return lines;
@@ -1825,7 +1823,9 @@ print_clients_header(struct igt_drm_clients *clients, int lines,
 					num_active++;
 			}
 
-			*class_w = width = (con_w - len) / num_active;
+			*class_w = width =
+				(con_w - len - clients->max_name_len - 1) /
+				num_active;
 
 			for (i = 0; i <= iclients->classes.max_engine_id; i++) {
 				const char *name = iclients->classes.names[i];
@@ -1846,8 +1846,7 @@ print_clients_header(struct igt_drm_clients *clients, int lines,
 			}
 		}
 
-		n_spaces(con_w - len);
-		printf("\033[0m\n");
+		printf(" %-*s\033[0m\n", con_w - len - 1, "NAME");
 	} else {
 		if (iclients->classes.num_engines)
 			pops->open_struct("clients");
@@ -1866,6 +1865,7 @@ print_client(struct igt_drm_client *c, struct engines *engines, double t, int li
 	struct igt_drm_clients *clients = c->clients;
 	struct intel_clients *iclients = clients->private_data;
 	unsigned int i;
+	int len;
 
 	if (output_mode == INTERACTIVE) {
 		if (filter_idle && (!c->total_runtime || c->samples < 2))
@@ -1873,9 +1873,7 @@ print_client(struct igt_drm_client *c, struct engines *engines, double t, int li
 
 		lines++;
 
-		printf("%*s %*s ",
-		       clients->max_pid_len, c->pid_str,
-		       clients->max_name_len, c->print_name);
+		len = printf("%*s ", clients->max_pid_len, c->pid_str);
 
 		for (i = 0;
 		     c->samples > 1 && i <= iclients->classes.max_engine_id;
@@ -1898,9 +1896,10 @@ print_client(struct igt_drm_client *c, struct engines *engines, double t, int li
 
 			print_percentage_bar(pct, max, *class_w,
 					     numeric_clients);
+			len += *class_w;
 		}
 
-		putchar('\n');
+		printf(" %-*s\n", con_w - len - 1, c->print_name);
 	} else if (output_mode == JSON) {
 		char buf[64];
 
-- 
2.37.2

