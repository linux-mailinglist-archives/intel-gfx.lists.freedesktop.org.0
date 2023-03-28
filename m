Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id CC1896CBFE1
	for <lists+intel-gfx@lfdr.de>; Tue, 28 Mar 2023 14:54:48 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 5E35F10E8A4;
	Tue, 28 Mar 2023 12:54:43 +0000 (UTC)
X-Original-To: Intel-gfx@lists.freedesktop.org
Delivered-To: Intel-gfx@lists.freedesktop.org
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 624BD10E8A1;
 Tue, 28 Mar 2023 12:54:41 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1680008081; x=1711544081;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=Jurhg6OYhwjfktqT4LRFjg/Syhxt8KigbLMhBAYbfyQ=;
 b=WlDPe7r5cee3UVvkIdmOh1kMNcXlm/AP5bGuQLiJzXN1jfDLSg4lQuHM
 M4W5B0515TlGLE4FtFWvZZcX+0IkcVxv8kfZvJPfq+KVfATpe6sFnP3MS
 c4a7YcaFZL++7GcXWwR3Css3RI4/I1iIv28IxKpbPxPhmiWCr8CDDwNkM
 08JhA8TV0LxG417QmH41w3LiaisNFtHONzrnUWIsWkMkMQFKBLAthf3iZ
 5FKljLpkHt30otZMTyM0RJDJWr11kXsT9sdVz91IIBtWoq5pgLdb0jIuw
 qWivMzAZtN7uxi0nbBnBkbsCT1+gQkJU1ckaoK4sZbge0eczT13Xik34d A==;
X-IronPort-AV: E=McAfee;i="6600,9927,10662"; a="342141794"
X-IronPort-AV: E=Sophos;i="5.98,297,1673942400"; d="scan'208";a="342141794"
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
 by orsmga102.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 28 Mar 2023 05:54:40 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10662"; a="794793273"
X-IronPort-AV: E=Sophos;i="5.98,297,1673942400"; d="scan'208";a="794793273"
Received: from wheelerj-mobl.ger.corp.intel.com (HELO localhost.localdomain)
 ([10.213.213.242])
 by fmsmga002-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 28 Mar 2023 05:54:39 -0700
From: Tvrtko Ursulin <tvrtko.ursulin@linux.intel.com>
To: igt-dev@lists.freedesktop.org,
	Intel-gfx@lists.freedesktop.org
Date: Tue, 28 Mar 2023 13:54:28 +0100
Message-Id: <20230328125429.1970202-3-tvrtko.ursulin@linux.intel.com>
X-Mailer: git-send-email 2.37.2
In-Reply-To: <20230328125429.1970202-1-tvrtko.ursulin@linux.intel.com>
References: <20230328125429.1970202-1-tvrtko.ursulin@linux.intel.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH i-g-t 2/3] intel_gpu_top: Use full console width
 for global metrics
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

It appears we had an off by one of a kind where we were not using the full
width of the terminal window for the global metrics section.

Signed-off-by: Tvrtko Ursulin <tvrtko.ursulin@intel.com>
---
 tools/intel_gpu_top.c | 6 ++----
 1 file changed, 2 insertions(+), 4 deletions(-)

diff --git a/tools/intel_gpu_top.c b/tools/intel_gpu_top.c
index 39be916297e4..36da016c3df0 100644
--- a/tools/intel_gpu_top.c
+++ b/tools/intel_gpu_top.c
@@ -1960,8 +1960,7 @@ print_engines_header(struct engines *engines, double t,
 				a = "          ENGINE     BUSY  ";
 
 			printf("\033[7m%s%*s%s\033[0m\n",
-			       a, (int)(con_w - 1 - strlen(a) - strlen(b)),
-			       " ", b);
+			       a, (int)(con_w - strlen(a) - strlen(b)), " ", b);
 
 			lines++;
 		}
@@ -2000,7 +1999,6 @@ print_engine(struct engines *engines, unsigned int i, double t,
 	print_groups(groups);
 
 	if (output_mode == INTERACTIVE) {
-		unsigned int max_w = con_w - 1;
 		unsigned int len;
 		char buf[128];
 		double val;
@@ -2012,7 +2010,7 @@ print_engine(struct engines *engines, unsigned int i, double t,
 			      engine->display_name, engine_items[0].buf);
 
 		val = pmu_calc(&engine->busy.val, 1e9, t, 100);
-		print_percentage_bar(val, max_w > len ? max_w - len : 0, false);
+		print_percentage_bar(val, con_w > len ? con_w - len : 0, false);
 
 		printf("%s\n", buf);
 
-- 
2.37.2

