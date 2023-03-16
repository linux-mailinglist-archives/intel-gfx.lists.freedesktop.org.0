Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 863DE6BCC00
	for <lists+intel-gfx@lfdr.de>; Thu, 16 Mar 2023 11:07:06 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id A59AD10EC3A;
	Thu, 16 Mar 2023 10:07:04 +0000 (UTC)
X-Original-To: Intel-gfx@lists.freedesktop.org
Delivered-To: Intel-gfx@lists.freedesktop.org
Received: from mga06.intel.com (mga06b.intel.com [134.134.136.31])
 by gabe.freedesktop.org (Postfix) with ESMTPS id CACBC10EC28;
 Thu, 16 Mar 2023 10:07:00 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1678961220; x=1710497220;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=Jurhg6OYhwjfktqT4LRFjg/Syhxt8KigbLMhBAYbfyQ=;
 b=nA84isR60y9I5ke8PwX6ep1blCMbK3Lkxi/tb9xx3KbKOnm/LBgh6lzZ
 HUmyohnlMegKdj36HH9sDPKpNck7qL8XHjRPoINE26gnkoTiuseAz9sbX
 MJ2rixLmA6I6E94oz5cTIANZpa/vB4G/2z4rZmMx/u3DwgT2v+FXm6xw1
 sAX99XQvFHN+ZgTniIsmumCZiuDU39Df21mDiBKZrz+VdEXQgs4MngEoH
 Jt9JE63SynnSTK5TtT4AWcuROfoI4YcCbJ47HpCzNpj/epQPWjhsG2Ps5
 sW9NP9RYWRiyiXXcCMl2BxZIpATHGd0L9t6Ojl3zuD7kXU+YP39tgGWKR g==;
X-IronPort-AV: E=McAfee;i="6500,9779,10650"; a="400515508"
X-IronPort-AV: E=Sophos;i="5.98,265,1673942400"; d="scan'208";a="400515508"
Received: from orsmga005.jf.intel.com ([10.7.209.41])
 by orsmga104.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 16 Mar 2023 03:07:00 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6500,9779,10650"; a="853958609"
X-IronPort-AV: E=Sophos;i="5.98,265,1673942400"; d="scan'208";a="853958609"
Received: from kflynn1-mobl3.ger.corp.intel.com (HELO localhost.localdomain)
 ([10.213.236.25])
 by orsmga005-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 16 Mar 2023 03:06:58 -0700
From: Tvrtko Ursulin <tvrtko.ursulin@linux.intel.com>
To: igt-dev@lists.freedesktop.org,
	Intel-gfx@lists.freedesktop.org
Date: Thu, 16 Mar 2023 10:06:49 +0000
Message-Id: <20230316100649.1261221-2-tvrtko.ursulin@linux.intel.com>
X-Mailer: git-send-email 2.37.2
In-Reply-To: <20230316100649.1261221-1-tvrtko.ursulin@linux.intel.com>
References: <20230316100649.1261221-1-tvrtko.ursulin@linux.intel.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH i-g-t 2/2] intel_gpu_top: Use full console width
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

