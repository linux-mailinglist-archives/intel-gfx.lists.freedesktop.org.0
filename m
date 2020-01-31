Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 8DD9114F356
	for <lists+intel-gfx@lfdr.de>; Fri, 31 Jan 2020 21:48:54 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 627EB6E9FD;
	Fri, 31 Jan 2020 20:48:49 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (unknown [77.68.26.236])
 by gabe.freedesktop.org (Postfix) with ESMTPS id A15946E9F7
 for <intel-gfx@lists.freedesktop.org>; Fri, 31 Jan 2020 20:48:47 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from haswell.alporthouse.com (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP id 20077808-1500050 
 for multiple; Fri, 31 Jan 2020 20:48:30 +0000
From: Chris Wilson <chris@chris-wilson.co.uk>
To: intel-gfx@lists.freedesktop.org
Date: Fri, 31 Jan 2020 20:48:26 +0000
Message-Id: <20200131204829.3476668-1-chris@chris-wilson.co.uk>
X-Mailer: git-send-email 2.25.0
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH 1/4] drm/i915/display: Wake the power well
 during resume
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

Acquire the power well before writing the setup during resume so that
our mmio are not dropped. E.g. on Braswell we see,

<4> [135.959703] i915 0000:00:02.0: Unclaimed write to register 0x1e0100
<4> [135.959936] WARNING: CPU: 1 PID: 3085 at drivers/gpu/drm/i915/intel_uncore.c:1166 __unclaimed_reg_debug+0x69/0x80 [i915]
<4> [135.959944] Modules linked in: vgem snd_hda_codec_hdmi snd_hda_codec_realtek snd_hda_codec_generic i915 coretemp btusb crct10dif_pclmul btrtl crc32_pclmul btbcm btintel snd_hda_intel ghash_clmulni_intel snd_intel_dspcfg bluetooth snd_hda_codec snd_hwdep ecdh_generic ecc snd_hda_core r8169 realtek snd_pcm lpc_ich prime_numbers pinctrl_cherryview
<4> [135.960011] CPU: 1 PID: 3085 Comm: kworker/u4:5 Tainted: G     U            5.5.0-CI-CI_DRM_7849+ #1
<4> [135.960019] Hardware name:  /NUC5CPYB, BIOS PYBSWCEL.86A.0058.2016.1102.1842 11/02/2016
<4> [135.960033] Workqueue: events_unbound async_run_entry_fn
<4> [135.960189] RIP: 0010:__unclaimed_reg_debug+0x69/0x80 [i915]
<4> [135.960199] Code: 48 8b 78 18 48 8b 5f 50 48 85 db 74 2d e8 0f d1 43 e1 45 89 e8 48 89 e9 48 89 da 48 89 c6 48 c7 c7 58 4c 44 a0 e8 37 bd e3 e0 <0f> 0b 83 2d 7e cd 2b 00 01 5b 5d 41 5c 41 5d c3 48 8b 1f eb ce 66
<4> [135.960207] RSP: 0018:ffffc9000047bd08 EFLAGS: 00010082
<4> [135.960217] RAX: 0000000000000000 RBX: ffff88817a0edb60 RCX: 0000000000000003
<4> [135.960225] RDX: 0000000080000003 RSI: 0000000000000000 RDI: 00000000ffffffff
<4> [135.960232] RBP: ffffffffa0485e86 R08: 0000000000000000 R09: 0000000000000001
<4> [135.960240] R10: 00000000d3945727 R11: 000000009a92dbc6 R12: 0000000000000000
<4> [135.960248] R13: 00000000001e0100 R14: 0000000000000286 R15: ffffffff8234a213
<4> [135.960257] FS:  0000000000000000(0000) GS:ffff88817bd00000(0000) knlGS:0000000000000000
<4> [135.960264] CS:  0010 DS: 0000 ES: 0000 CR0: 0000000080050033
<4> [135.960272] CR2: 00007f2f0dab2778 CR3: 000000016f78c000 CR4: 00000000001006e0
<4> [135.960279] Call Trace:
<4> [135.960448]  fwtable_write32+0x114/0x1d0 [i915]
<4> [135.960633]  intel_power_domains_init_hw+0x4ff/0x650 [i915]
<4> [135.960821]  intel_power_domains_resume+0x3d/0x70 [i915]
<4> [135.960974]  i915_drm_resume_early+0x97/0xd0 [i915]

Closes: https://gitlab.freedesktop.org/drm/intel/issues/1089
Signed-off-by: Chris Wilson <chris@chris-wilson.co.uk>
Cc: Imre Deak <imre.deak@intel.com>
---
 .../gpu/drm/i915/display/intel_display_power.c | 18 +++++++++---------
 1 file changed, 9 insertions(+), 9 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_display_power.c b/drivers/gpu/drm/i915/display/intel_display_power.c
index 64943179c05e..99463356be03 100644
--- a/drivers/gpu/drm/i915/display/intel_display_power.c
+++ b/drivers/gpu/drm/i915/display/intel_display_power.c
@@ -5255,6 +5255,15 @@ void intel_power_domains_init_hw(struct drm_i915_private *i915, bool resume)
 	/* Must happen before power domain init on VLV/CHV */
 	intel_update_rawclk(i915);
 
+	/*
+	 * Keep all power wells enabled for any dependent HW access during
+	 * initialization and to make sure we keep BIOS enabled display HW
+	 * resources powered until display HW readout is complete. We drop
+	 * this reference in intel_power_domains_enable().
+	 */
+	power_domains->wakeref =
+		intel_display_power_get(i915, POWER_DOMAIN_INIT);
+
 	if (INTEL_GEN(i915) >= 11) {
 		icl_display_core_init(i915, resume);
 	} else if (IS_CANNONLAKE(i915)) {
@@ -5281,15 +5290,6 @@ void intel_power_domains_init_hw(struct drm_i915_private *i915, bool resume)
 		intel_pch_reset_handshake(i915, !HAS_PCH_NOP(i915));
 	}
 
-	/*
-	 * Keep all power wells enabled for any dependent HW access during
-	 * initialization and to make sure we keep BIOS enabled display HW
-	 * resources powered until display HW readout is complete. We drop
-	 * this reference in intel_power_domains_enable().
-	 */
-	power_domains->wakeref =
-		intel_display_power_get(i915, POWER_DOMAIN_INIT);
-
 	/* Disable power support if the user asked so. */
 	if (!i915_modparams.disable_power_well)
 		intel_display_power_get(i915, POWER_DOMAIN_INIT);
-- 
2.25.0

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
