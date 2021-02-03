Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id B7EB030D915
	for <lists+intel-gfx@lfdr.de>; Wed,  3 Feb 2021 12:45:21 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 68E886EA79;
	Wed,  3 Feb 2021 11:45:18 +0000 (UTC)
X-Original-To: Intel-gfx@lists.freedesktop.org
Delivered-To: Intel-gfx@lists.freedesktop.org
Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 5C2516EA7D;
 Wed,  3 Feb 2021 11:45:17 +0000 (UTC)
IronPort-SDR: chD9EiTmRhdCqmEAog6Vq2SEqtdUgWLmVwWiSaLcWRa9NbCnDSLsUY4i0iKOpE9zKxCVcaer1B
 /HM9LSFK1GWA==
X-IronPort-AV: E=McAfee;i="6000,8403,9883"; a="177519831"
X-IronPort-AV: E=Sophos;i="5.79,398,1602572400"; d="scan'208";a="177519831"
Received: from orsmga008.jf.intel.com ([10.7.209.65])
 by fmsmga102.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 03 Feb 2021 03:45:16 -0800
IronPort-SDR: chev5RfynbI6z3+oJYpgIemUngW7/I/QpzNm77bt5p40Hzbf/+Yq0WBAYkc6LjaWBWPjlBlaXG
 4Orw9n0cpPfw==
X-IronPort-AV: E=Sophos;i="5.79,398,1602572400"; d="scan'208";a="392405912"
Received: from eransege-mobl.ger.corp.intel.com (HELO localhost.localdomain)
 ([10.214.208.106])
 by orsmga008-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 03 Feb 2021 03:45:08 -0800
From: Tvrtko Ursulin <tvrtko.ursulin@linux.intel.com>
To: igt-dev@lists.freedesktop.org
Date: Wed,  3 Feb 2021 11:44:56 +0000
Message-Id: <20210203114456.895974-2-tvrtko.ursulin@linux.intel.com>
X-Mailer: git-send-email 2.27.0
In-Reply-To: <20210203114456.895974-1-tvrtko.ursulin@linux.intel.com>
References: <20210203114456.895974-1-tvrtko.ursulin@linux.intel.com>
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH i-g-t 2/2] intel_gpu_top: Add option to sort by
 PID
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
Cc: Intel-gfx@lists.freedesktop.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

From: Tvrtko Ursulin <tvrtko.ursulin@intel.com>

Useful to mimick top view.

Signed-off-by: Tvrtko Ursulin <tvrtko.ursulin@intel.com>
---
 man/intel_gpu_top.rst |  2 +-
 tools/intel_gpu_top.c | 46 +++++++++++++++++++++++++++++++------------
 2 files changed, 34 insertions(+), 14 deletions(-)

diff --git a/man/intel_gpu_top.rst b/man/intel_gpu_top.rst
index 118d8b953a70..b145d85c0440 100644
--- a/man/intel_gpu_top.rst
+++ b/man/intel_gpu_top.rst
@@ -56,7 +56,7 @@ Supported keys:
     'q'    Exit from the tool.
     '1'    Toggle between aggregated engine class and physical engine mode.
     'n'    Toggle display of numeric client busyness overlay.
-    's'    Toggle between sort modes (runtime, total runtime, client id).
+    's'    Toggle between sort modes (runtime, total runtime, pid, client id).
     'i'    Toggle display of clients which used no GPU time.
 
 DEVICE SELECTION
diff --git a/tools/intel_gpu_top.c b/tools/intel_gpu_top.c
index b409106f3718..24a87d2f4f3f 100644
--- a/tools/intel_gpu_top.c
+++ b/tools/intel_gpu_top.c
@@ -959,6 +959,24 @@ static int client_id_cmp(const void *_a, const void *_b)
 	return (int)b->id - a->id;
 }
 
+static int client_pid_cmp(const void *_a, const void *_b)
+{
+	const struct client *a = _a;
+	const struct client *b = _b;
+	int pid_a, pid_b;
+
+	pid_a = a->status == ALIVE ? a->pid : INT_MAX;
+	pid_b = b->status == ALIVE ? b->pid : INT_MAX;
+
+	pid_b -= pid_a;
+	if (pid_b > 0)
+		return -1;
+	if (pid_b < 0)
+		return 1;
+
+	return (int)a->id - b->id;
+}
+
 static int (*client_cmp)(const void *, const void *) = client_last_cmp;
 
 static void sort_clients(struct clients *clients)
@@ -2149,21 +2167,23 @@ static void interactive_stdin(void)
 
 static void select_client_sort(void)
 {
+	struct {
+		int (*cmp)(const void *, const void *);
+		const char *msg;
+	} cmp[] = {
+		{ client_last_cmp, "Sorting clients by current GPU usage." },
+		{ client_total_cmp, "Sorting clients by accummulated GPU usage." },
+		{ client_pid_cmp, "Sorting clients by pid." },
+		{ client_id_cmp, "Sorting clients by sysfs id." },
+	};
 	static unsigned int client_sort;
 
-	switch (++client_sort % 3) {
-	case 0:
-		client_cmp = client_last_cmp;
-		header_msg = "Sorting clients by current GPU usage.";
-		break;
-	case 1:
-		client_cmp = client_total_cmp;
-		header_msg = "Sorting clients by accummulated GPU usage.";
-		break;
-	case 2:
-		client_cmp = client_id_cmp;
-		header_msg = "Sorting clients by sysfs id.";
-	}
+	++client_sort;
+	if (client_sort >= ARRAY_SIZE(cmp))
+		client_sort = 0;
+
+	client_cmp = cmp[client_sort].cmp;
+	header_msg = cmp[client_sort].msg;
 }
 
 static void process_stdin(unsigned int timeout_us)
-- 
2.27.0

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
