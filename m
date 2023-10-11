Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id EAEFA7C4D21
	for <lists+intel-gfx@lfdr.de>; Wed, 11 Oct 2023 10:29:07 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 3071310E591;
	Wed, 11 Oct 2023 08:29:06 +0000 (UTC)
X-Original-To: Intel-gfx@lists.freedesktop.org
Delivered-To: Intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.9])
 by gabe.freedesktop.org (Postfix) with ESMTPS id EDEF810E591;
 Wed, 11 Oct 2023 08:29:03 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1697012944; x=1728548944;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=OYekpnUKJSKnlJSMp4tXfU94DvFxn3byh6US8nHwg50=;
 b=E4a6GjgaIyFuTxVaPTLDKWFiLFgr6BBPNwC15B9u15AD+ecsTqjgkjps
 8rPMBBOVmxvEPGWboOC0zH+5rJBKRPeulqnfWzY8WVASh9QtAUSy2iFfM
 FJheMS+DyE8h45oC0bIlto4E4nbQsyO+UQXOxEnti7kgS71E2X3q8mEyW
 aMtjJXVnqiiq8VUxyQiAwMKPHlpVImKWDgK4lmRLusIZbiMkMn9t6wq8V
 vdD14X9y2bvwwQVMc/7LZvGLFfLdn7APqegzRMoeV42P2itV8ifiCtV2H
 ww8a5D+OGdOnKdduEzc5ASDi1KvgL5I+RrzG9ABvhsmqQSQ9NmO0+pJwi g==;
X-IronPort-AV: E=McAfee;i="6600,9927,10859"; a="3201437"
X-IronPort-AV: E=Sophos;i="6.03,214,1694761200"; 
   d="scan'208";a="3201437"
Received: from orsmga006.jf.intel.com ([10.7.209.51])
 by orvoesa101.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 11 Oct 2023 01:29:03 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10859"; a="730414393"
X-IronPort-AV: E=Sophos;i="6.03,214,1694761200"; d="scan'208";a="730414393"
Received: from cjodwyer-mobl.ger.corp.intel.com (HELO localhost.localdomain)
 ([10.213.194.149])
 by orsmga006-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 11 Oct 2023 01:29:02 -0700
From: Tvrtko Ursulin <tvrtko.ursulin@linux.intel.com>
To: igt-dev@lists.freedesktop.org,
	Intel-gfx@lists.freedesktop.org
Date: Wed, 11 Oct 2023 09:28:57 +0100
Message-Id: <20231011082857.797045-1-tvrtko.ursulin@linux.intel.com>
X-Mailer: git-send-email 2.39.2
In-Reply-To: <20231010163518.hgcqkap3dx655hrk@kamilkon-desk.igk.intel.com>
References: <20231010163518.hgcqkap3dx655hrk@kamilkon-desk.igk.intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH i-g-t 3/4] tools/intel_gpu_top: Optimise
 interactive display a bit
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

Padding the percentage bars and table columns with spaces happens quite a
lot so lets do better than putchar at a time. Have a table of visually
empty strings and build the required length out of those chunks.

While at it, also move the percentage bar table into its function scope.

v2:
 * Fix checkpatch and use ARRAY_SIZE. (Kamil)

Signed-off-by: Tvrtko Ursulin <tvrtko.ursulin@intel.com>
Kamil Konieczny <kamil.konieczny@linux.intel.com>
---
 tools/intel_gpu_top.c | 38 +++++++++++++++++++++++++++++++++-----
 1 file changed, 33 insertions(+), 5 deletions(-)

diff --git a/tools/intel_gpu_top.c b/tools/intel_gpu_top.c
index c5abd0c92155..6bd03ab8d7fa 100644
--- a/tools/intel_gpu_top.c
+++ b/tools/intel_gpu_top.c
@@ -926,14 +926,39 @@ static void free_display_clients(struct igt_drm_clients *clients)
 	free(clients);
 }
 
-static const char *bars[] = { " ", "▏", "▎", "▍", "▌", "▋", "▊", "▉", "█" };
-
 static unsigned int n_spaces(const unsigned int n)
 {
-	unsigned int i;
+	static const char *spaces[] = {
+		" ",
+		"  ",
+		"   ",
+		"    ",
+		"     ",
+		"      ",
+		"       ",
+		"        ",
+		"         ",
+		"          ",
+		"           ",
+		"            ",
+		"             ",
+		"              ",
+		"               ",
+		"                ",
+		"                 ",
+		"                  ",
+		"                   ",
+	};
+	unsigned int i, r = n;
 
-	for (i = 0; i < n; i++)
-		putchar(' ');
+	while (r) {
+		if (r > ARRAY_SIZE(spaces))
+			i = ARRAY_SIZE(spaces) - 1;
+		else
+			i = r - 1;
+		fputs(spaces[i], stdout);
+		r -= i + 1;
+	}
 
 	return n;
 }
@@ -941,6 +966,9 @@ static unsigned int n_spaces(const unsigned int n)
 static void
 print_percentage_bar(double percent, double max, int max_len, bool numeric)
 {
+	static const char *bars[] = {
+		" ", "▏", "▎", "▍", "▌", "▋", "▊", "▉", "█"
+	};
 	int bar_len, i, len = max_len - 2;
 	const int w = 8;
 
-- 
2.39.2

