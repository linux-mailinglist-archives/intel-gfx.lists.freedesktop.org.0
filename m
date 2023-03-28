Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id B2DE96CBFE3
	for <lists+intel-gfx@lfdr.de>; Tue, 28 Mar 2023 14:54:53 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 3EEFC10E89A;
	Tue, 28 Mar 2023 12:54:49 +0000 (UTC)
X-Original-To: Intel-gfx@lists.freedesktop.org
Delivered-To: Intel-gfx@lists.freedesktop.org
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
 by gabe.freedesktop.org (Postfix) with ESMTPS id B0B4D10E8A4;
 Tue, 28 Mar 2023 12:54:42 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1680008082; x=1711544082;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=XNt5Nmiut7ikjnnMstfLY197G0wr56FDHTT28UiZeak=;
 b=E+UUVuY+jGbDSNpXni74bjlKzxoMtS9eZWV2W+e9Q8izUv7M1gegKBTo
 AN+65IvAJBAR5vQIF/vqtDYfr+XyCV9IIKftCx37nTmTeBttxMaUPlCIh
 M8b9t1N+8rQpqqFF/SK0X8Q4nuRFh3McYOG3RPx8Roh48PR9M375psvqK
 Lnq0qT5oy9ledYSv6Ga5Z/xt1bVz99fEsN6kTlue1xUWD8T47eEIexcLC
 7zZn5a+/n11HVmEJy6EMPSQQ3ioZmFecHxmfSlq5pjhx7g+2Nb1EBM+0F
 7iCallFfylMD+l7k5FjohTcG7/YtLIQvYf1dybvkbNvDkcwp/ZrQMo6CP A==;
X-IronPort-AV: E=McAfee;i="6600,9927,10662"; a="342141803"
X-IronPort-AV: E=Sophos;i="5.98,297,1673942400"; d="scan'208";a="342141803"
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
 by orsmga102.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 28 Mar 2023 05:54:42 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10662"; a="794793278"
X-IronPort-AV: E=Sophos;i="5.98,297,1673942400"; d="scan'208";a="794793278"
Received: from wheelerj-mobl.ger.corp.intel.com (HELO localhost.localdomain)
 ([10.213.213.242])
 by fmsmga002-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 28 Mar 2023 05:54:41 -0700
From: Tvrtko Ursulin <tvrtko.ursulin@linux.intel.com>
To: igt-dev@lists.freedesktop.org,
	Intel-gfx@lists.freedesktop.org
Date: Tue, 28 Mar 2023 13:54:29 +0100
Message-Id: <20230328125429.1970202-4-tvrtko.ursulin@linux.intel.com>
X-Mailer: git-send-email 2.37.2
In-Reply-To: <20230328125429.1970202-1-tvrtko.ursulin@linux.intel.com>
References: <20230328125429.1970202-1-tvrtko.ursulin@linux.intel.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH i-g-t 3/3] intel_gpu_top: Show non-normalized
 client usage in numeric mode
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

When numeric display is selected in the interactive mode it is more
descriptive to show client's non-normalized (by number of engines per
class) usage. Rendering of the visual representation (bar) is kept the
same.

Signed-off-by: Tvrtko Ursulin <tvrtko.ursulin@intel.com>
---
 tools/intel_gpu_top.c | 20 +++++++++++---------
 1 file changed, 11 insertions(+), 9 deletions(-)

diff --git a/tools/intel_gpu_top.c b/tools/intel_gpu_top.c
index 36da016c3df0..b6827b3de9bd 100644
--- a/tools/intel_gpu_top.c
+++ b/tools/intel_gpu_top.c
@@ -1275,14 +1275,14 @@ static void n_spaces(const unsigned int n)
 }
 
 static void
-print_percentage_bar(double percent, int max_len, bool numeric)
+print_percentage_bar(double percent, double max, int max_len, bool numeric)
 {
 	int bar_len, i, len = max_len - 2;
 	const int w = 8;
 
 	assert(max_len > 0);
 
-	bar_len = ceil(w * percent * len / 100.0);
+	bar_len = ceil(w * percent * len / max);
 	if (bar_len > w * len)
 		bar_len = w * len;
 
@@ -2010,7 +2010,8 @@ print_engine(struct engines *engines, unsigned int i, double t,
 			      engine->display_name, engine_items[0].buf);
 
 		val = pmu_calc(&engine->busy.val, 1e9, t, 100);
-		print_percentage_bar(val, con_w > len ? con_w - len : 0, false);
+		print_percentage_bar(val, 100.0, con_w > len ? con_w - len : 0,
+				     false);
 
 		printf("%s\n", buf);
 
@@ -2292,23 +2293,24 @@ print_client(struct client *c, struct engines *engines, double t, int lines,
 		       clients->max_name_len, c->print_name);
 
 		for (i = 0; c->samples > 1 && i < clients->num_classes; i++) {
-			double pct;
+			double pct, max;
 
 			if (!clients->class[i].num_engines)
 				continue; /* Assert in the ideal world. */
 
-			pct = (double)c->val[i] / period_us / 1e3 * 100 /
-			      clients->class[i].num_engines;
+			pct = (double)c->val[i] / period_us / 1e3 * 100;
 
 			/*
 			 * Guard against possible time-drift between sampling
 			 * client data and time we obtained our time-delta from
 			 * PMU.
 			 */
-			if (pct > 100.0)
-				pct = 100.0;
+			max = 100.0 * clients->class[i].num_engines;
+			if (pct > max)
+				pct = max;
 
-			print_percentage_bar(pct, *class_w, numeric_clients);
+			print_percentage_bar(pct, max, *class_w,
+					     numeric_clients);
 		}
 
 		putchar('\n');
-- 
2.37.2

