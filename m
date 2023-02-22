Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 91D1969EF6E
	for <lists+intel-gfx@lfdr.de>; Wed, 22 Feb 2023 08:36:08 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 70CD910E42B;
	Wed, 22 Feb 2023 07:36:03 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga07.intel.com (mga07.intel.com [134.134.136.100])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 6181510E3EB
 for <intel-gfx@lists.freedesktop.org>; Wed, 22 Feb 2023 07:35:52 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1677051352; x=1708587352;
 h=from:to:subject:date:message-id:in-reply-to:references:
 mime-version:content-transfer-encoding;
 bh=4sonfbh0dCAoFqOVha2TCm7VxSxUoHVN9Q5CXpafcXM=;
 b=hZm5KxfJKs/vgS/qMm5KLL+QdiJ2zp5pgJjxYiqpdjTEgazAMC5MdT3O
 Ii8c6AwH/RWpZAIfRRLmbDrEHwB8nZnPz5opkmHmJ6c916hB0zk0fBp80
 OMZQHMvbVqC7kfhDNMooQBNPAZryRz5UIIGkyJvaSQN9N3R8jMNr3mga0
 je13xcM5oLZ1yLfYHXGDRjlNS/UH+TAWwnFcZa7rawRD7NGZygiSzHPBt
 pV11OFMjzv00wHHLKl3UdymlfjIeFCWej5KALG7GeRBQHgkWvHY4/fI5L
 OEfJgZjiHvnhvi3uA5ILlJ1Rv5bV+QMveB7MvWCk652OdZCnXVbeSLEBC g==;
X-IronPort-AV: E=McAfee;i="6500,9779,10628"; a="397544107"
X-IronPort-AV: E=Sophos;i="5.97,318,1669104000"; d="scan'208";a="397544107"
Received: from orsmga004.jf.intel.com ([10.7.209.38])
 by orsmga105.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 21 Feb 2023 23:35:50 -0800
X-IronPort-AV: E=McAfee;i="6500,9779,10628"; a="795811231"
X-IronPort-AV: E=Sophos;i="5.97,318,1669104000"; d="scan'208";a="795811231"
Received: from invictus.jf.intel.com ([10.165.21.134])
 by orsmga004-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 21 Feb 2023 23:35:50 -0800
From: Radhakrishna Sripada <radhakrishna.sripada@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Tue, 21 Feb 2023 23:35:03 -0800
Message-Id: <20230222073507.788705-6-radhakrishna.sripada@intel.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20230222073507.788705-1-radhakrishna.sripada@intel.com>
References: <20230222073507.788705-1-radhakrishna.sripada@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH v2 5/9] drm/i915/display/mtl: Program latch to
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

