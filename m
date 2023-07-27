Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 02B55764F5E
	for <lists+intel-gfx@lfdr.de>; Thu, 27 Jul 2023 11:20:47 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id F042510E554;
	Thu, 27 Jul 2023 09:20:44 +0000 (UTC)
X-Original-To: Intel-gfx@lists.freedesktop.org
Delivered-To: Intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [134.134.136.31])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 5A91210E552;
 Thu, 27 Jul 2023 09:20:40 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1690449640; x=1721985640;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=sXncVivhMimSX/dLtFsg1wxk9m8JPmDQnQUCVIClHVM=;
 b=BiKZvOW4njPfCsh0si3yqxXTluud9cO3QzPmWclRmzkFAmaSASIt5eNV
 sz4HbAeM8ciVZS9EUq6Ctu2ZxDKkoovhE3VKD3zF4MYGPcJg3d14PVWqs
 0+dJbvf6vtd9RX1sYgC+GrW+PBLlqfg0hZbCXC8ezBdCr91AwiLsaYkEi
 XH3ocI3GJTduJPxC9yd2id45dXVgePEjwcq95nDVz8AgS3Of/vH+xpy7f
 bM8NGMLsgOPOFv++Kg9IFPBdWsPh3N8IzDPKyVWYOsL842OUV0Tlw9qoz
 uG6GVSGilbMLGGRgOCtqIBfq9yxehKXdYLN495lCkxcg21iSdHpKZu1jM A==;
X-IronPort-AV: E=McAfee;i="6600,9927,10783"; a="432057540"
X-IronPort-AV: E=Sophos;i="6.01,234,1684825200"; d="scan'208";a="432057540"
Received: from orsmga006.jf.intel.com ([10.7.209.51])
 by orsmga104.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 27 Jul 2023 02:20:40 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10783"; a="704111885"
X-IronPort-AV: E=Sophos;i="6.01,234,1684825200"; d="scan'208";a="704111885"
Received: from jlenehan-mobl1.ger.corp.intel.com (HELO localhost.localdomain)
 ([10.213.228.208])
 by orsmga006-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 27 Jul 2023 02:20:38 -0700
From: Tvrtko Ursulin <tvrtko.ursulin@linux.intel.com>
To: igt-dev@lists.freedesktop.org,
	Intel-gfx@lists.freedesktop.org
Date: Thu, 27 Jul 2023 10:20:25 +0100
Message-Id: <20230727092025.1895728-4-tvrtko.ursulin@linux.intel.com>
X-Mailer: git-send-email 2.39.2
In-Reply-To: <20230727092025.1895728-1-tvrtko.ursulin@linux.intel.com>
References: <20230727092025.1895728-1-tvrtko.ursulin@linux.intel.com>
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

v2:
 * Use unsigned int and not just unsigned in print_size. (Kamil)

Co-developed-by: Rob Clark <robdclark@chromium.org>
Signed-off-by: Rob Clark <robdclark@chromium.org>
Signed-off-by: Tvrtko Ursulin <tvrtko.ursulin@intel.com>
Cc: Kamil Konieczny <kamil.konieczny@linux.intel.com>
Reviewed-by: Kamil Konieczny <kamil.konieczny@linux.intel.com>
---
 tools/gputop.c | 34 +++++++++++++++++++++++++++++++++-
 1 file changed, 33 insertions(+), 1 deletion(-)

diff --git a/tools/gputop.c b/tools/gputop.c
index 681f0a6bb748..ac106abea2ee 100644
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
+	unsigned int u;
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

