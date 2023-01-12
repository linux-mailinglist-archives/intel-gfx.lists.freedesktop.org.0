Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 73499667CF0
	for <lists+intel-gfx@lfdr.de>; Thu, 12 Jan 2023 18:47:55 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id D23F510E325;
	Thu, 12 Jan 2023 17:47:47 +0000 (UTC)
X-Original-To: Intel-gfx@lists.freedesktop.org
Delivered-To: Intel-gfx@lists.freedesktop.org
Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 5BD0F10E31F;
 Thu, 12 Jan 2023 17:47:43 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1673545663; x=1705081663;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=DNIwNWuNWyV6ulvUpZOHP/I5w7/HD6qHg/4Spe+yx7U=;
 b=W/1OhsN51O+aDqcy6B3w8jxlLWHitTz9UnMc2/WjFjqzIIXuqc16nFG+
 NYIB6tPHXdKrXg/qUzl/yS4QP+fguB5wtdFIZxDpRB4UG9BmoxcGpjDbY
 2eoCLGorZAixRYCCqBammyw3ss5YGQA3hsiy4ZbHn+hb7YqO5AR5pm7Og
 ia0VKc7i44TeII/jniTYNBHC/K7QpZCi7DUz3gp/d/WLuzpumWn8/tJay
 7QsEMF1PqT85HReURsejeOkBDTtj/iYPC9ZzQFmPjKKSlfRXY3a1OUEPl
 6GhYU+P3XprhX7S0KYuzUB5ylX3OKHBXxNpOEE1fI1bfvDQS0OGn0Jf4g w==;
X-IronPort-AV: E=McAfee;i="6500,9779,10588"; a="321471435"
X-IronPort-AV: E=Sophos;i="5.97,211,1669104000"; d="scan'208";a="321471435"
Received: from orsmga006.jf.intel.com ([10.7.209.51])
 by fmsmga102.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 12 Jan 2023 09:47:42 -0800
X-IronPort-AV: E=McAfee;i="6500,9779,10588"; a="635468294"
X-IronPort-AV: E=Sophos;i="5.97,211,1669104000"; d="scan'208";a="635468294"
Received: from jacton-mobl.ger.corp.intel.com (HELO localhost.localdomain)
 ([10.213.195.171])
 by orsmga006-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 12 Jan 2023 09:47:41 -0800
From: Tvrtko Ursulin <tvrtko.ursulin@linux.intel.com>
To: igt-dev@lists.freedesktop.org,
	Intel-gfx@lists.freedesktop.org
Date: Thu, 12 Jan 2023 17:47:29 +0000
Message-Id: <20230112174730.1101192-4-tvrtko.ursulin@linux.intel.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20230112174730.1101192-1-tvrtko.ursulin@linux.intel.com>
References: <20230112174730.1101192-1-tvrtko.ursulin@linux.intel.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH i-g-t 3/4] intel_gpu_top: Add command line
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
---
 man/intel_gpu_top.rst | 3 +++
 tools/intel_gpu_top.c | 9 +++++++--
 2 files changed, 10 insertions(+), 2 deletions(-)

diff --git a/man/intel_gpu_top.rst b/man/intel_gpu_top.rst
index 3317e04816b4..b24216c0ae91 100644
--- a/man/intel_gpu_top.rst
+++ b/man/intel_gpu_top.rst
@@ -48,6 +48,9 @@ OPTIONS
 -d
     Select a specific GPU using supported filter.
 
+-p
+   Default to showing physical engines instead of classes.
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

