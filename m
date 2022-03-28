Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id B0EA14E926E
	for <lists+intel-gfx@lfdr.de>; Mon, 28 Mar 2022 12:22:52 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id E4ABD10E65A;
	Mon, 28 Mar 2022 10:22:50 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 6FCBA10E65A
 for <intel-gfx@lists.freedesktop.org>; Mon, 28 Mar 2022 10:22:50 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1648462970; x=1679998970;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=peOpJ9GiLhqaM/IInlNQSAy3028uzVWvxw2+ABqq6+E=;
 b=GjQpOrLBZ+1bp52l/nhen2i2sagdNXhwbC5Tkp/2Lpqbb/9jn1BT3YSd
 1bWP1eSjIKoWnedzeaxCldjUqu+htls5cEgLIhbttV2TR3ZxGQ5cM1xLf
 KbsHdc2IR1wOLaN6fjzusDr4iMRk/2w2lCGx6D5n696cuiCQp0q3KpSA2
 NPxVRyKQo1wI9scYGtObCcw7pexqzM0tEbMYzRx0NQ9/TmAyAlGmbJN2y
 zD14UyeBs8kD2XOzh+VKH2OJgCuttq4JIrPjVbO925gHekwRSR4LwuNvI
 sfPMJ49sC3uI9LkeF4K+NFA21lNgX6SzzJwx6Kk+bgPon8iTz68h1mV3O g==;
X-IronPort-AV: E=McAfee;i="6200,9189,10299"; a="258679698"
X-IronPort-AV: E=Sophos;i="5.90,217,1643702400"; d="scan'208";a="258679698"
Received: from orsmga002.jf.intel.com ([10.7.209.21])
 by orsmga102.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 28 Mar 2022 03:22:49 -0700
X-IronPort-AV: E=Sophos;i="5.90,217,1643702400"; d="scan'208";a="517989080"
Received: from srr4-3-linux-105-anshuma1.iind.intel.com ([10.223.74.179])
 by orsmga002-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 28 Mar 2022 03:22:47 -0700
From: Anshuman Gupta <anshuman.gupta@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Mon, 28 Mar 2022 15:52:27 +0530
Message-Id: <20220328102227.14545-1-anshuman.gupta@intel.com>
X-Mailer: git-send-email 2.26.2
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH] drm/i915/debugfs: Dump i915 children runtime
 status
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
Cc: Chris Wilson <chris.p.wilson@intel.com>, rodrigo.vivi@intel.com
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

i915 doesn't use pm_suspend_ignore_children() which warrants that
any runtime active child of i915 will block the runtime suspend
of i915.
i915_runtime_pm_status only exposes i915 runtime pm usage_count,
which is not sufficient to debug in the scenarios when i915 has
zero usage_count but there are runtime active children.
Dump i915 child's runtime pm status to debug such
i915 runtime suspend issues.

Cc: Chris Wilson <chris.p.wilson@intel.com>
Signed-off-by: Anshuman Gupta <anshuman.gupta@intel.com>
---
 drivers/gpu/drm/i915/i915_debugfs.c | 38 +++++++++++++++++++++++++++++
 1 file changed, 38 insertions(+)

diff --git a/drivers/gpu/drm/i915/i915_debugfs.c b/drivers/gpu/drm/i915/i915_debugfs.c
index 445b4da23950..ea1730419f8d 100644
--- a/drivers/gpu/drm/i915/i915_debugfs.c
+++ b/drivers/gpu/drm/i915/i915_debugfs.c
@@ -483,6 +483,40 @@ static int i915_rps_boost_info(struct seq_file *m, void *data)
 	return 0;
 }
 
+#ifdef CONFIG_PM
+static int i915_runtime_dump_child_status(struct device *dev, void *data)
+{
+	struct seq_file *m = data;
+	const char *rpm_status;
+
+	/* Early return if runtime_pm is disabled */
+	if (dev->power.disable_depth)
+		return 0;
+
+	switch (dev->power.runtime_status) {
+	case RPM_SUSPENDED:
+		rpm_status = "suspended";
+		break;
+	case RPM_SUSPENDING:
+		rpm_status = "suspending";
+		break;
+	case RPM_RESUMING:
+		rpm_status = "resuming";
+		break;
+	case RPM_ACTIVE:
+		rpm_status = "active";
+		break;
+	default:
+		rpm_status = "unknown";
+	}
+
+	seq_printf(m, "\t%s %s: Runtime status: %s\n", dev_driver_string(dev),
+		   dev_name(dev), rpm_status);
+
+	return 0;
+}
+#endif
+
 static int i915_runtime_pm_status(struct seq_file *m, void *unused)
 {
 	struct drm_i915_private *dev_priv = node_to_i915(m->private);
@@ -500,6 +534,10 @@ static int i915_runtime_pm_status(struct seq_file *m, void *unused)
 #ifdef CONFIG_PM
 	seq_printf(m, "Usage count: %d\n",
 		   atomic_read(&dev_priv->drm.dev->power.usage_count));
+	seq_printf(m, "Runtime active children: %d\n",
+		   atomic_read(&dev_priv->drm.dev->power.child_count));
+	device_for_each_child(&pdev->dev, m, i915_runtime_dump_child_status);
+
 #else
 	seq_printf(m, "Device Power Management (CONFIG_PM) disabled\n");
 #endif
-- 
2.26.2

