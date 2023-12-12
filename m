Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id E18F180F527
	for <lists+intel-gfx@lfdr.de>; Tue, 12 Dec 2023 19:03:05 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 0E76810E656;
	Tue, 12 Dec 2023 18:03:03 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.55.52.136])
 by gabe.freedesktop.org (Postfix) with ESMTPS id F136810E650
 for <intel-gfx@lists.freedesktop.org>; Tue, 12 Dec 2023 18:03:01 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1702404181; x=1733940181;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=KCu2zVywIuCnCF97o2kjTy0X9uRbrBz19lZDebfhvpI=;
 b=Y9DtR2/tTv1nx/8pyO9ZWmwz6mDtLnfmB3dwczWYbe2lCKagu2rTPG9v
 UscYlNvnzT3NvMgwazw7QK4t33DxzsGN22UUBF6aWDm+Fd7wJRmJTziwA
 F+0Pfm0Tf/mUon0t4YardR3taweTUvQTV30VLqRiXEqe0uhAHNU6vqWkC
 33RTH+JN/fZknDvAz0FSl7TfHwU8uuMgdTkfK65Zn6ySmaoHyript6UTI
 NPr/9dEWfZMsCvE5YqInRzBJnjVtahfc7dYAf4tqfwj7LpyuxX7n5d++5
 6IKLqPmphlj8kxkRgN8C/KCoApNcpj8GmdTBpAu++6EifaD1dCcHw2uHz Q==;
X-IronPort-AV: E=McAfee;i="6600,9927,10922"; a="374350754"
X-IronPort-AV: E=Sophos;i="6.04,270,1695711600"; d="scan'208";a="374350754"
Received: from orsmga004.jf.intel.com ([10.7.209.38])
 by fmsmga106.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 12 Dec 2023 10:03:01 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10922"; a="897003117"
X-IronPort-AV: E=Sophos;i="6.04,270,1695711600"; d="scan'208";a="897003117"
Received: from eliteleevi.tm.intel.com ([10.237.54.20])
 by orsmga004.jf.intel.com with ESMTP; 12 Dec 2023 10:02:59 -0800
From: Kai Vehmanen <kai.vehmanen@linux.intel.com>
To: intel-gfx@lists.freedesktop.org
Subject: [PATCH 2/6] Revert "ALSA: hda/hdmi: add connect-all quirk for ASUSTeK
 Z170 Pro"
Date: Tue, 12 Dec 2023 20:02:49 +0200
Message-ID: <20231212180253.2883124-3-kai.vehmanen@linux.intel.com>
X-Mailer: git-send-email 2.43.0
In-Reply-To: <20231212180253.2883124-1-kai.vehmanen@linux.intel.com>
References: <20231212180253.2883124-1-kai.vehmanen@linux.intel.com>
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

This reverts commit e83118f4e6ac13d5b1becb65e525c0e0265bbd61.

Signed-off-by: Kai Vehmanen <kai.vehmanen@linux.intel.com>
---
 sound/pci/hda/patch_hdmi.c | 1 -
 1 file changed, 1 deletion(-)

diff --git a/sound/pci/hda/patch_hdmi.c b/sound/pci/hda/patch_hdmi.c
index 3d7f8f510ec7..5232c46a32a7 100644
--- a/sound/pci/hda/patch_hdmi.c
+++ b/sound/pci/hda/patch_hdmi.c
@@ -1994,7 +1994,6 @@ static const struct snd_pci_quirk force_connect_list[] = {
 	SND_PCI_QUIRK(0x103c, 0x8711, "HP", 1),
 	SND_PCI_QUIRK(0x103c, 0x8715, "HP", 1),
 	SND_PCI_QUIRK(0x1043, 0x8694, "ASUS", 1),  /* SKL/KBL + PRIME B560M-A */
-	SND_PCI_QUIRK(0x1043, 0x86ae, "ASUS", 1),  /* SKL + Z170 PRO */
 	SND_PCI_QUIRK(0x1462, 0xec94, "MS-7C94", 1),
 	SND_PCI_QUIRK(0x8086, 0x2060, "Intel NUC5CPYB", 1),
 	SND_PCI_QUIRK(0x8086, 0x2081, "Intel NUC 10", 1),
-- 
2.43.0

