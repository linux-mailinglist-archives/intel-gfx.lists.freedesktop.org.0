Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id AA6E4835B75
	for <lists+intel-gfx@lfdr.de>; Mon, 22 Jan 2024 08:15:04 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 2B00910E5EC;
	Mon, 22 Jan 2024 07:15:01 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.55.52.115])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 9056710E5EC
 for <intel-gfx@lists.freedesktop.org>; Mon, 22 Jan 2024 07:14:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1705907699; x=1737443699;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=PC8k5QWrqP/BQvknwSa7E3GDl3Wwc3PcCXzjTehY4Xg=;
 b=nrd3G2/KvjI1G5kuUGeIPVK4hemkzWiaokigRS2EfEIc3hqU4S29Ts+r
 F328YFUQC/Wl/YNQKVRlQUxme7FUpubOPt+z7gVH5uYjCsX5OND2aadMl
 DqdQNzqX3Ea/q4fdWczBv5YPsLFXRwSClwb/e1DWjlH+gatHqPu3/+32w
 HjxuqZcpgr1VqViawxKWxUEmgh0hpS1OzMcwdGH56ZzByCGXlDNvOsCnb
 ZU/mCfzwiPRttqQWd2TPzQBMM9o9ajtVDEpMsJDmMDKTyBt/AQ4SUv8MH
 gYArg9Kgbz0PSLc4oiGOgJmUMC/gLlvHhCdC2YZR46v75qqXbaH6RqYfz A==;
X-IronPort-AV: E=McAfee;i="6600,9927,10960"; a="400776256"
X-IronPort-AV: E=Sophos;i="6.05,211,1701158400"; d="scan'208";a="400776256"
Received: from orsmga005.jf.intel.com ([10.7.209.41])
 by fmsmga103.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 21 Jan 2024 23:14:58 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10960"; a="958649787"
X-IronPort-AV: E=Sophos;i="6.05,211,1701158400"; d="scan'208";a="958649787"
Received: from bhanu-nuclab.iind.intel.com ([10.145.169.172])
 by orsmga005-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 21 Jan 2024 23:14:56 -0800
From: Bhanuprakash Modem <bhanuprakash.modem@intel.com>
To: intel-gfx@lists.freedesktop.org
Subject: [PATCH] drm/i915/display: Move display params to
 i915_display_capabilities
Date: Mon, 22 Jan 2024 12:38:53 +0530
Message-ID: <20240122070853.5186-1-bhanuprakash.modem@intel.com>
X-Mailer: git-send-email 2.43.0
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
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
Cc: Jani Nikula <jani.nikula@intel.com>
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

Instead of mixing display & non-display stuff together, move
display parameters i915_display_capabilities debugfs. This patch
will also drops unnecessary locking.

V2: - Avoid multiple copies (Jani)
    - Drop locking (Jani)
    - Update commit msg (Bhanu)

Cc: Jani Nikula <jani.nikula@intel.com>
Cc: Jouni Högander <jouni.hogander@intel.com>
Signed-off-by: Bhanuprakash Modem <bhanuprakash.modem@intel.com>
---
 drivers/gpu/drm/i915/display/intel_display_debugfs.c | 2 ++
 drivers/gpu/drm/i915/i915_debugfs.c                  | 3 ---
 2 files changed, 2 insertions(+), 3 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_display_debugfs.c b/drivers/gpu/drm/i915/display/intel_display_debugfs.c
index 6f2d13c8ccf7..90dc973ffb6b 100644
--- a/drivers/gpu/drm/i915/display/intel_display_debugfs.c
+++ b/drivers/gpu/drm/i915/display/intel_display_debugfs.c
@@ -625,6 +625,8 @@ static int i915_display_capabilities(struct seq_file *m, void *unused)
 	struct drm_i915_private *i915 = node_to_i915(m->private);
 	struct drm_printer p = drm_seq_file_printer(m);
 
+	intel_display_params_dump(i915, &p);
+
 	intel_display_device_info_print(DISPLAY_INFO(i915),
 					DISPLAY_RUNTIME_INFO(i915), &p);
 
diff --git a/drivers/gpu/drm/i915/i915_debugfs.c b/drivers/gpu/drm/i915/i915_debugfs.c
index 990eaa029d9c..0461327d3f82 100644
--- a/drivers/gpu/drm/i915/i915_debugfs.c
+++ b/drivers/gpu/drm/i915/i915_debugfs.c
@@ -74,10 +74,7 @@ static int i915_capabilities(struct seq_file *m, void *data)
 	intel_gt_info_print(&to_gt(i915)->info, &p);
 	intel_driver_caps_print(&i915->caps, &p);
 
-	kernel_param_lock(THIS_MODULE);
 	i915_params_dump(&i915->params, &p);
-	intel_display_params_dump(i915, &p);
-	kernel_param_unlock(THIS_MODULE);
 
 	return 0;
 }
-- 
2.43.0

