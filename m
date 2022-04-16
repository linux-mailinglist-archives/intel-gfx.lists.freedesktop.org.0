Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 8B5B4503483
	for <lists+intel-gfx@lfdr.de>; Sat, 16 Apr 2022 08:44:25 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id A1EF710E972;
	Sat, 16 Apr 2022 06:44:23 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 6583610E972
 for <intel-gfx@lists.freedesktop.org>; Sat, 16 Apr 2022 06:44:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1650091462; x=1681627462;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=ceGRmFOdZlSegm+wVvVm65Y/MBGjuTTfhKZ7LliGs4Q=;
 b=GJrjxG7uJdBKcuAXO/TC0WNNTkFdcTCU/++TBHeLNFGsakRH7enptD26
 JWrb+Ze409x6N6NuHXHVW7QIYeMqfnt3vnZ6dNs7j20hiUKfmGhu1oozf
 K/Wl6m3iwqKfKtCA6K+3DsMWMFX4CfvPWz4Dd7yqaRbCtVR4Dv2kx5ecO
 AU1IWSd7BqEf/mHDvRlc7wBHTgE9qh2jnr1jUGSAAjZZEcxfjFDT9vofC
 OWwj/zM42w8Fjx+FcGcemZO69DUjynajkXiUwRt0MOYb/2UCj+co/s8QT
 GmZubbPqyxtndUPvkwajoGAh38WrgmHAJhROumjwVe0jj/lmG/X7CqYCF Q==;
X-IronPort-AV: E=McAfee;i="6400,9594,10318"; a="260871190"
X-IronPort-AV: E=Sophos;i="5.90,264,1643702400"; d="scan'208";a="260871190"
Received: from orsmga003.jf.intel.com ([10.7.209.27])
 by fmsmga102.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 15 Apr 2022 23:44:21 -0700
X-IronPort-AV: E=Sophos;i="5.90,264,1643702400"; d="scan'208";a="509184151"
Received: from lucas-s2600cw.jf.intel.com ([10.165.21.202])
 by orsmga003-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 15 Apr 2022 23:44:21 -0700
From: Lucas De Marchi <lucas.demarchi@intel.com>
To: intel-gfx@lists.freedesktop.org,
	alsa-devel@alsa-project.org
Date: Fri, 15 Apr 2022 23:44:18 -0700
Message-Id: <20220416064418.2364582-1-lucas.demarchi@intel.com>
X-Mailer: git-send-email 2.35.2
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH] ALSA: hda/i915: Fix one too many pci_dev_put()
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
Cc: Takashi Iwai <tiwai@suse.de>, Lucas De Marchi <lucas.demarchi@intel.com>
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

pci_get_class() will already unref the pci device passed as argument.
So if it's unconditionally unref'ed, even if the loop is not stopped,
there will be one too many unref for each device not matched.

Cc: Kai Vehmanen <kai.vehmanen@linux.intel.com>
Cc: Takashi Iwai <tiwai@suse.de>
Closes: https://gitlab.freedesktop.org/drm/intel/-/issues/5701
Fixes: 0dc2696a4623 ("ALSA: hda/i915 - skip acomp init if no matching display")
Signed-off-by: Lucas De Marchi <lucas.demarchi@intel.com>
---
 sound/hda/hdac_i915.c | 7 +++----
 1 file changed, 3 insertions(+), 4 deletions(-)

diff --git a/sound/hda/hdac_i915.c b/sound/hda/hdac_i915.c
index 1ce2cea137db..12dad5e9c45d 100644
--- a/sound/hda/hdac_i915.c
+++ b/sound/hda/hdac_i915.c
@@ -127,11 +127,10 @@ static int i915_gfx_present(struct pci_dev *hdac_pci)
 		display_dev = pci_get_class(class, display_dev);
 
 		if (display_dev && display_dev->vendor == PCI_VENDOR_ID_INTEL &&
-		    connectivity_check(display_dev, hdac_pci))
+		    connectivity_check(display_dev, hdac_pci)) {
+			pci_dev_put(display_dev);
 			match = true;
-
-		pci_dev_put(display_dev);
-
+		}
 	} while (!match && display_dev);
 
 	return match;
-- 
2.35.2

