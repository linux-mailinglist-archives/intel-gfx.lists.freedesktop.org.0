Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id E4935808E3F
	for <lists+intel-gfx@lfdr.de>; Thu,  7 Dec 2023 18:10:40 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id A50B210E152;
	Thu,  7 Dec 2023 17:10:38 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.55.52.115])
 by gabe.freedesktop.org (Postfix) with ESMTPS id E8D0F10E152
 for <intel-gfx@lists.freedesktop.org>; Thu,  7 Dec 2023 17:10:36 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1701969036; x=1733505036;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=ZmjgKe5WfE46MpifxvZkIfXLIJhmLAYWSfQ3kro5sBc=;
 b=jYgUVBgz6RrbQSkbKHw4yExQsGiZwzDWJHodKyIitGstZlO6Bbd5/ZeJ
 hHPZho7TtPdlZkzsAOFhh3BCBEiCndSDLw4K3bonV6/q7xVMulAuMTKYa
 MX+AFjSvT6Y6N5cwCbvxRqqOaSmL+ZY/IAM2vdCLAy/QjFRzjkDYG5Al3
 /ex0ZBNYkmVuDDQMjh16poBt5gb/WpMib2CUPeAoEw57RF4lNGo7oS7ug
 PngDrt0E0tA3tO7UVswVYtG80+9eiMqa4kZG7aMU93XR+00O20p5MZKlh
 07abQOe6oQnnm5CM4L7YqZxnji6uIqiB3yxOdsBvk4aQVWTfyZqt3zA++ g==;
X-IronPort-AV: E=McAfee;i="6600,9927,10917"; a="394004466"
X-IronPort-AV: E=Sophos;i="6.04,258,1695711600"; d="scan'208";a="394004466"
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
 by fmsmga103.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 07 Dec 2023 09:07:26 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10917"; a="889814850"
X-IronPort-AV: E=Sophos;i="6.04,258,1695711600"; d="scan'208";a="889814850"
Received: from eliteleevi.tm.intel.com ([10.237.54.20])
 by fmsmga002.fm.intel.com with ESMTP; 07 Dec 2023 09:07:24 -0800
From: Kai Vehmanen <kai.vehmanen@linux.intel.com>
To: intel-gfx@lists.freedesktop.org
Subject: [PATCH] ALSA: hda/hdmi: add force-connect quirk for ASUSTeK Z170M Pro
Date: Thu,  7 Dec 2023 19:07:23 +0200
Message-ID: <20231207170723.2371881-1-kai.vehmanen@linux.intel.com>
X-Mailer: git-send-email 2.43.0
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

On ASUSTeK Z170M PRO GAMING + Intel Kaby Lake system the display codec
pins are not registered properly without the force-connect quirk. The
codec will report only one pin as having external connectivity, but i915
finds all all three connectors on the system, so the two drivers are not
in sync.

Link: https://gitlab.freedesktop.org/drm/intel/-/issues/9801
Signed-off-by: Kai Vehmanen <kai.vehmanen@linux.intel.com>
---
 sound/pci/hda/patch_hdmi.c | 1 +
 1 file changed, 1 insertion(+)

diff --git a/sound/pci/hda/patch_hdmi.c b/sound/pci/hda/patch_hdmi.c
index 3d7f8f510ec7..8bf91fe25c65 100644
--- a/sound/pci/hda/patch_hdmi.c
+++ b/sound/pci/hda/patch_hdmi.c
@@ -1995,6 +1995,7 @@ static const struct snd_pci_quirk force_connect_list[] = {
 	SND_PCI_QUIRK(0x103c, 0x8715, "HP", 1),
 	SND_PCI_QUIRK(0x1043, 0x8694, "ASUS", 1),  /* SKL/KBL + PRIME B560M-A */
 	SND_PCI_QUIRK(0x1043, 0x86ae, "ASUS", 1),  /* SKL + Z170 PRO */
+	SND_PCI_QUIRK(0x1043, 0x86c7, "ASUS", 1),  /* KBL + Z170M PRO */
 	SND_PCI_QUIRK(0x1462, 0xec94, "MS-7C94", 1),
 	SND_PCI_QUIRK(0x8086, 0x2060, "Intel NUC5CPYB", 1),
 	SND_PCI_QUIRK(0x8086, 0x2081, "Intel NUC 10", 1),
-- 
2.43.0

