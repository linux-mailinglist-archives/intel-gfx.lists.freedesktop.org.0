Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 00C2575AC48
	for <lists+intel-gfx@lfdr.de>; Thu, 20 Jul 2023 12:48:04 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 86BB810E5AA;
	Thu, 20 Jul 2023 10:48:02 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga06.intel.com (mga06b.intel.com [134.134.136.31])
 by gabe.freedesktop.org (Postfix) with ESMTPS id AD04E10E00F
 for <intel-gfx@lists.freedesktop.org>; Thu, 20 Jul 2023 10:48:00 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1689850080; x=1721386080;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=W0WAZI4k0gCtWEK2e0VqyT0Tu6lhvuwClBGOsNEK3xw=;
 b=aREm4MX1zeYgb4RrXuTOFNIRfOZehxs7iceNjxGVMX3VnTyOVdXIhmHy
 qBi94NqzJ4fP2QMcFIYsqqLfLxbz+nemLMi3kGZlJtGY59eZmnSZNRvxH
 ASX4Tr5/NUnNyN9OrydbqxFOC2PbsID7X2jcm0LadzaepoWMTK+a7ykaN
 eQETfC04J0+85k2VJNCJdgV2w+g3PiwaX/H5Sy4TFZ5usTjGxuirjetHc
 +nay4vrcZ42go6cYHbpSwc/5MwPlSdBlPrd2PVpSpXaxNWcWToo1yO4lC
 h6dd7BVSCiCbNu5kb1A0HX88R7ucmELjLVzFXsFlE/vdrFf70DvSgE2yK Q==;
X-IronPort-AV: E=McAfee;i="6600,9927,10776"; a="430465391"
X-IronPort-AV: E=Sophos;i="6.01,218,1684825200"; d="scan'208";a="430465391"
Received: from orsmga007.jf.intel.com ([10.7.209.58])
 by orsmga104.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 20 Jul 2023 03:48:00 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10776"; a="718349099"
X-IronPort-AV: E=Sophos;i="6.01,218,1684825200"; d="scan'208";a="718349099"
Received: from kandpal-x299-ud4-pro.iind.intel.com ([10.190.239.32])
 by orsmga007.jf.intel.com with ESMTP; 20 Jul 2023 03:47:58 -0700
From: Suraj Kandpal <suraj.kandpal@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Thu, 20 Jul 2023 16:16:24 +0530
Message-Id: <20230720104624.3063544-1-suraj.kandpal@intel.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20230717092425.2971227-1-suraj.kandpal@intel.com>
References: <20230717092425.2971227-1-suraj.kandpal@intel.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH] drm/i915/hotplug: Reduce SHPD_FILTER to 250us
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

On TGP, the RTC (always running) was reduced from 3MHz to 32KHz.
As a result of this change, when HPD active going low pulse or HPD IRQ
is presented and the refclk (19.2MHz) is not toggling already toggling,
there is a 60 to 90us synchronization delay which effectively reduces
the duration of the IRQ pulse to less than the programmed 500us filter
value and the hot plug interrupt is NOT registered.
Solution was to Reduce SHPD_FILTER to 250us for ADL and above.
This solution was derived when the below patch was floated.
[1]https://patchwork.freedesktop.org/patch/532187
and after some internal discussion Ville's suggestion made sense.

Bspec: 68970

Cc: Uma Shankar <uma.shankar@intel.com>
Cc: Ville Syrjala <ville.syrjala@linux.intel.com>
Suggested-by: Ville Syrjala <ville.syrjala@linux.intel.com>
Signed-off-by: Suraj Kandpal <suraj.kandpal@intel.com>
Reviewed-by: Uma Shankar <uma.shankar@intel.com>
---
 drivers/gpu/drm/i915/display/intel_hotplug_irq.c | 4 +++-
 drivers/gpu/drm/i915/i915_reg.h                  | 1 +
 2 files changed, 4 insertions(+), 1 deletion(-)

diff --git a/drivers/gpu/drm/i915/display/intel_hotplug_irq.c b/drivers/gpu/drm/i915/display/intel_hotplug_irq.c
index f95fa793fabb..95a7ea94f417 100644
--- a/drivers/gpu/drm/i915/display/intel_hotplug_irq.c
+++ b/drivers/gpu/drm/i915/display/intel_hotplug_irq.c
@@ -842,6 +842,8 @@ static void icp_hpd_irq_setup(struct drm_i915_private *dev_priv)
 
 	if (INTEL_PCH_TYPE(dev_priv) <= PCH_TGP)
 		intel_uncore_write(&dev_priv->uncore, SHPD_FILTER_CNT, SHPD_FILTER_CNT_500_ADJ);
+	else
+		intel_uncore_write(&dev_priv->uncore, SHPD_FILTER_CNT, SHPD_FILTER_CNT_250);
 
 	ibx_display_interrupt_update(dev_priv, hotplug_irqs, enabled_irqs);
 
@@ -1049,7 +1051,7 @@ static void mtp_hpd_irq_setup(struct drm_i915_private *i915)
 	enabled_irqs = intel_hpd_enabled_irqs(i915, i915->display.hotplug.pch_hpd);
 	hotplug_irqs = intel_hpd_hotplug_irqs(i915, i915->display.hotplug.pch_hpd);
 
-	intel_de_write(i915, SHPD_FILTER_CNT, SHPD_FILTER_CNT_500_ADJ);
+	intel_de_write(i915, SHPD_FILTER_CNT, SHPD_FILTER_CNT_250);
 
 	mtp_hpd_invert(i915);
 	ibx_display_interrupt_update(i915, hotplug_irqs, enabled_irqs);
diff --git a/drivers/gpu/drm/i915/i915_reg.h b/drivers/gpu/drm/i915/i915_reg.h
index dcf64e32cd54..aefad14ab27a 100644
--- a/drivers/gpu/drm/i915/i915_reg.h
+++ b/drivers/gpu/drm/i915/i915_reg.h
@@ -4939,6 +4939,7 @@
 
 #define SHPD_FILTER_CNT				_MMIO(0xc4038)
 #define   SHPD_FILTER_CNT_500_ADJ		0x001D9
+#define   SHPD_FILTER_CNT_250			0x000F8
 
 #define _PCH_DPLL_A              0xc6014
 #define _PCH_DPLL_B              0xc6018
-- 
2.25.1

