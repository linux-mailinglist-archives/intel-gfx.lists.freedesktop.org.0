Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id BA6DA453874
	for <lists+intel-gfx@lfdr.de>; Tue, 16 Nov 2021 18:25:22 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id E1D0789C37;
	Tue, 16 Nov 2021 17:25:19 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga05.intel.com (mga05.intel.com [192.55.52.43])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 5DE2E89C37
 for <intel-gfx@lists.freedesktop.org>; Tue, 16 Nov 2021 17:25:18 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6200,9189,10169"; a="319956951"
X-IronPort-AV: E=Sophos;i="5.87,239,1631602800"; d="scan'208";a="319956951"
Received: from orsmga006.jf.intel.com ([10.7.209.51])
 by fmsmga105.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 16 Nov 2021 09:14:53 -0800
X-IronPort-AV: E=Sophos;i="5.87,239,1631602800"; d="scan'208";a="454528803"
Received: from mramya-mobl1.gar.corp.intel.com (HELO localhost)
 ([10.251.219.100])
 by orsmga006-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 16 Nov 2021 09:14:51 -0800
From: Jani Nikula <jani.nikula@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Tue, 16 Nov 2021 19:14:33 +0200
Message-Id: <20211116171434.20516-4-jani.nikula@intel.com>
X-Mailer: git-send-email 2.30.2
In-Reply-To: <20211116171434.20516-1-jani.nikula@intel.com>
References: <20211116171434.20516-1-jani.nikula@intel.com>
MIME-Version: 1.0
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH 4/5] drm/i915: move structs from
 intel_display_power.h to .c
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
Cc: jani.nikula@intel.com
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

Anything internal to the implementation should be hidden away. Move the
intel_display_power structs to the .c file.

Cc: Imre Deak <imre.deak@intel.com>
Signed-off-by: Jani Nikula <jani.nikula@intel.com>
---
 .../drm/i915/display/intel_display_power.c    | 92 ++++++++++++++++++
 .../drm/i915/display/intel_display_power.h    | 95 +------------------
 2 files changed, 93 insertions(+), 94 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_display_power.c b/drivers/gpu/drm/i915/display/intel_display_power.c
index 5ebc758498c8..229b4c127c6c 100644
--- a/drivers/gpu/drm/i915/display/intel_display_power.c
+++ b/drivers/gpu/drm/i915/display/intel_display_power.c
@@ -24,6 +24,98 @@
 #include "intel_vga.h"
 #include "vlv_sideband.h"
 
+struct i915_power_well_ops {
+	/*
+	 * Synchronize the well's hw state to match the current sw state, for
+	 * example enable/disable it based on the current refcount. Called
+	 * during driver init and resume time, possibly after first calling
+	 * the enable/disable handlers.
+	 */
+	void (*sync_hw)(struct drm_i915_private *dev_priv,
+			struct i915_power_well *power_well);
+	/*
+	 * Enable the well and resources that depend on it (for example
+	 * interrupts located on the well). Called after the 0->1 refcount
+	 * transition.
+	 */
+	void (*enable)(struct drm_i915_private *dev_priv,
+		       struct i915_power_well *power_well);
+	/*
+	 * Disable the well and resources that depend on it. Called after
+	 * the 1->0 refcount transition.
+	 */
+	void (*disable)(struct drm_i915_private *dev_priv,
+			struct i915_power_well *power_well);
+	/* Returns the hw enabled state. */
+	bool (*is_enabled)(struct drm_i915_private *dev_priv,
+			   struct i915_power_well *power_well);
+};
+
+struct i915_power_well_regs {
+	i915_reg_t bios;
+	i915_reg_t driver;
+	i915_reg_t kvmr;
+	i915_reg_t debug;
+};
+
+/* Power well structure for haswell */
+struct i915_power_well_desc {
+	const char *name;
+	bool always_on;
+	u64 domains;
+	/* unique identifier for this power well */
+	enum i915_power_well_id id;
+	/*
+	 * Arbitraty data associated with this power well. Platform and power
+	 * well specific.
+	 */
+	union {
+		struct {
+			/*
+			 * request/status flag index in the PUNIT power well
+			 * control/status registers.
+			 */
+			u8 idx;
+		} vlv;
+		struct {
+			enum dpio_phy phy;
+		} bxt;
+		struct {
+			const struct i915_power_well_regs *regs;
+			/*
+			 * request/status flag index in the power well
+			 * constrol/status registers.
+			 */
+			u8 idx;
+			/* Mask of pipes whose IRQ logic is backed by the pw */
+			u8 irq_pipe_mask;
+			/*
+			 * Instead of waiting for the status bit to ack enables,
+			 * just wait a specific amount of time and then consider
+			 * the well enabled.
+			 */
+			u16 fixed_enable_delay;
+			/* The pw is backing the VGA functionality */
+			bool has_vga:1;
+			bool has_fuses:1;
+			/*
+			 * The pw is for an ICL+ TypeC PHY port in
+			 * Thunderbolt mode.
+			 */
+			bool is_tc_tbt:1;
+		} hsw;
+	};
+	const struct i915_power_well_ops *ops;
+};
+
+struct i915_power_well {
+	const struct i915_power_well_desc *desc;
+	/* power well enable/disable usage count */
+	int count;
+	/* cached hw enabled state */
+	bool hw_enabled;
+};
+
 bool intel_display_power_well_is_enabled(struct drm_i915_private *dev_priv,
 					 enum i915_power_well_id power_well_id);
 
diff --git a/drivers/gpu/drm/i915/display/intel_display_power.h b/drivers/gpu/drm/i915/display/intel_display_power.h
index b28cc1f94576..2777af09c711 100644
--- a/drivers/gpu/drm/i915/display/intel_display_power.h
+++ b/drivers/gpu/drm/i915/display/intel_display_power.h
@@ -11,6 +11,7 @@
 #include "i915_reg.h"
 
 struct drm_i915_private;
+struct i915_power_well;
 struct intel_encoder;
 
 enum intel_display_power_domain {
@@ -155,100 +156,6 @@ enum i915_power_well_id {
 	((tran) == TRANSCODER_EDP ? POWER_DOMAIN_TRANSCODER_EDP : \
 	 (tran) + POWER_DOMAIN_TRANSCODER_A)
 
-struct i915_power_well;
-
-struct i915_power_well_ops {
-	/*
-	 * Synchronize the well's hw state to match the current sw state, for
-	 * example enable/disable it based on the current refcount. Called
-	 * during driver init and resume time, possibly after first calling
-	 * the enable/disable handlers.
-	 */
-	void (*sync_hw)(struct drm_i915_private *dev_priv,
-			struct i915_power_well *power_well);
-	/*
-	 * Enable the well and resources that depend on it (for example
-	 * interrupts located on the well). Called after the 0->1 refcount
-	 * transition.
-	 */
-	void (*enable)(struct drm_i915_private *dev_priv,
-		       struct i915_power_well *power_well);
-	/*
-	 * Disable the well and resources that depend on it. Called after
-	 * the 1->0 refcount transition.
-	 */
-	void (*disable)(struct drm_i915_private *dev_priv,
-			struct i915_power_well *power_well);
-	/* Returns the hw enabled state. */
-	bool (*is_enabled)(struct drm_i915_private *dev_priv,
-			   struct i915_power_well *power_well);
-};
-
-struct i915_power_well_regs {
-	i915_reg_t bios;
-	i915_reg_t driver;
-	i915_reg_t kvmr;
-	i915_reg_t debug;
-};
-
-/* Power well structure for haswell */
-struct i915_power_well_desc {
-	const char *name;
-	bool always_on;
-	u64 domains;
-	/* unique identifier for this power well */
-	enum i915_power_well_id id;
-	/*
-	 * Arbitraty data associated with this power well. Platform and power
-	 * well specific.
-	 */
-	union {
-		struct {
-			/*
-			 * request/status flag index in the PUNIT power well
-			 * control/status registers.
-			 */
-			u8 idx;
-		} vlv;
-		struct {
-			enum dpio_phy phy;
-		} bxt;
-		struct {
-			const struct i915_power_well_regs *regs;
-			/*
-			 * request/status flag index in the power well
-			 * constrol/status registers.
-			 */
-			u8 idx;
-			/* Mask of pipes whose IRQ logic is backed by the pw */
-			u8 irq_pipe_mask;
-			/*
-			 * Instead of waiting for the status bit to ack enables,
-			 * just wait a specific amount of time and then consider
-			 * the well enabled.
-			 */
-			u16 fixed_enable_delay;
-			/* The pw is backing the VGA functionality */
-			bool has_vga:1;
-			bool has_fuses:1;
-			/*
-			 * The pw is for an ICL+ TypeC PHY port in
-			 * Thunderbolt mode.
-			 */
-			bool is_tc_tbt:1;
-		} hsw;
-	};
-	const struct i915_power_well_ops *ops;
-};
-
-struct i915_power_well {
-	const struct i915_power_well_desc *desc;
-	/* power well enable/disable usage count */
-	int count;
-	/* cached hw enabled state */
-	bool hw_enabled;
-};
-
 struct i915_power_domains {
 	/*
 	 * Power wells needed for initialization at driver init and suspend
-- 
2.30.2

