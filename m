Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 1E9DF7531D7
	for <lists+intel-gfx@lfdr.de>; Fri, 14 Jul 2023 08:15:23 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id A218310E7C5;
	Fri, 14 Jul 2023 06:15:20 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 975A310E7C5
 for <intel-gfx@lists.freedesktop.org>; Fri, 14 Jul 2023 06:15:17 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1689315317; x=1720851317;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=Vk8Jrsbnd5y/WkhzWaWRzo9FgbYABYXT9zRjbSNhSSU=;
 b=QmvkQna/Bb2pYwOyVli0M+9IsmpU/ytzX0+Vmv8ddpTm4sy3hSWoJzxg
 PHoQ6s4+DqjTwSNUiCBqmF9xuXs4kwbL6Jm8B1MorY8FvOyzFYv+3LgiX
 4FrhDWblRqPXHVNvdKIZAIJRfu41JwUy5LwdsJuSOzZnJrikgyu6IGyBS
 HLmh7Yk6CJ16rT9W2tT8Ty7OTHUt+fMYmgwKiyTUbbiJYUfnle5Npb0DA
 6WQPl+pCNlQmHkIbscaJtkS3thAi7UY1G4PFx+cdtcmZoZVV5aZM83H1z
 9CP3uAasS7YijWnhwRku2wJzr9y67wqXqkQ+rTEJ+SxLzT52nKSxrHANJ Q==;
X-IronPort-AV: E=McAfee;i="6600,9927,10770"; a="362865264"
X-IronPort-AV: E=Sophos;i="6.01,204,1684825200"; d="scan'208";a="362865264"
Received: from fmsmga003.fm.intel.com ([10.253.24.29])
 by fmsmga102.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 13 Jul 2023 23:15:16 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10770"; a="812308514"
X-IronPort-AV: E=Sophos;i="6.01,204,1684825200"; d="scan'208";a="812308514"
Received: from kandpal-x299-ud4-pro.iind.intel.com ([10.190.239.32])
 by FMSMGA003.fm.intel.com with ESMTP; 13 Jul 2023 23:15:14 -0700
From: Suraj Kandpal <suraj.kandpal@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Fri, 14 Jul 2023 11:43:39 +0530
Message-Id: <20230714061339.2897609-1-suraj.kandpal@intel.com>
X-Mailer: git-send-email 2.25.1
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

Reduce SHPD_FILTER to 250us for ADL and above. This solution was
derived when the below patch was floated.
[1]https://patchwork.freedesktop.org/patch/532187
and after some internal discussion Ville's suggestion made sense.

Bspec: 68970

Cc: Uma Shankar <uma.shankar@intel.com>
Cc: Ville Syrjala <ville.syrjala@linux.intel.com>
Signed-off-by: Suraj Kandpal <suraj.kandpal@intel.com>
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

