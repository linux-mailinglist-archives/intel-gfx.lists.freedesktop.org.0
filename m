Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 3F35530A395
	for <lists+intel-gfx@lfdr.de>; Mon,  1 Feb 2021 09:54:11 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 2FF6C6E483;
	Mon,  1 Feb 2021 08:54:09 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (unknown [77.68.26.236])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 33F1E6E483
 for <intel-gfx@lists.freedesktop.org>; Mon,  1 Feb 2021 08:54:08 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from haswell.alporthouse.com (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP id 23757689-1500050 
 for multiple; Mon, 01 Feb 2021 08:53:58 +0000
From: Chris Wilson <chris@chris-wilson.co.uk>
To: intel-gfx@lists.freedesktop.org
Date: Mon,  1 Feb 2021 08:53:58 +0000
Message-Id: <20210201085358.3408367-1-chris@chris-wilson.co.uk>
X-Mailer: git-send-email 2.30.0
In-Reply-To: <20210131031153.3399123-1-chris@chris-wilson.co.uk>
References: <20210131031153.3399123-1-chris@chris-wilson.co.uk>
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH i-g-t] intel_gpu_top: Hide unused clients
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
Cc: Chris Wilson <chris@chris-wilson.co.uk>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

Hide inactive clients by pressing 'i' (toggle in interactive mode).

Signed-off-by: Chris Wilson <chris@chris-wilson.co.uk>
Cc: Tvrtko Ursulin <tvrtko.ursulin@linux.intel.com>
---
 tools/intel_gpu_top.c | 7 +++++++
 1 file changed, 7 insertions(+)

diff --git a/tools/intel_gpu_top.c b/tools/intel_gpu_top.c
index 60ff62d28..edf0dedac 100644
--- a/tools/intel_gpu_top.c
+++ b/tools/intel_gpu_top.c
@@ -1595,6 +1595,7 @@ print_imc(struct engines *engines, double t, int lines, int con_w, int con_h)
 }
 
 static bool class_view;
+static bool filter_idle;
 
 static int
 print_engines_header(struct engines *engines, double t,
@@ -1689,6 +1690,9 @@ print_engines_footer(struct engines *engines, double t,
 	pops->close_struct();
 
 	if (output_mode == INTERACTIVE) {
+		if (filter_idle && !c->total_runtime)
+			return;
+
 		if (lines++ < con_h)
 			printf("\n");
 	}
@@ -2115,6 +2119,9 @@ static void process_stdin(unsigned int timeout_us)
 		case 'q':
 			stop_top = true;
 			break;
+		case 'i':
+			filter_idle ^= true;
+			break;
 		case '1':
 			class_view ^= true;
 			break;
-- 
2.30.0

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
