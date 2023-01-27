Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 94D8067E2D1
	for <lists+intel-gfx@lfdr.de>; Fri, 27 Jan 2023 12:13:04 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id E7B4F10E460;
	Fri, 27 Jan 2023 11:13:02 +0000 (UTC)
X-Original-To: Intel-gfx@lists.freedesktop.org
Delivered-To: Intel-gfx@lists.freedesktop.org
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 1A09210E458;
 Fri, 27 Jan 2023 11:12:55 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1674817975; x=1706353975;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=8TZ/wvve9Dvq4Y9T5zmRqt6DdJbRlIJjzSZ9OFSR+i0=;
 b=bOualiIfVS6+EezXZ1DrIN+LkZEkhX12/UpfKV1Ty1VXr3EjQ9HzsrGY
 Xd2jeuja+2We+OL63C7OsbFI03maqYYH9H6fEPQgp04V95KP7gogTPzId
 0TPrwJ0Z2kX6cuWH5hvrEVmHGoq2KW64sTkmStdsAifS0BbUr5xZe3qQj
 quc8EpnytO1fobAV1nhAUkQJ2Q3n9FOutYgbi5r/k1/6PDFsfXDleYJ/4
 sLDZV98Kr9EvrnUcuBoNM6KPpZT0cQrVQNf3Id5nFcOaFYnVkQBR9PMf+
 Dmktey/7xh3lckAmNhy01whXGlMA1eCoKxc5o7XxV/HuQOEuX7Nv3g1n8 g==;
X-IronPort-AV: E=McAfee;i="6500,9779,10602"; a="328352652"
X-IronPort-AV: E=Sophos;i="5.97,250,1669104000"; d="scan'208";a="328352652"
Received: from fmsmga006.fm.intel.com ([10.253.24.20])
 by orsmga102.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 27 Jan 2023 03:12:54 -0800
X-IronPort-AV: E=McAfee;i="6500,9779,10602"; a="908638128"
X-IronPort-AV: E=Sophos;i="5.97,250,1669104000"; d="scan'208";a="908638128"
Received: from jgeary-mobl1.ger.corp.intel.com (HELO localhost.localdomain)
 ([10.213.233.162])
 by fmsmga006-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 27 Jan 2023 03:12:53 -0800
From: Tvrtko Ursulin <tvrtko.ursulin@linux.intel.com>
To: igt-dev@lists.freedesktop.org,
	Intel-gfx@lists.freedesktop.org
Date: Fri, 27 Jan 2023 11:12:38 +0000
Message-Id: <20230127111241.3624629-4-tvrtko.ursulin@linux.intel.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20230127111241.3624629-1-tvrtko.ursulin@linux.intel.com>
References: <20230127111241.3624629-1-tvrtko.ursulin@linux.intel.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH i-g-t 3/6] intel_gpu_top: Add command line
 switch to start in physical engine mode
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

Default mode is to aggreate engines per class but some users would prefer
to be able to start in physical engine mode too.

Signed-off-by: Tvrtko Ursulin <tvrtko.ursulin@intel.com>
Cc: Dmitry Rogozhkin <dmitry.v.rogozhkin@intel.com>
Reviewed-by: Kamil Konieczny <kamil.konieczny@linux.intel.com>
---
 man/intel_gpu_top.rst | 3 +++
 tools/intel_gpu_top.c | 9 +++++++--
 2 files changed, 10 insertions(+), 2 deletions(-)

diff --git a/man/intel_gpu_top.rst b/man/intel_gpu_top.rst
index caf0a9f9432c..69834756b81e 100644
--- a/man/intel_gpu_top.rst
+++ b/man/intel_gpu_top.rst
@@ -49,6 +49,9 @@ OPTIONS
 -d
     Select a specific GPU using one of the supported filters.
 
+-p
+   Default to showing physical engines instead of aggregated classes.
+
 RUNTIME CONTROL
 ===============
 
diff --git a/tools/intel_gpu_top.c b/tools/intel_gpu_top.c
index c4d98de4fe31..e91b47baf72b 100644
--- a/tools/intel_gpu_top.c
+++ b/tools/intel_gpu_top.c
@@ -1268,6 +1268,7 @@ usage(const char *appname)
 		"\t[-s <ms>]       Refresh period in milliseconds (default %ums).\n"
 		"\t[-L]            List all cards.\n"
 		"\t[-d <device>]   Device filter, please check manual page for more details.\n"
+		"\t[-p]            Default to showing physical engines instead of classes.\n"
 		"\n",
 		appname, DEFAULT_PERIOD_MS);
 	igt_device_print_filter_types();
@@ -2446,6 +2447,7 @@ int main(int argc, char **argv)
 {
 	unsigned int period_us = DEFAULT_PERIOD_MS * 1000;
 	struct clients *clients = NULL;
+	bool physical_engines = false;
 	int con_w = -1, con_h = -1;
 	char *output_path = NULL;
 	struct engines *engines;
@@ -2456,7 +2458,7 @@ int main(int argc, char **argv)
 	char *codename = NULL;
 
 	/* Parse options */
-	while ((ch = getopt(argc, argv, "o:s:d:JLlh")) != -1) {
+	while ((ch = getopt(argc, argv, "o:s:d:pJLlh")) != -1) {
 		switch (ch) {
 		case 'o':
 			output_path = optarg;
@@ -2467,6 +2469,9 @@ int main(int argc, char **argv)
 		case 'd':
 			opt_device = strdup(optarg);
 			break;
+		case 'p':
+			physical_engines = true;
+			break;
 		case 'J':
 			output_mode = JSON;
 			break;
@@ -2508,7 +2513,7 @@ int main(int argc, char **argv)
 	case INTERACTIVE:
 		pops = &term_pops;
 		interactive_stdin();
-		class_view = true;
+		class_view = !physical_engines;
 		break;
 	case STDOUT:
 		pops = &stdout_pops;
-- 
2.34.1

