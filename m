Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 7E72A30D916
	for <lists+intel-gfx@lfdr.de>; Wed,  3 Feb 2021 12:45:23 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 7EEFC6EA7E;
	Wed,  3 Feb 2021 11:45:18 +0000 (UTC)
X-Original-To: Intel-gfx@lists.freedesktop.org
Delivered-To: Intel-gfx@lists.freedesktop.org
Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
 by gabe.freedesktop.org (Postfix) with ESMTPS id D3AEA6EA7D;
 Wed,  3 Feb 2021 11:45:16 +0000 (UTC)
IronPort-SDR: 86eykhktsA4ecrNzlxQBI+66VKaETqyC1x4m+A44u22I3xRamCrpv7LDo7/pTR0Wub8gRjie5z
 +fIvaLOwOfwA==
X-IronPort-AV: E=McAfee;i="6000,8403,9883"; a="177519821"
X-IronPort-AV: E=Sophos;i="5.79,398,1602572400"; d="scan'208";a="177519821"
Received: from orsmga008.jf.intel.com ([10.7.209.65])
 by fmsmga102.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 03 Feb 2021 03:45:09 -0800
IronPort-SDR: EJeKohU5qVksynqvKfF2JAo1QWixegByRgrXFcp0NE4Vb6C3tZLhNHehNRkCXXJI1YRsXIojuI
 3ipnOXrj25kw==
X-IronPort-AV: E=Sophos;i="5.79,398,1602572400"; d="scan'208";a="392405899"
Received: from eransege-mobl.ger.corp.intel.com (HELO localhost.localdomain)
 ([10.214.208.106])
 by orsmga008-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 03 Feb 2021 03:45:06 -0800
From: Tvrtko Ursulin <tvrtko.ursulin@linux.intel.com>
To: igt-dev@lists.freedesktop.org
Date: Wed,  3 Feb 2021 11:44:55 +0000
Message-Id: <20210203114456.895974-1-tvrtko.ursulin@linux.intel.com>
X-Mailer: git-send-email 2.27.0
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH i-g-t 1/2] intel_gpu_top: Show banner messages
 when cycling sort modes
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

It is useful to let the user know what is the currently active sort mode.

Signed-off-by: Tvrtko Ursulin <tvrtko.ursulin@intel.com>
---
 tools/intel_gpu_top.c | 15 +++++++++++++--
 1 file changed, 13 insertions(+), 2 deletions(-)

diff --git a/tools/intel_gpu_top.c b/tools/intel_gpu_top.c
index 584aa21b198a..b409106f3718 100644
--- a/tools/intel_gpu_top.c
+++ b/tools/intel_gpu_top.c
@@ -1479,6 +1479,8 @@ print_header_token(const char *cont, int lines, int con_w, int con_h, int *rem,
 	return lines;
 }
 
+static const char *header_msg;
+
 static int
 print_header(const struct igt_device_card *card,
 	     const char *codename,
@@ -1593,8 +1595,14 @@ print_header(const struct igt_device_card *card,
 		if (lines++ < con_h)
 			printf("\n");
 
-		if (lines++ < con_h)
-			printf("\n");
+		if (lines++ < con_h) {
+			if (header_msg) {
+				printf(" >>> %s\n", header_msg);
+				header_msg = NULL;
+			} else {
+				printf("\n");
+			}
+		}
 	}
 
 	return lines;
@@ -2146,12 +2154,15 @@ static void select_client_sort(void)
 	switch (++client_sort % 3) {
 	case 0:
 		client_cmp = client_last_cmp;
+		header_msg = "Sorting clients by current GPU usage.";
 		break;
 	case 1:
 		client_cmp = client_total_cmp;
+		header_msg = "Sorting clients by accummulated GPU usage.";
 		break;
 	case 2:
 		client_cmp = client_id_cmp;
+		header_msg = "Sorting clients by sysfs id.";
 	}
 }
 
-- 
2.27.0

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
