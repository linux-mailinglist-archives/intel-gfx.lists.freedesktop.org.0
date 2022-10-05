Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 6F48F5F5AC3
	for <lists+intel-gfx@lfdr.de>; Wed,  5 Oct 2022 21:56:59 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 9ECEA10E76C;
	Wed,  5 Oct 2022 19:56:55 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 110D310E76C
 for <intel-gfx@lists.freedesktop.org>; Wed,  5 Oct 2022 19:56:50 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1664999810; x=1696535810;
 h=from:to:subject:date:message-id:in-reply-to:references:
 mime-version:content-transfer-encoding;
 bh=351Bp+jMTAMp7823eYa646fsJ+nOfomd4usj5w1hYF0=;
 b=FO6GP5eRKWRNxr1sLEXIsB5oGWDHIIjWcekS9xLxgWMf08SakbaYefvP
 sfYzRDZYbtdjFv8JQQ1noeIE5DWptNi7C7wzm30DvJUe6CVk9YFfmi9HD
 rZd0ddw1xrrtpkXFiEtlNwrv0py+0J0WHjIeTrfb5p8fBYFwsK/sziKPp
 jn35mFmo1kfXyVaxkrUgnDU9N5oYkG7RfV58+MaTATLIvG19dmbnHO4WX
 YuPcCaa33WBrIk7zrdY4eif/BNaVpLtvm6JE3BT4MpK6UqzPEyNMeM1Zk
 h+PBCkHwKCGbTiRy0yU3opi4hACk6NqU1DoWQzgk5bzagO9k7ZW+scORb g==;
X-IronPort-AV: E=McAfee;i="6500,9779,10491"; a="290515080"
X-IronPort-AV: E=Sophos;i="5.95,161,1661842800"; d="scan'208";a="290515080"
Received: from orsmga008.jf.intel.com ([10.7.209.65])
 by orsmga101.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 05 Oct 2022 12:56:49 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6500,9779,10491"; a="655307057"
X-IronPort-AV: E=Sophos;i="5.95,161,1661842800"; d="scan'208";a="655307057"
Received: from stinkpipe.fi.intel.com (HELO stinkbox) ([10.237.72.191])
 by orsmga008.jf.intel.com with SMTP; 05 Oct 2022 12:56:47 -0700
Received: by stinkbox (sSMTP sendmail emulation);
 Wed, 05 Oct 2022 22:56:46 +0300
From: Ville Syrjala <ville.syrjala@linux.intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Wed,  5 Oct 2022 22:56:46 +0300
Message-Id: <20221005195646.17201-1-ville.syrjala@linux.intel.com>
X-Mailer: git-send-email 2.35.1
In-Reply-To: <20221005154159.18750-2-ville.syrjala@linux.intel.com>
References: <20221005154159.18750-2-ville.syrjala@linux.intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH v2 2/3] drm/i915: Name our BARs based on the spec
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

From: Ville Syrjälä <ville.syrjala@linux.intel.com>

We use all kinds of weird names for our base address registers.
Take the names from the spec and stick to them to avoid confusing
everyone.

The only exceptions are IOBAR and LMEMBAR since naming them
IOBAR_BAR and LMEMBAR_BAR looks too funny, and yet I think
that adding the _BAR to GTTMMADR & co. (which don't have one
in the spec name) does make it more clear what they are.
And IOBAR vs. GTTMMADR_BAR also looks a bit too inconsistent
for my taste.

v2: Fix gvt build

Signed-off-by: Ville Syrjälä <ville.syrjala@linux.intel.com>
---
 .../gpu/drm/i915/display/intel_lpe_audio.c    |  4 ++--
 drivers/gpu/drm/i915/gt/intel_ggtt.c          | 12 +++++-----
 drivers/gpu/drm/i915/gvt/cfg_space.c          |  4 ++--
 drivers/gpu/drm/i915/intel_pci_config.h       | 23 +++++++++++++------
 4 files changed, 26 insertions(+), 17 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_lpe_audio.c b/drivers/gpu/drm/i915/display/intel_lpe_audio.c
index dca6003ccac8..389ccdc46a1e 100644
--- a/drivers/gpu/drm/i915/display/intel_lpe_audio.c
+++ b/drivers/gpu/drm/i915/display/intel_lpe_audio.c
@@ -101,9 +101,9 @@ lpe_audio_platdev_create(struct drm_i915_private *dev_priv)
 	rsc[0].flags    = IORESOURCE_IRQ;
 	rsc[0].name     = "hdmi-lpe-audio-irq";
 
-	rsc[1].start    = pci_resource_start(pdev, GTTMMADR_BAR) +
+	rsc[1].start    = pci_resource_start(pdev, GEN4_GTTMMADR_BAR) +
 		I915_HDMI_LPE_AUDIO_BASE;
-	rsc[1].end      = pci_resource_start(pdev, GTTMMADR_BAR) +
+	rsc[1].end      = pci_resource_start(pdev, GEN4_GTTMMADR_BAR) +
 		I915_HDMI_LPE_AUDIO_BASE + I915_HDMI_LPE_AUDIO_SIZE - 1;
 	rsc[1].flags    = IORESOURCE_MEM;
 	rsc[1].name     = "hdmi-lpe-audio-mmio";
diff --git a/drivers/gpu/drm/i915/gt/intel_ggtt.c b/drivers/gpu/drm/i915/gt/intel_ggtt.c
index b31fe0fb013f..668131c25da7 100644
--- a/drivers/gpu/drm/i915/gt/intel_ggtt.c
+++ b/drivers/gpu/drm/i915/gt/intel_ggtt.c
@@ -871,8 +871,8 @@ static int ggtt_probe_common(struct i915_ggtt *ggtt, u64 size)
 	u32 pte_flags;
 	int ret;
 
-	GEM_WARN_ON(pci_resource_len(pdev, GTTMMADR_BAR) != gen6_gttmmadr_size(i915));
-	phys_addr = pci_resource_start(pdev, GTTMMADR_BAR) + gen6_gttadr_offset(i915);
+	GEM_WARN_ON(pci_resource_len(pdev, GEN4_GTTMMADR_BAR) != gen6_gttmmadr_size(i915));
+	phys_addr = pci_resource_start(pdev, GEN4_GTTMMADR_BAR) + gen6_gttadr_offset(i915);
 
 	/*
 	 * On BXT+/ICL+ writes larger than 64 bit to the GTT pagetable range
@@ -932,10 +932,10 @@ static int gen8_gmch_probe(struct i915_ggtt *ggtt)
 	u16 snb_gmch_ctl;
 
 	if (!HAS_LMEM(i915) && !HAS_BAR2_SMEM_STOLEN(i915)) {
-		if (!i915_pci_resource_valid(pdev, GTT_APERTURE_BAR))
+		if (!i915_pci_resource_valid(pdev, GEN4_GMADR_BAR))
 			return -ENXIO;
 
-		ggtt->gmadr = pci_resource(pdev, GTT_APERTURE_BAR);
+		ggtt->gmadr = pci_resource(pdev, GEN4_GMADR_BAR);
 		ggtt->mappable_end = resource_size(&ggtt->gmadr);
 	}
 
@@ -1089,10 +1089,10 @@ static int gen6_gmch_probe(struct i915_ggtt *ggtt)
 	unsigned int size;
 	u16 snb_gmch_ctl;
 
-	if (!i915_pci_resource_valid(pdev, GTT_APERTURE_BAR))
+	if (!i915_pci_resource_valid(pdev, GEN4_GMADR_BAR))
 		return -ENXIO;
 
-	ggtt->gmadr = pci_resource(pdev, GTT_APERTURE_BAR);
+	ggtt->gmadr = pci_resource(pdev, GEN4_GMADR_BAR);
 	ggtt->mappable_end = resource_size(&ggtt->gmadr);
 
 	/*
diff --git a/drivers/gpu/drm/i915/gvt/cfg_space.c b/drivers/gpu/drm/i915/gvt/cfg_space.c
index eef3bba8a41b..357c5b65e097 100644
--- a/drivers/gpu/drm/i915/gvt/cfg_space.c
+++ b/drivers/gpu/drm/i915/gvt/cfg_space.c
@@ -354,9 +354,9 @@ void intel_vgpu_init_cfg_space(struct intel_vgpu *vgpu,
 	memset(vgpu_cfg_space(vgpu) + INTEL_GVT_PCI_OPREGION, 0, 4);
 
 	vgpu->cfg_space.bar[INTEL_GVT_PCI_BAR_GTTMMIO].size =
-		pci_resource_len(pdev, GTTMMADR_BAR);
+		pci_resource_len(pdev, GEN4_GTTMMADR_BAR);
 	vgpu->cfg_space.bar[INTEL_GVT_PCI_BAR_APERTURE].size =
-		pci_resource_len(pdev, GTT_APERTURE_BAR);
+		pci_resource_len(pdev, GEN4_GMADR_BAR);
 
 	memset(vgpu_cfg_space(vgpu) + PCI_ROM_ADDRESS, 0, 4);
 
diff --git a/drivers/gpu/drm/i915/intel_pci_config.h b/drivers/gpu/drm/i915/intel_pci_config.h
index 305f137d2ebd..ffe9e6a94a04 100644
--- a/drivers/gpu/drm/i915/intel_pci_config.h
+++ b/drivers/gpu/drm/i915/intel_pci_config.h
@@ -7,17 +7,26 @@
 #define __INTEL_PCI_CONFIG_H__
 
 /* PCI BARs */
-#define GTTMMADR_BAR				0
-#define GEN2_GTTMMADR_BAR			1
-#define GFXMEM_BAR				2
-#define GTT_APERTURE_BAR			GFXMEM_BAR
-#define GEN12_LMEM_BAR				GFXMEM_BAR
+#define GEN2_GMADR_BAR				0
+#define GEN2_MMADR_BAR				1 /* MMIO+GTT, despite the name */
+
+#define GEN3_MMADR_BAR				0 /* MMIO only */
+#define GEN3_IO_BAR				1
+#define GEN3_GMADR_BAR				2
+#define GEN3_GTTADR_BAR				3 /* GTT only */
+
+#define GEN4_GTTMMADR_BAR			0 /* MMIO+GTT */
+#define GEN4_GMADR_BAR				2
+#define GEN4_IO_BAR				4
+
+#define GEN12_LMEM_BAR				2
 
 static inline int intel_mmio_bar(int graphics_ver)
 {
 	switch (graphics_ver) {
-	case 2: return GEN2_GTTMMADR_BAR;
-	default: return GTTMMADR_BAR;
+	case 2: return GEN2_MMADR_BAR;
+	case 3: return GEN3_MMADR_BAR;
+	default: return GEN4_GTTMMADR_BAR;
 	}
 }
 
-- 
2.35.1

