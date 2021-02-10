Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 6CB2D316270
	for <lists+intel-gfx@lfdr.de>; Wed, 10 Feb 2021 10:38:17 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 8FD1E6E3DF;
	Wed, 10 Feb 2021 09:38:15 +0000 (UTC)
X-Original-To: Intel-gfx@lists.freedesktop.org
Delivered-To: Intel-gfx@lists.freedesktop.org
Received: from mga04.intel.com (mga04.intel.com [192.55.52.120])
 by gabe.freedesktop.org (Postfix) with ESMTPS id E20886E3DF;
 Wed, 10 Feb 2021 09:38:14 +0000 (UTC)
IronPort-SDR: xorU6PfBAJhdB5Vv51ENo4z0z/vtS+2QC1mZYVAv4+SAxq9d630+YlifylrpjWZql8Jx8/ifCI
 aQbHuNkQqr2g==
X-IronPort-AV: E=McAfee;i="6000,8403,9890"; a="179486355"
X-IronPort-AV: E=Sophos;i="5.81,167,1610438400"; d="scan'208";a="179486355"
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
 by fmsmga104.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 10 Feb 2021 01:38:14 -0800
IronPort-SDR: 4lr4D/hf1jktCerLEDiWFBLCyqwxoUrtRVd3vn4KgvWmMyqJ4xqp4MEfOWRqEPpcPOXU0rAcXz
 QCNx+jnZw5Nw==
X-IronPort-AV: E=Sophos;i="5.81,167,1610438400"; d="scan'208";a="488705233"
Received: from baruchs-mobl.ger.corp.intel.com (HELO localhost.localdomain)
 ([10.214.255.101])
 by fmsmga001-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 10 Feb 2021 01:38:12 -0800
From: Tvrtko Ursulin <tvrtko.ursulin@linux.intel.com>
To: igt-dev@lists.freedesktop.org
Date: Wed, 10 Feb 2021 09:37:54 +0000
Message-Id: <20210210093756.61424-1-tvrtko.ursulin@linux.intel.com>
X-Mailer: git-send-email 2.27.0
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH i-g-t 1/3] intel_gpu_top: Wrap interactive header
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

Slight improvement with regards to wrapping header components to fit
console width. If a single element is wider than max it can still
overflow but it should now work better for practical console widths.

Signed-off-by: Tvrtko Ursulin <tvrtko.ursulin@intel.com>
---
 tools/intel_gpu_top.c | 81 ++++++++++++++++++++++++++++++++++++-------
 1 file changed, 68 insertions(+), 13 deletions(-)

diff --git a/tools/intel_gpu_top.c b/tools/intel_gpu_top.c
index 21084185d896..63ef77056341 100644
--- a/tools/intel_gpu_top.c
+++ b/tools/intel_gpu_top.c
@@ -1461,6 +1461,41 @@ static bool print_groups(struct cnt_group **groups)
 	return print_data;
 }
 
+static int __attribute__ ((format(__printf__, 6, 7)))
+print_header_token(const char *cont, int lines, int con_w, int con_h, int *rem,
+		   const char *fmt, ...)
+{
+	const char *indent = "\n   ";
+	char buf[256];
+	va_list args;
+	int ret;
+
+	if (lines >= con_h)
+		return lines;
+
+	va_start(args, fmt);
+	ret = vsnprintf(buf, sizeof(buf), fmt, args);
+	assert(ret < sizeof(buf));
+	va_end(args);
+
+	ret = (cont ? strlen(cont) : 0) + strlen(buf);
+	*rem -= ret;
+	if (*rem < 0) {
+		if (++lines >= con_h)
+			return lines;
+
+		*rem = con_w - ret - strlen(indent);
+		cont = indent;
+	}
+
+	if (cont)
+		ret = printf("%s%s", cont, buf);
+	else
+		ret = printf("%s", buf);
+
+	return lines;
+}
+
 static const char *header_msg;
 
 static int
@@ -1540,23 +1575,43 @@ print_header(const struct igt_device_card *card,
 	*consumed = print_groups(groups);
 
 	if (output_mode == INTERACTIVE) {
+		int rem = con_w;
+
 		printf("\033[H\033[J");
 
-		if (lines++ < con_h)
-			printf("intel-gpu-top: %s @ %s\n",
-			       codename, card->card);
-		if (lines++ < con_h) {
-			printf("%s/%s MHz; %s%% RC6; ",
-			       freq_items[1].buf, freq_items[0].buf,
-			       rc6_items[0].buf);
-			if (engines->r_gpu.present) {
-				printf("%s/%s W; ",
-				       power_items[0].buf,
-				       power_items[1].buf);
-			}
-			printf("%s irqs/s\n", irq_items[0].buf);
+		lines = print_header_token(NULL, lines, con_w, con_h, &rem,
+					   "intel-gpu-top:");
+
+		lines = print_header_token(" ", lines, con_w, con_h, &rem,
+					   "%s", codename);
+
+		lines = print_header_token(" @ ", lines, con_w, con_h, &rem,
+					   "%s", card->card);
+
+		lines = print_header_token(" - ", lines, con_w, con_h, &rem,
+					   "%s/%s MHz",
+					   freq_items[1].buf,
+					   freq_items[0].buf);
+
+		lines = print_header_token("; ", lines, con_w, con_h, &rem,
+					   "%s%% RC6",
+					   rc6_items[0].buf);
+
+		if (engines->r_gpu.present) {
+			lines = print_header_token("; ", lines, con_w, con_h,
+						   &rem,
+						   "%s/%s W",
+						   power_items[0].buf,
+						   power_items[1].buf);
 		}
 
+		lines = print_header_token("; ", lines, con_w, con_h, &rem,
+					   "%s irqs/s",
+					   irq_items[0].buf);
+
+		if (lines++ < con_h)
+			printf("\n");
+
 		if (lines++ < con_h) {
 			if (header_msg) {
 				printf(" >>> %s\n", header_msg);
-- 
2.27.0

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
