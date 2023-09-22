Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 3CEB37AB2E9
	for <lists+intel-gfx@lfdr.de>; Fri, 22 Sep 2023 15:46:06 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id A23C110E66E;
	Fri, 22 Sep 2023 13:46:02 +0000 (UTC)
X-Original-To: Intel-gfx@lists.freedesktop.org
Delivered-To: Intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.55.52.93])
 by gabe.freedesktop.org (Postfix) with ESMTPS id F273E10E674;
 Fri, 22 Sep 2023 13:45:13 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1695390338; x=1726926338;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=Sr43CvzG/k974mK43Pj+WtTVAi0698tnjW5IM1nJZgg=;
 b=fS6YWuFIxsM4ulD7dC/YDkREFQ4StnL6Vy3jN0hKiFiDYpRJp2K10tZt
 pclNxVd4JGzpgRXBG9gijSu0ISZgxv50trkIKb9qoRNa5lkXQ84C0XeC5
 lwXbLkJm/gHFGOJ+KOJSxbmWj9qe+8xBunXcNiorxeNJy+bQD6FuYzKzo
 NbTpNjRJZIdeONOWITfDgVyb19FLglfpEB9RGNQ+268VQCJhAPKgtFY3Q
 woZ+bHDKybD0YXaKxizuS1rf14Z7mOWUULuEvjQkOed5gChGTSjtevv3l
 huUwS7IbrfQDzQ+GIsDlDkpHXm4QueVPI/bSn2kGuLDa89WtP+tC9c9wF g==;
X-IronPort-AV: E=McAfee;i="6600,9927,10841"; a="378117145"
X-IronPort-AV: E=Sophos;i="6.03,167,1694761200"; d="scan'208";a="378117145"
Received: from orsmga004.jf.intel.com ([10.7.209.38])
 by fmsmga102.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 22 Sep 2023 06:44:52 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10841"; a="871243586"
X-IronPort-AV: E=Sophos;i="6.03,167,1694761200"; d="scan'208";a="871243586"
Received: from placki-mobl.ger.corp.intel.com (HELO localhost.localdomain)
 ([10.213.200.149])
 by orsmga004-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 22 Sep 2023 06:44:50 -0700
From: Tvrtko Ursulin <tvrtko.ursulin@linux.intel.com>
To: igt-dev@lists.freedesktop.org,
	Intel-gfx@lists.freedesktop.org
Date: Fri, 22 Sep 2023 14:44:31 +0100
Message-Id: <20230922134437.234888-7-tvrtko.ursulin@linux.intel.com>
X-Mailer: git-send-email 2.39.2
In-Reply-To: <20230922134437.234888-1-tvrtko.ursulin@linux.intel.com>
References: <20230922134437.234888-1-tvrtko.ursulin@linux.intel.com>
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
index 6363f460c892..a7a24e527f01 100644
--- a/tools/intel_gpu_top.c
+++ b/tools/intel_gpu_top.c
@@ -928,14 +928,40 @@ static void free_display_clients(struct igt_drm_clients *clients)
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
@@ -943,6 +969,8 @@ static unsigned int n_spaces(const unsigned int n)
 static void
 print_percentage_bar(double percent, double max, int max_len, bool numeric)
 {
+	static const char *bars[] =
+		{ " ", "▏", "▎", "▍", "▌", "▋", "▊", "▉", "█" };
 	int bar_len, i, len = max_len - 2;
 	const int w = 8;
 
-- 
2.39.2

