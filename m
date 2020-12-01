Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id B10DE2CAF30
	for <lists+intel-gfx@lfdr.de>; Tue,  1 Dec 2020 22:54:57 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 17D7F89BD4;
	Tue,  1 Dec 2020 21:54:55 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (unknown [77.68.26.236])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 39BDA89BD4
 for <intel-gfx@lists.freedesktop.org>; Tue,  1 Dec 2020 21:54:52 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from build.alporthouse.com (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP id 23182445-1500050 
 for multiple; Tue, 01 Dec 2020 21:54:41 +0000
From: Chris Wilson <chris@chris-wilson.co.uk>
To: intel-gfx@lists.freedesktop.org
Date: Tue,  1 Dec 2020 21:54:41 +0000
Message-Id: <20201201215441.31900-1-chris@chris-wilson.co.uk>
X-Mailer: git-send-email 2.20.1
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH] drm/i915/gem: Report error for vmap() failure
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
Cc: Matthew Auld <matthew.auld@intel.com>,
 Chris Wilson <chris@chris-wilson.co.uk>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

Convert the NULL pointer from a failed vmap() to ERR_PTR(-ENOMEM) for
propagation.

<1> [269.830447] BUG: kernel NULL pointer dereference, address: 0000000000000000
<1> [269.830455] #PF: supervisor write access in kernel mode
<1> [269.830457] #PF: error_code(0x0002) - not-present page
<6> [269.830459] PGD 0 P4D 0
<4> [269.830465] Oops: 0002 [#1] PREEMPT SMP PTI
<4> [269.830469] CPU: 3 PID: 5789 Comm: i915_selftest Tainted: G     U            5.10.0-rc6-CI-CI_DRM_9412+ #1
<4> [269.830472] Hardware name: Intel Corp. Geminilake/GLK RVP2 LP4SD (07), BIOS GELKRVPA.X64.0062.B30.1708222146 08/22/2017
<4> [269.830636] RIP: 0010:igt_client_fill+0x1b9/0x5f0 [i915]
<4> [269.830640] Code: e8 0c 32 02 00 48 89 c5 48 3d 00 f0 ff ff 0f 87 e9 02 00 00 48 8b 8b 78 06 00 00 44 89 f0 48 89 ef 35 af be ad de 48 c1 e9 02 <f3> ab 0f b6 83 80 03 00 00 89 c2 c0 ea 03 83 e2 02 75 09 83 c8 20
<4> [269.830642] RSP: 0018:ffffc900007a79e8 EFLAGS: 00010206
<4> [269.830645] RAX: 00000000df0bf37b RBX: ffff88811d8af3c0 RCX: 00000000010afc00
<4> [269.830647] RDX: 0000000000000000 RSI: ffffffff822f2b17 RDI: 0000000000000000
<4> [269.830648] RBP: 0000000000000000 R08: ffff888111c80930 R09: 00000000fffffffe
<4> [269.830650] R10: 0000000000000000 R11: 00000000ffbc70e4 R12: ffff88811090f700
<4> [269.830652] R13: ffff88810df60180 R14: 0000000001a64dd4 R15: 0000000000000000
<4> [269.830655] FS:  00007f137b07de40(0000) GS:ffff88817b980000(0000) knlGS:0000000000000000
<4> [269.830657] CS:  0010 DS: 0000 ES: 0000 CR0: 0000000080050033
<4> [269.830659] CR2: 0000000000000000 CR3: 0000000115984000 CR4: 0000000000350ee0
<4> [269.830661] Call Trace:
<4> [269.830780]  __i915_subtests.cold.7+0x42/0x92 [i915]
<4> [269.830886]  ? __i915_nop_teardown+0x10/0x10 [i915]
<4> [269.830989]  ? __i915_live_setup+0x30/0x30 [i915]
<4> [269.831104]  __run_selftests.part.3+0xf7/0x14c [i915]
<4> [269.831939]  i915_live_selftests.cold.5+0x1f/0x47 [i915]
<4> [269.832027]  i915_pci_probe+0x93/0x1d0 [i915]
<4> [269.832037]  ? _raw_spin_unlock_irqrestore+0x2f/0x50
<4> [269.832043]  pci_device_probe+0x9e/0x110
<4> [269.832049]  really_probe+0x1c4/0x430
<4> [269.832053]  driver_probe_device+0xd9/0x140
<4> [269.832056]  device_driver_attach+0x4a/0x50
<4> [269.832059]  __driver_attach+0x83/0x140
<4> [269.832062]  ? device_driver_attach+0x50/0x50
<4> [269.832064]  ? device_driver_attach+0x50/0x50
<4> [269.832067]  bus_for_each_dev+0x75/0xc0
<4> [269.832070]  bus_add_driver+0x14b/0x1f0
<4> [269.832073]  driver_register+0x66/0xb0
<4> [269.832160]  i915_init+0x70/0x87 [i915]
<4> [269.832164]  ? 0xffffffffa05e3000
<4> [269.832168]  do_one_initcall+0x56/0x2e0
<4> [269.832174]  ? kmem_cache_alloc_trace+0x6a4/0x770
<4> [269.832180]  do_init_module+0x55/0x200
<4> [269.832184]  load_module+0x22a2/0x2480
<4> [269.832191]  ? __do_sys_finit_module+0xad/0x110
<4> [269.832194]  __do_sys_finit_module+0xad/0x110
<4> [269.832199]  do_syscall_64+0x33/0x80
<4> [269.832202]  entry_SYSCALL_64_after_hwframe+0x44/0xa9
<4> [269.832204] RIP: 0033:0x7f137a718839
<4> [269.832208] Code: 00 f3 c3 66 2e 0f 1f 84 00 00 00 00 00 0f 1f 40 00 48 89 f8 48 89 f7 48 89 d6 48 89 ca 4d 89 c2 4d 89 c8 4c 8b 4c 24 08 0f 05 <48> 3d 01 f0 ff ff 73 01 c3 48 8b 0d 1f f6 2c 00 f7 d8 64 89 01 48
<4> [269.832210] RSP: 002b:00007ffc4267d308 EFLAGS: 00000246 ORIG_RAX: 0000000000000139
<4> [269.832214] RAX: ffffffffffffffda RBX: 000056288b88f0d0 RCX: 00007f137a718839
<4> [269.832216] RDX: 0000000000000000 RSI: 000056288b895850 RDI: 0000000000000007
<4> [269.832218] RBP: 000056288b895850 R08: 312d3d7374736574 R09: 000056288b88c020
<4> [269.832220] R10: 00007ffc4267d450 R11: 0000000000000246 R12: 0000000000000000
<4> [269.832222] R13: 000056288b8877a0 R14: 0000000000000020 R15: 0000000000000045
<4> [269.832226] Modules linked in: i915(+) vgem mei_hdcp snd_hda_codec_hdmi snd_hda_codec_realtek snd_hda_codec_generic ledtrig_audio x86_pkg_temp_thermal coretemp crct10dif_pclmul crc32_pclmul ghash_clmulni_intel cdc_ether usbnet snd_intel_dspcfg mii snd_hda_codec snd_hwdep snd_hda_core r8169 snd_pcm realtek mei_me mei prime_numbers intel_lpss_pci i2c_hid pinctrl_geminilake [last unloaded: i915]
<4> [269.832264] CR2: 0000000000000000

Fixes: cb2ce93e5b05 ("drm/i915/gem: Differentiate oom failures from invalid map types")
Signed-off-by: Chris Wilson <chris@chris-wilson.co.uk>
Cc: Matthew Auld <matthew.auld@intel.com>
Cc: Tvrtko Ursulin <tvrtko.ursulin@intel.
---
 drivers/gpu/drm/i915/gem/i915_gem_pages.c | 6 ++++--
 1 file changed, 4 insertions(+), 2 deletions(-)

diff --git a/drivers/gpu/drm/i915/gem/i915_gem_pages.c b/drivers/gpu/drm/i915/gem/i915_gem_pages.c
index 6dad9ea8eaa3..3db3c667c486 100644
--- a/drivers/gpu/drm/i915/gem/i915_gem_pages.c
+++ b/drivers/gpu/drm/i915/gem/i915_gem_pages.c
@@ -290,7 +290,8 @@ static void *i915_gem_object_map_page(struct drm_i915_gem_object *obj,
 	vaddr = vmap(pages, n_pages, 0, pgprot);
 	if (pages != stack)
 		kvfree(pages);
-	return vaddr;
+
+	return vaddr ?: ERR_PTR(-ENOMEM);
 }
 
 static void *i915_gem_object_map_pfn(struct drm_i915_gem_object *obj,
@@ -320,7 +321,8 @@ static void *i915_gem_object_map_pfn(struct drm_i915_gem_object *obj,
 	vaddr = vmap_pfn(pfns, n_pfn, pgprot_writecombine(PAGE_KERNEL_IO));
 	if (pfns != stack)
 		kvfree(pfns);
-	return vaddr;
+
+	return vaddr ?: ERR_PTR(-ENOMEM);
 }
 
 /* get, pin, and map the pages of the object into kernel space */
-- 
2.20.1

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
