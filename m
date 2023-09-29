Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 99AFA7B327C
	for <lists+intel-gfx@lfdr.de>; Fri, 29 Sep 2023 14:25:55 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 33F6A10E714;
	Fri, 29 Sep 2023 12:25:53 +0000 (UTC)
X-Original-To: Intel-gfx@lists.freedesktop.org
Delivered-To: Intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [134.134.136.31])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 0DFFB10E700;
 Fri, 29 Sep 2023 12:25:32 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1695990332; x=1727526332;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=fFC8zeAXYse+bJ24oEkQAdx6LySDbjEi5siD3StUVRM=;
 b=ibDScVqzXAEASgaZHTmA1VjbjYgffVFkjFEMppsZ8xVp1tpl58dcgdvw
 +K0x+aCTWLNB7uEAAvhmGWwqV7u9mJC8GUrWIMtOqRli5mumwo9ypEdoH
 fO/BtGVu+EdSPEUBdzYhKuV/yfeV4g9el+IUW3RulobWN3uHuKvaoxE/D
 AC6ud3APBQ5EIe+pzDWXgS7s/9l3YC4Z/MkcgvFM2DtNgWvbsVIA/2Vkc
 86x06R1GqY2Rp0aViFAAu6m9lq2uYirZzMMw1e+GDApXfoo9HLfzjiJHe
 LRbC7C3bzYESQgdIB4njhFIsh+G1GrOp98PpX78vegrvM8I1BjBIrrKWI A==;
X-IronPort-AV: E=McAfee;i="6600,9927,10847"; a="446443770"
X-IronPort-AV: E=Sophos;i="6.03,187,1694761200"; d="scan'208";a="446443770"
Received: from orsmga006.jf.intel.com ([10.7.209.51])
 by orsmga104.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 29 Sep 2023 05:25:31 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10847"; a="726577151"
X-IronPort-AV: E=Sophos;i="6.03,187,1694761200"; d="scan'208";a="726577151"
Received: from pbrady4x-mobl1.ger.corp.intel.com (HELO localhost.localdomain)
 ([10.213.203.84])
 by orsmga006-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 29 Sep 2023 05:25:30 -0700
From: Tvrtko Ursulin <tvrtko.ursulin@linux.intel.com>
To: igt-dev@lists.freedesktop.org,
	Intel-gfx@lists.freedesktop.org
Date: Fri, 29 Sep 2023 13:25:10 +0100
Message-Id: <20230929122517.349348-6-tvrtko.ursulin@linux.intel.com>
X-Mailer: git-send-email 2.39.2
In-Reply-To: <20230929122517.349348-1-tvrtko.ursulin@linux.intel.com>
References: <20230929122517.349348-1-tvrtko.ursulin@linux.intel.com>
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
index 66b76c4afed0..de37ff603b6f 100644
--- a/tools/intel_gpu_top.c
+++ b/tools/intel_gpu_top.c
@@ -926,12 +926,14 @@ static void free_display_clients(struct igt_drm_clients *clients)
 
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
@@ -2041,14 +2043,17 @@ print_client(struct igt_drm_client *c, struct engines *engines, double t, int li
 
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

