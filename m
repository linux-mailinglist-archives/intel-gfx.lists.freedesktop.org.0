Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id BEAE2702E41
	for <lists+intel-gfx@lfdr.de>; Mon, 15 May 2023 15:36:52 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id A2AC110E212;
	Mon, 15 May 2023 13:36:45 +0000 (UTC)
X-Original-To: Intel-gfx@lists.freedesktop.org
Delivered-To: Intel-gfx@lists.freedesktop.org
Received: from mga06.intel.com (mga06b.intel.com [134.134.136.31])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 79B0D10E1D5;
 Mon, 15 May 2023 13:36:40 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1684157800; x=1715693800;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=g1BjN2U6lc76hmWeHAuVBeJ5n98jeIhNG1M3zg6bI9Y=;
 b=Uoz8bCcsEmhEOjJj9iEh7VASZGq2xy8OG2BL6GXz2J95lA8GiP5VNeen
 66sD/3Ch8gtJhhchPwHhqWbpudnSqmfADZtQdUo0Z0H2gCP21sK9NeDX5
 kDpBMpotJKgLQ/++DmEYkguXEJJSeB0I8FB1i6xx9/ilcAZuMI4Nqqr6p
 +Fs1Iaj6TE1yPDft3+j7aFJs58qoN3Zpu7KpPgjZ6jHPHoSzl4G/YMkTn
 gow4Yl7rVVHghJ/tNc4axDQc4WHDbAfZp8xpODaxH8M4az7yg+QMkfWRi
 z3h5iy5uzaoGh90W1PN9EWkFeKg/MPQNxu3HbjDbDRomkK0IrNhkDh/KN g==;
X-IronPort-AV: E=McAfee;i="6600,9927,10711"; a="414597315"
X-IronPort-AV: E=Sophos;i="5.99,276,1677571200"; d="scan'208";a="414597315"
Received: from orsmga002.jf.intel.com ([10.7.209.21])
 by orsmga104.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 15 May 2023 06:36:40 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10711"; a="700963780"
X-IronPort-AV: E=Sophos;i="5.99,276,1677571200"; d="scan'208";a="700963780"
Received: from zolayode-mobl.ger.corp.intel.com (HELO localhost.localdomain)
 ([10.213.214.133])
 by orsmga002-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 15 May 2023 06:36:38 -0700
From: Tvrtko Ursulin <tvrtko.ursulin@linux.intel.com>
To: igt-dev@lists.freedesktop.org,
	Intel-gfx@lists.freedesktop.org
Date: Mon, 15 May 2023 14:36:29 +0100
Message-Id: <20230515133630.2163170-2-tvrtko.ursulin@linux.intel.com>
X-Mailer: git-send-email 2.37.2
In-Reply-To: <20230515133630.2163170-1-tvrtko.ursulin@linux.intel.com>
References: <20230515133630.2163170-1-tvrtko.ursulin@linux.intel.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH i-g-t 1/2] gputop: Move client name last
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
 tools/gputop.c | 19 +++++++++----------
 1 file changed, 9 insertions(+), 10 deletions(-)

diff --git a/tools/gputop.c b/tools/gputop.c
index 4fb5ce63e07c..681f0a6bb748 100644
--- a/tools/gputop.c
+++ b/tools/gputop.c
@@ -80,15 +80,15 @@ print_client_header(struct igt_drm_client *c, int lines, int con_w, int con_h,
 		return lines;
 
 	putchar('\n');
-	len = printf("%*s %*s ",
-		     c->clients->max_pid_len, "PID",
-		     c->clients->max_name_len, "NAME");
+	len = printf("%*s ", c->clients->max_pid_len, "PID");
 
 	if (c->engines->num_engines) {
 		unsigned int i;
 		int width;
 
-		*engine_w = width = (con_w - len) / c->engines->num_engines;
+		*engine_w = width =
+			(con_w - len - c->clients->max_name_len - 1) /
+			c->engines->num_engines;
 
 		for (i = 0; i <= c->engines->max_engine_id; i++) {
 			const char *name = c->engines->names[i];
@@ -109,8 +109,7 @@ print_client_header(struct igt_drm_client *c, int lines, int con_w, int con_h,
 		}
 	}
 
-	n_spaces(con_w - len);
-	printf("\033[0m\n");
+	printf(" %-*s\033[0m\n", con_w - len - 1, "NAME");
 
 	return lines;
 }
@@ -128,6 +127,7 @@ print_client(struct igt_drm_client *c, struct igt_drm_client **prevc,
 	     unsigned int period_us, int *engine_w)
 {
 	unsigned int i;
+	int len;
 
 	/* Filter out idle clients. */
 	if (!c->total_runtime || c->samples < 2)
@@ -142,9 +142,7 @@ print_client(struct igt_drm_client *c, struct igt_drm_client **prevc,
 
 	*prevc = c;
 
-	printf("%*s %*s ",
-	       c->clients->max_pid_len, c->pid_str,
-	       c->clients->max_name_len, c->print_name);
+	len = printf("%*s ", c->clients->max_pid_len, c->pid_str);
 	lines++;
 
 	for (i = 0; c->samples > 1 && i <= c->engines->max_engine_id; i++) {
@@ -164,9 +162,10 @@ print_client(struct igt_drm_client *c, struct igt_drm_client **prevc,
 			pct = 100.0;
 
 		print_percentage_bar(pct, *engine_w);
+		len += *engine_w;
 	}
 
-	putchar('\n');
+	printf(" %-*s\n", con_w - len - 1, c->print_name);
 
 	return lines;
 }
-- 
2.37.2

