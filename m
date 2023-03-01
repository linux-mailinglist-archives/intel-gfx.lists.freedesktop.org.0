Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 849D46A74CF
	for <lists+intel-gfx@lfdr.de>; Wed,  1 Mar 2023 21:11:56 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 2BD2910E24D;
	Wed,  1 Mar 2023 20:11:50 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga17.intel.com (mga17.intel.com [192.55.52.151])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 12E7510E24B
 for <intel-gfx@lists.freedesktop.org>; Wed,  1 Mar 2023 20:11:48 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1677701508; x=1709237508;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=Gn6zGOnEfxlc6H1QFJNZZ1b/nc79QxLXeNUqRpagSzA=;
 b=ETxzxo1D5KdbvYXNtgg6+1BdSXwL+PwzptTIZqfrt2F/QhWI43wfLclK
 ee7m4VgGTy4GSIk901M/BlDBlZMn3KMrbGOpobjChaIhWXyUkSp7itR+g
 ncaVT67nX7Tg2PG2iGB0W9X4EvwhFtAxoMXx+RJ8GuiW4mJrCzSsTSx3H
 EW2HsoKqATEz9dOV7oOZN0IlkkLQ5xtN/iHiKCOiEKycjRf9DFwoV0YyT
 6iMbC4MsBBLW+TZf/UftjvQm1dOKeXry9uHUSxyIYeRsvGdWvwGQ6G7me
 6c8ZipNwT0tK/Ay19srMJJkjL5ZzFjIQbHNBaeBGwxV8jPaAYQGJYtTUl g==;
X-IronPort-AV: E=McAfee;i="6500,9779,10636"; a="314933487"
X-IronPort-AV: E=Sophos;i="5.98,225,1673942400"; d="scan'208";a="314933487"
Received: from orsmga002.jf.intel.com ([10.7.209.21])
 by fmsmga107.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 01 Mar 2023 12:11:47 -0800
X-IronPort-AV: E=McAfee;i="6500,9779,10636"; a="674691946"
X-IronPort-AV: E=Sophos;i="5.98,225,1673942400"; d="scan'208";a="674691946"
Received: from invictus.jf.intel.com ([10.165.21.134])
 by orsmga002-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 01 Mar 2023 12:11:45 -0800
From: Radhakrishna Sripada <radhakrishna.sripada@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Wed,  1 Mar 2023 12:10:53 -0800
Message-Id: <20230301201053.928709-6-radhakrishna.sripada@intel.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20230301201053.928709-1-radhakrishna.sripada@intel.com>
References: <20230301201053.928709-1-radhakrishna.sripada@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH v3 5/5] drm/i915/display/mtl: Program latch to
 phy reset
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
Cc: Matt Roper <matthew.d.roper@intel.com>
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

From: José Roberto de Souza <jose.souza@intel.com>

Latch reset of phys during DC9 and when driver is unloaded to avoid
phy reset.

Specification ask us to program it closer to the step that enables
DC9 in DC_STATE_EN but doing this way allow us to sanitize the phy
latch during driver load.

BSpec: 49197
Reviewed-by: Matt Roper <matthew.d.roper@intel.com>
Signed-off-by: José Roberto de Souza <jose.souza@intel.com>
Signed-off-by: Radhakrishna Sripada <radhakrishna.sripada@intel.com>
---
 drivers/gpu/drm/i915/display/intel_display_power.c | 8 ++++++++
 drivers/gpu/drm/i915/i915_reg.h                    | 2 ++
 2 files changed, 10 insertions(+)

diff --git a/drivers/gpu/drm/i915/display/intel_display_power.c b/drivers/gpu/drm/i915/display/intel_display_power.c
index 743b919bb2cf..50098c77e3be 100644
--- a/drivers/gpu/drm/i915/display/intel_display_power.c
+++ b/drivers/gpu/drm/i915/display/intel_display_power.c
@@ -1624,6 +1624,10 @@ static void icl_display_core_init(struct drm_i915_private *dev_priv,
 	intel_power_well_enable(dev_priv, well);
 	mutex_unlock(&power_domains->lock);
 
+	if (DISPLAY_VER(dev_priv) == 14)
+		intel_de_rmw(dev_priv, DC_STATE_EN,
+			     HOLD_PHY_PG1_LATCH | HOLD_PHY_CLKREQ_PG1_LATCH, 0);
+
 	/* 4. Enable CDCLK. */
 	intel_cdclk_init_hw(dev_priv);
 
@@ -1677,6 +1681,10 @@ static void icl_display_core_uninit(struct drm_i915_private *dev_priv)
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
index 7c9ac5b43831..fa1905cc5a99 100644
--- a/drivers/gpu/drm/i915/i915_reg.h
+++ b/drivers/gpu/drm/i915/i915_reg.h
@@ -7360,6 +7360,8 @@ enum skl_power_gate {
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

