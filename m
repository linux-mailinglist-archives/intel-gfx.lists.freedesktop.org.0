Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id C8AA86DF012
	for <lists+intel-gfx@lfdr.de>; Wed, 12 Apr 2023 11:13:43 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id DE47A10E74B;
	Wed, 12 Apr 2023 09:13:38 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
 by gabe.freedesktop.org (Postfix) with ESMTPS id DCA4010E73E
 for <intel-gfx@lists.freedesktop.org>; Wed, 12 Apr 2023 09:13:35 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1681290815; x=1712826815;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=hWQp1M0IScagUlWRvkWsYxuXbJVRtggim7tAdONCkuY=;
 b=OETaf/TUUz2aIgwNQjYp/HQYgdWes0xOSza9gYf/e6NTZ8gDS04z/PVu
 3XCQP5uxeMgn8XuopKAQGdVv++S8CXxQwTq0rJxOjetGimcFY6qwapWB5
 yDjRvBJ4qVvy26+c/C5Dh7pPYsrGiNxc9FUsPkkUFNg4+BnKjE3SSxzUI
 np9LAKsQu6Y5xLWVBsbCGPVJaLpFLSVKaMAzchPinhG/oUGU0M9Zjjbws
 LizDWTA3kXyYoaTt4iTJxu3a1MdnoSn//MU1EYvRUHzM0B4NAUqvoeH46
 FbrJKNHybC4knr4t/GvMKxSED2H4nr/lxhL+b1E+Vmzhn1k1ul1zGUzJP g==;
X-IronPort-AV: E=McAfee;i="6600,9927,10677"; a="332538003"
X-IronPort-AV: E=Sophos;i="5.98,338,1673942400"; d="scan'208";a="332538003"
Received: from orsmga005.jf.intel.com ([10.7.209.41])
 by orsmga101.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 12 Apr 2023 02:13:35 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10677"; a="863230030"
X-IronPort-AV: E=Sophos;i="5.98,338,1673942400"; d="scan'208";a="863230030"
Received: from bhanu-nuclab.iind.intel.com ([10.145.169.172])
 by orsmga005-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 12 Apr 2023 02:13:34 -0700
From: Bhanuprakash Modem <bhanuprakash.modem@intel.com>
To: intel-gfx@lists.freedesktop.org,
	jani.nikula@intel.com
Date: Wed, 12 Apr 2023 14:39:11 +0530
Message-Id: <20230412090911.811254-2-bhanuprakash.modem@intel.com>
X-Mailer: git-send-email 2.40.0
In-Reply-To: <20230412090911.811254-1-bhanuprakash.modem@intel.com>
References: <20230412090911.811254-1-bhanuprakash.modem@intel.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH 1/1] drm/i915/debugfs: New debugfs for display
 clock frequencies
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

Instead of mixing display & non-display stuff together, move
display specific clock info to new debugfs. This patch will
move Current & Max cdclk and Max pixel clock frequency info
to the new debugfs file "i915_display_clock_info".

Cc: Jani Nikula <jani.nikula@intel.com>
Signed-off-by: Bhanuprakash Modem <bhanuprakash.modem@intel.com>
---
 .../gpu/drm/i915/display/intel_display_debugfs.c | 16 ++++++++++++++++
 drivers/gpu/drm/i915/gt/intel_gt_pm_debugfs.c    |  4 ----
 2 files changed, 16 insertions(+), 4 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_display_debugfs.c b/drivers/gpu/drm/i915/display/intel_display_debugfs.c
index 45113ae107ba..8e725d0c79d1 100644
--- a/drivers/gpu/drm/i915/display/intel_display_debugfs.c
+++ b/drivers/gpu/drm/i915/display/intel_display_debugfs.c
@@ -800,6 +800,21 @@ static int i915_dp_mst_info(struct seq_file *m, void *unused)
 	return 0;
 }
 
+static int i915_display_clock_info(struct seq_file *m, void *unused)
+{
+	struct drm_i915_private *i915 = node_to_i915(m->private);
+
+	drm_modeset_lock_all(&i915->drm);
+
+	seq_printf(m, "Current CD clock frequency: %d kHz\n", i915->display.cdclk.hw.cdclk);
+	seq_printf(m, "Max CD clock frequency: %d kHz\n", i915->display.cdclk.max_cdclk_freq);
+	seq_printf(m, "Max pixel clock frequency: %d kHz\n", i915->max_dotclk_freq);
+
+	drm_modeset_unlock_all(&i915->drm);
+
+	return 0;
+}
+
 static ssize_t i915_displayport_test_active_write(struct file *file,
 						  const char __user *ubuf,
 						  size_t len, loff_t *offp)
@@ -1065,6 +1080,7 @@ static const struct drm_info_list intel_display_debugfs_list[] = {
 	{"i915_dp_mst_info", i915_dp_mst_info, 0},
 	{"i915_ddb_info", i915_ddb_info, 0},
 	{"i915_lpsp_status", i915_lpsp_status, 0},
+	{"i915_disply_clock_info", i915_display_clock_info, 0},
 };
 
 static const struct {
diff --git a/drivers/gpu/drm/i915/gt/intel_gt_pm_debugfs.c b/drivers/gpu/drm/i915/gt/intel_gt_pm_debugfs.c
index 80dbbef86b1d..8814ce238cc5 100644
--- a/drivers/gpu/drm/i915/gt/intel_gt_pm_debugfs.c
+++ b/drivers/gpu/drm/i915/gt/intel_gt_pm_debugfs.c
@@ -393,10 +393,6 @@ void intel_gt_pm_frequency_dump(struct intel_gt *gt, struct drm_printer *p)
 		drm_puts(p, "no P-state info available\n");
 	}
 
-	drm_printf(p, "Current CD clock frequency: %d kHz\n", i915->display.cdclk.hw.cdclk);
-	drm_printf(p, "Max CD clock frequency: %d kHz\n", i915->display.cdclk.max_cdclk_freq);
-	drm_printf(p, "Max pixel clock frequency: %d kHz\n", i915->max_dotclk_freq);
-
 	intel_runtime_pm_put(uncore->rpm, wakeref);
 }
 
-- 
2.40.0

