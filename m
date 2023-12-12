Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 5B0C380F52A
	for <lists+intel-gfx@lfdr.de>; Tue, 12 Dec 2023 19:03:11 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id B068310E670;
	Tue, 12 Dec 2023 18:03:09 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.55.52.136])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 420CE10E66A
 for <intel-gfx@lists.freedesktop.org>; Tue, 12 Dec 2023 18:03:07 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1702404187; x=1733940187;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=LyoCtCfhHMgazXBlMP+SP3rpwP74Cm4FdnQvrIk4yoI=;
 b=i8rLAojaFWvCEpY7Co1hCo6ZsbRlEWnjofNF5Agcfc2TR6irXIfZV0SZ
 tD/jApkR9/EAeThL+a6pb1IeKUzR3GQHElnp4UqtpU9eknqKMWIIsDiSX
 m/POtVbLuzmjKQCOni9NGNFJ0nVd2JjQb8iprk445+wz1Yk7Ha/7KIvKx
 wUijeygeCpeIMIj2JYQClfiBKr1fNEw2WYj2Tljs26lf3ABc+Bh56MR+w
 GP4eYfH3Spz3VUI8fBoBygsc6oTEgSUkHngaOX9+niv/ftO+/Pb2FKN0l
 WCM3F7wC/InWpiqrA/rh1cfJPQJzJUxpi55E9FsH8CtYqh6DFwC0iAxCa A==;
X-IronPort-AV: E=McAfee;i="6600,9927,10922"; a="374350778"
X-IronPort-AV: E=Sophos;i="6.04,270,1695711600"; d="scan'208";a="374350778"
Received: from orsmga004.jf.intel.com ([10.7.209.38])
 by fmsmga106.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 12 Dec 2023 10:03:06 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10922"; a="897003149"
X-IronPort-AV: E=Sophos;i="6.04,270,1695711600"; d="scan'208";a="897003149"
Received: from eliteleevi.tm.intel.com ([10.237.54.20])
 by orsmga004.jf.intel.com with ESMTP; 12 Dec 2023 10:03:05 -0800
From: Kai Vehmanen <kai.vehmanen@linux.intel.com>
To: intel-gfx@lists.freedesktop.org
Subject: [PATCH 5/6] ALSA: hda/hdmi: add force-connect quirks for ASUSTeK Z170
 variants
Date: Tue, 12 Dec 2023 20:02:52 +0200
Message-ID: <20231212180253.2883124-6-kai.vehmanen@linux.intel.com>
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

On ASUSTeK Z170M PLUS and Z170 PRO GAMING systems, the display codec
pins are not registered properly without the force-connect quirk. The
codec will report only one pin as having external connectivity, but i915
finds all three connectors on the system, so the two drivers are not
in sync.

Issue found with DRM igt-gpu-tools test kms_hdmi_inject@inject-audio.

Link: https://gitlab.freedesktop.org/drm/intel/-/issues/9801
Cc: Ville Syrjälä <ville.syrjala@linux.intel.com>
Cc: Jani Saarinen <jani.saarinen@intel.com>
Signed-off-by: Kai Vehmanen <kai.vehmanen@linux.intel.com>
Cc: <stable@vger.kernel.org>
Link: https://lore.kernel.org/r/20231208132127.2438067-3-kai.vehmanen@linux.intel.com
Signed-off-by: Takashi Iwai <tiwai@suse.de>
(cherry picked from commit 924f5ca2975b2993ee81a7ecc3c809943a70f334)
---
 sound/pci/hda/patch_hdmi.c | 2 ++
 1 file changed, 2 insertions(+)

diff --git a/sound/pci/hda/patch_hdmi.c b/sound/pci/hda/patch_hdmi.c
index 1cde2a69bdb4..512ca3c9953c 100644
--- a/sound/pci/hda/patch_hdmi.c
+++ b/sound/pci/hda/patch_hdmi.c
@@ -1993,6 +1993,8 @@ static const struct snd_pci_quirk force_connect_list[] = {
 	SND_PCI_QUIRK(0x103c, 0x871a, "HP", 1),
 	SND_PCI_QUIRK(0x103c, 0x8711, "HP", 1),
 	SND_PCI_QUIRK(0x103c, 0x8715, "HP", 1),
+	SND_PCI_QUIRK(0x1043, 0x86ae, "ASUS", 1),  /* Z170 PRO */
+	SND_PCI_QUIRK(0x1043, 0x86c7, "ASUS", 1),  /* Z170M PLUS */
 	SND_PCI_QUIRK(0x1462, 0xec94, "MS-7C94", 1),
 	SND_PCI_QUIRK(0x8086, 0x2081, "Intel NUC 10", 1),
 	{}
-- 
2.43.0

