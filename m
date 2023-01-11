Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 4BC9F666749
	for <lists+intel-gfx@lfdr.de>; Thu, 12 Jan 2023 00:56:29 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 5F13010E83F;
	Wed, 11 Jan 2023 23:56:20 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga18.intel.com (mga18.intel.com [134.134.136.126])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 6CE4310E176
 for <intel-gfx@lists.freedesktop.org>; Wed, 11 Jan 2023 23:56:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1673481376; x=1705017376;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=SQ22vN3h73dKPedccgjBF0XVtKc1E52/qDLJFl4E+/Y=;
 b=UXp9YwJwMgsf+QWehUYsQ0mViUIntDepuUHV7qXVqmhI+/y2TkwO/+o3
 DVT2sLbBYJnZN4eP89Qt4T0eFsKDapvxKevqVfghhcOtltipmSHmNc5Zo
 1ig0UO85FWl31VlkvqJFwV+/JYO72qpJTymyBGlCZSizKG86hLmK4ox8I
 XJZDawUXUfecrnjoQkMH5Qq4Cl6ti50nnm7UAFbBS/NdY11ZacCXhM/su
 zqNTFlzK1vhEahzMhR9r1iffu9sYDaBh4Nn0sZK0DGgxGStPSjTrDrdfD
 hMHZwXxc28iEHW2fCMFXsF2M3RkL1bNrhlqGKxGI3WRbJzAOoUg9kfQ5L A==;
X-IronPort-AV: E=McAfee;i="6500,9779,10586"; a="307090903"
X-IronPort-AV: E=Sophos;i="5.96,318,1665471600"; d="scan'208";a="307090903"
Received: from orsmga005.jf.intel.com ([10.7.209.41])
 by orsmga106.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 11 Jan 2023 15:56:14 -0800
X-IronPort-AV: E=McAfee;i="6500,9779,10586"; a="831486392"
X-IronPort-AV: E=Sophos;i="5.96,318,1665471600"; d="scan'208";a="831486392"
Received: from invictus.jf.intel.com ([10.165.21.134])
 by orsmga005-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 11 Jan 2023 15:56:14 -0800
From: Radhakrishna Sripada <radhakrishna.sripada@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Wed, 11 Jan 2023 15:55:31 -0800
Message-Id: <20230111235531.3353815-10-radhakrishna.sripada@intel.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20230111235531.3353815-1-radhakrishna.sripada@intel.com>
References: <20230111235531.3353815-1-radhakrishna.sripada@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH dii-client 9/9] drm/i915/display/mtl: Program
 latch to phy reset
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

From: José Roberto de Souza <jose.souza@intel.com>

Latch reset of phys during DC9 and when driver is unloaded to avoid
phy reset.

Specification ask us to program it closer to the step that enables
DC9 in DC_STATE_EN but doing this way allow us to sanitize the phy
latch during driver load.

BSpec: 49197
Cc: Matt Roper <matthew.d.roper@intel.com>
Signed-off-by: José Roberto de Souza <jose.souza@intel.com>
Signed-off-by: Radhakrishna Sripada <radhakrishna.sripada@intel.com>
---
 drivers/gpu/drm/i915/display/intel_display_power.c | 8 ++++++++
 drivers/gpu/drm/i915/i915_reg.h                    | 2 ++
 2 files changed, 10 insertions(+)

diff --git a/drivers/gpu/drm/i915/display/intel_display_power.c b/drivers/gpu/drm/i915/display/intel_display_power.c
index 1a23ecd4623a..9b6dfd5f1259 100644
--- a/drivers/gpu/drm/i915/display/intel_display_power.c
+++ b/drivers/gpu/drm/i915/display/intel_display_power.c
@@ -1646,6 +1646,10 @@ static void icl_display_core_init(struct drm_i915_private *dev_priv,
 	intel_power_well_enable(dev_priv, well);
 	mutex_unlock(&power_domains->lock);
 
+	if (DISPLAY_VER(dev_priv) == 14)
+		intel_de_rmw(dev_priv, DC_STATE_EN,
+			     HOLD_PHY_PG1_LATCH | HOLD_PHY_CLKREQ_PG1_LATCH, 0);
+
 	/* 4. Enable CDCLK. */
 	intel_cdclk_init_hw(dev_priv);
 
@@ -1700,6 +1704,10 @@ static void icl_display_core_uninit(struct drm_i915_private *dev_priv)
 	/* 3. Disable CD clock */
 	intel_cdclk_uninit_hw(dev_priv);
 
+	if (DISPLAY_VER(dev_priv) == 14)
+		intel_de_rmw(dev_priv, DC_STATE_EN, 0,
+			     HOLD_PHY_PG1_LATCH | HOLD_PHY_CLKREQ_PG1_LATCH);
+
 	/*
 	 * 4. Disable Power Well 1 (PG1).
 	 *    The AUX IO power wells are toggled on demand, so they are already
diff --git a/drivers/gpu/drm/i915/i915_reg.h b/drivers/gpu/drm/i915/i915_reg.h
index d43f0f8e061c..d84d05cc49de 100644
--- a/drivers/gpu/drm/i915/i915_reg.h
+++ b/drivers/gpu/drm/i915/i915_reg.h
@@ -7383,6 +7383,8 @@ enum skl_power_gate {
 #define  DC_STATE_DISABLE		0
 #define  DC_STATE_EN_DC3CO		REG_BIT(30)
 #define  DC_STATE_DC3CO_STATUS		REG_BIT(29)
+#define  HOLD_PHY_CLKREQ_PG1_LATCH	REG_BIT(21)
+#define  HOLD_PHY_PG1_LATCH		REG_BIT(20)
 #define  DC_STATE_EN_UPTO_DC5		(1 << 0)
 #define  DC_STATE_EN_DC9		(1 << 3)
 #define  DC_STATE_EN_UPTO_DC6		(2 << 0)
-- 
2.34.1

