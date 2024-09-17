Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id A0BE897AAFD
	for <lists+intel-gfx@lfdr.de>; Tue, 17 Sep 2024 07:27:40 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 4770F10E40F;
	Tue, 17 Sep 2024 05:27:39 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="LecyGhDV";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.12])
 by gabe.freedesktop.org (Postfix) with ESMTPS id C3F1010E40F
 for <intel-gfx@lists.freedesktop.org>; Tue, 17 Sep 2024 05:27:37 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1726550858; x=1758086858;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=MzvSC2wZtfS7spRmsROg/ifx9pyMv/ieayfo6Tlm8g0=;
 b=LecyGhDVJ7YeKPEK63SlhYCEwwZbOnrIeYafpalrTeNzJDEXZxvUT83V
 hrsp/FjRWjdUUr1VhjAy/IWkQeZvcASlMfb5NWqvJJ/Yv8oidH5dVPzjO
 ImtzIZWCyu+zhRLO/QA6mFaMpZ/5WEyYCVUG33srn958ou6knBv+NU3lB
 6ybDU8i61dKTyZ+dsRZNkmqN1vMmHZWPXT9Q2tlgOxBB3e6tyysg5fJUs
 iZKA9nfVI1DPJjUO3TMVn/IrpCGAUKcixcX5DPctKCIe6Ox7DhtrbKzWG
 yyxIrrTHjDQZHAdWK25okVqWpZ3qURvx9gjjcf7MAKQ3Uw4eWAgTg8FXT g==;
X-CSE-ConnectionGUID: w33o+vRtQHC4SK62sqcIwQ==
X-CSE-MsgGUID: zaecDcoqQcOE+3/JBl6VoA==
X-IronPort-AV: E=McAfee;i="6700,10204,11197"; a="36744727"
X-IronPort-AV: E=Sophos;i="6.10,234,1719903600"; d="scan'208";a="36744727"
Received: from orviesa009.jf.intel.com ([10.64.159.149])
 by orvoesa104.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 16 Sep 2024 22:25:38 -0700
X-CSE-ConnectionGUID: e/KtFuHJRUaoJBTlKhB7Ng==
X-CSE-MsgGUID: vrJpWNviQsiIDqBxEJOFtQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.10,234,1719903600"; d="scan'208";a="69038884"
Received: from kandpal-x299-ud4-pro.iind.intel.com ([10.190.239.32])
 by orviesa009.jf.intel.com with ESMTP; 16 Sep 2024 22:25:37 -0700
From: Suraj Kandpal <suraj.kandpal@intel.com>
To: intel-gfx@lists.freedesktop.org
Cc: uma.shankar@intel.com, matthew.d.roper@intel.com,
 Suraj Kandpal <suraj.kandpal@intel.com>
Subject: [PATCH 1/2] drm/i915/hotplug: Reduce SHPD_FLITER_CNT for Display12
Date: Tue, 17 Sep 2024 10:53:06 +0530
Message-ID: <20240917052307.760662-2-suraj.kandpal@intel.com>
X-Mailer: git-send-email 2.43.2
In-Reply-To: <20240917052307.760662-1-suraj.kandpal@intel.com>
References: <20240917052307.760662-1-suraj.kandpal@intel.com>
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

Reduce SHPD_CNT to 250us for Display12 to implement WA 14013120569
in a alternative way. Its not what the Wa asks to do but has the same
effect which would be detecting shpd when it is less than 250us and
this would be okay as it lines up with DP1.4a(Table3-4) spec.

Signed-off-by: Suraj Kandpal <suraj.kandpal@intel.com>
---
 drivers/gpu/drm/i915/display/intel_hotplug_irq.c | 7 ++++++-
 1 file changed, 6 insertions(+), 1 deletion(-)

diff --git a/drivers/gpu/drm/i915/display/intel_hotplug_irq.c b/drivers/gpu/drm/i915/display/intel_hotplug_irq.c
index 2c4e946d5575..05a9e82cac75 100644
--- a/drivers/gpu/drm/i915/display/intel_hotplug_irq.c
+++ b/drivers/gpu/drm/i915/display/intel_hotplug_irq.c
@@ -849,7 +849,12 @@ static void icp_hpd_irq_setup(struct drm_i915_private *dev_priv)
 	enabled_irqs = intel_hpd_enabled_irqs(dev_priv, dev_priv->display.hotplug.pch_hpd);
 	hotplug_irqs = intel_hpd_hotplug_irqs(dev_priv, dev_priv->display.hotplug.pch_hpd);
 
-	if (INTEL_PCH_TYPE(dev_priv) <= PCH_TGP)
+	/*
+	 * As an alternative to WA_14013120569 we reduce the value to 250us to be able to
+	 * detect SHPD when an external display is connected. This is also expected of
+	 * us as stated in DP1.4a Table 3-4.
+	 */
+	if (INTEL_PCH_TYPE(dev_priv) < PCH_TGP)
 		intel_uncore_write(&dev_priv->uncore, SHPD_FILTER_CNT, SHPD_FILTER_CNT_500_ADJ);
 	else
 		intel_uncore_write(&dev_priv->uncore, SHPD_FILTER_CNT, SHPD_FILTER_CNT_250);
-- 
2.43.2

