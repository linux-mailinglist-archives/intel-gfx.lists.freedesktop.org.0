Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 33E4444CB27
	for <lists+intel-gfx@lfdr.de>; Wed, 10 Nov 2021 22:17:06 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 9455F6E456;
	Wed, 10 Nov 2021 21:17:04 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga04.intel.com (mga04.intel.com [192.55.52.120])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 3C2366E456
 for <intel-gfx@lists.freedesktop.org>; Wed, 10 Nov 2021 21:17:03 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6200,9189,10164"; a="231503323"
X-IronPort-AV: E=Sophos;i="5.87,224,1631602800"; d="scan'208";a="231503323"
Received: from orsmga003.jf.intel.com ([10.7.209.27])
 by fmsmga104.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 10 Nov 2021 13:10:41 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.87,224,1631602800"; d="scan'208";a="452455843"
Received: from eliteleevi.tm.intel.com ([10.237.54.20])
 by orsmga003.jf.intel.com with ESMTP; 10 Nov 2021 13:10:39 -0800
From: Kai Vehmanen <kai.vehmanen@linux.intel.com>
To: alsa-devel@alsa-project.org,
	tiwai@suse.de
Date: Wed, 10 Nov 2021 23:03:07 +0200
Message-Id: <20211110210307.1172004-1-kai.vehmanen@linux.intel.com>
X-Mailer: git-send-email 2.33.0
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH] ALSA: hda: fix general protection fault in
 azx_runtime_idle
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
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

Fix a corner case between PCI device driver remove callback and
runtime PM idle callback.

Following sequence of events can happen:
  - at azx_create, context is allocated with devm_kzalloc() and
    stored as pci_set_drvdata()
  - user-space requests to unbind audio driver
  - dd.c:__device_release_driver() calls PCI remove
  - pci-driver.c:pci_device_remove() calls the audio
    driver azx_remove() callback and this is completed
  - pci-driver.c:pm_runtime_put_sync() leads to a call
    to rpm_idle() which again calls azx_runtime_idle()
  - the azx context object, as returned by dev_get_drvdata(),
    is no longer valid
  -> access fault in azx_runtime_idle when executing
	struct snd_card *card = dev_get_drvdata(dev);
	chip = card->private_data;
	if (chip->disabled || hda->init_failed)

This was discovered by i915_module_load test with 5.15.0 based
linux-next tree.

Example log caught by i915_module_load test with linux-next
https://intel-gfx-ci.01.org/tree/linux-next/

<4> [264.038232] general protection fault, probably for non-canonical address 0x6b6b6b6b6b6b73f0: 0000 [#1] PREEMPT SMP NOPTI
<4> [264.038248] CPU: 0 PID: 5374 Comm: i915_module_loa Not tainted 5.15.0-next-20211109-gc8109c2ba35e-next-20211109 #1
[...]
<4> [264.038267] RIP: 0010:azx_runtime_idle+0x12/0x60 [snd_hda_intel]
[...]
<4> [264.038355] Call Trace:
<4> [264.038359]  <TASK>
<4> [264.038362]  __rpm_callback+0x3d/0x110
<4> [264.038371]  rpm_idle+0x27f/0x380
<4> [264.038376]  __pm_runtime_idle+0x3b/0x100
<4> [264.038382]  pci_device_remove+0x6d/0xa0
<4> [264.038388]  device_release_driver_internal+0xef/0x1e0
<4> [264.038395]  unbind_store+0xeb/0x120
<4> [264.038400]  kernfs_fop_write_iter+0x11a/0x1c0

Fix the issue by setting drvdata to NULL at end of azx_remove().

Signed-off-by: Kai Vehmanen <kai.vehmanen@linux.intel.com>
---
 sound/pci/hda/hda_intel.c | 1 +
 1 file changed, 1 insertion(+)

Some non-persistent direct links showing the bug trigger on
different platforms with linux-next 20211109:
 - https://intel-gfx-ci.01.org/tree/linux-next/next-20211109/fi-tgl-1115g4/igt@i915_module_load@reload.html
 - https://intel-gfx-ci.01.org/tree/linux-next/next-20211109/fi-jsl-1/igt@i915_module_load@reload.html

Notably with 20211110 linux-next, the bug does not trigger:
 - https://intel-gfx-ci.01.org/tree/linux-next/next-20211110/fi-tgl-1115g4/igt@i915_module_load@reload.html

diff --git a/sound/pci/hda/hda_intel.c b/sound/pci/hda/hda_intel.c
index 7762718cf429..b90c817e3f6f 100644
--- a/sound/pci/hda/hda_intel.c
+++ b/sound/pci/hda/hda_intel.c
@@ -2364,6 +2364,7 @@ static void azx_remove(struct pci_dev *pci)
 		cancel_delayed_work_sync(&hda->probe_work);
 		device_lock(&pci->dev);
 
+		pci_set_drvdata(pci, NULL);
 		snd_card_free(card);
 	}
 }

base-commit: 6322ec8d0de924cf9672b23c1b5052afafc2f03b
-- 
2.33.0

