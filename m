Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id E6170498044
	for <lists+intel-gfx@lfdr.de>; Mon, 24 Jan 2022 14:02:17 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 334F810E430;
	Mon, 24 Jan 2022 13:02:16 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mblankhorst.nl (mblankhorst.nl [141.105.120.124])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 96FF410E430;
 Mon, 24 Jan 2022 13:02:14 +0000 (UTC)
From: Maarten Lankhorst <maarten.lankhorst@linux.intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Mon, 24 Jan 2022 14:02:05 +0100
Message-Id: <20220124130205.1040321-1-maarten.lankhorst@linux.intel.com>
X-Mailer: git-send-email 2.34.1
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH] drm/i915: Lock dpt_obj around set_cache_level.
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
Cc: dri-devel@lists.freedesktop.org
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

set_cache_level may unbind the object, which will result in the below
lockdep splat:
<6> [184.578145] [IGT] kms_addfb_basic: starting subtest addfb25-framebuffer-vs-set-tiling
<4> [184.578220] ------------[ cut here ]------------
<4> [184.578221] WARN_ON(debug_locks && !(lock_is_held(&(&((obj)->base.resv)->lock.base)->dep_map) != 0))
<4> [184.578237] WARNING: CPU: 6 PID: 5544 at drivers/gpu/drm/i915/i915_gem.c:123 i915_gem_object_unbind+0x4a9/0x510 [i915]
<4> [184.578323] Modules linked in: vgem drm_shmem_helper snd_hda_codec_hdmi i915 mei_hdcp x86_pkg_temp_thermal snd_hda_intel coretemp crct10dif_pclmul snd_intel_dspcfg crc32_pclmul ttm snd_hda_codec ghash_clmulni_intel snd_hwdep drm_kms_helper snd_hda_core e1000e mei_me syscopyarea ptp snd_pcm sysfillrect mei pps_core sysimgblt fb_sys_fops prime_numbers intel_lpss_pci smsc75xx usbnet mii
<4> [184.578349] CPU: 6 PID: 5544 Comm: kms_addfb_basic Not tainted 5.16.0-CI-Patchwork_22006+ #1
<4> [184.578351] Hardware name: Intel Corporation Alder Lake Client Platform/AlderLake-P DDR4 RVP, BIOS ADLPFWI1.R00.2422.A00.2110131104 10/13/2021
<4> [184.578352] RIP: 0010:i915_gem_object_unbind+0x4a9/0x510 [i915]
<4> [184.578424] Code: 00 be ff ff ff ff 48 8d 78 68 e8 a2 6e 2b e1 85 c0 0f 85 b1 fb ff ff 48 c7 c6 48 37 9e a0 48 c7 c7 d9 fc a1 a0 e8 a3 54 26 e1 <0f> 0b e9 97 fb ff ff 31 ed 48 8b 5c 24 58 65 48 33 1c 25 28 00 00
<4> [184.578426] RSP: 0018:ffffc900013b3b68 EFLAGS: 00010286
<4> [184.578428] RAX: 0000000000000000 RBX: ffffc900013b3bb0 RCX: 0000000000000001
<4> [184.578429] RDX: 0000000080000001 RSI: ffffffff8230b42d RDI: 00000000ffffffff
<4> [184.578430] RBP: ffff888120e10000 R08: 0000000000000000 R09: c0000000ffff7fff
<4> [184.578431] R10: 0000000000000001 R11: ffffc900013b3980 R12: ffff8881176ea740
<4> [184.578432] R13: ffff888120e10000 R14: 0000000000000000 R15: 0000000000000001
<4> [184.578433] FS:  00007f65074f5e40(0000) GS:ffff88888f300000(0000) knlGS:0000000000000000
<4> [184.578435] CS:  0010 DS: 0000 ES: 0000 CR0: 0000000080050033
<4> [184.578436] CR2: 00007fff4420ede8 CR3: 000000010c2f2005 CR4: 0000000000770ee0
<4> [184.578437] PKRU: 55555554
<4> [184.578438] Call Trace:
<4> [184.578439]  <TASK>
<4> [184.578440]  ? dma_resv_iter_first_unlocked+0x78/0xf0
<4> [184.578447]  intel_dpt_create+0x88/0x220 [i915]
<4> [184.578530]  intel_framebuffer_init+0x5b8/0x620 [i915]
<4> [184.578612]  intel_framebuffer_create+0x3d/0x60 [i915]
<4> [184.578691]  intel_user_framebuffer_create+0x18f/0x2c0 [i915]
<4> [184.578775]  drm_internal_framebuffer_create+0x36d/0x4c0
<4> [184.578779]  drm_mode_addfb2+0x2f/0xd0
<4> [184.578781]  ? drm_mode_addfb_ioctl+0x10/0x10
<4> [184.578784]  drm_ioctl_kernel+0xac/0x140
<4> [184.578787]  drm_ioctl+0x201/0x3d0
<4> [184.578789]  ? drm_mode_addfb_ioctl+0x10/0x10
<4> [184.578796]  __x64_sys_ioctl+0x6a/0xa0
<4> [184.578800]  do_syscall_64+0x37/0xb0
<4> [184.578803]  entry_SYSCALL_64_after_hwframe+0x44/0xae
<4> [184.578805] RIP: 0033:0x7f6506736317
<4> [184.578807] Code: b3 66 90 48 8b 05 71 4b 2d 00 64 c7 00 26 00 00 00 48 c7 c0 ff ff ff ff c3 66 2e 0f 1f 84 00 00 00 00 00 b8 10 00 00 00 0f 05 <48> 3d 01 f0 ff ff 73 01 c3 48 8b 0d 41 4b 2d 00 f7 d8 64 89 01 48
<4> [184.578808] RSP: 002b:00007fff44211a98 EFLAGS: 00000246 ORIG_RAX: 0000000000000010
<4> [184.578810] RAX: ffffffffffffffda RBX: 0000000000000006 RCX: 00007f6506736317
<4> [184.578811] RDX: 00007fff44211b30 RSI: 00000000c06864b8 RDI: 0000000000000006
<4> [184.578812] RBP: 00007fff44211b30 R08: 00007fff44311170 R09: 0000000000000000
<4> [184.578813] R10: 0000000000000008 R11: 0000000000000246 R12: 00000000c06864b8
<4> [184.578813] R13: 0000000000000006 R14: 0000000000000000 R15: 0000000000000000
<4> [184.578819]  </TASK>
<4> [184.578820] irq event stamp: 47931
<4> [184.578821] hardirqs last  enabled at (47937): [<ffffffff81130dd2>] __up_console_sem+0x62/0x70
<4> [184.578824] hardirqs last disabled at (47942): [<ffffffff81130db7>] __up_console_sem+0x47/0x70
<4> [184.578826] softirqs last  enabled at (47340): [<ffffffff81e0032d>] __do_softirq+0x32d/0x493
<4> [184.578828] softirqs last disabled at (47335): [<ffffffff810b9196>] irq_exit_rcu+0xa6/0xe0
<4> [184.578830] ---[ end trace f17ec219f892c7d4 ]---

Fixes: 0f341974cbc2 ("drm/i915: Add i915_vma_unbind_unlocked, and take obj lock for i915_vma_unbind, v2.")
Signed-off-by: Maarten Lankhorst <maarten.lankhorst@linux.intel.com>
Testcase: kms_addfb_basic
---
 drivers/gpu/drm/i915/display/intel_dpt.c | 6 +++++-
 1 file changed, 5 insertions(+), 1 deletion(-)

diff --git a/drivers/gpu/drm/i915/display/intel_dpt.c b/drivers/gpu/drm/i915/display/intel_dpt.c
index 63a83d5f85a1..c2f8f853db90 100644
--- a/drivers/gpu/drm/i915/display/intel_dpt.c
+++ b/drivers/gpu/drm/i915/display/intel_dpt.c
@@ -253,7 +253,11 @@ intel_dpt_create(struct intel_framebuffer *fb)
 	if (IS_ERR(dpt_obj))
 		return ERR_CAST(dpt_obj);
 
-	ret = i915_gem_object_set_cache_level(dpt_obj, I915_CACHE_NONE);
+	ret = i915_gem_object_lock_interruptible(dpt_obj, NULL);
+	if (!ret) {
+		ret = i915_gem_object_set_cache_level(dpt_obj, I915_CACHE_NONE);
+		i915_gem_object_unlock(dpt_obj);
+	}
 	if (ret) {
 		i915_gem_object_put(dpt_obj);
 		return ERR_PTR(ret);
-- 
2.34.1

