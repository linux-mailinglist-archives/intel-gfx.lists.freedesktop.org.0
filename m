Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id A48AB983F40
	for <lists+intel-gfx@lfdr.de>; Tue, 24 Sep 2024 09:37:52 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 5471510E52E;
	Tue, 24 Sep 2024 07:37:51 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="Cy56ds6G";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.15])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 3CAD910E52E
 for <intel-gfx@lists.freedesktop.org>; Tue, 24 Sep 2024 07:37:50 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1727163470; x=1758699470;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=olJfPbSPmWc9wg0a2IQ+ZdxoOKHyx85HNp7Ln395HB8=;
 b=Cy56ds6GzbTK9JYVqQqlL16VUmFwZPaOq5d+sgJrfi8VsrktGsTkLixQ
 dE+qodEJOjNoYl+CUtfet6Kr/359nQTFtyJ4c5EC2qYRszZkQtGriPDSE
 EePJLbgK02yDPbofhPReHHfaMwUmOmNxD+x2HBh7Ue1KU8iBMmdxfZgou
 7TlkNd4dIaOH62T8abwcNNWjcVxM6B2a5EqTghL/JRffQG5Owg+VNQNFW
 HF8Dd4ojFdwDrTCwPsZYd95RDIbVqA22QFVxyC/vKRCzen4u1N0ayUTSf
 lN2olywtI0ZeUHauStQHco2VhC+Mx/yXotHA+JjkylDQhxPSDE8rJZPph w==;
X-CSE-ConnectionGUID: KfqJZRKuQbaFN9cueuu+7g==
X-CSE-MsgGUID: kQQkecgCTTu7w+9Q+XZb2Q==
X-IronPort-AV: E=McAfee;i="6700,10204,11204"; a="26289326"
X-IronPort-AV: E=Sophos;i="6.10,253,1719903600"; d="scan'208";a="26289326"
Received: from orviesa007.jf.intel.com ([10.64.159.147])
 by fmvoesa109.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 24 Sep 2024 00:37:50 -0700
X-CSE-ConnectionGUID: vw9yJHZoSGuE/FYf36lZBQ==
X-CSE-MsgGUID: JFiTnr1YQBGeDEgMGecpKg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.10,253,1719903600"; d="scan'208";a="71771443"
Received: from kandpal-x299-ud4-pro.iind.intel.com ([10.190.239.32])
 by orviesa007.jf.intel.com with ESMTP; 24 Sep 2024 00:37:49 -0700
From: Suraj Kandpal <suraj.kandpal@intel.com>
To: intel-gfx@lists.freedesktop.org
Cc: uma.shankar@intel.com, matthew.d.roper@intel.com,
 Suraj Kandpal <suraj.kandpal@intel.com>
Subject: [PATCH 1/2] drm/i915/hotplug: Reduce SHPD_FLITER_CNT for ICL and above
Date: Tue, 24 Sep 2024 13:04:51 +0530
Message-ID: <20240924073450.1261535-2-suraj.kandpal@intel.com>
X-Mailer: git-send-email 2.43.2
In-Reply-To: <20240923031007.1058072-3-suraj.kandpal@intel.com>
References: <20240923031007.1058072-3-suraj.kandpal@intel.com>
MIME-Version: 1.0
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
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

Reduce SHPD_CNT to 250us for ICL and above as it lines up
with DP1.4a(Table3-4) spec.

--v2
-Update commit message and comment [Matt]

--v3
-drop condition and use value of 250us for ICL and above [Matt]

Signed-off-by: Suraj Kandpal <suraj.kandpal@intel.com>
---
 drivers/gpu/drm/i915/display/intel_hotplug_irq.c | 9 +++++----
 1 file changed, 5 insertions(+), 4 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_hotplug_irq.c b/drivers/gpu/drm/i915/display/intel_hotplug_irq.c
index 2c4e946d5575..3a105cfd3c90 100644
--- a/drivers/gpu/drm/i915/display/intel_hotplug_irq.c
+++ b/drivers/gpu/drm/i915/display/intel_hotplug_irq.c
@@ -849,10 +849,11 @@ static void icp_hpd_irq_setup(struct drm_i915_private *dev_priv)
 	enabled_irqs = intel_hpd_enabled_irqs(dev_priv, dev_priv->display.hotplug.pch_hpd);
 	hotplug_irqs = intel_hpd_hotplug_irqs(dev_priv, dev_priv->display.hotplug.pch_hpd);
 
-	if (INTEL_PCH_TYPE(dev_priv) <= PCH_TGP)
-		intel_uncore_write(&dev_priv->uncore, SHPD_FILTER_CNT, SHPD_FILTER_CNT_500_ADJ);
-	else
-		intel_uncore_write(&dev_priv->uncore, SHPD_FILTER_CNT, SHPD_FILTER_CNT_250);
+	/*
+	 * We reduce the value to 250us to be able to detect SHPD when an external display
+	 * is connected. This is also expected of us as stated in DP1.4a Table 3-4.
+	 */
+	intel_uncore_write(&dev_priv->uncore, SHPD_FILTER_CNT, SHPD_FILTER_CNT_250);
 
 	ibx_display_interrupt_update(dev_priv, hotplug_irqs, enabled_irqs);
 
-- 
2.43.2

