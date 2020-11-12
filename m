Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 72CC82B042E
	for <lists+intel-gfx@lfdr.de>; Thu, 12 Nov 2020 12:45:18 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id BA8896E207;
	Thu, 12 Nov 2020 11:45:16 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga17.intel.com (mga17.intel.com [192.55.52.151])
 by gabe.freedesktop.org (Postfix) with ESMTPS id BA2926E207
 for <intel-gfx@lists.freedesktop.org>; Thu, 12 Nov 2020 11:45:15 +0000 (UTC)
IronPort-SDR: w4ULkZxMsW8rnLNpQ3C9OiujOUj4tJ+kMeFSoWMIBeu5NBTbcqZixITy8xwLl30IGxjdZWQrh4
 W7H96qKbdC8Q==
X-IronPort-AV: E=McAfee;i="6000,8403,9802"; a="150145685"
X-IronPort-AV: E=Sophos;i="5.77,471,1596524400"; d="scan'208";a="150145685"
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga006.jf.intel.com ([10.7.209.51])
 by fmsmga107.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 12 Nov 2020 03:45:15 -0800
IronPort-SDR: jByBPh7CH/wftIy1ADO0HjGCyxIrHZiIih0MtMStXuHs8ltpEyeyy4v15a4y/EVjzm9g0WO753
 EUDw/nyrcpKQ==
X-IronPort-AV: E=Sophos;i="5.77,471,1596524400"; d="scan'208";a="328470169"
Received: from mghidovi-mobl1.ti.intel.com (HELO localhost) ([10.251.81.155])
 by orsmga006-auth.jf.intel.com with
 ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 12 Nov 2020 03:45:13 -0800
From: Jani Nikula <jani.nikula@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Thu, 12 Nov 2020 13:44:38 +0200
Message-Id: <75b46f483b760e3b6004d5887712ecc57183a832.1605181350.git.jani.nikula@intel.com>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <cover.1605181350.git.jani.nikula@intel.com>
References: <cover.1605181350.git.jani.nikula@intel.com>
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH 5/9] drm/i915/debugfs: replace I915_READ() with
 intel_uncore_read()
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

Another straggler with I915_READ() uses gone.

Arguably some of these should use intel_de_read(), however not
all. Prioritize I915_READ() removal in general over migrating to the
pedantically correct replacement right away.

Signed-off-by: Jani Nikula <jani.nikula@intel.com>
---
 drivers/gpu/drm/i915/i915_debugfs.c | 214 ++++++++++++++--------------
 1 file changed, 107 insertions(+), 107 deletions(-)

diff --git a/drivers/gpu/drm/i915/i915_debugfs.c b/drivers/gpu/drm/i915/i915_debugfs.c
index 151734a1a496..a8b0a67250b5 100644
--- a/drivers/gpu/drm/i915/i915_debugfs.c
+++ b/drivers/gpu/drm/i915/i915_debugfs.c
@@ -397,37 +397,37 @@ static void gen8_display_interrupt_info(struct seq_file *m)
 		}
 		seq_printf(m, "Pipe %c IMR:\t%08x\n",
 			   pipe_name(pipe),
-			   I915_READ(GEN8_DE_PIPE_IMR(pipe)));
+			   intel_uncore_read(&dev_priv->uncore, GEN8_DE_PIPE_IMR(pipe)));
 		seq_printf(m, "Pipe %c IIR:\t%08x\n",
 			   pipe_name(pipe),
-			   I915_READ(GEN8_DE_PIPE_IIR(pipe)));
+			   intel_uncore_read(&dev_priv->uncore, GEN8_DE_PIPE_IIR(pipe)));
 		seq_printf(m, "Pipe %c IER:\t%08x\n",
 			   pipe_name(pipe),
-			   I915_READ(GEN8_DE_PIPE_IER(pipe)));
+			   intel_uncore_read(&dev_priv->uncore, GEN8_DE_PIPE_IER(pipe)));
 
 		intel_display_power_put(dev_priv, power_domain, wakeref);
 	}
 
 	seq_printf(m, "Display Engine port interrupt mask:\t%08x\n",
-		   I915_READ(GEN8_DE_PORT_IMR));
+		   intel_uncore_read(&dev_priv->uncore, GEN8_DE_PORT_IMR));
 	seq_printf(m, "Display Engine port interrupt identity:\t%08x\n",
-		   I915_READ(GEN8_DE_PORT_IIR));
+		   intel_uncore_read(&dev_priv->uncore, GEN8_DE_PORT_IIR));
 	seq_printf(m, "Display Engine port interrupt enable:\t%08x\n",
-		   I915_READ(GEN8_DE_PORT_IER));
+		   intel_uncore_read(&dev_priv->uncore, GEN8_DE_PORT_IER));
 
 	seq_printf(m, "Display Engine misc interrupt mask:\t%08x\n",
-		   I915_READ(GEN8_DE_MISC_IMR));
+		   intel_uncore_read(&dev_priv->uncore, GEN8_DE_MISC_IMR));
 	seq_printf(m, "Display Engine misc interrupt identity:\t%08x\n",
-		   I915_READ(GEN8_DE_MISC_IIR));
+		   intel_uncore_read(&dev_priv->uncore, GEN8_DE_MISC_IIR));
 	seq_printf(m, "Display Engine misc interrupt enable:\t%08x\n",
-		   I915_READ(GEN8_DE_MISC_IER));
+		   intel_uncore_read(&dev_priv->uncore, GEN8_DE_MISC_IER));
 
 	seq_printf(m, "PCU interrupt mask:\t%08x\n",
-		   I915_READ(GEN8_PCU_IMR));
+		   intel_uncore_read(&dev_priv->uncore, GEN8_PCU_IMR));
 	seq_printf(m, "PCU interrupt identity:\t%08x\n",
-		   I915_READ(GEN8_PCU_IIR));
+		   intel_uncore_read(&dev_priv->uncore, GEN8_PCU_IIR));
 	seq_printf(m, "PCU interrupt enable:\t%08x\n",
-		   I915_READ(GEN8_PCU_IER));
+		   intel_uncore_read(&dev_priv->uncore, GEN8_PCU_IER));
 }
 
 static int i915_interrupt_info(struct seq_file *m, void *data)
@@ -443,16 +443,16 @@ static int i915_interrupt_info(struct seq_file *m, void *data)
 		intel_wakeref_t pref;
 
 		seq_printf(m, "Master Interrupt Control:\t%08x\n",
-			   I915_READ(GEN8_MASTER_IRQ));
+			   intel_uncore_read(&dev_priv->uncore, GEN8_MASTER_IRQ));
 
 		seq_printf(m, "Display IER:\t%08x\n",
-			   I915_READ(VLV_IER));
+			   intel_uncore_read(&dev_priv->uncore, VLV_IER));
 		seq_printf(m, "Display IIR:\t%08x\n",
-			   I915_READ(VLV_IIR));
+			   intel_uncore_read(&dev_priv->uncore, VLV_IIR));
 		seq_printf(m, "Display IIR_RW:\t%08x\n",
-			   I915_READ(VLV_IIR_RW));
+			   intel_uncore_read(&dev_priv->uncore, VLV_IIR_RW));
 		seq_printf(m, "Display IMR:\t%08x\n",
-			   I915_READ(VLV_IMR));
+			   intel_uncore_read(&dev_priv->uncore, VLV_IMR));
 		for_each_pipe(dev_priv, pipe) {
 			enum intel_display_power_domain power_domain;
 
@@ -467,71 +467,71 @@ static int i915_interrupt_info(struct seq_file *m, void *data)
 
 			seq_printf(m, "Pipe %c stat:\t%08x\n",
 				   pipe_name(pipe),
-				   I915_READ(PIPESTAT(pipe)));
+				   intel_uncore_read(&dev_priv->uncore, PIPESTAT(pipe)));
 
 			intel_display_power_put(dev_priv, power_domain, pref);
 		}
 
 		pref = intel_display_power_get(dev_priv, POWER_DOMAIN_INIT);
 		seq_printf(m, "Port hotplug:\t%08x\n",
-			   I915_READ(PORT_HOTPLUG_EN));
+			   intel_uncore_read(&dev_priv->uncore, PORT_HOTPLUG_EN));
 		seq_printf(m, "DPFLIPSTAT:\t%08x\n",
-			   I915_READ(VLV_DPFLIPSTAT));
+			   intel_uncore_read(&dev_priv->uncore, VLV_DPFLIPSTAT));
 		seq_printf(m, "DPINVGTT:\t%08x\n",
-			   I915_READ(DPINVGTT));
+			   intel_uncore_read(&dev_priv->uncore, DPINVGTT));
 		intel_display_power_put(dev_priv, POWER_DOMAIN_INIT, pref);
 
 		for (i = 0; i < 4; i++) {
 			seq_printf(m, "GT Interrupt IMR %d:\t%08x\n",
-				   i, I915_READ(GEN8_GT_IMR(i)));
+				   i, intel_uncore_read(&dev_priv->uncore, GEN8_GT_IMR(i)));
 			seq_printf(m, "GT Interrupt IIR %d:\t%08x\n",
-				   i, I915_READ(GEN8_GT_IIR(i)));
+				   i, intel_uncore_read(&dev_priv->uncore, GEN8_GT_IIR(i)));
 			seq_printf(m, "GT Interrupt IER %d:\t%08x\n",
-				   i, I915_READ(GEN8_GT_IER(i)));
+				   i, intel_uncore_read(&dev_priv->uncore, GEN8_GT_IER(i)));
 		}
 
 		seq_printf(m, "PCU interrupt mask:\t%08x\n",
-			   I915_READ(GEN8_PCU_IMR));
+			   intel_uncore_read(&dev_priv->uncore, GEN8_PCU_IMR));
 		seq_printf(m, "PCU interrupt identity:\t%08x\n",
-			   I915_READ(GEN8_PCU_IIR));
+			   intel_uncore_read(&dev_priv->uncore, GEN8_PCU_IIR));
 		seq_printf(m, "PCU interrupt enable:\t%08x\n",
-			   I915_READ(GEN8_PCU_IER));
+			   intel_uncore_read(&dev_priv->uncore, GEN8_PCU_IER));
 	} else if (INTEL_GEN(dev_priv) >= 11) {
 		if (HAS_MASTER_UNIT_IRQ(dev_priv))
 			seq_printf(m, "Master Unit Interrupt Control:  %08x\n",
-				   I915_READ(DG1_MSTR_UNIT_INTR));
+				   intel_uncore_read(&dev_priv->uncore, DG1_MSTR_UNIT_INTR));
 
 		seq_printf(m, "Master Interrupt Control:  %08x\n",
-			   I915_READ(GEN11_GFX_MSTR_IRQ));
+			   intel_uncore_read(&dev_priv->uncore, GEN11_GFX_MSTR_IRQ));
 
 		seq_printf(m, "Render/Copy Intr Enable:   %08x\n",
-			   I915_READ(GEN11_RENDER_COPY_INTR_ENABLE));
+			   intel_uncore_read(&dev_priv->uncore, GEN11_RENDER_COPY_INTR_ENABLE));
 		seq_printf(m, "VCS/VECS Intr Enable:      %08x\n",
-			   I915_READ(GEN11_VCS_VECS_INTR_ENABLE));
+			   intel_uncore_read(&dev_priv->uncore, GEN11_VCS_VECS_INTR_ENABLE));
 		seq_printf(m, "GUC/SG Intr Enable:\t   %08x\n",
-			   I915_READ(GEN11_GUC_SG_INTR_ENABLE));
+			   intel_uncore_read(&dev_priv->uncore, GEN11_GUC_SG_INTR_ENABLE));
 		seq_printf(m, "GPM/WGBOXPERF Intr Enable: %08x\n",
-			   I915_READ(GEN11_GPM_WGBOXPERF_INTR_ENABLE));
+			   intel_uncore_read(&dev_priv->uncore, GEN11_GPM_WGBOXPERF_INTR_ENABLE));
 		seq_printf(m, "Crypto Intr Enable:\t   %08x\n",
-			   I915_READ(GEN11_CRYPTO_RSVD_INTR_ENABLE));
+			   intel_uncore_read(&dev_priv->uncore, GEN11_CRYPTO_RSVD_INTR_ENABLE));
 		seq_printf(m, "GUnit/CSME Intr Enable:\t   %08x\n",
-			   I915_READ(GEN11_GUNIT_CSME_INTR_ENABLE));
+			   intel_uncore_read(&dev_priv->uncore, GEN11_GUNIT_CSME_INTR_ENABLE));
 
 		seq_printf(m, "Display Interrupt Control:\t%08x\n",
-			   I915_READ(GEN11_DISPLAY_INT_CTL));
+			   intel_uncore_read(&dev_priv->uncore, GEN11_DISPLAY_INT_CTL));
 
 		gen8_display_interrupt_info(m);
 	} else if (INTEL_GEN(dev_priv) >= 8) {
 		seq_printf(m, "Master Interrupt Control:\t%08x\n",
-			   I915_READ(GEN8_MASTER_IRQ));
+			   intel_uncore_read(&dev_priv->uncore, GEN8_MASTER_IRQ));
 
 		for (i = 0; i < 4; i++) {
 			seq_printf(m, "GT Interrupt IMR %d:\t%08x\n",
-				   i, I915_READ(GEN8_GT_IMR(i)));
+				   i, intel_uncore_read(&dev_priv->uncore, GEN8_GT_IMR(i)));
 			seq_printf(m, "GT Interrupt IIR %d:\t%08x\n",
-				   i, I915_READ(GEN8_GT_IIR(i)));
+				   i, intel_uncore_read(&dev_priv->uncore, GEN8_GT_IIR(i)));
 			seq_printf(m, "GT Interrupt IER %d:\t%08x\n",
-				   i, I915_READ(GEN8_GT_IER(i)));
+				   i, intel_uncore_read(&dev_priv->uncore, GEN8_GT_IER(i)));
 		}
 
 		gen8_display_interrupt_info(m);
@@ -539,13 +539,13 @@ static int i915_interrupt_info(struct seq_file *m, void *data)
 		intel_wakeref_t pref;
 
 		seq_printf(m, "Display IER:\t%08x\n",
-			   I915_READ(VLV_IER));
+			   intel_uncore_read(&dev_priv->uncore, VLV_IER));
 		seq_printf(m, "Display IIR:\t%08x\n",
-			   I915_READ(VLV_IIR));
+			   intel_uncore_read(&dev_priv->uncore, VLV_IIR));
 		seq_printf(m, "Display IIR_RW:\t%08x\n",
-			   I915_READ(VLV_IIR_RW));
+			   intel_uncore_read(&dev_priv->uncore, VLV_IIR_RW));
 		seq_printf(m, "Display IMR:\t%08x\n",
-			   I915_READ(VLV_IMR));
+			   intel_uncore_read(&dev_priv->uncore, VLV_IMR));
 		for_each_pipe(dev_priv, pipe) {
 			enum intel_display_power_domain power_domain;
 
@@ -560,87 +560,87 @@ static int i915_interrupt_info(struct seq_file *m, void *data)
 
 			seq_printf(m, "Pipe %c stat:\t%08x\n",
 				   pipe_name(pipe),
-				   I915_READ(PIPESTAT(pipe)));
+				   intel_uncore_read(&dev_priv->uncore, PIPESTAT(pipe)));
 			intel_display_power_put(dev_priv, power_domain, pref);
 		}
 
 		seq_printf(m, "Master IER:\t%08x\n",
-			   I915_READ(VLV_MASTER_IER));
+			   intel_uncore_read(&dev_priv->uncore, VLV_MASTER_IER));
 
 		seq_printf(m, "Render IER:\t%08x\n",
-			   I915_READ(GTIER));
+			   intel_uncore_read(&dev_priv->uncore, GTIER));
 		seq_printf(m, "Render IIR:\t%08x\n",
-			   I915_READ(GTIIR));
+			   intel_uncore_read(&dev_priv->uncore, GTIIR));
 		seq_printf(m, "Render IMR:\t%08x\n",
-			   I915_READ(GTIMR));
+			   intel_uncore_read(&dev_priv->uncore, GTIMR));
 
 		seq_printf(m, "PM IER:\t\t%08x\n",
-			   I915_READ(GEN6_PMIER));
+			   intel_uncore_read(&dev_priv->uncore, GEN6_PMIER));
 		seq_printf(m, "PM IIR:\t\t%08x\n",
-			   I915_READ(GEN6_PMIIR));
+			   intel_uncore_read(&dev_priv->uncore, GEN6_PMIIR));
 		seq_printf(m, "PM IMR:\t\t%08x\n",
-			   I915_READ(GEN6_PMIMR));
+			   intel_uncore_read(&dev_priv->uncore, GEN6_PMIMR));
 
 		pref = intel_display_power_get(dev_priv, POWER_DOMAIN_INIT);
 		seq_printf(m, "Port hotplug:\t%08x\n",
-			   I915_READ(PORT_HOTPLUG_EN));
+			   intel_uncore_read(&dev_priv->uncore, PORT_HOTPLUG_EN));
 		seq_printf(m, "DPFLIPSTAT:\t%08x\n",
-			   I915_READ(VLV_DPFLIPSTAT));
+			   intel_uncore_read(&dev_priv->uncore, VLV_DPFLIPSTAT));
 		seq_printf(m, "DPINVGTT:\t%08x\n",
-			   I915_READ(DPINVGTT));
+			   intel_uncore_read(&dev_priv->uncore, DPINVGTT));
 		intel_display_power_put(dev_priv, POWER_DOMAIN_INIT, pref);
 
 	} else if (!HAS_PCH_SPLIT(dev_priv)) {
 		seq_printf(m, "Interrupt enable:    %08x\n",
-			   I915_READ(GEN2_IER));
+			   intel_uncore_read(&dev_priv->uncore, GEN2_IER));
 		seq_printf(m, "Interrupt identity:  %08x\n",
-			   I915_READ(GEN2_IIR));
+			   intel_uncore_read(&dev_priv->uncore, GEN2_IIR));
 		seq_printf(m, "Interrupt mask:      %08x\n",
-			   I915_READ(GEN2_IMR));
+			   intel_uncore_read(&dev_priv->uncore, GEN2_IMR));
 		for_each_pipe(dev_priv, pipe)
 			seq_printf(m, "Pipe %c stat:         %08x\n",
 				   pipe_name(pipe),
-				   I915_READ(PIPESTAT(pipe)));
+				   intel_uncore_read(&dev_priv->uncore, PIPESTAT(pipe)));
 	} else {
 		seq_printf(m, "North Display Interrupt enable:		%08x\n",
-			   I915_READ(DEIER));
+			   intel_uncore_read(&dev_priv->uncore, DEIER));
 		seq_printf(m, "North Display Interrupt identity:	%08x\n",
-			   I915_READ(DEIIR));
+			   intel_uncore_read(&dev_priv->uncore, DEIIR));
 		seq_printf(m, "North Display Interrupt mask:		%08x\n",
-			   I915_READ(DEIMR));
+			   intel_uncore_read(&dev_priv->uncore, DEIMR));
 		seq_printf(m, "South Display Interrupt enable:		%08x\n",
-			   I915_READ(SDEIER));
+			   intel_uncore_read(&dev_priv->uncore, SDEIER));
 		seq_printf(m, "South Display Interrupt identity:	%08x\n",
-			   I915_READ(SDEIIR));
+			   intel_uncore_read(&dev_priv->uncore, SDEIIR));
 		seq_printf(m, "South Display Interrupt mask:		%08x\n",
-			   I915_READ(SDEIMR));
+			   intel_uncore_read(&dev_priv->uncore, SDEIMR));
 		seq_printf(m, "Graphics Interrupt enable:		%08x\n",
-			   I915_READ(GTIER));
+			   intel_uncore_read(&dev_priv->uncore, GTIER));
 		seq_printf(m, "Graphics Interrupt identity:		%08x\n",
-			   I915_READ(GTIIR));
+			   intel_uncore_read(&dev_priv->uncore, GTIIR));
 		seq_printf(m, "Graphics Interrupt mask:		%08x\n",
-			   I915_READ(GTIMR));
+			   intel_uncore_read(&dev_priv->uncore, GTIMR));
 	}
 
 	if (INTEL_GEN(dev_priv) >= 11) {
 		seq_printf(m, "RCS Intr Mask:\t %08x\n",
-			   I915_READ(GEN11_RCS0_RSVD_INTR_MASK));
+			   intel_uncore_read(&dev_priv->uncore, GEN11_RCS0_RSVD_INTR_MASK));
 		seq_printf(m, "BCS Intr Mask:\t %08x\n",
-			   I915_READ(GEN11_BCS_RSVD_INTR_MASK));
+			   intel_uncore_read(&dev_priv->uncore, GEN11_BCS_RSVD_INTR_MASK));
 		seq_printf(m, "VCS0/VCS1 Intr Mask:\t %08x\n",
-			   I915_READ(GEN11_VCS0_VCS1_INTR_MASK));
+			   intel_uncore_read(&dev_priv->uncore, GEN11_VCS0_VCS1_INTR_MASK));
 		seq_printf(m, "VCS2/VCS3 Intr Mask:\t %08x\n",
-			   I915_READ(GEN11_VCS2_VCS3_INTR_MASK));
+			   intel_uncore_read(&dev_priv->uncore, GEN11_VCS2_VCS3_INTR_MASK));
 		seq_printf(m, "VECS0/VECS1 Intr Mask:\t %08x\n",
-			   I915_READ(GEN11_VECS0_VECS1_INTR_MASK));
+			   intel_uncore_read(&dev_priv->uncore, GEN11_VECS0_VECS1_INTR_MASK));
 		seq_printf(m, "GUC/SG Intr Mask:\t %08x\n",
-			   I915_READ(GEN11_GUC_SG_INTR_MASK));
+			   intel_uncore_read(&dev_priv->uncore, GEN11_GUC_SG_INTR_MASK));
 		seq_printf(m, "GPM/WGBOXPERF Intr Mask: %08x\n",
-			   I915_READ(GEN11_GPM_WGBOXPERF_INTR_MASK));
+			   intel_uncore_read(&dev_priv->uncore, GEN11_GPM_WGBOXPERF_INTR_MASK));
 		seq_printf(m, "Crypto Intr Mask:\t %08x\n",
-			   I915_READ(GEN11_CRYPTO_RSVD_INTR_MASK));
+			   intel_uncore_read(&dev_priv->uncore, GEN11_CRYPTO_RSVD_INTR_MASK));
 		seq_printf(m, "Gunit/CSME Intr Mask:\t %08x\n",
-			   I915_READ(GEN11_GUNIT_CSME_INTR_MASK));
+			   intel_uncore_read(&dev_priv->uncore, GEN11_GUNIT_CSME_INTR_MASK));
 
 	} else if (INTEL_GEN(dev_priv) >= 6) {
 		for_each_uabi_engine(engine, dev_priv) {
@@ -802,7 +802,7 @@ static int i915_frequency_info(struct seq_file *m, void *unused)
 	} else if (IS_VALLEYVIEW(dev_priv) || IS_CHERRYVIEW(dev_priv)) {
 		u32 rpmodectl, freq_sts;
 
-		rpmodectl = I915_READ(GEN6_RP_CONTROL);
+		rpmodectl = intel_uncore_read(&dev_priv->uncore, GEN6_RP_CONTROL);
 		seq_printf(m, "Video Turbo Mode: %s\n",
 			   yesno(rpmodectl & GEN6_RP_MEDIA_TURBO));
 		seq_printf(m, "HW control enabled: %s\n",
@@ -847,19 +847,19 @@ static int i915_frequency_info(struct seq_file *m, void *unused)
 		u32 pm_ier, pm_imr, pm_isr, pm_iir, pm_mask;
 		int max_freq;
 
-		rp_state_limits = I915_READ(GEN6_RP_STATE_LIMITS);
+		rp_state_limits = intel_uncore_read(&dev_priv->uncore, GEN6_RP_STATE_LIMITS);
 		if (IS_GEN9_LP(dev_priv)) {
-			rp_state_cap = I915_READ(BXT_RP_STATE_CAP);
-			gt_perf_status = I915_READ(BXT_GT_PERF_STATUS);
+			rp_state_cap = intel_uncore_read(&dev_priv->uncore, BXT_RP_STATE_CAP);
+			gt_perf_status = intel_uncore_read(&dev_priv->uncore, BXT_GT_PERF_STATUS);
 		} else {
-			rp_state_cap = I915_READ(GEN6_RP_STATE_CAP);
-			gt_perf_status = I915_READ(GEN6_GT_PERF_STATUS);
+			rp_state_cap = intel_uncore_read(&dev_priv->uncore, GEN6_RP_STATE_CAP);
+			gt_perf_status = intel_uncore_read(&dev_priv->uncore, GEN6_GT_PERF_STATUS);
 		}
 
 		/* RPSTAT1 is in the GT power well */
 		intel_uncore_forcewake_get(&dev_priv->uncore, FORCEWAKE_ALL);
 
-		reqf = I915_READ(GEN6_RPNSWREQ);
+		reqf = intel_uncore_read(&dev_priv->uncore, GEN6_RPNSWREQ);
 		if (INTEL_GEN(dev_priv) >= 9)
 			reqf >>= 23;
 		else {
@@ -871,24 +871,24 @@ static int i915_frequency_info(struct seq_file *m, void *unused)
 		}
 		reqf = intel_gpu_freq(rps, reqf);
 
-		rpmodectl = I915_READ(GEN6_RP_CONTROL);
-		rpinclimit = I915_READ(GEN6_RP_UP_THRESHOLD);
-		rpdeclimit = I915_READ(GEN6_RP_DOWN_THRESHOLD);
-
-		rpstat = I915_READ(GEN6_RPSTAT1);
-		rpupei = I915_READ(GEN6_RP_CUR_UP_EI) & GEN6_CURICONT_MASK;
-		rpcurup = I915_READ(GEN6_RP_CUR_UP) & GEN6_CURBSYTAVG_MASK;
-		rpprevup = I915_READ(GEN6_RP_PREV_UP) & GEN6_CURBSYTAVG_MASK;
-		rpdownei = I915_READ(GEN6_RP_CUR_DOWN_EI) & GEN6_CURIAVG_MASK;
-		rpcurdown = I915_READ(GEN6_RP_CUR_DOWN) & GEN6_CURBSYTAVG_MASK;
-		rpprevdown = I915_READ(GEN6_RP_PREV_DOWN) & GEN6_CURBSYTAVG_MASK;
+		rpmodectl = intel_uncore_read(&dev_priv->uncore, GEN6_RP_CONTROL);
+		rpinclimit = intel_uncore_read(&dev_priv->uncore, GEN6_RP_UP_THRESHOLD);
+		rpdeclimit = intel_uncore_read(&dev_priv->uncore, GEN6_RP_DOWN_THRESHOLD);
+
+		rpstat = intel_uncore_read(&dev_priv->uncore, GEN6_RPSTAT1);
+		rpupei = intel_uncore_read(&dev_priv->uncore, GEN6_RP_CUR_UP_EI) & GEN6_CURICONT_MASK;
+		rpcurup = intel_uncore_read(&dev_priv->uncore, GEN6_RP_CUR_UP) & GEN6_CURBSYTAVG_MASK;
+		rpprevup = intel_uncore_read(&dev_priv->uncore, GEN6_RP_PREV_UP) & GEN6_CURBSYTAVG_MASK;
+		rpdownei = intel_uncore_read(&dev_priv->uncore, GEN6_RP_CUR_DOWN_EI) & GEN6_CURIAVG_MASK;
+		rpcurdown = intel_uncore_read(&dev_priv->uncore, GEN6_RP_CUR_DOWN) & GEN6_CURBSYTAVG_MASK;
+		rpprevdown = intel_uncore_read(&dev_priv->uncore, GEN6_RP_PREV_DOWN) & GEN6_CURBSYTAVG_MASK;
 		cagf = intel_rps_read_actual_frequency(rps);
 
 		intel_uncore_forcewake_put(&dev_priv->uncore, FORCEWAKE_ALL);
 
 		if (INTEL_GEN(dev_priv) >= 11) {
-			pm_ier = I915_READ(GEN11_GPM_WGBOXPERF_INTR_ENABLE);
-			pm_imr = I915_READ(GEN11_GPM_WGBOXPERF_INTR_MASK);
+			pm_ier = intel_uncore_read(&dev_priv->uncore, GEN11_GPM_WGBOXPERF_INTR_ENABLE);
+			pm_imr = intel_uncore_read(&dev_priv->uncore, GEN11_GPM_WGBOXPERF_INTR_MASK);
 			/*
 			 * The equivalent to the PM ISR & IIR cannot be read
 			 * without affecting the current state of the system
@@ -896,17 +896,17 @@ static int i915_frequency_info(struct seq_file *m, void *unused)
 			pm_isr = 0;
 			pm_iir = 0;
 		} else if (INTEL_GEN(dev_priv) >= 8) {
-			pm_ier = I915_READ(GEN8_GT_IER(2));
-			pm_imr = I915_READ(GEN8_GT_IMR(2));
-			pm_isr = I915_READ(GEN8_GT_ISR(2));
-			pm_iir = I915_READ(GEN8_GT_IIR(2));
+			pm_ier = intel_uncore_read(&dev_priv->uncore, GEN8_GT_IER(2));
+			pm_imr = intel_uncore_read(&dev_priv->uncore, GEN8_GT_IMR(2));
+			pm_isr = intel_uncore_read(&dev_priv->uncore, GEN8_GT_ISR(2));
+			pm_iir = intel_uncore_read(&dev_priv->uncore, GEN8_GT_IIR(2));
 		} else {
-			pm_ier = I915_READ(GEN6_PMIER);
-			pm_imr = I915_READ(GEN6_PMIMR);
-			pm_isr = I915_READ(GEN6_PMISR);
-			pm_iir = I915_READ(GEN6_PMIIR);
+			pm_ier = intel_uncore_read(&dev_priv->uncore, GEN6_PMIER);
+			pm_imr = intel_uncore_read(&dev_priv->uncore, GEN6_PMIMR);
+			pm_isr = intel_uncore_read(&dev_priv->uncore, GEN6_PMISR);
+			pm_iir = intel_uncore_read(&dev_priv->uncore, GEN6_PMIIR);
 		}
-		pm_mask = I915_READ(GEN6_PMINTRMSK);
+		pm_mask = intel_uncore_read(&dev_priv->uncore, GEN6_PMINTRMSK);
 
 		seq_printf(m, "Video Turbo Mode: %s\n",
 			   yesno(rpmodectl & GEN6_RP_MEDIA_TURBO));
@@ -1540,7 +1540,7 @@ i915_cache_sharing_get(void *data, u64 *val)
 		return -ENODEV;
 
 	with_intel_runtime_pm(&dev_priv->runtime_pm, wakeref)
-		snpcr = I915_READ(GEN6_MBCUNIT_SNPCR);
+		snpcr = intel_uncore_read(&dev_priv->uncore, GEN6_MBCUNIT_SNPCR);
 
 	*val = (snpcr & GEN6_MBC_SNPCR_MASK) >> GEN6_MBC_SNPCR_SHIFT;
 
-- 
2.20.1

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
