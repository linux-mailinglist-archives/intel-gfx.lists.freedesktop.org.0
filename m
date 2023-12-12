Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id A448380F52B
	for <lists+intel-gfx@lfdr.de>; Tue, 12 Dec 2023 19:03:13 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 2C8E010E673;
	Tue, 12 Dec 2023 18:03:12 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.55.52.136])
 by gabe.freedesktop.org (Postfix) with ESMTPS id E730C10E670
 for <intel-gfx@lists.freedesktop.org>; Tue, 12 Dec 2023 18:03:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1702404188; x=1733940188;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=9jN4+FfEkmaD6cw2OAcyN90JgaORyzDb1//wykU9gK8=;
 b=V19S8heumrMlqlvJQrpJRR2hdjdx+Ehny5qgg2rEbVxGQS8wCONIq5qP
 kyvmnqKphnoAEFuUpVX5WGVe8zu/Ma3/xptPsHe2LGqt3nejTbK3Fp+nu
 KzF/PEaM34ONRh+cYb8KFBFxdfw99BBCHfLlhXVqYze8hIf0xDBzCKgQu
 TWaSly+bxRUd5y8D9q+UB8hYGavImM2rON0V6P8uAZ/YXNE5LMtSmA4iI
 +3rGdnksng2cXtR3OmDGzpI7Q50hligoA0PV1eI9rdmgFladmwE/7r7S+
 k6mz70BvQ7Z9Sft33SKpx+PVx8diyogDiSJFFxEq4MvdihZMIGLfVGdjU Q==;
X-IronPort-AV: E=McAfee;i="6600,9927,10922"; a="374350787"
X-IronPort-AV: E=Sophos;i="6.04,270,1695711600"; d="scan'208";a="374350787"
Received: from orsmga004.jf.intel.com ([10.7.209.38])
 by fmsmga106.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 12 Dec 2023 10:03:08 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10922"; a="897003156"
X-IronPort-AV: E=Sophos;i="6.04,270,1695711600"; d="scan'208";a="897003156"
Received: from eliteleevi.tm.intel.com ([10.237.54.20])
 by orsmga004.jf.intel.com with ESMTP; 12 Dec 2023 10:03:07 -0800
From: Kai Vehmanen <kai.vehmanen@linux.intel.com>
To: intel-gfx@lists.freedesktop.org
Subject: [PATCH 6/6] ALSA: hda/hdmi: add force-connect quirk for NUC5CPYB
Date: Tue, 12 Dec 2023 20:02:53 +0200
Message-ID: <20231212180253.2883124-7-kai.vehmanen@linux.intel.com>
X-Mailer: git-send-email 2.43.0
In-Reply-To: <20231212180253.2883124-1-kai.vehmanen@linux.intel.com>
References: <20231212180253.2883124-1-kai.vehmanen@linux.intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
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

Add one more older NUC model that requires quirk to force all pins to be
connected. The display codec pins are not registered properly without
the force-connect quirk. The codec will report only one pin as having
external connectivity, but i915 finds all three connectors on the
system, so the two drivers are not in sync.

Issue found with DRM igt-gpu-tools test kms_hdmi_inject@inject-audio.

Link: https://gitlab.freedesktop.org/drm/igt-gpu-tools/-/issues/3
Cc: Ville Syrjälä <ville.syrjala@linux.intel.com>
Cc: Jani Saarinen <jani.saarinen@intel.com>
Signed-off-by: Kai Vehmanen <kai.vehmanen@linux.intel.com>
Cc: <stable@vger.kernel.org>
Link: https://lore.kernel.org/r/20231208132127.2438067-2-kai.vehmanen@linux.intel.com
Signed-off-by: Takashi Iwai <tiwai@suse.de>
(cherry picked from commit 3b1ff57e24a7bcd2e2a8426dd2013a80d1fa96eb)
---
 sound/pci/hda/patch_hdmi.c | 1 +
 1 file changed, 1 insertion(+)

diff --git a/sound/pci/hda/patch_hdmi.c b/sound/pci/hda/patch_hdmi.c
index 512ca3c9953c..78cee53fee02 100644
--- a/sound/pci/hda/patch_hdmi.c
+++ b/sound/pci/hda/patch_hdmi.c
@@ -1996,6 +1996,7 @@ static const struct snd_pci_quirk force_connect_list[] = {
 	SND_PCI_QUIRK(0x1043, 0x86ae, "ASUS", 1),  /* Z170 PRO */
 	SND_PCI_QUIRK(0x1043, 0x86c7, "ASUS", 1),  /* Z170M PLUS */
 	SND_PCI_QUIRK(0x1462, 0xec94, "MS-7C94", 1),
+	SND_PCI_QUIRK(0x8086, 0x2060, "Intel NUC5CPYB", 1),
 	SND_PCI_QUIRK(0x8086, 0x2081, "Intel NUC 10", 1),
 	{}
 };
-- 
2.43.0

