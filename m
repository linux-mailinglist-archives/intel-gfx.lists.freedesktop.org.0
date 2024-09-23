Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id B917C97E4F1
	for <lists+intel-gfx@lfdr.de>; Mon, 23 Sep 2024 05:12:51 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 9084410E0A8;
	Mon, 23 Sep 2024 03:12:48 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="SCwK//3q";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.18])
 by gabe.freedesktop.org (Postfix) with ESMTPS id E260210E0A8
 for <intel-gfx@lists.freedesktop.org>; Mon, 23 Sep 2024 03:12:47 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1727061168; x=1758597168;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=7jHUGuDahRNdnifskPvR+jYWGIgmNod7c9WeAihQf3c=;
 b=SCwK//3qbMHr0MZJt8vipLdmwKHhT7AxOJ2etySmuixTHfZXa8VICixs
 uytrAs3BeJgpwpUuk7pLc0MoFiCkMKFG0kO2NBSOM4vicbekA9olyrH2O
 Pyhjialf6DXdsRCT5cddIqbCmezxWmHNYUE8LXLBLuC0IZF+g48pPkdUW
 kQ/snEhLjFNOMs5ZfAuMaFo3yoN5OpE/Yb5kcn7ELqq68kwVZFiFqy8kG
 BSrcy/7SX0I/SN2ZbQUcbxaMTSRtPDKDo7cSWenbOG43XoJTyKkwRlUuz
 iQq5n9MkmQHwdgEYm3U/c4J30dsMiTi/muAaylpXsJ96YSDlPMR8Sbrdp A==;
X-CSE-ConnectionGUID: 9WczBjqESh6LR1CjkTloMA==
X-CSE-MsgGUID: h7HBc6UwQ8yENUfC9xNIEA==
X-IronPort-AV: E=McAfee;i="6700,10204,11202"; a="26110935"
X-IronPort-AV: E=Sophos;i="6.10,250,1719903600"; d="scan'208";a="26110935"
Received: from fmviesa007.fm.intel.com ([10.60.135.147])
 by orvoesa110.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 22 Sep 2024 20:12:48 -0700
X-CSE-ConnectionGUID: M0IK9EGkQC+tTO4qjLM4Gg==
X-CSE-MsgGUID: bdo5cTSZSoaJLXb9qbnKAQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.10,250,1719903600"; d="scan'208";a="70510764"
Received: from kandpal-x299-ud4-pro.iind.intel.com ([10.190.239.32])
 by fmviesa007.fm.intel.com with ESMTP; 22 Sep 2024 20:12:46 -0700
From: Suraj Kandpal <suraj.kandpal@intel.com>
To: intel-gfx@lists.freedesktop.org
Cc: uma.shankar@intel.com, matthew.d.roper@intel.com,
 Suraj Kandpal <suraj.kandpal@intel.com>
Subject: [PATCH 1/2] drm/i915/hotplug: Reduce SHPD_FLITER_CNT for
 DISPLAY_VER() == 12
Date: Mon, 23 Sep 2024 08:40:07 +0530
Message-ID: <20240923031007.1058072-3-suraj.kandpal@intel.com>
X-Mailer: git-send-email 2.43.2
In-Reply-To: <20240923031007.1058072-2-suraj.kandpal@intel.com>
References: <20240923031007.1058072-2-suraj.kandpal@intel.com>
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

Reduce SHPD_CNT to 250us for display version 12 as it lines up
with DP1.4a(Table3-4) spec.

--v2
-Update commit message and comment [Matt]

Signed-off-by: Suraj Kandpal <suraj.kandpal@intel.com>
---
 drivers/gpu/drm/i915/display/intel_hotplug_irq.c | 6 +++++-
 1 file changed, 5 insertions(+), 1 deletion(-)

diff --git a/drivers/gpu/drm/i915/display/intel_hotplug_irq.c b/drivers/gpu/drm/i915/display/intel_hotplug_irq.c
index 2c4e946d5575..8427386132e6 100644
--- a/drivers/gpu/drm/i915/display/intel_hotplug_irq.c
+++ b/drivers/gpu/drm/i915/display/intel_hotplug_irq.c
@@ -849,7 +849,11 @@ static void icp_hpd_irq_setup(struct drm_i915_private *dev_priv)
 	enabled_irqs = intel_hpd_enabled_irqs(dev_priv, dev_priv->display.hotplug.pch_hpd);
 	hotplug_irqs = intel_hpd_hotplug_irqs(dev_priv, dev_priv->display.hotplug.pch_hpd);
 
-	if (INTEL_PCH_TYPE(dev_priv) <= PCH_TGP)
+	/*
+	 * We reduce the value to 250us to be able to detect SHPD when an external display
+	 * is connected. This is also expected of us as stated in DP1.4a Table 3-4.
+	 */
+	if (INTEL_PCH_TYPE(dev_priv) < PCH_TGP)
 		intel_uncore_write(&dev_priv->uncore, SHPD_FILTER_CNT, SHPD_FILTER_CNT_500_ADJ);
 	else
 		intel_uncore_write(&dev_priv->uncore, SHPD_FILTER_CNT, SHPD_FILTER_CNT_250);
-- 
2.43.2

