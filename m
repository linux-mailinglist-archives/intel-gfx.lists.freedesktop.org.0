Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 61D5214B024
	for <lists+intel-gfx@lfdr.de>; Tue, 28 Jan 2020 08:14:52 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 4AC196ECAC;
	Tue, 28 Jan 2020 07:14:50 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-wr1-x443.google.com (mail-wr1-x443.google.com
 [IPv6:2a00:1450:4864:20::443])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 2DC1A6ECAE
 for <intel-gfx@lists.freedesktop.org>; Tue, 28 Jan 2020 07:14:49 +0000 (UTC)
Received: by mail-wr1-x443.google.com with SMTP id d16so14709380wre.10
 for <intel-gfx@lists.freedesktop.org>; Mon, 27 Jan 2020 23:14:49 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=mdYvgVlkLzGIgiAxdYhFgc7c3i0LZLIPQrqIIlaRtuY=;
 b=EW5vXKeChF360gwwJixXkxYEAFPk12DEiehzGxfojZEllobZhcNS7j1+faVjtX/IU2
 R98caJintz0CkIz+X/WZH5GTeZvnAr9oHPJ9Hb1j+a7E3YKSOx6LDAASYxYTpFXt+koM
 DfrKrZ7iNyPbXC77npTqDl0lHfCHonb/m8VGXOhKyO8RAttd52+mZwD14CppDCALELVx
 ecb1fBAP9yD5JwqhXO2gVU1hK/9gk72E3U1bv8uK3Ss/TeVxTatmroguDdUv+wRkDbmx
 pNGzTMSaunrPnC389OWo1pNOgFVNX6mz6auP1fuVUa3IpfGqhYI2A/cw+GUY8c19bVJQ
 q5Cw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=mdYvgVlkLzGIgiAxdYhFgc7c3i0LZLIPQrqIIlaRtuY=;
 b=IUhEj3WqZ7hwMqp6lybNRhEfchb+05bIh/VYYiRNefoZ0DDIkMh4j24whAaFyWjEF9
 U+vevGsOIkZbqv5Epb6SnEig2zRM37xTIAWsJwaKs5XZVbOAHOYmqA6FBmJS/zwzq1ku
 fZr0nNHuhn0DfTCq4z2cruZ9vES9pJ6pYhtksEAkpCna2isCQIBQ/m6tuUpIP5Ffsk6w
 RDTcjQY/Wwi6QpPHI0uwtGB4lGM9GNyU7sxt8Lbx7XYCwDL/VK9HG0e8UrnikMpHfco/
 UEq73T6eRTj8lwBQtWWrwlTHuPOpY1I+WiE7RMC8mLmc+8KYaP6xLQbz0Fy/7ZkwKxgQ
 dEZA==
X-Gm-Message-State: APjAAAWs6YeWvLjierlfbMKsHBmTF6UB5Ycvl/O8CC5TbgLrfEhbWJaB
 hi8es/qD1ijKN/mN4NQgTYc=
X-Google-Smtp-Source: APXvYqxsE/J8BiGijGOuR//tmVXqnprbLRPow4yKQqTpnFUITM48rz8eRx5hHJQ+Fdn4ZbZofJG0Pg==
X-Received: by 2002:a5d:484f:: with SMTP id n15mr26482795wrs.365.1580195687441; 
 Mon, 27 Jan 2020 23:14:47 -0800 (PST)
Received: from wambui.zuku.co.ke ([197.237.61.225])
 by smtp.googlemail.com with ESMTPSA id b67sm1794420wmc.38.2020.01.27.23.14.44
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Mon, 27 Jan 2020 23:14:46 -0800 (PST)
From: Wambui Karuga <wambui.karugax@gmail.com>
To: jani.nikula@linux.intel.com, joonas.lahtinen@linux.intel.com,
 rodrigo.vivi@intel.com, airlied@linux.ie, daniel@ffwll.ch
Date: Tue, 28 Jan 2020 10:14:30 +0300
Message-Id: <20200128071437.9284-2-wambui.karugax@gmail.com>
X-Mailer: git-send-email 2.25.0
In-Reply-To: <20200128071437.9284-1-wambui.karugax@gmail.com>
References: <20200128071437.9284-1-wambui.karugax@gmail.com>
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH 1/8] drm/i915/gt: conversion to struct
 drm_device macros when struct drm_i915_private is available.
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
Cc: intel-gfx@lists.freedesktop.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

This patch is the conversion of printk based logging macros to the new
struct drm_device based logging macros in the drm/i915/gt folder by
running the following coccinelle script that matches when the struct
drm_i915_private device is present:
@rule1@
identifier fn, T;
@@

fn(...,struct drm_i915_private *T,...) {
<+...
(
-DRM_INFO(
+drm_info(&T->drm,
...)
|
-DRM_ERROR(
+drm_err(&T->drm,
...)
|
-DRM_WARN(
+drm_warn(&T->drm,
...)
|
-DRM_DEBUG(
+drm_dbg(&T->drm,
...)
|
-DRM_DEBUG_DRIVER(
+drm_dbg(&T->drm,
...)
|
-DRM_DEBUG_KMS(
+drm_dbg_kms(&T->drm,
...)
|
-DRM_DEBUG_ATOMIC(
+drm_dbg_atomic(&T->drm,
...)
)
...+>
}

@rule2@
identifier fn, T;
@@

fn(...) {
...
struct drm_i915_private *T = ...;
<+...
(
-DRM_INFO(
+drm_info(&T->drm,
...)
|
-DRM_ERROR(
+drm_err(&T->drm,
...)
|
-DRM_WARN(
+drm_warn(&T->drm,
...)
|
-DRM_DEBUG(
+drm_dbg(&T->drm,
...)
|
-DRM_DEBUG_KMS(
+drm_dbg_kms(&T->drm,
...)
|
-DRM_DEBUG_DRIVER(
+drm_dbg(&T->drm,
...)
|
-DRM_DEBUG_ATOMIC(
+drm_dbg_atomic(&T->drm,
...)
)
...+>
}

Checkpatch warnings were fixed manually.

Signed-off-by: Wambui Karuga <wambui.karugax@gmail.com>
---
 drivers/gpu/drm/i915/gt/intel_engine_user.c   |  2 +-
 drivers/gpu/drm/i915/gt/intel_ggtt.c          | 38 ++++++-----
 drivers/gpu/drm/i915/gt/intel_gt.c            |  6 +-
 drivers/gpu/drm/i915/gt/intel_lrc.c           |  2 +-
 drivers/gpu/drm/i915/gt/intel_rc6.c           | 30 +++++----
 drivers/gpu/drm/i915/gt/intel_renderstate.c   |  2 +-
 .../gpu/drm/i915/gt/intel_ring_submission.c   | 33 +++++-----
 drivers/gpu/drm/i915/gt/intel_rps.c           | 66 +++++++++----------
 drivers/gpu/drm/i915/gt/intel_workarounds.c   |  7 +-
 drivers/gpu/drm/i915/gt/uc/intel_guc_log.c    |  3 +-
 drivers/gpu/drm/i915/gt/uc/intel_uc.c         |  4 +-
 11 files changed, 101 insertions(+), 92 deletions(-)

diff --git a/drivers/gpu/drm/i915/gt/intel_engine_user.c b/drivers/gpu/drm/i915/gt/intel_engine_user.c
index 848decee9066..c8a63e9c8f0d 100644
--- a/drivers/gpu/drm/i915/gt/intel_engine_user.c
+++ b/drivers/gpu/drm/i915/gt/intel_engine_user.c
@@ -215,7 +215,7 @@ void intel_engines_driver_register(struct drm_i915_private *i915)
 		scnprintf(engine->name, sizeof(engine->name), "%s%u",
 			  intel_engine_class_repr(engine->class),
 			  engine->uabi_instance);
-		DRM_DEBUG_DRIVER("renamed %s to %s\n", old, engine->name);
+		drm_dbg(&i915->drm, "renamed %s to %s\n", old, engine->name);
 
 		rb_link_node(&engine->uabi_node, prev, p);
 		rb_insert_color(&engine->uabi_node, &i915->uabi_engines);
diff --git a/drivers/gpu/drm/i915/gt/intel_ggtt.c b/drivers/gpu/drm/i915/gt/intel_ggtt.c
index 79096722ce16..d938cf8db460 100644
--- a/drivers/gpu/drm/i915/gt/intel_ggtt.c
+++ b/drivers/gpu/drm/i915/gt/intel_ggtt.c
@@ -791,13 +791,13 @@ static int ggtt_probe_common(struct i915_ggtt *ggtt, u64 size)
 	else
 		ggtt->gsm = ioremap_wc(phys_addr, size);
 	if (!ggtt->gsm) {
-		DRM_ERROR("Failed to map the ggtt page table\n");
+		drm_err(&i915->drm, "Failed to map the ggtt page table\n");
 		return -ENOMEM;
 	}
 
 	ret = setup_scratch_page(&ggtt->vm, GFP_DMA32);
 	if (ret) {
-		DRM_ERROR("Scratch setup failed\n");
+		drm_err(&i915->drm, "Scratch setup failed\n");
 		/* iounmap will also get called at remove, but meh */
 		iounmap(ggtt->gsm);
 		return ret;
@@ -857,7 +857,8 @@ static int gen8_gmch_probe(struct i915_ggtt *ggtt)
 	if (!err)
 		err = pci_set_consistent_dma_mask(pdev, DMA_BIT_MASK(39));
 	if (err)
-		DRM_ERROR("Can't set DMA mask/consistent mask (%d)\n", err);
+		drm_err(&i915->drm,
+			"Can't set DMA mask/consistent mask (%d)\n", err);
 
 	pci_read_config_word(pdev, SNB_GMCH_CTRL, &snb_gmch_ctl);
 	if (IS_CHERRYVIEW(i915))
@@ -1004,7 +1005,8 @@ static int gen6_gmch_probe(struct i915_ggtt *ggtt)
 	 * just a coarse sanity check.
 	 */
 	if (ggtt->mappable_end < (64<<20) || ggtt->mappable_end > (512<<20)) {
-		DRM_ERROR("Unknown GMADR size (%pa)\n", &ggtt->mappable_end);
+		drm_err(&i915->drm, "Unknown GMADR size (%pa)\n",
+			&ggtt->mappable_end);
 		return -ENXIO;
 	}
 
@@ -1012,7 +1014,8 @@ static int gen6_gmch_probe(struct i915_ggtt *ggtt)
 	if (!err)
 		err = pci_set_consistent_dma_mask(pdev, DMA_BIT_MASK(40));
 	if (err)
-		DRM_ERROR("Can't set DMA mask/consistent mask (%d)\n", err);
+		drm_err(&i915->drm,
+			"Can't set DMA mask/consistent mask (%d)\n", err);
 	pci_read_config_word(pdev, SNB_GMCH_CTRL, &snb_gmch_ctl);
 
 	size = gen6_get_total_gtt_size(snb_gmch_ctl);
@@ -1059,7 +1062,7 @@ static int i915_gmch_probe(struct i915_ggtt *ggtt)
 
 	ret = intel_gmch_probe(i915->bridge_dev, i915->drm.pdev, NULL);
 	if (!ret) {
-		DRM_ERROR("failed to set up gmch\n");
+		drm_err(&i915->drm, "failed to set up gmch\n");
 		return -EIO;
 	}
 
@@ -1107,26 +1110,29 @@ static int ggtt_probe_hw(struct i915_ggtt *ggtt, struct intel_gt *gt)
 		return ret;
 
 	if ((ggtt->vm.total - 1) >> 32) {
-		DRM_ERROR("We never expected a Global GTT with more than 32bits"
-			  " of address space! Found %lldM!\n",
-			  ggtt->vm.total >> 20);
+		drm_err(&i915->drm,
+			"We never expected a Global GTT with more than 32bits"
+			" of address space! Found %lldM!\n",
+			ggtt->vm.total >> 20);
 		ggtt->vm.total = 1ULL << 32;
 		ggtt->mappable_end =
 			min_t(u64, ggtt->mappable_end, ggtt->vm.total);
 	}
 
 	if (ggtt->mappable_end > ggtt->vm.total) {
-		DRM_ERROR("mappable aperture extends past end of GGTT,"
-			  " aperture=%pa, total=%llx\n",
-			  &ggtt->mappable_end, ggtt->vm.total);
+		drm_err(&i915->drm,
+			"mappable aperture extends past end of GGTT,"
+			" aperture=%pa, total=%llx\n",
+			&ggtt->mappable_end, ggtt->vm.total);
 		ggtt->mappable_end = ggtt->vm.total;
 	}
 
 	/* GMADR is the PCI mmio aperture into the global GTT. */
-	DRM_DEBUG_DRIVER("GGTT size = %lluM\n", ggtt->vm.total >> 20);
-	DRM_DEBUG_DRIVER("GMADR size = %lluM\n", (u64)ggtt->mappable_end >> 20);
-	DRM_DEBUG_DRIVER("DSM size = %lluM\n",
-			 (u64)resource_size(&intel_graphics_stolen_res) >> 20);
+	drm_dbg(&i915->drm, "GGTT size = %lluM\n", ggtt->vm.total >> 20);
+	drm_dbg(&i915->drm, "GMADR size = %lluM\n",
+		(u64)ggtt->mappable_end >> 20);
+	drm_dbg(&i915->drm, "DSM size = %lluM\n",
+		(u64)resource_size(&intel_graphics_stolen_res) >> 20);
 
 	return 0;
 }
diff --git a/drivers/gpu/drm/i915/gt/intel_gt.c b/drivers/gpu/drm/i915/gt/intel_gt.c
index da2b6e2ae692..a1ba0097117e 100644
--- a/drivers/gpu/drm/i915/gt/intel_gt.c
+++ b/drivers/gpu/drm/i915/gt/intel_gt.c
@@ -106,7 +106,7 @@ int intel_gt_init_hw(struct intel_gt *gt)
 
 	ret = i915_ppgtt_init_hw(gt);
 	if (ret) {
-		DRM_ERROR("Enabling PPGTT failed (%d)\n", ret);
+		drm_err(&i915->drm, "Enabling PPGTT failed (%d)\n", ret);
 		goto out;
 	}
 
@@ -168,7 +168,7 @@ intel_gt_clear_error_registers(struct intel_gt *gt,
 		 * some errors might have become stuck,
 		 * mask them.
 		 */
-		DRM_DEBUG_DRIVER("EIR stuck: 0x%08x, masking\n", eir);
+		drm_dbg(&i915->drm, "EIR stuck: 0x%08x, masking\n", eir);
 		rmw_set(uncore, EMR, eir);
 		intel_uncore_write(uncore, GEN2_IIR,
 				   I915_MASTER_ERROR_INTERRUPT);
@@ -335,7 +335,7 @@ static int intel_gt_init_scratch(struct intel_gt *gt, unsigned int size)
 	if (IS_ERR(obj))
 		obj = i915_gem_object_create_internal(i915, size);
 	if (IS_ERR(obj)) {
-		DRM_ERROR("Failed to allocate scratch page\n");
+		drm_err(&i915->drm, "Failed to allocate scratch page\n");
 		return PTR_ERR(obj);
 	}
 
diff --git a/drivers/gpu/drm/i915/gt/intel_lrc.c b/drivers/gpu/drm/i915/gt/intel_lrc.c
index a13a8c4b65ab..5003c2e84786 100644
--- a/drivers/gpu/drm/i915/gt/intel_lrc.c
+++ b/drivers/gpu/drm/i915/gt/intel_lrc.c
@@ -4334,7 +4334,7 @@ int intel_execlists_submission_setup(struct intel_engine_cs *engine)
 		 * because we only expect rare glitches but nothing
 		 * critical to prevent us from using GPU
 		 */
-		DRM_ERROR("WA batch buffer initialization failed\n");
+		drm_err(&i915->drm, "WA batch buffer initialization failed\n");
 
 	if (HAS_LOGICAL_RING_ELSQ(i915)) {
 		execlists->submit_reg = uncore->regs +
diff --git a/drivers/gpu/drm/i915/gt/intel_rc6.c b/drivers/gpu/drm/i915/gt/intel_rc6.c
index 01a99fdbb3c4..84b9853967fd 100644
--- a/drivers/gpu/drm/i915/gt/intel_rc6.c
+++ b/drivers/gpu/drm/i915/gt/intel_rc6.c
@@ -248,16 +248,18 @@ static void gen6_rc6_enable(struct intel_rc6 *rc6)
 	ret = sandybridge_pcode_read(i915, GEN6_PCODE_READ_RC6VIDS,
 				     &rc6vids, NULL);
 	if (IS_GEN(i915, 6) && ret) {
-		DRM_DEBUG_DRIVER("Couldn't check for BIOS workaround\n");
+		drm_dbg(&i915->drm, "Couldn't check for BIOS workaround\n");
 	} else if (IS_GEN(i915, 6) &&
 		   (GEN6_DECODE_RC6_VID(rc6vids & 0xff) < 450)) {
-		DRM_DEBUG_DRIVER("You should update your BIOS. Correcting minimum rc6 voltage (%dmV->%dmV)\n",
-				 GEN6_DECODE_RC6_VID(rc6vids & 0xff), 450);
+		drm_dbg(&i915->drm,
+			"You should update your BIOS. Correcting minimum rc6 voltage (%dmV->%dmV)\n",
+			GEN6_DECODE_RC6_VID(rc6vids & 0xff), 450);
 		rc6vids &= 0xffff00;
 		rc6vids |= GEN6_ENCODE_RC6_VID(450);
 		ret = sandybridge_pcode_write(i915, GEN6_PCODE_WRITE_RC6VIDS, rc6vids);
 		if (ret)
-			DRM_ERROR("Couldn't fix incorrect rc6 voltage\n");
+			drm_err(&i915->drm,
+				"Couldn't fix incorrect rc6 voltage\n");
 	}
 }
 
@@ -307,7 +309,7 @@ static int vlv_rc6_init(struct intel_rc6 *rc6)
 		goto out;
 	}
 
-	DRM_DEBUG_DRIVER("BIOS didn't set up PCBR, fixing up\n");
+	drm_dbg(&i915->drm, "BIOS didn't set up PCBR, fixing up\n");
 
 	/*
 	 * From the Gunit register HAS:
@@ -319,7 +321,8 @@ static int vlv_rc6_init(struct intel_rc6 *rc6)
 	 */
 	pctx = i915_gem_object_create_stolen(i915, pctx_size);
 	if (IS_ERR(pctx)) {
-		DRM_DEBUG("not enough stolen space for PCTX, disabling\n");
+		drm_dbg(&i915->drm,
+			"not enough stolen space for PCTX, disabling\n");
 		return PTR_ERR(pctx);
 	}
 
@@ -401,14 +404,14 @@ static bool bxt_check_bios_rc6_setup(struct intel_rc6 *rc6)
 	rc_sw_target = intel_uncore_read(uncore, GEN6_RC_STATE);
 	rc_sw_target &= RC_SW_TARGET_STATE_MASK;
 	rc_sw_target >>= RC_SW_TARGET_STATE_SHIFT;
-	DRM_DEBUG_DRIVER("BIOS enabled RC states: "
+	drm_dbg(&i915->drm, "BIOS enabled RC states: "
 			 "HW_CTRL %s HW_RC6 %s SW_TARGET_STATE %x\n",
 			 onoff(rc_ctl & GEN6_RC_CTL_HW_ENABLE),
 			 onoff(rc_ctl & GEN6_RC_CTL_RC6_ENABLE),
 			 rc_sw_target);
 
 	if (!(intel_uncore_read(uncore, RC6_LOCATION) & RC6_CTX_IN_DRAM)) {
-		DRM_DEBUG_DRIVER("RC6 Base location not set properly.\n");
+		drm_dbg(&i915->drm, "RC6 Base location not set properly.\n");
 		enable_rc6 = false;
 	}
 
@@ -420,7 +423,7 @@ static bool bxt_check_bios_rc6_setup(struct intel_rc6 *rc6)
 		intel_uncore_read(uncore, RC6_CTX_BASE) & RC6_CTX_BASE_MASK;
 	if (!(rc6_ctx_base >= i915->dsm_reserved.start &&
 	      rc6_ctx_base + PAGE_SIZE < i915->dsm_reserved.end)) {
-		DRM_DEBUG_DRIVER("RC6 Base address not as expected.\n");
+		drm_dbg(&i915->drm, "RC6 Base address not as expected.\n");
 		enable_rc6 = false;
 	}
 
@@ -428,24 +431,25 @@ static bool bxt_check_bios_rc6_setup(struct intel_rc6 *rc6)
 	      (intel_uncore_read(uncore, PWRCTX_MAXCNT_VCSUNIT0) & IDLE_TIME_MASK) > 1 &&
 	      (intel_uncore_read(uncore, PWRCTX_MAXCNT_BCSUNIT) & IDLE_TIME_MASK) > 1 &&
 	      (intel_uncore_read(uncore, PWRCTX_MAXCNT_VECSUNIT) & IDLE_TIME_MASK) > 1)) {
-		DRM_DEBUG_DRIVER("Engine Idle wait time not set properly.\n");
+		drm_dbg(&i915->drm,
+			"Engine Idle wait time not set properly.\n");
 		enable_rc6 = false;
 	}
 
 	if (!intel_uncore_read(uncore, GEN8_PUSHBUS_CONTROL) ||
 	    !intel_uncore_read(uncore, GEN8_PUSHBUS_ENABLE) ||
 	    !intel_uncore_read(uncore, GEN8_PUSHBUS_SHIFT)) {
-		DRM_DEBUG_DRIVER("Pushbus not setup properly.\n");
+		drm_dbg(&i915->drm, "Pushbus not setup properly.\n");
 		enable_rc6 = false;
 	}
 
 	if (!intel_uncore_read(uncore, GEN6_GFXPAUSE)) {
-		DRM_DEBUG_DRIVER("GFX pause not setup properly.\n");
+		drm_dbg(&i915->drm, "GFX pause not setup properly.\n");
 		enable_rc6 = false;
 	}
 
 	if (!intel_uncore_read(uncore, GEN8_MISC_CTRL0)) {
-		DRM_DEBUG_DRIVER("GPM control not setup properly.\n");
+		drm_dbg(&i915->drm, "GPM control not setup properly.\n");
 		enable_rc6 = false;
 	}
 
diff --git a/drivers/gpu/drm/i915/gt/intel_renderstate.c b/drivers/gpu/drm/i915/gt/intel_renderstate.c
index 5954ecc3207f..26e78db33675 100644
--- a/drivers/gpu/drm/i915/gt/intel_renderstate.c
+++ b/drivers/gpu/drm/i915/gt/intel_renderstate.c
@@ -102,7 +102,7 @@ static int render_state_setup(struct intel_renderstate *so,
 	}
 
 	if (rodata->reloc[reloc_index] != -1) {
-		DRM_ERROR("only %d relocs resolved\n", reloc_index);
+		drm_err(&i915->drm, "only %d relocs resolved\n", reloc_index);
 		goto err;
 	}
 
diff --git a/drivers/gpu/drm/i915/gt/intel_ring_submission.c b/drivers/gpu/drm/i915/gt/intel_ring_submission.c
index 7e2c6ac7d6b0..964a8d8d28b5 100644
--- a/drivers/gpu/drm/i915/gt/intel_ring_submission.c
+++ b/drivers/gpu/drm/i915/gt/intel_ring_submission.c
@@ -578,8 +578,9 @@ static void flush_cs_tlb(struct intel_engine_cs *engine)
 				    RING_INSTPM(engine->mmio_base),
 				    INSTPM_SYNC_FLUSH, 0,
 				    1000))
-		DRM_ERROR("%s: wait for SyncFlush to complete for TLB invalidation timed out\n",
-			  engine->name);
+		drm_err(&dev_priv->drm,
+			"%s: wait for SyncFlush to complete for TLB invalidation timed out\n",
+			engine->name);
 }
 
 static void ring_setup_status_page(struct intel_engine_cs *engine)
@@ -602,8 +603,9 @@ static bool stop_ring(struct intel_engine_cs *engine)
 					    MODE_IDLE,
 					    MODE_IDLE,
 					    1000)) {
-			DRM_ERROR("%s : timed out trying to stop ring\n",
-				  engine->name);
+			drm_err(&dev_priv->drm,
+				"%s : timed out trying to stop ring\n",
+				engine->name);
 
 			/*
 			 * Sometimes we observe that the idle flag is not
@@ -641,22 +643,23 @@ static int xcs_resume(struct intel_engine_cs *engine)
 	/* WaClearRingBufHeadRegAtInit:ctg,elk */
 	if (!stop_ring(engine)) {
 		/* G45 ring initialization often fails to reset head to zero */
-		DRM_DEBUG_DRIVER("%s head not reset to zero "
+		drm_dbg(&dev_priv->drm, "%s head not reset to zero "
+			"ctl %08x head %08x tail %08x start %08x\n",
+			engine->name,
+			ENGINE_READ(engine, RING_CTL),
+			ENGINE_READ(engine, RING_HEAD),
+			ENGINE_READ(engine, RING_TAIL),
+			ENGINE_READ(engine, RING_START));
+
+		if (!stop_ring(engine)) {
+			drm_err(&dev_priv->drm,
+				"failed to set %s head to zero "
 				"ctl %08x head %08x tail %08x start %08x\n",
 				engine->name,
 				ENGINE_READ(engine, RING_CTL),
 				ENGINE_READ(engine, RING_HEAD),
 				ENGINE_READ(engine, RING_TAIL),
 				ENGINE_READ(engine, RING_START));
-
-		if (!stop_ring(engine)) {
-			DRM_ERROR("failed to set %s head to zero "
-				  "ctl %08x head %08x tail %08x start %08x\n",
-				  engine->name,
-				  ENGINE_READ(engine, RING_CTL),
-				  ENGINE_READ(engine, RING_HEAD),
-				  ENGINE_READ(engine, RING_TAIL),
-				  ENGINE_READ(engine, RING_START));
 			ret = -EIO;
 			goto out;
 		}
@@ -697,7 +700,7 @@ static int xcs_resume(struct intel_engine_cs *engine)
 				    RING_CTL(engine->mmio_base),
 				    RING_VALID, RING_VALID,
 				    50)) {
-		DRM_ERROR("%s initialization failed "
+		drm_err(&dev_priv->drm, "%s initialization failed "
 			  "ctl %08x (valid? %d) head %08x [%08x] tail %08x [%08x] start %08x [expected %08x]\n",
 			  engine->name,
 			  ENGINE_READ(engine, RING_CTL),
diff --git a/drivers/gpu/drm/i915/gt/intel_rps.c b/drivers/gpu/drm/i915/gt/intel_rps.c
index 30ae29b30f11..54e63435ccfe 100644
--- a/drivers/gpu/drm/i915/gt/intel_rps.c
+++ b/drivers/gpu/drm/i915/gt/intel_rps.c
@@ -180,8 +180,8 @@ static void gen5_rps_init(struct intel_rps *rps)
 	fmin = (rgvmodectl & MEMMODE_FMIN_MASK);
 	fstart = (rgvmodectl & MEMMODE_FSTART_MASK) >>
 		MEMMODE_FSTART_SHIFT;
-	DRM_DEBUG_DRIVER("fmax: %d, fmin: %d, fstart: %d\n",
-			 fmax, fmin, fstart);
+	drm_dbg(&i915->drm, "fmax: %d, fmin: %d, fstart: %d\n",
+		fmax, fmin, fstart);
 
 	rps->min_freq = fmax;
 	rps->max_freq = fmin;
@@ -1029,8 +1029,8 @@ static bool chv_rps_enable(struct intel_rps *rps)
 	drm_WARN_ONCE(&i915->drm, (val & GPLLENABLE) == 0,
 		      "GPLL not enabled\n");
 
-	DRM_DEBUG_DRIVER("GPLL enabled? %s\n", yesno(val & GPLLENABLE));
-	DRM_DEBUG_DRIVER("GPU status: 0x%08x\n", val);
+	drm_dbg(&i915->drm, "GPLL enabled? %s\n", yesno(val & GPLLENABLE));
+	drm_dbg(&i915->drm, "GPU status: 0x%08x\n", val);
 
 	return rps_reset(rps);
 }
@@ -1127,8 +1127,8 @@ static bool vlv_rps_enable(struct intel_rps *rps)
 	drm_WARN_ONCE(&i915->drm, (val & GPLLENABLE) == 0,
 		      "GPLL not enabled\n");
 
-	DRM_DEBUG_DRIVER("GPLL enabled? %s\n", yesno(val & GPLLENABLE));
-	DRM_DEBUG_DRIVER("GPU status: 0x%08x\n", val);
+	drm_dbg(&i915->drm, "GPLL enabled? %s\n", yesno(val & GPLLENABLE));
+	drm_dbg(&i915->drm, "GPU status: 0x%08x\n", val);
 
 	return rps_reset(rps);
 }
@@ -1285,7 +1285,8 @@ static void vlv_init_gpll_ref_freq(struct intel_rps *rps)
 				  CCK_GPLL_CLOCK_CONTROL,
 				  i915->czclk_freq);
 
-	DRM_DEBUG_DRIVER("GPLL reference freq: %d kHz\n", rps->gpll_ref_freq);
+	drm_dbg(&i915->drm, "GPLL reference freq: %d kHz\n",
+		rps->gpll_ref_freq);
 }
 
 static void vlv_rps_init(struct intel_rps *rps)
@@ -1313,28 +1314,24 @@ static void vlv_rps_init(struct intel_rps *rps)
 		i915->mem_freq = 1333;
 		break;
 	}
-	DRM_DEBUG_DRIVER("DDR speed: %d MHz\n", i915->mem_freq);
+	drm_dbg(&i915->drm, "DDR speed: %d MHz\n", i915->mem_freq);
 
 	rps->max_freq = vlv_rps_max_freq(rps);
 	rps->rp0_freq = rps->max_freq;
-	DRM_DEBUG_DRIVER("max GPU freq: %d MHz (%u)\n",
-			 intel_gpu_freq(rps, rps->max_freq),
-			 rps->max_freq);
+	drm_dbg(&i915->drm, "max GPU freq: %d MHz (%u)\n",
+		intel_gpu_freq(rps, rps->max_freq), rps->max_freq);
 
 	rps->efficient_freq = vlv_rps_rpe_freq(rps);
-	DRM_DEBUG_DRIVER("RPe GPU freq: %d MHz (%u)\n",
-			 intel_gpu_freq(rps, rps->efficient_freq),
-			 rps->efficient_freq);
+	drm_dbg(&i915->drm, "RPe GPU freq: %d MHz (%u)\n",
+		intel_gpu_freq(rps, rps->efficient_freq), rps->efficient_freq);
 
 	rps->rp1_freq = vlv_rps_guar_freq(rps);
-	DRM_DEBUG_DRIVER("RP1(Guar Freq) GPU freq: %d MHz (%u)\n",
-			 intel_gpu_freq(rps, rps->rp1_freq),
-			 rps->rp1_freq);
+	drm_dbg(&i915->drm, "RP1(Guar Freq) GPU freq: %d MHz (%u)\n",
+		intel_gpu_freq(rps, rps->rp1_freq), rps->rp1_freq);
 
 	rps->min_freq = vlv_rps_min_freq(rps);
-	DRM_DEBUG_DRIVER("min GPU freq: %d MHz (%u)\n",
-			 intel_gpu_freq(rps, rps->min_freq),
-			 rps->min_freq);
+	drm_dbg(&i915->drm, "min GPU freq: %d MHz (%u)\n",
+		intel_gpu_freq(rps, rps->min_freq), rps->min_freq);
 
 	vlv_iosf_sb_put(i915,
 			BIT(VLV_IOSF_SB_PUNIT) |
@@ -1364,28 +1361,24 @@ static void chv_rps_init(struct intel_rps *rps)
 		i915->mem_freq = 1600;
 		break;
 	}
-	DRM_DEBUG_DRIVER("DDR speed: %d MHz\n", i915->mem_freq);
+	drm_dbg(&i915->drm, "DDR speed: %d MHz\n", i915->mem_freq);
 
 	rps->max_freq = chv_rps_max_freq(rps);
 	rps->rp0_freq = rps->max_freq;
-	DRM_DEBUG_DRIVER("max GPU freq: %d MHz (%u)\n",
-			 intel_gpu_freq(rps, rps->max_freq),
-			 rps->max_freq);
+	drm_dbg(&i915->drm, "max GPU freq: %d MHz (%u)\n",
+		intel_gpu_freq(rps, rps->max_freq), rps->max_freq);
 
 	rps->efficient_freq = chv_rps_rpe_freq(rps);
-	DRM_DEBUG_DRIVER("RPe GPU freq: %d MHz (%u)\n",
-			 intel_gpu_freq(rps, rps->efficient_freq),
-			 rps->efficient_freq);
+	drm_dbg(&i915->drm, "RPe GPU freq: %d MHz (%u)\n",
+		intel_gpu_freq(rps, rps->efficient_freq), rps->efficient_freq);
 
 	rps->rp1_freq = chv_rps_guar_freq(rps);
-	DRM_DEBUG_DRIVER("RP1(Guar) GPU freq: %d MHz (%u)\n",
-			 intel_gpu_freq(rps, rps->rp1_freq),
-			 rps->rp1_freq);
+	drm_dbg(&i915->drm, "RP1(Guar) GPU freq: %d MHz (%u)\n",
+		intel_gpu_freq(rps, rps->rp1_freq), rps->rp1_freq);
 
 	rps->min_freq = chv_rps_min_freq(rps);
-	DRM_DEBUG_DRIVER("min GPU freq: %d MHz (%u)\n",
-			 intel_gpu_freq(rps, rps->min_freq),
-			 rps->min_freq);
+	drm_dbg(&i915->drm, "min GPU freq: %d MHz (%u)\n",
+		intel_gpu_freq(rps, rps->min_freq), rps->min_freq);
 
 	vlv_iosf_sb_put(i915,
 			BIT(VLV_IOSF_SB_PUNIT) |
@@ -1641,9 +1634,10 @@ void intel_rps_init(struct intel_rps *rps)
 		sandybridge_pcode_read(i915, GEN6_READ_OC_PARAMS,
 				       &params, NULL);
 		if (params & BIT(31)) { /* OC supported */
-			DRM_DEBUG_DRIVER("Overclocking supported, max: %dMHz, overclock: %dMHz\n",
-					 (rps->max_freq & 0xff) * 50,
-					 (params & 0xff) * 50);
+			drm_dbg(&i915->drm,
+				"Overclocking supported, max: %dMHz, overclock: %dMHz\n",
+				(rps->max_freq & 0xff) * 50,
+				(params & 0xff) * 50);
 			rps->max_freq = params & 0xff;
 		}
 	}
diff --git a/drivers/gpu/drm/i915/gt/intel_workarounds.c b/drivers/gpu/drm/i915/gt/intel_workarounds.c
index 5a7db279f702..b4942083593c 100644
--- a/drivers/gpu/drm/i915/gt/intel_workarounds.c
+++ b/drivers/gpu/drm/i915/gt/intel_workarounds.c
@@ -815,7 +815,7 @@ wa_init_mcr(struct drm_i915_private *i915, struct i915_wa_list *wal)
 			intel_uncore_read(&i915->uncore, GEN10_MIRROR_FUSE3) &
 			GEN10_L3BANK_MASK;
 
-		DRM_DEBUG_DRIVER("L3 fuse = %x\n", l3_fuse);
+		drm_dbg(&i915->drm, "L3 fuse = %x\n", l3_fuse);
 		l3_en = ~(l3_fuse << GEN10_L3BANK_PAIR_COUNT | l3_fuse);
 	} else {
 		l3_en = ~0;
@@ -824,7 +824,8 @@ wa_init_mcr(struct drm_i915_private *i915, struct i915_wa_list *wal)
 	slice = fls(sseu->slice_mask) - 1;
 	subslice = fls(l3_en & intel_sseu_get_subslices(sseu, slice));
 	if (!subslice) {
-		DRM_WARN("No common index found between subslice mask %x and L3 bank mask %x!\n",
+		drm_warn(&i915->drm,
+			 "No common index found between subslice mask %x and L3 bank mask %x!\n",
 			 intel_sseu_get_subslices(sseu, slice), l3_en);
 		subslice = fls(l3_en);
 		drm_WARN_ON(&i915->drm, !subslice);
@@ -839,7 +840,7 @@ wa_init_mcr(struct drm_i915_private *i915, struct i915_wa_list *wal)
 		mcr_mask = GEN8_MCR_SLICE_MASK | GEN8_MCR_SUBSLICE_MASK;
 	}
 
-	DRM_DEBUG_DRIVER("MCR slice/subslice = %x\n", mcr);
+	drm_dbg(&i915->drm, "MCR slice/subslice = %x\n", mcr);
 
 	wa_write_masked_or(wal, GEN8_MCR_SELECTOR, mcr_mask, mcr);
 }
diff --git a/drivers/gpu/drm/i915/gt/uc/intel_guc_log.c b/drivers/gpu/drm/i915/gt/uc/intel_guc_log.c
index caed0d57e704..d6a8e1e93983 100644
--- a/drivers/gpu/drm/i915/gt/uc/intel_guc_log.c
+++ b/drivers/gpu/drm/i915/gt/uc/intel_guc_log.c
@@ -391,7 +391,8 @@ static int guc_log_relay_create(struct intel_guc_log *log)
 					subbuf_size, n_subbufs,
 					&relay_callbacks, dev_priv);
 	if (!guc_log_relay_chan) {
-		DRM_ERROR("Couldn't create relay chan for GuC logging\n");
+		drm_err(&dev_priv->drm,
+			"Couldn't create relay chan for GuC logging\n");
 
 		ret = -ENOMEM;
 		return ret;
diff --git a/drivers/gpu/drm/i915/gt/uc/intel_uc.c b/drivers/gpu/drm/i915/gt/uc/intel_uc.c
index 64934a876a50..d2bdd74466f2 100644
--- a/drivers/gpu/drm/i915/gt/uc/intel_uc.c
+++ b/drivers/gpu/drm/i915/gt/uc/intel_uc.c
@@ -224,7 +224,7 @@ static int guc_enable_communication(struct intel_guc *guc)
 	intel_guc_ct_event_handler(&guc->ct);
 	spin_unlock_irq(&i915->irq_lock);
 
-	DRM_INFO("GuC communication enabled\n");
+	drm_info(&i915->drm, "GuC communication enabled\n");
 
 	return 0;
 }
@@ -441,7 +441,7 @@ static int __uc_init_hw(struct intel_uc *uc)
 		if (ret == 0)
 			break;
 
-		DRM_DEBUG_DRIVER("GuC fw load failed: %d; will reset and "
+		drm_dbg(&i915->drm, "GuC fw load failed: %d; will reset and "
 				 "retry %d more time(s)\n", ret, attempts);
 	}
 
-- 
2.25.0

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
