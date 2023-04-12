Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 8DF626DF228
	for <lists+intel-gfx@lfdr.de>; Wed, 12 Apr 2023 12:46:27 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 12D0410E1FB;
	Wed, 12 Apr 2023 10:46:26 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga18.intel.com (mga18.intel.com [134.134.136.126])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 695CF10E1FB
 for <intel-gfx@lists.freedesktop.org>; Wed, 12 Apr 2023 10:46:24 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1681296384; x=1712832384;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=XNvrMuXvW3MSbNUdbhUkJS1xyRxQVW6bzDX2V17+ZxI=;
 b=PZVgpScekxpvvE55JGaACRTbPXbPCJopHa7qQvTvkQzYiQZmPKXu4GQa
 JVOML2WooZpcuneCtct4RjndSurePZuGWUbTYO1TheWY2VI567a8xN9wl
 vWVdVjYusPsQe8x4EHqwb0dDMUCk30LeIHV4Qu60ZBc8qHp0J4U9ZdMAZ
 elAovNCxhuQlk+FvwoK5Sr4OxV34g2W8yeSorR2rfUplay6AD9v6hXtip
 KExnqcZTAKtYLmrKpiWLF55v3lPrgrQKh8J78cL1KLzv9JWgKcAXNuiBT
 7QwsvAwKtmos2nC20tE4QLGzj9FmtQX/x4LbpbDXEUnzOiZgvA5pM+NWV g==;
X-IronPort-AV: E=McAfee;i="6600,9927,10677"; a="327970207"
X-IronPort-AV: E=Sophos;i="5.98,339,1673942400"; d="scan'208";a="327970207"
Received: from orsmga003.jf.intel.com ([10.7.209.27])
 by orsmga106.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 12 Apr 2023 03:46:19 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10677"; a="639174000"
X-IronPort-AV: E=Sophos;i="5.98,339,1673942400"; d="scan'208";a="639174000"
Received: from bhanu-nuclab.iind.intel.com ([10.145.169.172])
 by orsmga003-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 12 Apr 2023 03:46:17 -0700
From: Bhanuprakash Modem <bhanuprakash.modem@intel.com>
To: intel-gfx@lists.freedesktop.org,
	jani.nikula@intel.com
Date: Wed, 12 Apr 2023 16:11:52 +0530
Message-Id: <20230412104152.828326-2-bhanuprakash.modem@intel.com>
X-Mailer: git-send-email 2.40.0
In-Reply-To: <20230412104152.828326-1-bhanuprakash.modem@intel.com>
References: <20230412104152.828326-1-bhanuprakash.modem@intel.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [V2 1/1] drm/i915/debugfs: New debugfs for display
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
create a new debugfs "i915_cdclk_info" to expose Current & Max
cdclk and Max pixel clock frequency info.

Example:
$ cat /sys/kernel/debug/dri/0/i915_cdclk_info
Current CD clock frequency: 163200 kHz
Max CD clock frequency: 652800 kHz
Max pixel clock frequency: 1305600 kHz

V2: - s/i915_display_clock_info/i915_cdclk_info/ (Jani)
    - Move the logic to intel_cdclk.c (Jani)
    - Don't remove info from i915_frequency_info (Jani)

Cc: Jani Nikula <jani.nikula@intel.com>
Signed-off-by: Bhanuprakash Modem <bhanuprakash.modem@intel.com>
---
 drivers/gpu/drm/i915/display/intel_cdclk.c    | 25 +++++++++++++++++++
 drivers/gpu/drm/i915/display/intel_cdclk.h    |  1 +
 .../drm/i915/display/intel_display_debugfs.c  |  1 +
 3 files changed, 27 insertions(+)

diff --git a/drivers/gpu/drm/i915/display/intel_cdclk.c b/drivers/gpu/drm/i915/display/intel_cdclk.c
index 084a483f9776..c3ad7837fa09 100644
--- a/drivers/gpu/drm/i915/display/intel_cdclk.c
+++ b/drivers/gpu/drm/i915/display/intel_cdclk.c
@@ -3235,6 +3235,31 @@ u32 intel_read_rawclk(struct drm_i915_private *dev_priv)
 	return freq;
 }
 
+static int i915_cdclk_info_show(struct seq_file *m, void *unused)
+{
+	struct drm_i915_private *i915 = m->private;
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
+DEFINE_SHOW_ATTRIBUTE(i915_cdclk_info);
+
+void intel_cdclk_debugfs_register(struct drm_i915_private *i915)
+{
+	struct drm_minor *minor = i915->drm.primary;
+
+	debugfs_create_file("i915_cdclk_info", 0444, minor->debugfs_root,
+			    i915, &i915_cdclk_info_fops);
+}
+
 static const struct intel_cdclk_funcs mtl_cdclk_funcs = {
 	.get_cdclk = bxt_get_cdclk,
 	.set_cdclk = bxt_set_cdclk,
diff --git a/drivers/gpu/drm/i915/display/intel_cdclk.h b/drivers/gpu/drm/i915/display/intel_cdclk.h
index 51e2f6a11ce4..48fd7d39e0cd 100644
--- a/drivers/gpu/drm/i915/display/intel_cdclk.h
+++ b/drivers/gpu/drm/i915/display/intel_cdclk.h
@@ -82,5 +82,6 @@ intel_atomic_get_cdclk_state(struct intel_atomic_state *state);
 	to_intel_cdclk_state(intel_atomic_get_new_global_obj_state(state, &to_i915(state->base.dev)->display.cdclk.obj))
 
 int intel_cdclk_init(struct drm_i915_private *dev_priv);
+void intel_cdclk_debugfs_register(struct drm_i915_private *i915);
 
 #endif /* __INTEL_CDCLK_H__ */
diff --git a/drivers/gpu/drm/i915/display/intel_display_debugfs.c b/drivers/gpu/drm/i915/display/intel_display_debugfs.c
index 45113ae107ba..abd16a2b1f7a 100644
--- a/drivers/gpu/drm/i915/display/intel_display_debugfs.c
+++ b/drivers/gpu/drm/i915/display/intel_display_debugfs.c
@@ -1094,6 +1094,7 @@ void intel_display_debugfs_register(struct drm_i915_private *i915)
 				 ARRAY_SIZE(intel_display_debugfs_list),
 				 minor->debugfs_root, minor);
 
+	intel_cdclk_debugfs_register(i915);
 	intel_dmc_debugfs_register(i915);
 	intel_fbc_debugfs_register(i915);
 	intel_hpd_debugfs_register(i915);
-- 
2.40.0

