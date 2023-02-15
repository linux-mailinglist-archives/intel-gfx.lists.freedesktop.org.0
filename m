Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id C0F3F69785D
	for <lists+intel-gfx@lfdr.de>; Wed, 15 Feb 2023 09:38:52 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 84F6710EA6B;
	Wed, 15 Feb 2023 08:38:49 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 64A7910EA6B
 for <intel-gfx@lists.freedesktop.org>; Wed, 15 Feb 2023 08:38:47 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1676450327; x=1707986327;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=gg2RpaAOZsfqY3UQAT8nBuPbw0kqTZPDcEMT6jzzzQc=;
 b=KxcCHAJiJnwu9juTDdIga1SgKa9ijQeASVbJ64W8c+yoeKYvSwSSu8b8
 4+8wyH0qk+OAxfM26bvEv70n0DU32tR7097s22hWhnYd84zwBR53us5jI
 90PFOsL6dPUb+Tfqup1UM3p6rG1eGcA0OK/rvgN2dy4/qocjoGEr5vNu9
 SvOqYLD4n3S3wwDfg3YCFUgCbbf4wox8/CjFhHEInDnTGXJX9UXFkEr1n
 dFcpGjfKSLNEQMjaFtBRSkh7coHtA0206hqd/Qbl1DoJXI+spYz9EGNbJ
 XEX6r40Xjg5poci2mv+KKs1aG7KWGJZsMqG2BXIAF0Yjjs3oAk/bXllnU w==;
X-IronPort-AV: E=McAfee;i="6500,9779,10621"; a="332686605"
X-IronPort-AV: E=Sophos;i="5.97,299,1669104000"; d="scan'208";a="332686605"
Received: from orsmga002.jf.intel.com ([10.7.209.21])
 by orsmga102.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 15 Feb 2023 00:38:47 -0800
X-IronPort-AV: E=McAfee;i="6500,9779,10621"; a="669528738"
X-IronPort-AV: E=Sophos;i="5.97,299,1669104000"; d="scan'208";a="669528738"
Received: from vgovind2-mobl3.tm.intel.com ([10.237.50.37])
 by orsmga002-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 15 Feb 2023 00:38:45 -0800
From: Vinod Govindapillai <vinod.govindapillai@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Wed, 15 Feb 2023 10:38:31 +0200
Message-Id: <20230215083832.287519-2-vinod.govindapillai@intel.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20230215083832.287519-1-vinod.govindapillai@intel.com>
References: <20230215083832.287519-1-vinod.govindapillai@intel.com>
MIME-Version: 1.0
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH v4 1/2] drm/i915/display: ignore long HPDs based
 on a flag
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
Cc: jani.nikula@intel.com
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

Some panels generate long HPD events even while connected to
the port. This cause some unexpected CI execution issues. A
new flag is added to track if such spurious long HPDs can be
ignored and are not processed further if the flag is set.
Debugfs entry is added to control the ignore long hpd flag.

v2: Address patch styling comments (Jani Nikula)

v3: Ignoring the HPD moved to hotplug handler and now applies
    to all types of outputs (Imre Deak)

v4: use debugfs_create_bool and squash patches (Jani Nikula)

Signed-off-by: Vinod Govindapillai <vinod.govindapillai@intel.com>
---
 drivers/gpu/drm/i915/display/intel_display_core.h | 11 +++++++++++
 drivers/gpu/drm/i915/display/intel_hotplug.c      |  9 +++++++++
 2 files changed, 20 insertions(+)

diff --git a/drivers/gpu/drm/i915/display/intel_display_core.h b/drivers/gpu/drm/i915/display/intel_display_core.h
index 25d778fb7d15..73849dc289c3 100644
--- a/drivers/gpu/drm/i915/display/intel_display_core.h
+++ b/drivers/gpu/drm/i915/display/intel_display_core.h
@@ -182,6 +182,17 @@ struct intel_hotplug {
 	 * blocked behind the non-DP one.
 	 */
 	struct workqueue_struct *dp_wq;
+
+	/*
+	 * Flag to track if long HPDs need not to be processed
+	 *
+	 * Some panels generate long HPDs while keep connected to the port.
+	 * This can cause issues with CI tests results. In CI systems we
+	 * don't expect to disconnect the panels and could ignore the long
+	 * HPDs generated from the faulty panels. This flag can be used as
+	 * cue to ignore the long HPDs and can be set / unset using debugfs.
+	 */
+	bool ignore_long_hpd;
 };
 
 struct intel_vbt_data {
diff --git a/drivers/gpu/drm/i915/display/intel_hotplug.c b/drivers/gpu/drm/i915/display/intel_hotplug.c
index 907ab7526cb4..b12900446828 100644
--- a/drivers/gpu/drm/i915/display/intel_hotplug.c
+++ b/drivers/gpu/drm/i915/display/intel_hotplug.c
@@ -389,6 +389,13 @@ static void i915_hotplug_work_func(struct work_struct *work)
 
 	spin_unlock_irq(&dev_priv->irq_lock);
 
+	/* Skip calling encode hotplug handlers if ignore long HPD set*/
+	if (dev_priv->display.hotplug.ignore_long_hpd) {
+		drm_dbg_kms(&dev_priv->drm, "Ignore HPD flag on - skip encoder hotplug handlers\n");
+		mutex_unlock(&dev_priv->drm.mode_config.mutex);
+		return;
+	}
+
 	drm_connector_list_iter_begin(&dev_priv->drm, &conn_iter);
 	for_each_intel_connector_iter(connector, &conn_iter) {
 		enum hpd_pin pin;
@@ -940,4 +947,6 @@ void intel_hpd_debugfs_register(struct drm_i915_private *i915)
 			    i915, &i915_hpd_storm_ctl_fops);
 	debugfs_create_file("i915_hpd_short_storm_ctl", 0644, minor->debugfs_root,
 			    i915, &i915_hpd_short_storm_ctl_fops);
+	debugfs_create_bool("i915_ignore_long_hpd", 0644, minor->debugfs_root,
+			    &i915->display.hotplug.ignore_long_hpd);
 }
-- 
2.34.1

