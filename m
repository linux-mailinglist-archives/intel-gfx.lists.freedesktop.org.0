Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id A7B8E559DEA
	for <lists+intel-gfx@lfdr.de>; Fri, 24 Jun 2022 18:00:10 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id DAFE010E597;
	Fri, 24 Jun 2022 16:00:03 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
 by gabe.freedesktop.org (Postfix) with ESMTPS id A7E3310E4F4
 for <intel-gfx@lists.freedesktop.org>; Fri, 24 Jun 2022 16:00:00 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1656086400; x=1687622400;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=+c9ttF5qMclbXoVnYkhZkA086W/P1fxgl4Fy2u2GTus=;
 b=fGP22rjXvaV98dqLP9yCunlUkupZnHufs0s+XVys0VrhC9haaDnFBGOy
 gbDo+sJIxieH0rUxkSUM8F9ccYSSr2aoQzukv4fhBAMnlyx6rAWohJDg4
 0ZdVs91HAB19FttXbNjepOOHaW72idtSXMfbQpNvlNCXsBEki71dJPMss
 aq1jt2jZCarVsHXCa8pN4afLrKSzkQnwfiV7Sdp5tBUu5t+9t46/KotTP
 yXMnULMdx+vBAMgx3YEx0Wzz/aLINoPrFLJFUoPbL0Atbn1CoLoBCr4d2
 NKwXUq599Ztqj8oV7ANUtBYHF/k1L/kaev14IqouSKmHrjJ+CqA+r7mDK Q==;
X-IronPort-AV: E=McAfee;i="6400,9594,10388"; a="281762324"
X-IronPort-AV: E=Sophos;i="5.92,218,1650956400"; d="scan'208";a="281762324"
Received: from fmsmga006.fm.intel.com ([10.253.24.20])
 by orsmga102.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 24 Jun 2022 08:59:57 -0700
X-IronPort-AV: E=Sophos;i="5.92,218,1650956400"; d="scan'208";a="835170343"
Received: from srr4-3-linux-105-anshuma1.iind.intel.com ([10.223.74.179])
 by fmsmga006-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 24 Jun 2022 08:59:55 -0700
From: Anshuman Gupta <anshuman.gupta@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Fri, 24 Jun 2022 21:29:19 +0530
Message-Id: <20220624155922.7435-7-anshuman.gupta@intel.com>
X-Mailer: git-send-email 2.26.2
In-Reply-To: <20220624155922.7435-1-anshuman.gupta@intel.com>
References: <20220624155922.7435-1-anshuman.gupta@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH v3 6/9] drm/i915/dgfx: Setup VRAM SR with D3COLD
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
Cc: jani.nikula@intel.com, rodrigo.vivi@intel.com
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

Setup VRAM Self Refresh with D3COLD state.
VRAM Self Refresh will retain the context of VRAM, driver
need to save any corresponding hardware state that needs
to be restore on D3COLD exit.

v2:
- Moved intel_pcode_enable_vram_sr to intel_pm.c. [Jani]
- Removed vram_sr.lock. [Jani]
- Dropped Redundant !HAS_LMEM_SR(i915). [Jani]

Cc: Jani Nikula <jani.nikula@intel.com>
Cc: Rodrigo Vivi <rodrigo.vivi@intel.com>
Signed-off-by: Anshuman Gupta <anshuman.gupta@intel.com>
---
 drivers/gpu/drm/i915/i915_driver.c |  2 ++
 drivers/gpu/drm/i915/i915_drv.h    |  2 ++
 drivers/gpu/drm/i915/i915_reg.h    |  4 +++
 drivers/gpu/drm/i915/intel_pcode.h |  1 +
 drivers/gpu/drm/i915/intel_pm.c    | 45 ++++++++++++++++++++++++++++++
 drivers/gpu/drm/i915/intel_pm.h    |  2 ++
 6 files changed, 56 insertions(+)

diff --git a/drivers/gpu/drm/i915/i915_driver.c b/drivers/gpu/drm/i915/i915_driver.c
index be932a6d9c7d..1bc6227c0287 100644
--- a/drivers/gpu/drm/i915/i915_driver.c
+++ b/drivers/gpu/drm/i915/i915_driver.c
@@ -652,6 +652,8 @@ static int i915_driver_hw_probe(struct drm_i915_private *dev_priv)
 	if (ret)
 		goto err_msi;
 
+	intel_pm_vram_sr_setup(dev_priv);
+
 	/*
 	 * Fill the dram structure to get the system dram info. This will be
 	 * used for memory latency calculation.
diff --git a/drivers/gpu/drm/i915/i915_drv.h b/drivers/gpu/drm/i915/i915_drv.h
index 80de5b2eaf53..4f6694890c85 100644
--- a/drivers/gpu/drm/i915/i915_drv.h
+++ b/drivers/gpu/drm/i915/i915_drv.h
@@ -624,6 +624,8 @@ struct drm_i915_private {
 	u32 bxt_phy_grc;
 
 	u32 suspend_count;
+	bool vram_sr_supported;
+
 	struct i915_suspend_saved_registers regfile;
 	struct vlv_s0ix_state *vlv_s0ix_state;
 
diff --git a/drivers/gpu/drm/i915/i915_reg.h b/drivers/gpu/drm/i915/i915_reg.h
index 932bd6aa4a0a..0e3dc4a8846a 100644
--- a/drivers/gpu/drm/i915/i915_reg.h
+++ b/drivers/gpu/drm/i915/i915_reg.h
@@ -6766,6 +6766,8 @@
 #define   DG1_PCODE_STATUS			0x7E
 #define     DG1_UNCORE_GET_INIT_STATUS		0x0
 #define     DG1_UNCORE_INIT_STATUS_COMPLETE	0x1
+#define   DG1_PCODE_D3_VRAM_SR                  0x71
+#define     DG1_ENABLE_SR                        0x1
 #define GEN12_PCODE_READ_SAGV_BLOCK_TIME_US	0x23
 #define   XEHPSDV_PCODE_FREQUENCY_CONFIG		0x6e	/* xehpsdv, pvc */
 /* XEHPSDV_PCODE_FREQUENCY_CONFIG sub-commands (param1) */
@@ -6779,6 +6781,8 @@
 #define   GEN6_PCODE_FREQ_IA_RATIO_SHIFT	8
 #define   GEN6_PCODE_FREQ_RING_RATIO_SHIFT	16
 #define GEN6_PCODE_DATA1			_MMIO(0x13812C)
+#define VRAM_CAPABILITY                         _MMIO(0x138144)
+#define   VRAM_SUPPORTED                        REG_BIT(0)
 
 /* IVYBRIDGE DPF */
 #define GEN7_L3CDERRST1(slice)		_MMIO(0xB008 + (slice) * 0x200) /* L3CD Error Status 1 */
diff --git a/drivers/gpu/drm/i915/intel_pcode.h b/drivers/gpu/drm/i915/intel_pcode.h
index 8d2198e29422..778d10520170 100644
--- a/drivers/gpu/drm/i915/intel_pcode.h
+++ b/drivers/gpu/drm/i915/intel_pcode.h
@@ -9,6 +9,7 @@
 #include <linux/types.h>
 
 struct intel_uncore;
+struct drm_i915_private;
 
 int snb_pcode_read(struct intel_uncore *uncore, u32 mbox, u32 *val, u32 *val1);
 int snb_pcode_write_timeout(struct intel_uncore *uncore, u32 mbox, u32 val,
diff --git a/drivers/gpu/drm/i915/intel_pm.c b/drivers/gpu/drm/i915/intel_pm.c
index 9b7e93ca1ff9..44ea336e1d51 100644
--- a/drivers/gpu/drm/i915/intel_pm.c
+++ b/drivers/gpu/drm/i915/intel_pm.c
@@ -8287,6 +8287,51 @@ void intel_pm_setup(struct drm_i915_private *dev_priv)
 	atomic_set(&dev_priv->runtime_pm.wakeref_count, 0);
 }
 
+void intel_pm_vram_sr_setup(struct drm_i915_private *i915)
+{
+	if (!HAS_LMEM_SR(i915))
+		return;
+
+	i915->vram_sr_supported = intel_uncore_read(&i915->uncore,
+						    VRAM_CAPABILITY) & VRAM_SUPPORTED;
+	if (intel_opregion_vram_sr_required(i915))
+		i915->vram_sr_supported = i915->vram_sr_supported &&
+						intel_opregion_bios_supports_vram_sr(i915);
+	drm_dbg(&i915->drm, "VRAM Self Refresh supported:%s\n",
+		str_yes_no(i915->vram_sr_supported));
+}
+
+int intel_pcode_enable_vram_sr(struct drm_i915_private *i915)
+{
+	int ret = 0;
+
+	ret = snb_pcode_write(&i915->uncore,
+			      REG_FIELD_PREP(GEN6_PCODE_MB_COMMAND,
+			      DG1_PCODE_D3_VRAM_SR) |
+			      REG_FIELD_PREP(GEN6_PCODE_MB_PARAM1,
+			      DG1_ENABLE_SR), 0); /* no data needed for this cmd */
+
+	return ret;
+}
+
+int intel_pm_vram_sr(struct drm_i915_private *i915, bool enable)
+{
+	int ret = 0;
+
+	if (!i915->vram_sr_supported)
+		return ret;
+
+	if (enable)
+		ret = intel_pcode_enable_vram_sr(i915);
+
+	if (ret)
+		return ret;
+
+	intel_opregion_vram_sr(i915, enable);
+
+	return ret;
+}
+
 static struct intel_global_state *intel_dbuf_duplicate_state(struct intel_global_obj *obj)
 {
 	struct intel_dbuf_state *dbuf_state;
diff --git a/drivers/gpu/drm/i915/intel_pm.h b/drivers/gpu/drm/i915/intel_pm.h
index 945503ae493e..ffab65431c6c 100644
--- a/drivers/gpu/drm/i915/intel_pm.h
+++ b/drivers/gpu/drm/i915/intel_pm.h
@@ -31,6 +31,8 @@ int ilk_wm_max_level(const struct drm_i915_private *dev_priv);
 void intel_init_pm(struct drm_i915_private *dev_priv);
 void intel_init_clock_gating_hooks(struct drm_i915_private *dev_priv);
 void intel_pm_setup(struct drm_i915_private *dev_priv);
+void intel_pm_vram_sr_setup(struct drm_i915_private *i915);
+int intel_pm_vram_sr(struct drm_i915_private *i915, bool enable);
 void g4x_wm_get_hw_state(struct drm_i915_private *dev_priv);
 void vlv_wm_get_hw_state(struct drm_i915_private *dev_priv);
 void ilk_wm_get_hw_state(struct drm_i915_private *dev_priv);
-- 
2.26.2

