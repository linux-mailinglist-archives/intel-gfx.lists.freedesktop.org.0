Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 8E070748948
	for <lists+intel-gfx@lfdr.de>; Wed,  5 Jul 2023 18:32:21 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id F230210E3AE;
	Wed,  5 Jul 2023 16:32:19 +0000 (UTC)
X-Original-To: Intel-gfx@lists.freedesktop.org
Delivered-To: Intel-gfx@lists.freedesktop.org
Received: from mga04.intel.com (mga04.intel.com [192.55.52.120])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 9791A10E3AE;
 Wed,  5 Jul 2023 16:32:17 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1688574737; x=1720110737;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=y71Mps7HPRDIrOyyJsxg4gDRMHvoezdJEQ9gcEvR+Lc=;
 b=LHAAAWBj91AdnXkKc6rx5OqjJq6tYIlVc5dRVjjdsrpODRilW9IVmraY
 OSQi3BXdIwaTSVCpUbuih9XOrog+L/CXoiyxab1SR4SJl7wWyUj3rbN7O
 TOlGAN72xyL9rlFR5U+K/s7YdMaoemKoS3Riq1p7x8A8RB5HwWk6LM4uw
 bDy81+v7WCP+MJtXJKyWp20zVt7Oe5O5Ws9Ckw2RHbbxUJz0d5rY8qcvV
 KG3/QlwtsjEXGhGKUcsW1mdwIYkINXaofyj1GxRWDsNUgJwHHFjcdJoo4
 rTgGGUE8WUqucPepGa5tWsJ6FEE+yDouxzm2cpwpobEIOf72a8GlpcigW Q==;
X-IronPort-AV: E=McAfee;i="6600,9927,10762"; a="362255380"
X-IronPort-AV: E=Sophos;i="6.01,183,1684825200"; d="scan'208";a="362255380"
Received: from orsmga001.jf.intel.com ([10.7.209.18])
 by fmsmga104.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 05 Jul 2023 09:31:20 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10762"; a="754413007"
X-IronPort-AV: E=Sophos;i="6.01,183,1684825200"; d="scan'208";a="754413007"
Received: from jputsman-mobl.ger.corp.intel.com (HELO localhost.localdomain)
 ([10.213.200.219])
 by orsmga001-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 05 Jul 2023 09:31:18 -0700
From: Tvrtko Ursulin <tvrtko.ursulin@linux.intel.com>
To: igt-dev@lists.freedesktop.org,
	Intel-gfx@lists.freedesktop.org
Date: Wed,  5 Jul 2023 17:31:05 +0100
Message-Id: <20230705163105.3804677-4-tvrtko.ursulin@linux.intel.com>
X-Mailer: git-send-email 2.39.2
In-Reply-To: <20230705163105.3804677-1-tvrtko.ursulin@linux.intel.com>
References: <20230705163105.3804677-1-tvrtko.ursulin@linux.intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH i-g-t 3/3] gputop: Add memory information
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

Show total and resident memory usage for clients which support it.

For simplicity all memory regions are summed up and shown under a single
heading.

Co-developed-by: Rob Clark <robdclark@chromium.org>
Signed-off-by: Tvrtko Ursulin <tvrtko.ursulin@intel.com>
---
 tools/gputop.c | 34 +++++++++++++++++++++++++++++++++-
 1 file changed, 33 insertions(+), 1 deletion(-)

diff --git a/tools/gputop.c b/tools/gputop.c
index 681f0a6bb748..b5b360cbb063 100644
--- a/tools/gputop.c
+++ b/tools/gputop.c
@@ -28,6 +28,7 @@
 
 #include "igt_drm_clients.h"
 #include "igt_drm_fdinfo.h"
+#include "drmtest.h"
 
 static const char *bars[] = { " ", "▏", "▎", "▍", "▌", "▋", "▊", "▉", "█" };
 
@@ -80,7 +81,11 @@ print_client_header(struct igt_drm_client *c, int lines, int con_w, int con_h,
 		return lines;
 
 	putchar('\n');
-	len = printf("%*s ", c->clients->max_pid_len, "PID");
+	if (c->regions->num_regions)
+		len = printf("%*s      MEM      RSS ",
+			     c->clients->max_pid_len, "PID");
+	else
+		len = printf("%*s ", c->clients->max_pid_len, "PID");
 
 	if (c->engines->num_engines) {
 		unsigned int i;
@@ -121,12 +126,28 @@ newheader(const struct igt_drm_client *c, const struct igt_drm_client *pc)
 	return !pc || c->drm_minor != pc->drm_minor;
 }
 
+static int
+print_size(uint64_t sz)
+{
+	char units[] = {'B', 'K', 'M', 'G'};
+	unsigned u;
+
+	for (u = 0; u < ARRAY_SIZE(units) - 1; u++) {
+		if (sz < 1024)
+			break;
+		sz /= 1024;
+	}
+
+	return printf("%7"PRIu64"%c ", sz, units[u]);
+}
+
 static int
 print_client(struct igt_drm_client *c, struct igt_drm_client **prevc,
 	     double t, int lines, int con_w, int con_h,
 	     unsigned int period_us, int *engine_w)
 {
 	unsigned int i;
+	uint64_t sz;
 	int len;
 
 	/* Filter out idle clients. */
@@ -143,6 +164,17 @@ print_client(struct igt_drm_client *c, struct igt_drm_client **prevc,
 	*prevc = c;
 
 	len = printf("%*s ", c->clients->max_pid_len, c->pid_str);
+
+	if (c->regions->num_regions) {
+		for (sz = 0, i = 0; i < c->regions->max_region_id; i++)
+			sz += c->memory[i].total;
+		len += print_size(sz);
+
+		for (sz = 0, i = 0; i < c->regions->max_region_id; i++)
+			sz += c->memory[i].resident;
+		len += print_size(sz);
+	}
+
 	lines++;
 
 	for (i = 0; c->samples > 1 && i <= c->engines->max_engine_id; i++) {
-- 
2.39.2

