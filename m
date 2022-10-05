Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 396345F5967
	for <lists+intel-gfx@lfdr.de>; Wed,  5 Oct 2022 19:55:22 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id A4CDC10E731;
	Wed,  5 Oct 2022 17:55:15 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
 by gabe.freedesktop.org (Postfix) with ESMTPS id BB9C010E1EE
 for <intel-gfx@lists.freedesktop.org>; Wed,  5 Oct 2022 17:55:07 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1664992507; x=1696528507;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=jFo6o32wf/2sjIwFjVIS7jxmKltOz/Oiq/33Hm3X8sU=;
 b=QhZvLp1BlsZ1RgJAeBiPfN92msvXU4s4x8aXCiQKX/6jl9tQsDlttgFZ
 +P3p32UbgeV+eeQXyApmMKUrrpAk6KHyCdG2Q0gKCHyo+t5iutuR57A37
 HQrWwBhUtiftze4bQf8oGAYby3HjtwA5BiZkWdmBdpJWug24sMGwg57yY
 5DKzdN3BpM4JjInr/yN2YqmJY8u2FaqQCdriAY529+3Wq17L4qFQhhCE0
 d2Q276Nm4Lyg9ddTvlyFLpXaB9yCx6xN0XrN4h6gTrggM5hF0/FuSfFNU
 eZpR1rqek3HDWt8crroZKugIw+1sdptfZ5wtDizhVAXkzHByNQ4NBsRhe g==;
X-IronPort-AV: E=McAfee;i="6500,9779,10491"; a="304210428"
X-IronPort-AV: E=Sophos;i="5.95,161,1661842800"; d="scan'208";a="304210428"
Received: from fmsmga008.fm.intel.com ([10.253.24.58])
 by orsmga102.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 05 Oct 2022 10:52:56 -0700
X-IronPort-AV: E=McAfee;i="6500,9779,10491"; a="687055891"
X-IronPort-AV: E=Sophos;i="5.95,161,1661842800"; d="scan'208";a="687055891"
Received: from ideak-desk.fi.intel.com ([10.237.72.175])
 by fmsmga008-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 05 Oct 2022 10:52:55 -0700
From: Imre Deak <imre.deak@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Wed,  5 Oct 2022 20:52:51 +0300
Message-Id: <20221005175251.3586272-2-imre.deak@intel.com>
X-Mailer: git-send-email 2.31.1.189.g2e36527f23
In-Reply-To: <20221005175251.3586272-1-imre.deak@intel.com>
References: <20221005175251.3586272-1-imre.deak@intel.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH 2/2] drm/i915: Suspend/resume encoders during
 GPU reset
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

The GPU reset involves a display suspend/resume sequence, but this is
done without suspending/resuming the encoders. The encoder HW readout
code during resume however assumes that the encoders were
suspended/resumed, at least on TypeC platforms where the TC PHYs must be
left in a disconnected state during encoder-suspend, and the PHY's TypeC
mode must be initialized already during encoder-resume.

Fix the above by suspending/resuming the encoders during GPU reset on
all platforms, which also fixes the WARN below introduced by

commit a82796a2e332 ("drm/i915: Fix TypeC mode initialization during system resume")

<4> [319.983309] ------------[ cut here ]------------
<4> [319.983313] i915 0000:00:02.0: drm_WARN_ON(dig_port->tc_link_refcount != 1)
<4> [319.983341] WARNING: CPU: 10 PID: 268 at drivers/gpu/drm/i915/display/intel_tc.c:751 intel_tc_port_sanitize_mode+0x239/0x290 [i915]
<4> [319.983407] Modules linked in: fuse snd_hda_codec_hdmi i915 x86_pkg_temp_thermal mei_hdcp coretemp wmi_bmof r8153_ecm cdc_ether kvm_intel usbnet r8152 mii kvm prime_numbers snd_hda_intel ttm snd_intel_dspcfg irqbypass drm_buddy e1000e crct10dif_pclmul snd_hda_codec crc32_pclmul drm_display_helper ptp snd_hwdep ghash_clmulni_intel snd_hda_core drm_kms_helper pps_core mei_me syscopyarea video i2c_i801 snd_pcm sysfillrect i2c_smbus sysimgblt mei fb_sys_fops intel_lpss_pci wmi
<4> [319.983483] CPU: 10 PID: 268 Comm: kworker/10:1H Not tainted 6.0.0-rc7-CI_DRM_12200-g394e575b57e9+ #1
<4> [319.983486] Hardware name: Intel Corporation Alder Lake Client Platform/AlderLake-P LP5 RVP, BIOS ADLPFWI1.R00.2313.A00.2107301001 07/30/2021
<4> [319.983488] Workqueue: events_highpri heartbeat [i915]
<4> [319.983536] RIP: 0010:intel_tc_port_sanitize_mode+0x239/0x290 [i915]
<4> [319.983600] Code: 85 d2 75 03 48 8b 17 48 89 14 24 e8 e1 dc 2d e1 48 8b 14 24 48 c7 c1 f8 db 5b a0 48 c7 c7 3e 3c 5e a0 48 89 c6 e8 45 d7 66 e1 <0f> 0b e9 20 fe ff ff 0f 0b 49 c7 c0 8b 3c 5e a0 e9 9e fe ff ff 48
<4> [319.983601] RSP: 0018:ffffc90001617a30 EFLAGS: 00010286
<4> [319.983604] RAX: 0000000000000000 RBX: ffff88811f9d2000 RCX: 0000000000000001
<4> [319.983606] RDX: 0000000080000001 RSI: ffffffff8231e8cd RDI: 00000000ffffffff
<4> [319.983607] RBP: ffff888121e98000 R08: 0000000000000000 R09: c0000000ffffc134
<4> [319.983608] R10: 00000000000d6078 R11: ffffc900016178c8 R12: ffff88811f9d3838
<4> [319.983609] R13: ffff88811f9d397d R14: ffff888121e98000 R15: 0000000000000000
<4> [319.983611] FS:  0000000000000000(0000) GS:ffff8882a7300000(0000) knlGS:0000000000000000
<4> [319.983612] CS:  0010 DS: 0000 ES: 0000 CR0: 0000000080050033
<4> [319.983613] CR2: 00007fe7397f1e18 CR3: 0000000006612003 CR4: 0000000000770ee0
<4> [319.983615] PKRU: 55555554
<4> [319.983616] Call Trace:
<4> [319.983617]  <TASK>
<4> [319.983621]  intel_ddi_sync_state+0x3f/0x90 [i915]
<4> [319.983698]  intel_modeset_setup_hw_state+0x3a3/0x1440 [i915]
<4> [319.983777]  ? intel_gt_reset_global+0xeb/0x160 [i915]
<4> [319.983839]  ? __intel_display_resume+0x15/0xe0 [i915]
<4> [319.983909]  __intel_display_resume+0x15/0xe0 [i915]
<4> [319.983979]  intel_display_finish_reset+0x58/0x130 [i915]
<4> [319.984048]  intel_gt_reset_global+0xf3/0x160 [i915]
<4> [319.984107]  ? intel_reset_guc.cold.62+0x5d/0x5d [i915]
<4> [319.984189]  ? 0xffffffff81000000
<4> [319.984192]  ? queue_work_node+0x90/0x90
<4> [319.984202]  intel_gt_handle_error+0x2c2/0x410 [i915]
<4> [319.984267]  ? _raw_spin_unlock_irqrestore+0x54/0x70
<4> [319.984271]  ? lockdep_hardirqs_on+0xbf/0x140
<4> [319.984276]  ? intel_guc_find_hung_context+0x19e/0x1d0 [i915]
<4> [319.984352]  reset_engine+0x99/0xd0 [i915]
<4> [319.984399]  ? __drm_printfn_seq_file+0x20/0x20
<4> [319.984406]  heartbeat+0x4cd/0x4f0 [i915]
<4> [319.984454]  process_one_work+0x272/0x5b0
<4> [319.984461]  worker_thread+0x37/0x370
<4> [319.984465]  ? process_one_work+0x5b0/0x5b0
<4> [319.984467]  kthread+0xed/0x120
<4> [319.984470]  ? kthread_complete_and_exit+0x20/0x20
<4> [319.984474]  ret_from_fork+0x1f/0x30
<4> [319.984484]  </TASK>
<4> [319.984485] irq event stamp: 36107
<4> [319.984487] hardirqs last  enabled at (36113): [<ffffffff811391d6>] __up_console_sem+0x66/0x70
<4> [319.984492] hardirqs last disabled at (36118): [<ffffffff811391bb>] __up_console_sem+0x4b/0x70
<4> [319.984494] softirqs last  enabled at (34316): [<ffffffff81e00323>] __do_softirq+0x323/0x48e
<4> [319.984497] softirqs last disabled at (34309): [<ffffffff810c16b8>] irq_exit_rcu+0xb8/0xe0
<4> [319.984499] ---[ end trace 0000000000000000 ]---

Closes: https://gitlab.freedesktop.org/drm/intel/issues/7021
Cc: Mika Kahola <mika.kahola@intel.com>
Signed-off-by: Imre Deak <imre.deak@intel.com>
---
 drivers/gpu/drm/i915/display/intel_display.c |  7 +++++++
 drivers/gpu/drm/i915/i915_driver.c           | 20 +++++++++++++-------
 drivers/gpu/drm/i915/i915_driver.h           |  2 ++
 3 files changed, 22 insertions(+), 7 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_display.c b/drivers/gpu/drm/i915/display/intel_display.c
index 8d2cb4904f965..48373cce769cd 100644
--- a/drivers/gpu/drm/i915/display/intel_display.c
+++ b/drivers/gpu/drm/i915/display/intel_display.c
@@ -75,6 +75,7 @@
 #include "g4x_dp.h"
 #include "g4x_hdmi.h"
 #include "hsw_ips.h"
+#include "i915_driver.h"
 #include "i915_drv.h"
 #include "i915_utils.h"
 #include "icl_dsi.h"
@@ -881,6 +882,7 @@ void intel_display_prepare_reset(struct drm_i915_private *dev_priv)
 	struct drm_device *dev = &dev_priv->drm;
 	struct drm_modeset_acquire_ctx *ctx = &dev_priv->reset_ctx;
 	struct drm_atomic_state *state;
+	intel_wakeref_t wakeref;
 	int ret;
 
 	if (!HAS_DISPLAY(dev_priv))
@@ -937,6 +939,9 @@ void intel_display_prepare_reset(struct drm_i915_private *dev_priv)
 
 	dev_priv->modeset_restore_state = state;
 	state->acquire_ctx = ctx;
+
+	with_intel_display_power(dev_priv, POWER_DOMAIN_INIT, wakeref)
+		i915_driver_suspend_encoders(dev_priv);
 }
 
 void intel_display_finish_reset(struct drm_i915_private *i915)
@@ -961,6 +966,7 @@ void intel_display_finish_reset(struct drm_i915_private *i915)
 
 	/* reset doesn't touch the display */
 	if (!gpu_reset_clobbers_display(i915)) {
+		drm_mode_config_reset(&i915->drm);
 		/* for testing only restore the display */
 		ret = __intel_display_resume(i915, state, ctx);
 		if (ret)
@@ -972,6 +978,7 @@ void intel_display_finish_reset(struct drm_i915_private *i915)
 		 * so need a full re-initialization.
 		 */
 		intel_pps_unlock_regs_wa(i915);
+		drm_mode_config_reset(&i915->drm);
 		intel_modeset_init_hw(i915);
 		intel_init_clock_gating(i915);
 		intel_hpd_init(i915);
diff --git a/drivers/gpu/drm/i915/i915_driver.c b/drivers/gpu/drm/i915/i915_driver.c
index fb3826dabe8b6..59c18010e08a3 100644
--- a/drivers/gpu/drm/i915/i915_driver.c
+++ b/drivers/gpu/drm/i915/i915_driver.c
@@ -1091,18 +1091,24 @@ static void i915_driver_postclose(struct drm_device *dev, struct drm_file *file)
 	i915_gem_flush_free_objects(to_i915(dev));
 }
 
-static void intel_suspend_encoders(struct drm_i915_private *dev_priv)
+void i915_driver_suspend_encoders(struct drm_i915_private *i915)
 {
-	struct drm_device *dev = &dev_priv->drm;
 	struct intel_encoder *encoder;
 
-	if (!HAS_DISPLAY(dev_priv))
-		return;
-
-	drm_modeset_lock_all(dev);
-	for_each_intel_encoder(dev, encoder)
+	for_each_intel_encoder(&i915->drm, encoder)
 		if (encoder->suspend)
 			encoder->suspend(encoder);
+}
+
+static void intel_suspend_encoders(struct drm_i915_private *dev_priv)
+{
+	struct drm_device *dev = &dev_priv->drm;
+
+	if (!HAS_DISPLAY(dev_priv))
+		return;
+
+	drm_modeset_lock_all(dev);
+	i915_driver_suspend_encoders(dev_priv);
 	drm_modeset_unlock_all(dev);
 }
 
diff --git a/drivers/gpu/drm/i915/i915_driver.h b/drivers/gpu/drm/i915/i915_driver.h
index 44ec543d92cb3..20a66ad9d9ca4 100644
--- a/drivers/gpu/drm/i915/i915_driver.h
+++ b/drivers/gpu/drm/i915/i915_driver.h
@@ -27,6 +27,8 @@ void i915_driver_shutdown(struct drm_i915_private *i915);
 int i915_driver_resume_switcheroo(struct drm_i915_private *i915);
 int i915_driver_suspend_switcheroo(struct drm_i915_private *i915, pm_message_t state);
 
+void i915_driver_suspend_encoders(struct drm_i915_private *i915);
+
 void
 i915_print_iommu_status(struct drm_i915_private *i915, struct drm_printer *p);
 
-- 
2.37.1

