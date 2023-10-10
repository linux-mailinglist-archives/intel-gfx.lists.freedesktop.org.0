Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id B559F7BF936
	for <lists+intel-gfx@lfdr.de>; Tue, 10 Oct 2023 13:08:11 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 43A9A10E33F;
	Tue, 10 Oct 2023 11:08:02 +0000 (UTC)
X-Original-To: Intel-gfx@lists.freedesktop.org
Delivered-To: Intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [134.134.136.100])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 66A0610E1D0;
 Tue, 10 Oct 2023 11:07:58 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1696936078; x=1728472078;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=03nDRWW7EVAGKmebBot0ZRNlqX0pvuY1gK8RtPU+Pps=;
 b=RcKIhfVOn0z6i2/vqI/6XWn9atjlXmHtg1Bpby4OkSC7/tktsDUPoLoE
 F+Px3cxQgrFdNVX6E6S4Ylu0anDUKbbum5o4noQtgY8HhwH96CByaIi9E
 eQCI3uzNh78AlbDgdSYoVSsx5ZausWmv6AoUYlnxoQ05nqTFRW2zhD/dF
 ma9GDAL9kPrKe9ZyNieJUbf+oAsWEtN2iEGLO4tS6hr74nAWxrfNyG9ni
 FIBbXQQdjKPMGsm7xsLgrKmvvaKjyIrPBp/EU5rYk6ot0nW8wnti6UnpE
 oz+4pkrDeMp7K4QP33Z0Dm5lZnJ39wBPR4HLTJJihtswaZVmyJQzK8T32 A==;
X-IronPort-AV: E=McAfee;i="6600,9927,10858"; a="450863400"
X-IronPort-AV: E=Sophos;i="6.03,212,1694761200"; d="scan'208";a="450863400"
Received: from fmsmga008.fm.intel.com ([10.253.24.58])
 by orsmga105.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 10 Oct 2023 04:07:33 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10858"; a="819205899"
X-IronPort-AV: E=Sophos;i="6.03,212,1694761200"; d="scan'208";a="819205899"
Received: from emikisch-mobl.amr.corp.intel.com (HELO localhost.localdomain)
 ([10.213.174.67])
 by fmsmga008-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 10 Oct 2023 04:07:25 -0700
From: Tvrtko Ursulin <tvrtko.ursulin@linux.intel.com>
To: igt-dev@lists.freedesktop.org,
	Intel-gfx@lists.freedesktop.org
Date: Tue, 10 Oct 2023 12:07:14 +0100
Message-Id: <20231010110714.749239-5-tvrtko.ursulin@linux.intel.com>
X-Mailer: git-send-email 2.39.2
In-Reply-To: <20231010110714.749239-1-tvrtko.ursulin@linux.intel.com>
References: <20231010110714.749239-1-tvrtko.ursulin@linux.intel.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH i-g-t 4/4] tools/intel_gpu_top: Handle narrow
 terminals more gracefully
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

Instead of asserting just skip trying to print columns when terminal is
too narrow.

At the same time fix some type confusion to fix calculations going huge.

Signed-off-by: Tvrtko Ursulin <tvrtko.ursulin@intel.com>
Closes: https://gitlab.freedesktop.org/drm/igt-gpu-tools/-/issues/143
---
 tools/intel_gpu_top.c | 12 +++++++-----
 1 file changed, 7 insertions(+), 5 deletions(-)

diff --git a/tools/intel_gpu_top.c b/tools/intel_gpu_top.c
index 472ce3f13ba9..6d1397cb8214 100644
--- a/tools/intel_gpu_top.c
+++ b/tools/intel_gpu_top.c
@@ -926,7 +926,7 @@ static void free_display_clients(struct igt_drm_clients *clients)
 	free(clients);
 }
 
-static unsigned int n_spaces(const unsigned int n)
+static int n_spaces(const int n)
 {
 	static const char *spaces[] = {
 		" ",
@@ -950,7 +950,7 @@ static unsigned int n_spaces(const unsigned int n)
 		"                   ",
 #define MAX_SPACES 19
 	};
-	unsigned int i, r = n;
+	int i, r = n;
 
 	while (r) {
 		if (r > MAX_SPACES)
@@ -972,7 +972,8 @@ print_percentage_bar(double percent, double max, int max_len, bool numeric)
 	int bar_len, i, len = max_len - 2;
 	const int w = 8;
 
-	assert(max_len > 0);
+	if (len < 2) /* For edge lines '|' */
+		return;
 
 	bar_len = ceil(w * percent * len / max);
 	if (bar_len > w * len)
@@ -986,6 +987,8 @@ print_percentage_bar(double percent, double max, int max_len, bool numeric)
 		printf("%s", bars[i]);
 
 	len -= (bar_len + (w - 1)) / w;
+	if (len < 1)
+		return;
 	n_spaces(len);
 
 	putchar('|');
@@ -2001,8 +2004,7 @@ print_clients_header(struct igt_drm_clients *clients, int lines,
 				 4 : clients->max_name_len; /* At least "NAME" */
 
 	if (output_mode == INTERACTIVE) {
-		unsigned int num_active = 0;
-		int len;
+		int len, num_active = 0;
 
 		if (lines++ >= con_h)
 			return lines;
-- 
2.39.2

