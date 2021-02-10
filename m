Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id AD37C316274
	for <lists+intel-gfx@lfdr.de>; Wed, 10 Feb 2021 10:38:23 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 0BE1A6E93E;
	Wed, 10 Feb 2021 09:38:22 +0000 (UTC)
X-Original-To: Intel-gfx@lists.freedesktop.org
Delivered-To: Intel-gfx@lists.freedesktop.org
Received: from mga04.intel.com (mga04.intel.com [192.55.52.120])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 7A7706EB10;
 Wed, 10 Feb 2021 09:38:18 +0000 (UTC)
IronPort-SDR: RiKZADyMKXjIWpnfHNDeKcryTMlP5/haFnRmuzsR7KiqBcWiITpjnT5O2ilmL4Aztqq+3KIou0
 +GcqEt+zBKYQ==
X-IronPort-AV: E=McAfee;i="6000,8403,9890"; a="179486363"
X-IronPort-AV: E=Sophos;i="5.81,167,1610438400"; d="scan'208";a="179486363"
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
 by fmsmga104.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 10 Feb 2021 01:38:18 -0800
IronPort-SDR: Xz+si76fxeerAr9Ufclwd0l1Q/b0IPUUbM8wzns8MhZBgbLrKbzRIoksbjuVhwoJxtihPIRACl
 Jr/1FS9LOYkA==
X-IronPort-AV: E=Sophos;i="5.81,167,1610438400"; d="scan'208";a="488705247"
Received: from baruchs-mobl.ger.corp.intel.com (HELO localhost.localdomain)
 ([10.214.255.101])
 by fmsmga001-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 10 Feb 2021 01:38:16 -0800
From: Tvrtko Ursulin <tvrtko.ursulin@linux.intel.com>
To: igt-dev@lists.freedesktop.org
Date: Wed, 10 Feb 2021 09:37:56 +0000
Message-Id: <20210210093756.61424-3-tvrtko.ursulin@linux.intel.com>
X-Mailer: git-send-email 2.27.0
In-Reply-To: <20210210093756.61424-1-tvrtko.ursulin@linux.intel.com>
References: <20210210093756.61424-1-tvrtko.ursulin@linux.intel.com>
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH i-g-t 3/3] intel_gpu_top: Interactive help screen
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

Show a list of supported interactive commands when pressing 'h'.

Signed-off-by: Tvrtko Ursulin <tvrtko.ursulin@intel.com>
---
 man/intel_gpu_top.rst |  1 +
 tools/intel_gpu_top.c | 68 ++++++++++++++++++++++++++++++++++++++-----
 2 files changed, 61 insertions(+), 8 deletions(-)

diff --git a/man/intel_gpu_top.rst b/man/intel_gpu_top.rst
index 20658e291db0..f6d74852558b 100644
--- a/man/intel_gpu_top.rst
+++ b/man/intel_gpu_top.rst
@@ -54,6 +54,7 @@ RUNTIME CONTROL
 Supported keys:
 
     'q'    Exit from the tool.
+    'h'    Show interactive help.
     '1'    Toggle between aggregated engine class and physical engine mode.
     'n'    Toggle display of numeric client busyness overlay.
     's'    Toggle between sort modes (runtime, total runtime, pid, client id).
diff --git a/tools/intel_gpu_top.c b/tools/intel_gpu_top.c
index 018e28a66c10..c0e45ddb24e1 100644
--- a/tools/intel_gpu_top.c
+++ b/tools/intel_gpu_top.c
@@ -2255,19 +2255,31 @@ static void select_client_sort(void)
 	header_msg = cmp[client_sort].msg;
 }
 
-static void process_stdin(unsigned int timeout_us)
+static bool in_help;
+
+static void process_help_stdin(void)
 {
-	struct pollfd p = { .fd = 0, .events = POLLIN };
-	int ret;
+	for (;;) {
+		int ret;
+		char c;
 
-	ret = poll(&p, 1, timeout_us / 1000);
-	if (ret <= 0) {
-		if (ret < 0)
-			stop_top = true;
-		return;
+		ret = read(0, &c, 1);
+		if (ret <= 0)
+			break;
+
+		switch (c) {
+		case 'q':
+		case 'h':
+			in_help = false;
+			break;
+		};
 	}
+}
 
+static void process_normal_stdin(void)
+{
 	for (;;) {
+		int ret;
 		char c;
 
 		ret = read(0, &c, 1);
@@ -2298,6 +2310,9 @@ static void process_stdin(unsigned int timeout_us)
 		case 's':
 			select_client_sort();
 			break;
+		case 'h':
+			in_help = true;
+			break;
 		case 'H':
 			aggregate_pids ^= true;
 			if (aggregate_pids)
@@ -2309,6 +2324,38 @@ static void process_stdin(unsigned int timeout_us)
 	}
 }
 
+static void process_stdin(unsigned int timeout_us)
+{
+	struct pollfd p = { .fd = 0, .events = POLLIN };
+	int ret;
+
+	ret = poll(&p, 1, timeout_us / 1000);
+	if (ret <= 0) {
+		if (ret < 0)
+			stop_top = true;
+		return;
+	}
+
+	if (in_help)
+		process_help_stdin();
+	else
+		process_normal_stdin();
+}
+
+static void show_help_screen(void)
+{
+	printf(
+"Help for interactive commands:\n\n"
+"    '1'    Toggle between aggregated engine class and physical engine mode.\n"
+"    'n'    Toggle display of numeric client busyness overlay.\n"
+"    's'    Toggle between sort modes (runtime, total runtime, pid, client id).\n"
+"    'i'    Toggle display of clients which used no GPU time.\n"
+"    'H'    Toggle between per PID aggregation and individual clients.\n"
+"\n"
+"    'h' or 'q'    Exit interactive help.\n"
+"\n");
+}
+
 int main(int argc, char **argv)
 {
 	unsigned int period_us = DEFAULT_PERIOD_MS * 1000;
@@ -2491,6 +2538,11 @@ int main(int argc, char **argv)
 					     t, lines, con_w, con_h,
 					     &consumed);
 
+			if (in_help) {
+				show_help_screen();
+				break;
+			}
+
 			lines = print_imc(engines, t, lines, con_w, con_h);
 
 			lines = print_engines(engines, t, lines, con_w, con_h);
-- 
2.27.0

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
