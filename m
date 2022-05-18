Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 2BEF652BB56
	for <lists+intel-gfx@lfdr.de>; Wed, 18 May 2022 15:07:59 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 6660A10EDD8;
	Wed, 18 May 2022 13:07:57 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga05.intel.com (mga05.intel.com [192.55.52.43])
 by gabe.freedesktop.org (Postfix) with ESMTPS id B47B510EDD8
 for <intel-gfx@lists.freedesktop.org>; Wed, 18 May 2022 13:07:55 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1652879275; x=1684415275;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=CnmrX/MgcR7DXHlFrFAeCCJ1AIpkdGP2WxrbnSwx3+0=;
 b=ke/PLM3d6cqkC43SqA8Pr4PbQ/k0Uv77aDY0MSLRW0Q8M9AkCAiarzWb
 Ll4Ad45LW1HPFdiXqOCcOrYBITQyXU6njgKXeepRxTMU+aBfTb7i6sxCM
 wTOH7INJasihQSLWWdJAQBsnvwbtkhcwZnFi/7fIKz+8EOujyBI2LFwtN
 +H30ylYacnSU1L77wPTqNeBmmcWmjX+UtO8wdxSjtFc1GyyNidkXNW0Ww
 9nLTfxioVudqvR3QXtor1FNsNSH58HdxjfYgFjm8BD7UGQ5WvR3sciCpY
 SpJ6ddVWXi9PDetX1UqSuZCF9OxbaXdkTDoHSPGzs27j3QG/jSe+DNSS1 g==;
X-IronPort-AV: E=McAfee;i="6400,9594,10350"; a="358071814"
X-IronPort-AV: E=Sophos;i="5.91,234,1647327600"; d="scan'208";a="358071814"
Received: from orsmga005.jf.intel.com ([10.7.209.41])
 by fmsmga105.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 18 May 2022 06:07:44 -0700
X-IronPort-AV: E=Sophos;i="5.91,234,1647327600"; d="scan'208";a="742314378"
Received: from srr4-3-linux-105-anshuma1.iind.intel.com ([10.223.74.179])
 by orsmga005-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 18 May 2022 06:07:41 -0700
From: Anshuman Gupta <anshuman.gupta@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Wed, 18 May 2022 18:37:15 +0530
Message-Id: <20220518130716.10936-7-anshuman.gupta@intel.com>
X-Mailer: git-send-email 2.26.2
In-Reply-To: <20220518130716.10936-1-anshuman.gupta@intel.com>
References: <20220518130716.10936-1-anshuman.gupta@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH 6/7] drm/i915/dgfx: Setup VRAM SR with D3COLD
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
to be restore on D3COLD exit, example PCI state.

Cc: Jani Nikula <jani.nikula@intel.com>
Cc: Rodrigo Vivi <rodrigo.vivi@intel.com>
Signed-off-by: Anshuman Gupta <anshuman.gupta@intel.com>
---
 drivers/gpu/drm/i915/i915_driver.c |  2 ++
 drivers/gpu/drm/i915/i915_drv.h    |  7 +++++
 drivers/gpu/drm/i915/i915_reg.h    |  4 +++
 drivers/gpu/drm/i915/intel_pcode.c | 25 +++++++++++++++++
 drivers/gpu/drm/i915/intel_pcode.h |  1 +
 drivers/gpu/drm/i915/intel_pm.c    | 43 ++++++++++++++++++++++++++++++
 drivers/gpu/drm/i915/intel_pm.h    |  2 ++
 7 files changed, 84 insertions(+)

diff --git a/drivers/gpu/drm/i915/i915_driver.c b/drivers/gpu/drm/i915/i915_driver.c
index ed6028fd442d..5a9d5529fc90 100644
--- a/drivers/gpu/drm/i915/i915_driver.c
+++ b/drivers/gpu/drm/i915/i915_driver.c
@@ -633,6 +633,8 @@ static int i915_driver_hw_probe(struct drm_i915_private *dev_priv)
 	if (ret)
 		goto err_msi;
 
+	intel_pm_vram_sr_setup(dev_priv);
+
 	/*
 	 * Fill the dram structure to get the system dram info. This will be
 	 * used for memory latency calculation.
diff --git a/drivers/gpu/drm/i915/i915_drv.h b/drivers/gpu/drm/i915/i915_drv.h
index 42463dc2979f..e15207e6a166 100644
--- a/drivers/gpu/drm/i915/i915_drv.h
+++ b/drivers/gpu/drm/i915/i915_drv.h
@@ -688,6 +688,13 @@ struct drm_i915_private {
 	u32 bxt_phy_grc;
 
 	u32 suspend_count;
+
+	struct {
+		/* lock to protect vram_sr flags */
+		struct mutex lock;
+		bool supported;
+	} vram_sr;
+
 	struct i915_suspend_saved_registers regfile;
 	struct vlv_s0ix_state *vlv_s0ix_state;
 
diff --git a/drivers/gpu/drm/i915/i915_reg.h b/drivers/gpu/drm/i915/i915_reg.h
index ec2609fa233b..50e6c7266f7a 100644
--- a/drivers/gpu/drm/i915/i915_reg.h
+++ b/drivers/gpu/drm/i915/i915_reg.h
@@ -6803,11 +6803,15 @@
 #define   DG1_PCODE_STATUS			0x7E
 #define     DG1_UNCORE_GET_INIT_STATUS		0x0
 #define     DG1_UNCORE_INIT_STATUS_COMPLETE	0x1
+#define   DG1_PCODE_D3_VRAM_SR                  0x71
+#define     DG1_ENABLE_SR                        0x1
 #define GEN12_PCODE_READ_SAGV_BLOCK_TIME_US	0x23
 #define GEN6_PCODE_DATA				_MMIO(0x138128)
 #define   GEN6_PCODE_FREQ_IA_RATIO_SHIFT	8
 #define   GEN6_PCODE_FREQ_RING_RATIO_SHIFT	16
 #define GEN6_PCODE_DATA1			_MMIO(0x13812C)
+#define VRAM_CAPABILITY                         _MMIO(0x138144)
+#define   VRAM_SUPPORTED                        REG_BIT(0)
 
 /* IVYBRIDGE DPF */
 #define GEN7_L3CDERRST1(slice)		_MMIO(0xB008 + (slice) * 0x200) /* L3CD Error Status 1 */
diff --git a/drivers/gpu/drm/i915/intel_pcode.c b/drivers/gpu/drm/i915/intel_pcode.c
index ac727546868e..43b2e7cfc458 100644
--- a/drivers/gpu/drm/i915/intel_pcode.c
+++ b/drivers/gpu/drm/i915/intel_pcode.c
@@ -225,3 +225,28 @@ int intel_pcode_init(struct drm_i915_private *i915)
 
 	return ret;
 }
+
+/**
+ * intel_pcode_enable_vram_sr - Enable pcode vram_sr.
+ * @dev_priv: i915 device
+ *
+ * This function triggers the required pcode flow to enable vram_sr.
+ * This function stictly need to call from rpm handlers, as i915 is
+ * transitioning to rpm idle/suspend, it doesn't require to grab
+ * rpm wakeref.
+ */
+int intel_pcode_enable_vram_sr(struct drm_i915_private *i915)
+{
+	int ret = 0;
+
+	if (!HAS_LMEM_SR(i915))
+		return ret;
+
+	ret = snb_pcode_write(i915,
+			      REG_FIELD_PREP(GEN6_PCODE_MB_COMMAND,
+			      DG1_PCODE_D3_VRAM_SR) |
+			      REG_FIELD_PREP(GEN6_PCODE_MB_PARAM1,
+			      DG1_ENABLE_SR), 0); /* no data needed for this cmd */
+
+	return ret;
+}
diff --git a/drivers/gpu/drm/i915/intel_pcode.h b/drivers/gpu/drm/i915/intel_pcode.h
index 0962a17fac48..3f695bd027a1 100644
--- a/drivers/gpu/drm/i915/intel_pcode.h
+++ b/drivers/gpu/drm/i915/intel_pcode.h
@@ -20,5 +20,6 @@ int skl_pcode_request(struct drm_i915_private *i915, u32 mbox, u32 request,
 		      u32 reply_mask, u32 reply, int timeout_base_ms);
 
 int intel_pcode_init(struct drm_i915_private *i915);
+int intel_pcode_enable_vram_sr(struct drm_i915_private *i915);
 
 #endif /* _INTEL_PCODE_H */
diff --git a/drivers/gpu/drm/i915/intel_pm.c b/drivers/gpu/drm/i915/intel_pm.c
index ee0047fdc95d..6c14752f2dc8 100644
--- a/drivers/gpu/drm/i915/intel_pm.c
+++ b/drivers/gpu/drm/i915/intel_pm.c
@@ -8153,6 +8153,49 @@ void intel_pm_setup(struct drm_i915_private *dev_priv)
 	atomic_set(&dev_priv->runtime_pm.wakeref_count, 0);
 }
 
+void intel_pm_vram_sr_setup(struct drm_i915_private *i915)
+{
+	if (!HAS_LMEM_SR(i915))
+		return;
+
+	mutex_init(&i915->vram_sr.lock);
+
+	i915->vram_sr.supported = intel_uncore_read(&i915->uncore,
+						    VRAM_CAPABILITY) & VRAM_SUPPORTED;
+	if (intel_opregion_vram_sr_required(i915))
+		i915->vram_sr.supported = i915->vram_sr.supported &&
+						intel_opregion_bios_supports_vram_sr(i915);
+}
+
+int intel_pm_vram_sr(struct drm_i915_private *i915, bool enable)
+{
+	int ret = 0;
+
+	if (!HAS_LMEM_SR(i915))
+		return -EOPNOTSUPP;
+
+	mutex_lock(&i915->vram_sr.lock);
+	if (!i915->vram_sr.supported) {
+		drm_dbg(&i915->drm, "VRAM Self Refresh is not supported\n");
+		ret = -EOPNOTSUPP;
+		goto unlock;
+	}
+
+	drm_dbg(&i915->drm, "VRAM Self Refresh supported\n");
+	if (enable)
+		ret = intel_pcode_enable_vram_sr(i915);
+
+	if (ret)
+		goto unlock;
+
+	intel_opregion_vram_sr(i915, enable);
+
+unlock:
+	mutex_unlock(&i915->vram_sr.lock);
+
+	return ret;
+}
+
 static struct intel_global_state *intel_dbuf_duplicate_state(struct intel_global_obj *obj)
 {
 	struct intel_dbuf_state *dbuf_state;
diff --git a/drivers/gpu/drm/i915/intel_pm.h b/drivers/gpu/drm/i915/intel_pm.h
index 50604cf7398c..0da85d6b9ea7 100644
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

