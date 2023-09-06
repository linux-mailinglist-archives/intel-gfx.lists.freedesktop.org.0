Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 1A370796DB2
	for <lists+intel-gfx@lfdr.de>; Thu,  7 Sep 2023 01:47:53 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 93F3C10E73D;
	Wed,  6 Sep 2023 23:47:47 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.55.52.151])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 967B410E35B
 for <intel-gfx@lists.freedesktop.org>; Wed,  6 Sep 2023 23:47:42 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1694044062; x=1725580062;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=izk5hXor359FGEAmV0OUURciEQNk4mjF44FqAdDHqU4=;
 b=a3uUl6awLtoyjCbDJCpD2xswCBOgUE1cTqFrOYwgN4vVTvMdccIZVJEc
 r/G/ZIvMaMd2LD+jGit1HfIdd7iDqPLMyEvxEWtln7RmvsYEHiz2WK0wc
 KBMzo1VYsnJQxEFOcfe0mtvwl/PTVmxzs9ubGWeyVvURpqjLjQsUWUTaW
 l292arnpMPTW5Lk1ZG8hEqTr86tTtqIxVBm17TdcY3REslrMUzjHbB+pD
 Kb6UO2SBDUf2JUjvTgkx0ZGHx/UdXd+vjVL/DbL5lmoOG5s2vejGzfkhN
 xm/dsgD970Q6wYhIfYSNKhrvMqcMeXT9xs9hmWlzCCHjFyA41UszK+qfD Q==;
X-IronPort-AV: E=McAfee;i="6600,9927,10825"; a="357526296"
X-IronPort-AV: E=Sophos;i="6.02,233,1688454000"; d="scan'208";a="357526296"
Received: from orsmga004.jf.intel.com ([10.7.209.38])
 by fmsmga107.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 06 Sep 2023 16:47:42 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10825"; a="865363204"
X-IronPort-AV: E=Sophos;i="6.02,233,1688454000"; d="scan'208";a="865363204"
Received: from mdroper-desk1.fm.intel.com ([10.1.27.147])
 by orsmga004-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 06 Sep 2023 16:47:42 -0700
From: Matt Roper <matthew.d.roper@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Wed,  6 Sep 2023 16:47:35 -0700
Message-ID: <20230906234732.3728630-8-matthew.d.roper@intel.com>
X-Mailer: git-send-email 2.41.0
In-Reply-To: <20230906234732.3728630-6-matthew.d.roper@intel.com>
References: <20230906234732.3728630-6-matthew.d.roper@intel.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH 2/4] drm/i915/adlp: Stop calling
 gen12lp_init_clock_gating()
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
Cc: matthew.d.roper@intel.com
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

The only programming that happens in gen12lp_init_clock_gating is for
display workarounds that are specific to display version 12 and are not
relevant to ADL-P's display version 13.

Signed-off-by: Matt Roper <matthew.d.roper@intel.com>
---
 drivers/gpu/drm/i915/intel_clock_gating.c | 2 --
 1 file changed, 2 deletions(-)

diff --git a/drivers/gpu/drm/i915/intel_clock_gating.c b/drivers/gpu/drm/i915/intel_clock_gating.c
index 1f2e2d7087cb..2a4714c662b8 100644
--- a/drivers/gpu/drm/i915/intel_clock_gating.c
+++ b/drivers/gpu/drm/i915/intel_clock_gating.c
@@ -375,8 +375,6 @@ static void gen12lp_init_clock_gating(struct drm_i915_private *i915)
 
 static void adlp_init_clock_gating(struct drm_i915_private *i915)
 {
-	gen12lp_init_clock_gating(i915);
-
 	/* Wa_22011091694:adlp */
 	intel_de_rmw(i915, GEN9_CLKGATE_DIS_5, 0, DPCE_GATING_DIS);
 
-- 
2.41.0

