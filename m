Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id BE5B47C4D5E
	for <lists+intel-gfx@lfdr.de>; Wed, 11 Oct 2023 10:38:57 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id E983310E5BC;
	Wed, 11 Oct 2023 08:38:55 +0000 (UTC)
X-Original-To: Intel-gfx@lists.freedesktop.org
Delivered-To: Intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.55.52.120])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 55B3210E5AB;
 Wed, 11 Oct 2023 08:38:52 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1697013532; x=1728549532;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=xqqOZ6+oJrMAg2EQwahdSy+I0jhhY1ywSP96RN/fAUE=;
 b=EuETZiajyws7qKn8pW6ze3cj068O0tRUo9ny6CvU06Y6zelMVqOMJ+ad
 VVc+WRoHm8Sfg25xNkCACSGxAzAcjodYgm8L0zUyHdvns2VOtO2s9kKUQ
 DeN6r+WhzP5YF8aB8g30TEp3GiC50uULyTFdAmwtFyBEjqB19RN59wfI/
 gADuv/CE8rZATtEiexrr13j2OEgSROtgei2IB/d+UT9i1u2mf0E+qTOEI
 iDYPnJKJyR0m5d65f8K6A9Zr4sAglHp751EfBA5SYVHGKtuCJMjSCOMaB
 LUN7qrpvvwvTbKQPNoejYm6RuWo3fkKmHYwhtgW21p5gFKdTeGQmzyMOu w==;
X-IronPort-AV: E=McAfee;i="6600,9927,10859"; a="383473311"
X-IronPort-AV: E=Sophos;i="6.03,214,1694761200"; d="scan'208";a="383473311"
Received: from orsmga004.jf.intel.com ([10.7.209.38])
 by fmsmga104.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 11 Oct 2023 01:38:51 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10859"; a="877584872"
X-IronPort-AV: E=Sophos;i="6.03,214,1694761200"; d="scan'208";a="877584872"
Received: from cjodwyer-mobl.ger.corp.intel.com (HELO localhost.localdomain)
 ([10.213.194.149])
 by orsmga004-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 11 Oct 2023 01:38:50 -0700
From: Tvrtko Ursulin <tvrtko.ursulin@linux.intel.com>
To: igt-dev@lists.freedesktop.org,
	Intel-gfx@lists.freedesktop.org
Date: Wed, 11 Oct 2023 09:38:43 +0100
Message-Id: <20231011083845.798413-2-tvrtko.ursulin@linux.intel.com>
X-Mailer: git-send-email 2.39.2
In-Reply-To: <20231011083845.798413-1-tvrtko.ursulin@linux.intel.com>
References: <20231011083845.798413-1-tvrtko.ursulin@linux.intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH i-g-t 2/4] tools/intel_gpu_top: Fix client
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
Cc: Tvrtko Ursulin <tvrtko.ursulin@intel.com>
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

From: Tvrtko Ursulin <tvrtko.ursulin@intel.com>

When I moved the client name to be last, I did not account for the fact
current code skips showing engine utilisation until at least two sampling
periods have passed. Consequence of this is that client name gets printed
as the second field and not under the "NAME" column header.

Fix it by emitting spaces instead of engine utilisation until two samples
have been collected.

v2:
 * Fix n_spaces return type to signed.

Signed-off-by: Tvrtko Ursulin <tvrtko.ursulin@intel.com>
Reviewed-by: Kamil Konieczny <kamil.konieczny@linux.intel.com>
---
 tools/intel_gpu_top.c | 15 ++++++++++-----
 1 file changed, 10 insertions(+), 5 deletions(-)

diff --git a/tools/intel_gpu_top.c b/tools/intel_gpu_top.c
index 60fe06917531..b6d1014f00b8 100644
--- a/tools/intel_gpu_top.c
+++ b/tools/intel_gpu_top.c
@@ -928,12 +928,14 @@ static void free_display_clients(struct igt_drm_clients *clients)
 
 static const char *bars[] = { " ", "▏", "▎", "▍", "▌", "▋", "▊", "▉", "█" };
 
-static void n_spaces(const unsigned int n)
+static int n_spaces(const int n)
 {
-	unsigned int i;
+	int i;
 
 	for (i = 0; i < n; i++)
 		putchar(' ');
+
+	return n;
 }
 
 static void
@@ -2043,14 +2045,17 @@ print_client(struct igt_drm_client *c, struct engines *engines, double t, int li
 
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

