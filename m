Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id DBBB07AB2E2
	for <lists+intel-gfx@lfdr.de>; Fri, 22 Sep 2023 15:45:58 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 4667610E66D;
	Fri, 22 Sep 2023 13:45:56 +0000 (UTC)
X-Original-To: Intel-gfx@lists.freedesktop.org
Delivered-To: Intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.55.52.93])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 2E3F110E66B;
 Fri, 22 Sep 2023 13:44:51 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1695390291; x=1726926291;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=n2K9IrbXdRiICRY6FYfzQGK165O4mFQTgTDnPLiqswM=;
 b=BaAgAxsVMyr24gsf5ow2Z+91nbK0W5MOfQj/yoVNXs/D5UsJW+dWeObt
 MChdSWe/KQ/qkC7UZIbu1JlQUogpReyCKufMf8zl03vRooSYeIECXVdcK
 FTzEMkwB/nyCQIMtUF2gHFcJTdkwGMQotrSFl30dXxvpPGp9STyCT8x6+
 YvI20ODeNTKOMTocv6vRYHv7DKygH0RXXNMa/lGpkGm7A2cIL/iEngEBl
 P2KT6Me1esFp/u5CurO4ydLF4eBRV1bQnKXkll5KV9cP7Itiky0bT2of7
 PmmWw1Rez7dyXyNg5MAg+fGBZ858MkuDmGJPMDfCwcIErcABaSQNJLLq2 A==;
X-IronPort-AV: E=McAfee;i="6600,9927,10841"; a="378117141"
X-IronPort-AV: E=Sophos;i="6.03,167,1694761200"; d="scan'208";a="378117141"
Received: from orsmga004.jf.intel.com ([10.7.209.38])
 by fmsmga102.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 22 Sep 2023 06:44:50 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10841"; a="871243575"
X-IronPort-AV: E=Sophos;i="6.03,167,1694761200"; d="scan'208";a="871243575"
Received: from placki-mobl.ger.corp.intel.com (HELO localhost.localdomain)
 ([10.213.200.149])
 by orsmga004-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 22 Sep 2023 06:44:49 -0700
From: Tvrtko Ursulin <tvrtko.ursulin@linux.intel.com>
To: igt-dev@lists.freedesktop.org,
	Intel-gfx@lists.freedesktop.org
Date: Fri, 22 Sep 2023 14:44:30 +0100
Message-Id: <20230922134437.234888-6-tvrtko.ursulin@linux.intel.com>
X-Mailer: git-send-email 2.39.2
In-Reply-To: <20230922134437.234888-1-tvrtko.ursulin@linux.intel.com>
References: <20230922134437.234888-1-tvrtko.ursulin@linux.intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH i-g-t 05/12] tools/intel_gpu_top: Fix client
 layout on first sample period
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

When I moved the client name to be last, I did not account for the fact
current code skips showing engine utilisation until at least two sampling
periods have passed. Consequence of this is that client name gets printed
as the second field and not under the "NAME" column header.

Fix it by emitting spaces instead of engine utilisation until two samples
have been collected.

Signed-off-by: Tvrtko Ursulin <tvrtko.ursulin@intel.com>
---
 tools/intel_gpu_top.c | 13 +++++++++----
 1 file changed, 9 insertions(+), 4 deletions(-)

diff --git a/tools/intel_gpu_top.c b/tools/intel_gpu_top.c
index 76956619eaae..6363f460c892 100644
--- a/tools/intel_gpu_top.c
+++ b/tools/intel_gpu_top.c
@@ -930,12 +930,14 @@ static void free_display_clients(struct igt_drm_clients *clients)
 
 static const char *bars[] = { " ", "▏", "▎", "▍", "▌", "▋", "▊", "▉", "█" };
 
-static void n_spaces(const unsigned int n)
+static unsigned int n_spaces(const unsigned int n)
 {
 	unsigned int i;
 
 	for (i = 0; i < n; i++)
 		putchar(' ');
+
+	return n;
 }
 
 static void
@@ -2045,14 +2047,17 @@ print_client(struct igt_drm_client *c, struct engines *engines, double t, int li
 
 		len = printf("%*s ", clients->max_pid_len, c->pid_str);
 
-		for (i = 0;
-		     c->samples > 1 && i <= iclients->classes.max_engine_id;
-		     i++) {
+		for (i = 0; i <= iclients->classes.max_engine_id; i++) {
 			double pct, max;
 
 			if (!iclients->classes.capacity[i])
 				continue;
 
+			if (c->samples < 2) {
+				len += n_spaces(*class_w);
+				continue;
+			}
+
 			pct = (double)c->val[i] / period_us / 1e3 * 100;
 
 			/*
-- 
2.39.2

