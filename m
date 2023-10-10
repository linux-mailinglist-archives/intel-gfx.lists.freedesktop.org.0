Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 49CFF7BF934
	for <lists+intel-gfx@lfdr.de>; Tue, 10 Oct 2023 13:08:07 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 0EFD610E1DE;
	Tue, 10 Oct 2023 11:08:00 +0000 (UTC)
X-Original-To: Intel-gfx@lists.freedesktop.org
Delivered-To: Intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [134.134.136.100])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 46BB210E1DE;
 Tue, 10 Oct 2023 11:07:58 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1696936078; x=1728472078;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=WYGZRfgQkVG0lThze2e6DNalezisc4ApJVXZcIZZD8o=;
 b=YtdgQfOAkPlcbOc49y0uWvUAVLikiujoTFdHnuRy5wDvOmmVBGR4OcEA
 Q3efpAA45bZRB15434Nli0T4jNyajmAVfXbm1dP++OdnjZKy7F1l3hoHB
 qrFwNPi+yCI3twNm9ARTOl1kkr+P8j+LNWKDwMJxdudwHLUrQx8AsxXGG
 6EcewNoj9DDlETKe5ARTfPxG5NSulcR/mr2sYRJsq+2PtbMrp7zc26GqL
 aOO0ZyaafW1HxoP1Jdr4xUg85/CqwAsBRMrhtRNY8TWiJ1lQN5xsXLow9
 sHitkjLeBhxtwvvj8mgfONep9k+e2nd4dS2BCk7hhtQjZMdIaG/3J5xRa Q==;
X-IronPort-AV: E=McAfee;i="6600,9927,10858"; a="450863390"
X-IronPort-AV: E=Sophos;i="6.03,212,1694761200"; d="scan'208";a="450863390"
Received: from fmsmga008.fm.intel.com ([10.253.24.58])
 by orsmga105.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 10 Oct 2023 04:07:26 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10858"; a="819205894"
X-IronPort-AV: E=Sophos;i="6.03,212,1694761200"; d="scan'208";a="819205894"
Received: from emikisch-mobl.amr.corp.intel.com (HELO localhost.localdomain)
 ([10.213.174.67])
 by fmsmga008-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 10 Oct 2023 04:07:24 -0700
From: Tvrtko Ursulin <tvrtko.ursulin@linux.intel.com>
To: igt-dev@lists.freedesktop.org,
	Intel-gfx@lists.freedesktop.org
Date: Tue, 10 Oct 2023 12:07:13 +0100
Message-Id: <20231010110714.749239-4-tvrtko.ursulin@linux.intel.com>
X-Mailer: git-send-email 2.39.2
In-Reply-To: <20231010110714.749239-1-tvrtko.ursulin@linux.intel.com>
References: <20231010110714.749239-1-tvrtko.ursulin@linux.intel.com>
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

Signed-off-by: Tvrtko Ursulin <tvrtko.ursulin@intel.com>
---
 tools/intel_gpu_top.c | 38 +++++++++++++++++++++++++++++++++-----
 1 file changed, 33 insertions(+), 5 deletions(-)

diff --git a/tools/intel_gpu_top.c b/tools/intel_gpu_top.c
index c5abd0c92155..472ce3f13ba9 100644
--- a/tools/intel_gpu_top.c
+++ b/tools/intel_gpu_top.c
@@ -926,14 +926,40 @@ static void free_display_clients(struct igt_drm_clients *clients)
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
@@ -941,6 +967,8 @@ static unsigned int n_spaces(const unsigned int n)
 static void
 print_percentage_bar(double percent, double max, int max_len, bool numeric)
 {
+	static const char *bars[] =
+		{ " ", "▏", "▎", "▍", "▌", "▋", "▊", "▉", "█" };
 	int bar_len, i, len = max_len - 2;
 	const int w = 8;
 
-- 
2.39.2

