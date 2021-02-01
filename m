Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 3B49530A5B8
	for <lists+intel-gfx@lfdr.de>; Mon,  1 Feb 2021 11:45:44 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id BB2306E4FE;
	Mon,  1 Feb 2021 10:45:39 +0000 (UTC)
X-Original-To: Intel-gfx@lists.freedesktop.org
Delivered-To: Intel-gfx@lists.freedesktop.org
Received: from mga18.intel.com (mga18.intel.com [134.134.136.126])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 93D936E4FE;
 Mon,  1 Feb 2021 10:45:38 +0000 (UTC)
IronPort-SDR: ferzoB2An0UzaA6IPjF+h7nIWOLMwAHGg9E2YSJNPLoQ5fIVpWxmw/xHeunL4kd6coU6owILDC
 k7YTNHxxQl2w==
X-IronPort-AV: E=McAfee;i="6000,8403,9881"; a="168348288"
X-IronPort-AV: E=Sophos;i="5.79,392,1602572400"; d="scan'208";a="168348288"
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
 by orsmga106.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 01 Feb 2021 02:45:38 -0800
IronPort-SDR: 2SkDV4IUzPsrs2K4CwdvUXFg6a9Xo41N724q7m4D3R8dChu2yvU2HUe+HiO1xPgXRyLpDJEgEv
 RSmtB+sqTt3g==
X-IronPort-AV: E=Sophos;i="5.79,392,1602572400"; d="scan'208";a="478821451"
Received: from rmeir2x-mobl.ger.corp.intel.com (HELO localhost.localdomain)
 ([10.214.231.94])
 by fmsmga001-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 01 Feb 2021 02:45:36 -0800
From: Tvrtko Ursulin <tvrtko.ursulin@linux.intel.com>
To: igt-dev@lists.freedesktop.org
Date: Mon,  1 Feb 2021 10:45:23 +0000
Message-Id: <20210201104524.875560-2-tvrtko.ursulin@linux.intel.com>
X-Mailer: git-send-email 2.27.0
In-Reply-To: <20210201104524.875560-1-tvrtko.ursulin@linux.intel.com>
References: <20210201104524.875560-1-tvrtko.ursulin@linux.intel.com>
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH i-g-t 2/3] intel_gpu_top: Add option to hide
 inactive clients
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

Allow hiding inactive clients (used no GPU time ever) in interactive mode
by pressing 'i'.

Signed-off-by: Tvrtko Ursulin <tvrtko.ursulin@intel.com>
---
 man/intel_gpu_top.rst | 1 +
 tools/intel_gpu_top.c | 7 +++++++
 2 files changed, 8 insertions(+)

diff --git a/man/intel_gpu_top.rst b/man/intel_gpu_top.rst
index b18fd9675bb7..118d8b953a70 100644
--- a/man/intel_gpu_top.rst
+++ b/man/intel_gpu_top.rst
@@ -57,6 +57,7 @@ Supported keys:
     '1'    Toggle between aggregated engine class and physical engine mode.
     'n'    Toggle display of numeric client busyness overlay.
     's'    Toggle between sort modes (runtime, total runtime, client id).
+    'i'    Toggle display of clients which used no GPU time.
 
 DEVICE SELECTION
 ================
diff --git a/tools/intel_gpu_top.c b/tools/intel_gpu_top.c
index 60ff62d28e5d..dffc6ebecc57 100644
--- a/tools/intel_gpu_top.c
+++ b/tools/intel_gpu_top.c
@@ -1933,6 +1933,7 @@ print_clients_header(struct clients *clients, int lines,
 }
 
 static bool numeric_clients;
+static bool filter_idle;
 
 static int
 print_client(struct client *c, struct engines *engines, double t, int lines,
@@ -1942,6 +1943,9 @@ print_client(struct client *c, struct engines *engines, double t, int lines,
 	unsigned int i;
 
 	if (output_mode == INTERACTIVE) {
+		if (filter_idle && !c->total_runtime)
+			return lines;
+
 		lines++;
 
 		printf("%6u %17s ", c->pid, c->print_name);
@@ -2118,6 +2122,9 @@ static void process_stdin(unsigned int timeout_us)
 		case '1':
 			class_view ^= true;
 			break;
+		case 'i':
+			filter_idle ^= true;
+			break;
 		case 'n':
 			numeric_clients ^= true;
 			break;
-- 
2.27.0

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
