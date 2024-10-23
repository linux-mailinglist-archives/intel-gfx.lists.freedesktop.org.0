Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 202509AD67D
	for <lists+intel-gfx@lfdr.de>; Wed, 23 Oct 2024 23:19:01 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 09F7B10E081;
	Wed, 23 Oct 2024 21:18:59 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="TfA+i/cr";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.13])
 by gabe.freedesktop.org (Postfix) with ESMTPS id D4B3310E1BA
 for <intel-gfx@lists.freedesktop.org>; Wed, 23 Oct 2024 21:18:57 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1729718337; x=1761254337;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=EWHtyvPYO8DC6oL0XdCAoByL7XI41RdCp/1SU0RxIp0=;
 b=TfA+i/cr1VQybNixfy6139MxnLAW4bEOiauEnl0QYzvc9pmmp3Q05fre
 HdTMwNt2yhpW4mwob4IG0SqpAWkDCWAbv7AZm5b+YrAX8k2/xwG1EjWMQ
 0T/57gUthYoUyQaTRx8lmR7mNI77xWUugjxzw/Pg1A9UxC6gdB5COGuBQ
 wrjivEQ8q7f1yIq/9SA8xznDoa3Jyap6yMrJ6MaAgBJMYUTGWAK1BCjpH
 fD71qpIyjD0kFdLlaKQEZCDjMjkxznVdUtEpjMAV942JhAdsFXaF0fLOc
 3YbxpE08wdCXjkIOhS9QlKPKGVf9oWqKSod3XeB5wsrRoQtD2ZVVF48Ao g==;
X-CSE-ConnectionGUID: 6buegqJEQh226b8bXUg/jQ==
X-CSE-MsgGUID: pz7D1O1nSgyvtp3+7pY+SQ==
X-IronPort-AV: E=McAfee;i="6700,10204,11234"; a="32183722"
X-IronPort-AV: E=Sophos;i="6.11,227,1725346800"; d="scan'208";a="32183722"
Received: from orviesa005.jf.intel.com ([10.64.159.145])
 by fmvoesa107.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 23 Oct 2024 14:18:57 -0700
X-CSE-ConnectionGUID: d7tqtrC4Q9exxT9teJaE/g==
X-CSE-MsgGUID: AkK/kK9mSAae2BUnMAA+nw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.11,227,1725346800"; d="scan'208";a="85173384"
Received: from lucas-s2600cw.jf.intel.com ([10.165.21.196])
 by orviesa005-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 23 Oct 2024 14:18:57 -0700
From: Lucas De Marchi <lucas.demarchi@intel.com>
To: intel-gfx@lists.freedesktop.org
Cc: Jani Nikula <jani.nikula@linux.intel.com>,
 Rodrigo Vivi <rodrigo.vivi@intel.com>,
 Lucas De Marchi <lucas.demarchi@intel.com>
Subject: [PATCH topic/core-for-CI 2/2] Revert "HAX sound: Disable probing
 snd_hda with DG1"
Date: Wed, 23 Oct 2024 14:18:34 -0700
Message-ID: <20241023211834.3370346-2-lucas.demarchi@intel.com>
X-Mailer: git-send-email 2.47.0
In-Reply-To: <20241023211834.3370346-1-lucas.demarchi@intel.com>
References: <20241023211834.3370346-1-lucas.demarchi@intel.com>
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

This reverts commit 852510ccd334063bec2c2c3e5a61a071599ac015.

This should be solved already since commit e6d0c13e9f46 ("ALSA: hda:
i915: Remove extra argument from snd_hdac_i915_init").

We can try to drop it and see if anything explodes on dg1 land.

Signed-off-by: Lucas De Marchi <lucas.demarchi@intel.com>
---
 sound/hda/hdac_i915.c     | 23 -----------------------
 sound/pci/hda/hda_intel.c |  3 +++
 2 files changed, 3 insertions(+), 23 deletions(-)

diff --git a/sound/hda/hdac_i915.c b/sound/hda/hdac_i915.c
index a214636ed9757..e9425213320ea 100644
--- a/sound/hda/hdac_i915.c
+++ b/sound/hda/hdac_i915.c
@@ -170,26 +170,6 @@ static int i915_gfx_present(struct pci_dev *hdac_pci)
 	return false;
 }
 
-static bool dg1_gfx_present(void)
-{
-	static const struct pci_device_id ids[] = {
-		{ PCI_DEVICE(PCI_VENDOR_ID_INTEL, 0x4905),
-		  .class = PCI_BASE_CLASS_DISPLAY << 16,
-		  .class_mask = 0xff << 16 },
-		{ PCI_DEVICE(PCI_VENDOR_ID_INTEL, 0x4906),
-		  .class = PCI_BASE_CLASS_DISPLAY << 16,
-		  .class_mask = 0xff << 16 },
-		{ PCI_DEVICE(PCI_VENDOR_ID_INTEL, 0x4907),
-		  .class = PCI_BASE_CLASS_DISPLAY << 16,
-		  .class_mask = 0xff << 16 },
-		{ PCI_DEVICE(PCI_VENDOR_ID_INTEL, 0x4908),
-		  .class = PCI_BASE_CLASS_DISPLAY << 16,
-		  .class_mask = 0xff << 16 },
-		{}
-	};
-	return pci_dev_present(ids);
-}
-
 /**
  * snd_hdac_i915_init - Initialize i915 audio component
  * @bus: HDA core bus
@@ -210,9 +190,6 @@ int snd_hdac_i915_init(struct hdac_bus *bus)
 	if (!i915_gfx_present(to_pci_dev(bus->dev)))
 		return -ENODEV;
 
-	if (dg1_gfx_present())
-		return -ENODEV;
-
 	err = snd_hdac_acomp_init(bus, NULL,
 				  i915_component_master_match,
 				  sizeof(struct i915_audio_component) - sizeof(*acomp));
diff --git a/sound/pci/hda/hda_intel.c b/sound/pci/hda/hda_intel.c
index 282e87cc2166b..b4540c5cd2a6f 100644
--- a/sound/pci/hda/hda_intel.c
+++ b/sound/pci/hda/hda_intel.c
@@ -2143,6 +2143,9 @@ static int azx_probe(struct pci_dev *pci,
 			 * codecs can be on the same link.
 			 */
 			if (HDA_CONTROLLER_IN_GPU(pci)) {
+				dev_err_probe(card->dev, err,
+					     "HSW/BDW HD-audio HDMI/DP requires binding with gfx driver\n");
+
 				goto out_free;
 			} else {
 				/* don't bother any longer */
-- 
2.47.0

