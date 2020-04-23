Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id E88FC1B5732
	for <lists+intel-gfx@lfdr.de>; Thu, 23 Apr 2020 10:28:04 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 2E66A6E16D;
	Thu, 23 Apr 2020 08:28:03 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (mail.fireflyinternet.com [109.228.58.192])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 4D8E56E16D
 for <intel-gfx@lists.freedesktop.org>; Thu, 23 Apr 2020 08:28:01 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from haswell.alporthouse.com (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP id 20992617-1500050 
 for multiple; Thu, 23 Apr 2020 09:27:55 +0100
From: Chris Wilson <chris@chris-wilson.co.uk>
To: intel-gfx@lists.freedesktop.org
Date: Thu, 23 Apr 2020 09:27:53 +0100
Message-Id: <20200423082753.3899018-1-chris@chris-wilson.co.uk>
X-Mailer: git-send-email 2.26.2
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH] pci/msi: Stop warning for MSI enabling failure
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
Cc: Chris Wilson <chris@chris-wilson.co.uk>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

If the MSI is already enabled, trying to enable it again results in an
-EINVAL and on the first attempt a WARN. That WARN causes our CI to
abort the run [on each first attempt to suspend]:

<4> [463.142025] WARNING: CPU: 0 PID: 2225 at drivers/pci/msi.c:1074 __pci_enable_msi_range+0x3cb/0x420
<4> [463.142026] Modules linked in: snd_hda_intel i915 snd_hda_codec_hdmi snd_hda_codec_realtek snd_hda_codec_generic mei_hdcp x86_pkg_temp_thermal coretemp crct10dif_pclmul crc32_pclmul snd_intel_dspcfg ghash_clmulni_intel snd_hda_codec btusb btrtl btbcm btintel e1000e bluetooth snd_hwdep snd_hda_core ptp ecdh_generic snd_pcm ecc pps_core mei_me mei prime_numbers [last unloaded: i915]
<4> [463.142045] CPU: 0 PID: 2225 Comm: kworker/u8:14 Tainted: G     U            5.7.0-rc2-CI-CI_DRM_8350+ #1
<4> [463.142046] Hardware name: Intel Corporation NUC7i5BNH/NUC7i5BNB, BIOS BNKBL357.86A.0060.2017.1214.2013 12/14/2017
<4> [463.142049] Workqueue: events_unbound async_run_entry_fn
<4> [463.142051] RIP: 0010:__pci_enable_msi_range+0x3cb/0x420
<4> [463.142053] Code: 76 58 49 8d 56 48 48 89 df e8 31 73 fd ff e9 20 fe ff ff 31 f6 48 89 df e8 c2 e9 fd ff e9 d6 fe ff ff 45 89 fc e9 1a ff ff ff <0f> 0b 41 bc ea ff ff ff e9 0d ff ff ff 41 bc ea ff ff ff e9 02 ff
<4> [463.142054] RSP: 0018:ffffc90000593cd0 EFLAGS: 00010202
<4> [463.142056] RAX: 0000000000000010 RBX: ffff888274051000 RCX: 0000000000000000
<4> [463.142057] RDX: 0000000000000001 RSI: 0000000000000001 RDI: ffff888274051000
<4> [463.142058] RBP: ffff888238aa1018 R08: 0000000000000001 R09: 0000000000000001
<4> [463.142060] R10: ffffc90000593d90 R11: 00000000c79cdfd5 R12: ffff8882740510b0
<4> [463.142061] R13: 0000000000000001 R14: 0000000000000000 R15: 0000000000000001
<4> [463.142062] FS:  0000000000000000(0000) GS:ffff888276c00000(0000) knlGS:0000000000000000
<4> [463.142064] CS:  0010 DS: 0000 ES: 0000 CR0: 0000000080050033
<4> [463.142065] CR2: 000055706f347d80 CR3: 0000000005610003 CR4: 00000000003606f0
<4> [463.142066] Call Trace:
<4> [463.142073]  pci_enable_msi+0x11/0x20
<4> [463.142077]  azx_resume+0x1ab/0x200 [snd_hda_intel]
<4> [463.142080]  ? pci_pm_thaw+0x80/0x80
<4> [463.142084]  dpm_run_callback+0x64/0x280
<4> [463.142089]  device_resume+0xd4/0x1c0
<4> [463.142093]  ? dpm_watchdog_set+0x60/0

Downgrade the warning to an info, like the other already-enabled error.

Closes: https://gitlab.freedesktop.org/drm/intel/-/issues/1687
Signed-off-by: Chris Wilson <chris@chris-wilson.co.uk>
---
 drivers/pci/msi.c | 4 +++-
 1 file changed, 3 insertions(+), 1 deletion(-)

diff --git a/drivers/pci/msi.c b/drivers/pci/msi.c
index 6b43a5455c7a..41eba0fdd450 100644
--- a/drivers/pci/msi.c
+++ b/drivers/pci/msi.c
@@ -1071,8 +1071,10 @@ static int __pci_enable_msi_range(struct pci_dev *dev, int minvec, int maxvec,
 	if (maxvec < minvec)
 		return -ERANGE;
 
-	if (WARN_ON_ONCE(dev->msi_enabled))
+	if (dev->msi_enabled) {
+		pci_info(dev, "can't enable MSI, already enabled\n");
 		return -EINVAL;
+	}
 
 	nvec = pci_msi_vec_count(dev);
 	if (nvec < 0)
-- 
2.26.2

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
