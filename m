Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id U5M2NDFeMGq3SAUAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Mon, 15 Jun 2026 22:18:57 +0200
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 7E0A6689BF3
	for <lists+intel-gfx@lfdr.de>; Mon, 15 Jun 2026 22:18:57 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=lankhorst.se header.s=default header.b="g/VpS5W0";
	spf=pass (mail.lfdr.de: domain of intel-gfx-bounces@lists.freedesktop.org designates 131.252.210.177 as permitted sender) smtp.mailfrom=intel-gfx-bounces@lists.freedesktop.org;
	dmarc=pass (policy=none) header.from=lankhorst.se
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 0B24D10E646;
	Mon, 15 Jun 2026 20:18:43 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from lankhorst.se (unknown [141.105.120.124])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 598F610E65D;
 Mon, 15 Jun 2026 20:18:41 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=lankhorst.se;
 s=default; t=1781554720;
 bh=/Z0rHBfQ2RPiDNObOAdc6wP/4bNn6B17ebb9xTUmis8=;
 h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
 b=g/VpS5W0rESFTDEcOWbsy+M0j3ZrlEk1Db3w99lyuR9wwuqOY+V6oPepND/UDfHfy
 ydMuRfi5urFfZTzBvbLezW1D7HVEhLFn2/T2t1bFRY3xy60JEA3z17b37WSHhJCLi5
 wMvja9o5sg2j4UuZTeQPeMmY8smo9ioJA36w8tastfHTPVFBBUFzF8XJGB34ohpic7
 CMpM8zbH1LqD2Oca6kAIzlfd+Lwzn/wc/3IVPq4oFjE6ZYibzgMPYJmnEjgAFMh6pF
 Rj981kdSscgl5hOlWk5zbeMMJ6rWRnKbxO11nMaqfy+SvRC8tHeOxHtKbcTt+WwPps
 8Hdf+GoWmYDkQ==
From: Maarten Lankhorst <dev@lankhorst.se>
To: intel-xe@lists.freedesktop.org,
	intel-gfx@lists.freedesktop.org
Cc: dri-devel@lists.freedesktop.org, Maarten Lankhorst <dev@lankhorst.se>,
 Uma Shankar <uma.shankar@intel.com>
Subject: [PATCH v8 12/27] drm/i915/display: Use intel_de_read/write_fw in
 colorops
Date: Mon, 15 Jun 2026 22:18:30 +0200
Message-ID: <20260615201846.307297-13-dev@lankhorst.se>
X-Mailer: git-send-email 2.53.0
In-Reply-To: <20260615201846.307297-1-dev@lankhorst.se>
References: <20260615201846.307297-1-dev@lankhorst.se>
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
X-Rspamd-Action: no action
X-Spamd-Result: default: False [0.19 / 15.00];
	MID_CONTAINS_FROM(1.00)[];
	R_MISSING_CHARSET(0.50)[];
	DMARC_POLICY_ALLOW(-0.50)[lankhorst.se,none];
	R_SPF_ALLOW(-0.20)[+ip4:131.252.210.177:c];
	MAILLIST(-0.20)[mailman];
	R_DKIM_ALLOW(-0.20)[lankhorst.se:s=default];
	RWL_MAILSPIKE_GOOD(-0.10)[131.252.210.177:from];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	MIME_TRACE(0.00)[0:+];
	FORGED_SENDER_MAILLIST(0.00)[];
	TO_DN_SOME(0.00)[];
	ARC_NA(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	RCPT_COUNT_FIVE(0.00)[5];
	FROM_NEQ_ENVFROM(0.00)[dev@lankhorst.se,intel-gfx-bounces@lists.freedesktop.org];
	FROM_HAS_DN(0.00)[];
	DKIM_TRACE(0.00)[lankhorst.se:+];
	RCVD_COUNT_TWO(0.00)[2];
	TAGGED_RCPT(0.00)[intel-gfx];
	ALIAS_RESOLVED(0.00)[];
	ASN(0.00)[asn:6366, ipnet:131.252.0.0/16, country:US];
	DBL_BLOCKED_OPENRESOLVER(0.00)[intel.com:email,lists.freedesktop.org:from_smtp,lankhorst.se:dkim,lankhorst.se:email,lankhorst.se:mid,lankhorst.se:from_mime,gabe.freedesktop.org:rdns,gabe.freedesktop.org:helo]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: 7E0A6689BF3

Using the _fw variants fixes a module load error on PTL:

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

And a similar backtrace in hsw_color_commit_arm().

Signed-off-by: Maarten Lankhorst <dev@lankhorst.se>
Reviewed-by: Uma Shankar <uma.shankar@intel.com>
---
 drivers/gpu/drm/i915/display/intel_color.c | 6 +++---
 1 file changed, 3 insertions(+), 3 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_color.c b/drivers/gpu/drm/i915/display/intel_color.c
index 87ced9f6ff408..cc3cdb90d6975 100644
--- a/drivers/gpu/drm/i915/display/intel_color.c
+++ b/drivers/gpu/drm/i915/display/intel_color.c
@@ -1050,7 +1050,7 @@ static void hsw_color_commit_arm(struct intel_dsb *dsb,
 	struct intel_crtc *crtc = to_intel_crtc(crtc_state->uapi.crtc);
 	struct intel_display *display = to_intel_display(crtc);
 
-	intel_de_write(display, GAMMA_MODE(crtc->pipe),
+	intel_de_write_fw(display, GAMMA_MODE(crtc->pipe),
 		       crtc_state->gamma_mode);
 
 	intel_de_write_fw(display, PIPE_CSC_MODE(crtc->pipe),
@@ -4066,7 +4066,7 @@ static void glk_load_lut_3d(struct intel_dsb *dsb,
 	int i, lut_size = drm_color_lut32_size(blob);
 	enum pipe pipe = crtc->pipe;
 
-	if (!dsb && intel_de_read(display, LUT_3D_CTL(pipe)) & LUT_3D_READY) {
+	if (!dsb && intel_de_read_fw(display, LUT_3D_CTL(pipe)) & LUT_3D_READY) {
 		drm_err(display->drm, "[CRTC:%d:%s] 3D LUT not ready, not loading LUTs\n",
 			crtc->base.base.id, crtc->base.name);
 		return;
@@ -4084,7 +4084,7 @@ static void glk_lut_3d_commit(struct intel_dsb *dsb, struct intel_crtc *crtc, bo
 	enum pipe pipe = crtc->pipe;
 	u32 val = 0;
 
-	if (!dsb && intel_de_read(display, LUT_3D_CTL(pipe)) & LUT_3D_READY) {
+	if (!dsb && intel_de_read_fw(display, LUT_3D_CTL(pipe)) & LUT_3D_READY) {
 		drm_err(display->drm, "[CRTC:%d:%s] 3D LUT not ready, not committing change\n",
 			crtc->base.base.id, crtc->base.name);
 		return;
-- 
2.53.0

