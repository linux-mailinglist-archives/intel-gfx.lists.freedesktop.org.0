Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 19FBE4F3D38
	for <lists+intel-gfx@lfdr.de>; Tue,  5 Apr 2022 20:42:13 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 6F4EA10EC6E;
	Tue,  5 Apr 2022 18:42:10 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga12.intel.com (mga12.intel.com [192.55.52.136])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 7938610EC6E
 for <intel-gfx@lists.freedesktop.org>; Tue,  5 Apr 2022 18:42:09 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1649184129; x=1680720129;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=tZ8fqxizXI/mVQVaI6U9WxogmNJtZXXhzJhO5oAvCy0=;
 b=kFM+heyDTWfGF1SeXwF1gCPXx8chSZ2bMj271RY8V7c1Qqd8Rhu6dqyC
 SlNmlZXuT3R52HlmEHBxkIPnUZCAhlzbBr2ee/GWqmANhRFfZgOb2En9C
 jtw49TGsWKUO7hiBvQ7rvUFaww5MkyFOMHa2/9ocs6ecJRlrkKu6VtQyY
 tTt/bq4mXvd9cO/sDRh+lQ0D4lm0XqYodDu/1PT7WzYYQKaD7mWh9eKgQ
 EgN0+bKcn9P4a7A0SYhLsfJk2rbImgtMIqMSdV2mTK1UErUzl0l7z4kc8
 9mrdQZqT1a4UC4wb8n7000m9PN6g7LwPRoJdvTBLIqVlgRR7V1tNp18bj w==;
X-IronPort-AV: E=McAfee;i="6200,9189,10308"; a="240771371"
X-IronPort-AV: E=Sophos;i="5.90,236,1643702400"; d="scan'208";a="240771371"
Received: from orsmga008.jf.intel.com ([10.7.209.65])
 by fmsmga106.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 05 Apr 2022 11:42:08 -0700
X-IronPort-AV: E=Sophos;i="5.90,236,1643702400"; d="scan'208";a="570037016"
Received: from lucas-s2600cw.jf.intel.com ([10.165.21.202])
 by orsmga008-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 05 Apr 2022 11:42:08 -0700
From: Lucas De Marchi <lucas.demarchi@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Tue,  5 Apr 2022 11:41:18 -0700
Message-Id: <20220405184118.2714322-1-lucas.demarchi@intel.com>
X-Mailer: git-send-email 2.35.1
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH topic/core-for-CI] ALSA: hda/i915 - skip acomp
 init if no matching display
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

From: Kai Vehmanen <kai.vehmanen@linux.intel.com>

In systems with only a discrete i915 GPU, the acomp init will
always timeout for the PCH HDA controller instance.

Avoid the timeout by checking the PCI device hierarchy
whether any display class PCI device can be found on the system,
and at the same level as the HDA PCI device. If found, proceed
with the acomp init, which will wait until i915 probe is complete
and component binding can proceed. If no matching display
device is found, the audio component bind can be safely skipped.

The bind timeout will still be hit if the display is present
in the system, but i915 driver does not bind to it by configuration
choice or probe error. In this case the 60sec timeout will be
hit.

Signed-off-by: Kai Vehmanen <kai.vehmanen@linux.intel.com>
Acked-by: Lucas De Marchi <lucas.demarchi@intel.com>
Link: https://lore.kernel.org/r/20220405123622.2874457-1-kai.vehmanen@linux.intel.com
Signed-off-by: Takashi Iwai <tiwai@suse.de>
(cherry picked from commit c9db8a30d9f091aa571b5fb7c3f434cde107b02c)
[ applied on sound/for-linus - cherry-pick it in topic/core-for-CI to
  unblock some CI tests ]
Signed-off-by: Lucas De Marchi <lucas.demarchi@intel.com>
---
 sound/hda/hdac_i915.c | 29 +++++++++++++++++++----------
 1 file changed, 19 insertions(+), 10 deletions(-)

diff --git a/sound/hda/hdac_i915.c b/sound/hda/hdac_i915.c
index c42790863805..1ce2cea137db 100644
--- a/sound/hda/hdac_i915.c
+++ b/sound/hda/hdac_i915.c
@@ -116,16 +116,25 @@ static int i915_component_master_match(struct device *dev, int subcomponent,
 	return 0;
 }
 
-/* check whether intel graphics is present */
-static bool i915_gfx_present(void)
+/* check whether Intel graphics is present and reachable */
+static int i915_gfx_present(struct pci_dev *hdac_pci)
 {
-	static const struct pci_device_id ids[] = {
-		{ PCI_DEVICE(PCI_VENDOR_ID_INTEL, PCI_ANY_ID),
-		  .class = PCI_BASE_CLASS_DISPLAY << 16,
-		  .class_mask = 0xff << 16 },
-		{}
-	};
-	return pci_dev_present(ids);
+	unsigned int class = PCI_BASE_CLASS_DISPLAY << 16;
+	struct pci_dev *display_dev = NULL;
+	bool match = false;
+
+	do {
+		display_dev = pci_get_class(class, display_dev);
+
+		if (display_dev && display_dev->vendor == PCI_VENDOR_ID_INTEL &&
+		    connectivity_check(display_dev, hdac_pci))
+			match = true;
+
+		pci_dev_put(display_dev);
+
+	} while (!match && display_dev);
+
+	return match;
 }
 
 static bool dg1_gfx_present(void)
@@ -165,7 +174,7 @@ int snd_hdac_i915_init(struct hdac_bus *bus)
 	struct drm_audio_component *acomp;
 	int err;
 
-	if (!i915_gfx_present())
+	if (!i915_gfx_present(to_pci_dev(bus->dev)))
 		return -ENODEV;
 
 	if (dg1_gfx_present())
-- 
2.35.1

