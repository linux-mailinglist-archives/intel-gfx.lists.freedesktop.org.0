Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 949E84EE96C
	for <lists+intel-gfx@lfdr.de>; Fri,  1 Apr 2022 09:57:42 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 525DE10FFE4;
	Fri,  1 Apr 2022 07:57:40 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga07.intel.com (mga07.intel.com [134.134.136.100])
 by gabe.freedesktop.org (Postfix) with ESMTPS id EF3A010FFE4
 for <intel-gfx@lists.freedesktop.org>; Fri,  1 Apr 2022 07:57:38 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1648799859; x=1680335859;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=OjOlNNanaAx+5fLbfnuaEAl3g6s1kHHs+R7JoCLD1wc=;
 b=IZ+y02odiZldxdeSmmoQp1QA8XvAm/SxFCTxNtM0EXNbEdPz0OYSaTko
 21YIFHSBUtk1+PrLrqcoNwMV8D4N5JNDtQ1zsyN7Y/kP9v3dVA9HkWC2C
 ome1iSoWomdHQgTq83RL6s4MllC5eepQcb+CVf3+GKCWuiM8WMFQlbtvR
 U9EqbF2vyJqUt5KFv2SRNRAdCM6GrlRqzWKz7bkeAPjGtORmnhUcBnu0Q
 Bv/mmsqfIUYrFtQt9A4N3LuyJfRYDagzKtm8CREzTV6l9ZcGW08pbFQLm
 hTp8N4S0TC40GoUKUFh0/Mw23UrLPP+6mzYvuqt3S+WSACls8GHyKpG24 Q==;
X-IronPort-AV: E=McAfee;i="6200,9189,10303"; a="323242038"
X-IronPort-AV: E=Sophos;i="5.90,226,1643702400"; d="scan'208";a="323242038"
Received: from orsmga003.jf.intel.com ([10.7.209.27])
 by orsmga105.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 01 Apr 2022 00:57:38 -0700
X-IronPort-AV: E=Sophos;i="5.90,226,1643702400"; d="scan'208";a="504078741"
Received: from srr4-3-linux-105-anshuma1.iind.intel.com ([10.223.74.179])
 by orsmga003-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 01 Apr 2022 00:57:36 -0700
From: Anshuman Gupta <anshuman.gupta@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Fri,  1 Apr 2022 13:27:20 +0530
Message-Id: <20220401075720.21614-1-anshuman.gupta@intel.com>
X-Mailer: git-send-email 2.26.2
In-Reply-To: <20220328102227.14545-1-anshuman.gupta@intel.com>
References: <20220328102227.14545-1-anshuman.gupta@intel.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH v2] drm/i915/debugfs: Dump i915 children runtime
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

i915 doesn't use pm_suspend_ignore_children(), which warrants that
any runtime active child of i915 will block the runtime suspend
of i915.
i915_runtime_pm_status only exposes i915 runtime pm usage_count,
which is not sufficient to debug in the scenarios when i915 has
zero usage_count but there are runtime active children.
Dump i915 child's runtime pm status to debug such
i915 runtime suspend issues.

v2:
- Added const array of rpm_status strings to avoid switch. [Ashutosh]

Cc: Chris Wilson <chris.p.wilson@intel.com>
Reviewed-by: Badal Nilawar <badal.nilawar@intel.com>
Signed-off-by: Anshuman Gupta <anshuman.gupta@intel.com>
---
 drivers/gpu/drm/i915/i915_debugfs.c | 32 +++++++++++++++++++++++++++++
 1 file changed, 32 insertions(+)

diff --git a/drivers/gpu/drm/i915/i915_debugfs.c b/drivers/gpu/drm/i915/i915_debugfs.c
index 445b4da23950..930815c8b978 100644
--- a/drivers/gpu/drm/i915/i915_debugfs.c
+++ b/drivers/gpu/drm/i915/i915_debugfs.c
@@ -483,6 +483,34 @@ static int i915_rps_boost_info(struct seq_file *m, void *data)
 	return 0;
 }
 
+#ifdef CONFIG_PM
+static int i915_runtime_dump_child_status(struct device *dev, void *data)
+{
+	struct seq_file *m = data;
+	const char *rpm_status;
+
+	static const char * const status_lookup[] = {
+		[RPM_ACTIVE] = "active",
+		[RPM_RESUMING] = "resuming",
+		[RPM_SUSPENDED] = "suspended",
+		[RPM_SUSPENDING] = "suspending"
+	};
+
+	/* Early return if runtime_pm is disabled */
+	if (dev->power.disable_depth)
+		return 0;
+	else if (dev->power.runtime_status < ARRAY_SIZE(status_lookup))
+		rpm_status = status_lookup[dev->power.runtime_status];
+	else
+		rpm_status = "unknown";
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
@@ -500,6 +528,10 @@ static int i915_runtime_pm_status(struct seq_file *m, void *unused)
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

