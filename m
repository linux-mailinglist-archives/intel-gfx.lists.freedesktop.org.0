Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 3C8607B327A
	for <lists+intel-gfx@lfdr.de>; Fri, 29 Sep 2023 14:25:53 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 9A79610E712;
	Fri, 29 Sep 2023 12:25:51 +0000 (UTC)
X-Original-To: Intel-gfx@lists.freedesktop.org
Delivered-To: Intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [134.134.136.31])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 3FFC310E700;
 Fri, 29 Sep 2023 12:25:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1695990333; x=1727526333;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=oqQtG3eFdKpNTeHhN9seKrtmb5X/ts/8KtaJB0RjSXU=;
 b=IvgmPZh6dZCvJVxvmM+3VsvgEf++ugAFSmtCgzJzlCICfKzlK/2Raexc
 pJ73N5Y1EtRayfQbIRtAQmqp0XCu1bx5z58VTNbMkMYIfu5pfsHZ10Xfl
 v8PwP6o6Hp9wWVaPPCPnGOEASwmpY4ACwefavnIHUacLn15kqZEEkBB/b
 aC2Y469iRWwZUoeZweU1rn2FzH9oJzjGa7tnFuzDhGSL+LlHjiXw8aPFM
 /wqH72oUK5LpXjM99Bx0pQYpvAXKA96vhEDtIxzRiyGD4nJLtMh3Pbc6G
 W330eFHo7U2GtNiqm3C1NQlljLGR/rwKMigqLBwEhg02jo1M+4lahX+xL A==;
X-IronPort-AV: E=McAfee;i="6600,9927,10847"; a="446443772"
X-IronPort-AV: E=Sophos;i="6.03,187,1694761200"; d="scan'208";a="446443772"
Received: from orsmga006.jf.intel.com ([10.7.209.51])
 by orsmga104.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 29 Sep 2023 05:25:33 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10847"; a="726577154"
X-IronPort-AV: E=Sophos;i="6.03,187,1694761200"; d="scan'208";a="726577154"
Received: from pbrady4x-mobl1.ger.corp.intel.com (HELO localhost.localdomain)
 ([10.213.203.84])
 by orsmga006-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 29 Sep 2023 05:25:31 -0700
From: Tvrtko Ursulin <tvrtko.ursulin@linux.intel.com>
To: igt-dev@lists.freedesktop.org,
	Intel-gfx@lists.freedesktop.org
Date: Fri, 29 Sep 2023 13:25:11 +0100
Message-Id: <20230929122517.349348-7-tvrtko.ursulin@linux.intel.com>
X-Mailer: git-send-email 2.39.2
In-Reply-To: <20230929122517.349348-1-tvrtko.ursulin@linux.intel.com>
References: <20230929122517.349348-1-tvrtko.ursulin@linux.intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH i-g-t 06/12] tools/intel_gpu_top: Optimise
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
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

From: Tvrtko Ursulin <tvrtko.ursulin@intel.com>

Padding the percentage bars and table columns with spaces happens quite a
lot so lets do better than putchar at a time. Have a table of visually
empty strings and build the required length out of those chunks.

While at it, also move the percentage bar table into its function scope.

Signed-off-by: Tvrtko Ursulin <tvrtko.ursulin@intel.com>
---
 tools/intel_gpu_top.c | 38 +++++++++++++++++++++++++++++++++-----
 1 file changed, 33 insertions(+), 5 deletions(-)

diff --git a/tools/intel_gpu_top.c b/tools/intel_gpu_top.c
index de37ff603b6f..739ed9839961 100644
--- a/tools/intel_gpu_top.c
+++ b/tools/intel_gpu_top.c
@@ -924,14 +924,40 @@ static void free_display_clients(struct igt_drm_clients *clients)
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
+#define MAX_SPACES 19
+	};
+	unsigned int i, r = n;
 
-	for (i = 0; i < n; i++)
-		putchar(' ');
+	while (r) {
+		if (r > MAX_SPACES)
+			i = MAX_SPACES - 1;
+		else
+			i = r - 1;
+		fputs(spaces[i], stdout);
+		r -= i + 1;
+	}
 
 	return n;
 }
@@ -939,6 +965,8 @@ static unsigned int n_spaces(const unsigned int n)
 static void
 print_percentage_bar(double percent, double max, int max_len, bool numeric)
 {
+	static const char *bars[] =
+		{ " ", "▏", "▎", "▍", "▌", "▋", "▊", "▉", "█" };
 	int bar_len, i, len = max_len - 2;
 	const int w = 8;
 
-- 
2.39.2

