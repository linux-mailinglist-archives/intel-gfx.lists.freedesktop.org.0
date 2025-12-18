Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 8DC3BCCCCBB
	for <lists+intel-gfx@lfdr.de>; Thu, 18 Dec 2025 17:33:53 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 177D410EA6C;
	Thu, 18 Dec 2025 16:33:52 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=lankhorst.se header.i=@lankhorst.se header.b="G24aJbNy";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from lankhorst.se (lankhorst.se [141.105.120.124])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 1361210EA6D;
 Thu, 18 Dec 2025 16:33:51 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=lankhorst.se;
 s=default; t=1766075630;
 bh=M8v4rhL5ujGYhLkFQbUx2hdoGJw/+KdmooDXrLZhogk=;
 h=From:To:Subject:Date:In-Reply-To:References:From;
 b=G24aJbNy6vfMDPmcu1z3YI+4SeBRM+a++eVsxYDF8PUdOlZmx7SeDxE1+hkWLLSC+
 zS/Pl9uXd4XYuWA/3LePUO7RK+msFz588BIdRZqotqwbx11N8Tn8yTIbQNdS0ZALaF
 OE6/ukLUE/BFmonUyUd4+xjdXFBtCLAJrh2EU7chsBlB8xaAr/Z64z57hyuNscUNyc
 IObRaWY+EHikspF8fknRFytUU7fNfko4l0yeXjbyPPNWaOcQk3V07jYUSCYx34XCfc
 DQvgvMWFFT03I7P23B84k6AA07WI01xbUtBojZXydmt5ltwv+gzmbN13wAxFT0C0Y0
 sBT1BertXf5RQ==
From: Maarten Lankhorst <dev@lankhorst.se>
To: intel-xe@lists.freedesktop.org,
	intel-gfx@lists.freedesktop.org
Subject: [i915-rt v4 12/20] drm/i915/display: Use intel_de_read_fw in colorops
Date: Thu, 18 Dec 2025 17:34:00 +0100
Message-ID: <20251218163408.97508-13-dev@lankhorst.se>
X-Mailer: git-send-email 2.51.0
In-Reply-To: <20251218163408.97508-1-dev@lankhorst.se>
References: <20251218163408.97508-1-dev@lankhorst.se>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
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

This fixes a module load error on PTL:

<4> [363.690050] Call Trace:
<4> [363.690052]  <TASK>
<4> [363.690055]  dump_stack_lvl+0x91/0xf0
<4> [363.690067]  dump_stack+0x10/0x20
<4> [363.690074]  __might_resched+0x174/0x260
<4> [363.690087]  rt_spin_lock+0x63/0x200
<4> [363.690092]  ? intel_dmc_wl_get+0x3c/0x140 [xe]
<4> [363.690470]  ? __lock_acquire+0x1195/0x2860
<4> [363.690487]  intel_dmc_wl_get+0x3c/0x140 [xe]
<4> [363.690842]  intel_color_plane_commit_arm+0xbc/0x140 [xe]
<4> [363.691246]  icl_plane_update_arm+0x23f/0x280 [xe]
<4> [363.691605]  intel_plane_update_arm+0x74/0x170 [xe]
<4> [363.691970]  intel_crtc_planes_update_arm+0x3cb/0x4c0 [xe]
<4> [363.692338]  intel_update_crtc+0x1c3/0x840 [xe]
<4> [363.692742]  ? intel_pre_update_crtc+0x2ce/0x470 [xe]
<4> [363.693125]  ? intel_enable_crtc+0x123/0x150 [xe]
<4> [363.693508]  skl_commit_modeset_enables+0x4c4/0x720 [xe]
<4> [363.693888]  intel_atomic_commit_tail+0xd9d/0x1b30 [xe]
<4> [363.694274]  intel_atomic_commit+0x2e8/0x330 [xe]
<4> [363.694621]  ? intel_atomic_commit+0x2e8/0x330 [xe]
<4> [363.694956]  drm_atomic_commit+0xaf/0xf0
<4> [363.694962]  ? __pfx___drm_printfn_info+0x10/0x10
<4> [363.694978]  drm_client_modeset_commit_atomic+0x25c/0x2b0
<4> [363.695018]  drm_client_modeset_commit_locked+0x63/0x1b0
<4> [363.695029]  drm_client_modeset_commit+0x26/0x50
<4> [363.695035]  __drm_fb_helper_restore_fbdev_mode_unlocked+0xdc/0x110
<4> [363.695045]  drm_fb_helper_set_par+0x2f/0x50
<4> [363.695052]  intel_fbdev_set_par+0x39/0x90 [xe]
<4> [363.695365]  fbcon_init+0x283/0x680
<4> [363.695382]  visual_init+0xf2/0x190
<4> [363.695396]  do_bind_con_driver.isra.0+0x1f1/0x4c0
<4> [363.695416]  do_take_over_console+0x181/0x220
<4> [363.695422]  ? vprintk_default+0x1d/0x30
<4> [363.695436]  do_fbcon_takeover+0x85/0x160
<4> [363.695447]  do_fb_registered+0x24c/0x2b0
<4> [363.695460]  fbcon_fb_registered+0x3a/0x90
<4> [363.695469]  do_register_framebuffer+0x216/0x320
<4> [363.695488]  register_framebuffer+0x23/0x50
<4> [363.695494]  __drm_fb_helper_initial_config_and_unlock+0x3ea/0x670
<4> [363.695502]  ? trace_hardirqs_on+0x1e/0xd0
<4> [363.695526]  drm_fb_helper_initial_config+0x3f/0x50
<4> [363.695534]  drm_fbdev_client_hotplug+0x80/0xd0
<4> [363.695543]  drm_client_register+0x8a/0xe0
<4> [363.695556]  drm_fbdev_client_setup+0x127/0x1f0
<4> [363.695563]  drm_client_setup+0xa7/0xe0
<4> [363.695569]  drm_client_setup_with_color_mode+0x24/0x40
<4> [363.695575]  intel_fbdev_setup+0x1c6/0x510 [xe]
<4> [363.695857]  intel_display_driver_register+0xb5/0x100 [xe]
<4> [363.696188]  ? __pfx___drm_printfn_dbg+0x10/0x10
<4> [363.696194]  ? intel_display_driver_register+0x2e/0x100 [xe]
<4> [363.696515]  xe_display_register+0x29/0x40 [xe]
<4> [363.696858]  xe_device_probe+0x51a/0x9e0 [xe]
<4> [363.697102]  ? __drmm_add_action+0x98/0x110
<4> [363.697108]  ? __pfx___drmm_mutex_release+0x10/0x10
<4> [363.697116]  ? __drmm_add_action_or_reset+0x1e/0x50
<4> [363.697130]  xe_pci_probe+0x396/0x620 [xe]
<4> [363.697423]  local_pci_probe+0x47/0xb0
<4> [363.697431]  pci_device_probe+0xf3/0x260
<4> [363.697444]  really_probe+0xf1/0x3c0
<4> [363.697451]  __driver_probe_device+0x8c/0x180
<4> [363.697458]  driver_probe_device+0x24/0xd0
<4> [363.697464]  __driver_attach+0x10f/0x220
<4> [363.697468]  ? __pfx___driver_attach+0x10/0x10
<4> [363.697472]  bus_for_each_dev+0x7f/0xe0
<4> [363.697484]  driver_attach+0x1e/0x30
<4> [363.697487]  bus_add_driver+0x154/0x290
<4> [363.697498]  driver_register+0x5e/0x130
<4> [363.697504]  __pci_register_driver+0x84/0xa0
<4> [363.697509]  xe_register_pci_driver+0x23/0x30 [xe]
<4> [363.697762]  xe_init+0x2c/0x110 [xe]
<4> [363.698007]  ? __pfx_xe_init+0x10/0x10 [xe]
<4> [363.698239]  do_one_initcall+0x60/0x3f0
<4> [363.698250]  ? __kmalloc_cache_noprof+0x470/0x690
<4> [363.698267]  do_init_module+0x97/0x2b0
<4> [363.698275]  load_module+0x2d08/0x2e30
<4> [363.698280]  ? __kernel_read+0x164/0x310
<4> [363.698312]  ? kernel_read_file+0x2ca/0x340
<4> [363.698328]  init_module_from_file+0x96/0xe0
<4> [363.698330]  ? init_module_from_file+0x96/0xe0
<4> [363.698357]  idempotent_init_module+0x11d/0x340
<4> [363.698384]  __x64_sys_finit_module+0x73/0xe0
<4> [363.698393]  x64_sys_call+0x1e3d/0x26a0
<4> [363.698399]  do_syscall_64+0x93/0xab0
<4> [363.698413]  ? ext4_llseek+0xc3/0x130
<4> [363.698425]  ? ksys_lseek+0x55/0xd0
<4> [363.698438]  ? do_syscall_64+0x1b7/0xab0
<4> [363.698444]  ? switch_fpu_return+0xea/0x150
<4> [363.698454]  ? do_syscall_64+0x1b7/0xab0
<4> [363.698465]  ? kernfs_fop_read_iter+0x197/0x210
<4> [363.698470]  ? rw_verify_area+0x16f/0x200
<4> [363.698482]  ? vfs_read+0x22a/0x360
<4> [363.698498]  ? do_syscall_64+0x1b7/0xab0
<4> [363.698506]  ? ksys_read+0x72/0xf0
<4> [363.698520]  ? do_syscall_64+0x1b7/0xab0
<4> [363.698526]  ? do_syscall_64+0x1b7/0xab0
<4> [363.698532]  ? do_syscall_64+0x1b7/0xab0
<4> [363.698535]  ? exc_page_fault+0xbd/0x2c0
<4> [363.698545]  entry_SYSCALL_64_after_hwframe+0x76/0x7e
<4> [363.698549] RIP: 0033:0x715af255025d

Signed-off-by: Maarten Lankhorst <dev@lankhorst.se>
---
 drivers/gpu/drm/i915/display/intel_color.c | 4 ++--
 1 file changed, 2 insertions(+), 2 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_color.c b/drivers/gpu/drm/i915/display/intel_color.c
index e7950655434b8..d15f4e78ffa5e 100644
--- a/drivers/gpu/drm/i915/display/intel_color.c
+++ b/drivers/gpu/drm/i915/display/intel_color.c
@@ -4078,7 +4078,7 @@ static void glk_load_lut_3d(struct intel_dsb *dsb,
 	int i, lut_size = drm_color_lut32_size(blob);
 	enum pipe pipe = crtc->pipe;
 
-	if (!dsb && intel_de_read(display, LUT_3D_CTL(pipe)) & LUT_3D_READY) {
+	if (!dsb && intel_de_read_fw(display, LUT_3D_CTL(pipe)) & LUT_3D_READY) {
 		drm_err(display->drm, "[CRTC:%d:%s] 3D LUT not ready, not loading LUTs\n",
 			crtc->base.base.id, crtc->base.name);
 		return;
@@ -4096,7 +4096,7 @@ static void glk_lut_3d_commit(struct intel_dsb *dsb, struct intel_crtc *crtc, bo
 	enum pipe pipe = crtc->pipe;
 	u32 val = 0;
 
-	if (!dsb && intel_de_read(display, LUT_3D_CTL(pipe)) & LUT_3D_READY) {
+	if (!dsb && intel_de_read_fw(display, LUT_3D_CTL(pipe)) & LUT_3D_READY) {
 		drm_err(display->drm, "[CRTC:%d:%s] 3D LUT not ready, not committing change\n",
 			crtc->base.base.id, crtc->base.name);
 		return;
-- 
2.51.0

