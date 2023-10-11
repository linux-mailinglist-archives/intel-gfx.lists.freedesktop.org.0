Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 496617C4D5D
	for <lists+intel-gfx@lfdr.de>; Wed, 11 Oct 2023 10:38:57 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 9664E10E5BA;
	Wed, 11 Oct 2023 08:38:55 +0000 (UTC)
X-Original-To: Intel-gfx@lists.freedesktop.org
Delivered-To: Intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.55.52.120])
 by gabe.freedesktop.org (Postfix) with ESMTPS id C4AAD10E5B7;
 Wed, 11 Oct 2023 08:38:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1697013533; x=1728549533;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=ARvUE3WCy+cSdrzi/Q8RLjWJxbcmWoCm114CXnJg2is=;
 b=crvzNplxUDU1t9PJWavZDAhDZHFuCrDESFtbGe4bEXrXjWR6Mu/9Nvp8
 43N6pEBN8b0MphMxolQKmjBZa1NO+MFfbngT4hvKOUSCy9rEw7fwa3RBP
 9Ss9mInjfRDl4t1G+0YCv3sqYUGyCKo7hXYN0N7KCnYC+1xeZWqxC5y4H
 hZlqrEJ2YR3hR1PDub/9M4vwZfqssj1L+ISZOcIISfK9E8k9hJB3gWOYw
 p1Zwba4FYLfNYqbCtUll3OCAgJ+ZK/FSiaOLPqGJXlhaM3vfu0iRmXreM
 LGqL4dJF9mfKSi5lFDnNMPFHUXBMD30+s2v/1vyUkMSARIGx1TYeVX3HQ A==;
X-IronPort-AV: E=McAfee;i="6600,9927,10859"; a="383473314"
X-IronPort-AV: E=Sophos;i="6.03,214,1694761200"; d="scan'208";a="383473314"
Received: from orsmga004.jf.intel.com ([10.7.209.38])
 by fmsmga104.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 11 Oct 2023 01:38:53 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10859"; a="877584889"
X-IronPort-AV: E=Sophos;i="6.03,214,1694761200"; d="scan'208";a="877584889"
Received: from cjodwyer-mobl.ger.corp.intel.com (HELO localhost.localdomain)
 ([10.213.194.149])
 by orsmga004-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 11 Oct 2023 01:38:51 -0700
From: Tvrtko Ursulin <tvrtko.ursulin@linux.intel.com>
To: igt-dev@lists.freedesktop.org,
	Intel-gfx@lists.freedesktop.org
Date: Wed, 11 Oct 2023 09:38:44 +0100
Message-Id: <20231011083845.798413-3-tvrtko.ursulin@linux.intel.com>
X-Mailer: git-send-email 2.39.2
In-Reply-To: <20231011083845.798413-1-tvrtko.ursulin@linux.intel.com>
References: <20231011083845.798413-1-tvrtko.ursulin@linux.intel.com>
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
Cc: Kamil Konieczny <kamil.konieczny@linux.intel.com>
---
 tools/intel_gpu_top.c | 38 +++++++++++++++++++++++++++++++++-----
 1 file changed, 33 insertions(+), 5 deletions(-)

diff --git a/tools/intel_gpu_top.c b/tools/intel_gpu_top.c
index b6d1014f00b8..006879c4ae67 100644
--- a/tools/intel_gpu_top.c
+++ b/tools/intel_gpu_top.c
@@ -926,14 +926,39 @@ static void free_display_clients(struct igt_drm_clients *clients)
 	free(clients);
 }
 
-static const char *bars[] = { " ", "▏", "▎", "▍", "▌", "▋", "▊", "▉", "█" };
-
 static int n_spaces(const int n)
 {
-	int i;
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
+	int i, r = n;
 
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
@@ -941,6 +966,9 @@ static int n_spaces(const int n)
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

