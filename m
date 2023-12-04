Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id F2775803654
	for <lists+intel-gfx@lfdr.de>; Mon,  4 Dec 2023 15:22:11 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 6ABE910E26D;
	Mon,  4 Dec 2023 14:22:08 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [134.134.136.20])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 3826710E26D
 for <intel-gfx@lists.freedesktop.org>; Mon,  4 Dec 2023 14:22:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1701699724; x=1733235724;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=z2lgRiLNGzbE0GftvYDhIPtXZEO/Qb50UxpTo5e9FUo=;
 b=lbiTE2CTYf6diNsk3zwVYaUtf2F3NEa7Y1cttB6bLb6GxMN8a2740uk8
 jU5W22HZaqd6ERPvNh5SkOu80wCq9XBK+FdwbRhrh/ktzfAwtZbQ5CMy+
 3dwVDbYZHgEMIvT7n7cWMPKEuAFXao2+Xe+Kq6SSpa+NFQUlZylLJ2QWN
 8QvyrpQSrkW7tw0R0uJo7ucNK7tfHlziOmyTgkJpP5S6Ql7LYhmTTqDnz
 +CY2NgmKx4wMcYtNjyNmYRhs8Us/Kc0q0/hOLY28T1QfOiqgK1xSzhJsR
 gvdkUrVrh5fibfKPJy0DsjjlJoLykr0iKSViMJ05X/OgNnn4SFlQJVtj4 w==;
X-IronPort-AV: E=McAfee;i="6600,9927,10914"; a="384144531"
X-IronPort-AV: E=Sophos;i="6.04,249,1695711600"; d="scan'208";a="384144531"
Received: from orsmga007.jf.intel.com ([10.7.209.58])
 by orsmga101.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 04 Dec 2023 06:10:01 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10914"; a="763959009"
X-IronPort-AV: E=Sophos;i="6.04,249,1695711600"; d="scan'208";a="763959009"
Received: from eliteleevi.tm.intel.com ([10.237.54.20])
 by orsmga007.jf.intel.com with ESMTP; 04 Dec 2023 06:10:01 -0800
From: Kai Vehmanen <kai.vehmanen@linux.intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Mon,  4 Dec 2023 16:09:55 +0200
Message-ID: <20231204140955.2020491-4-kai.vehmanen@linux.intel.com>
X-Mailer: git-send-email 2.43.0
In-Reply-To: <20231204140955.2020491-1-kai.vehmanen@linux.intel.com>
References: <20231204140955.2020491-1-kai.vehmanen@linux.intel.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH 3/3] ALSA: hda/hdmi: add connect-all quirk for
 ASUSTeK Z170 Pro
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

On ASUSTeK Z170 PRO GAMING + Intel Sky Lake system the display codec
pins are not registered properly without the connect-all quirk.

Link: https://gitlab.freedesktop.org/drm/igt-gpu-tools/-/issues/3
Signed-off-by: Kai Vehmanen <kai.vehmanen@linux.intel.com>
---
 sound/pci/hda/patch_hdmi.c | 1 +
 1 file changed, 1 insertion(+)

diff --git a/sound/pci/hda/patch_hdmi.c b/sound/pci/hda/patch_hdmi.c
index 5232c46a32a7..3d7f8f510ec7 100644
--- a/sound/pci/hda/patch_hdmi.c
+++ b/sound/pci/hda/patch_hdmi.c
@@ -1994,6 +1994,7 @@ static const struct snd_pci_quirk force_connect_list[] = {
 	SND_PCI_QUIRK(0x103c, 0x8711, "HP", 1),
 	SND_PCI_QUIRK(0x103c, 0x8715, "HP", 1),
 	SND_PCI_QUIRK(0x1043, 0x8694, "ASUS", 1),  /* SKL/KBL + PRIME B560M-A */
+	SND_PCI_QUIRK(0x1043, 0x86ae, "ASUS", 1),  /* SKL + Z170 PRO */
 	SND_PCI_QUIRK(0x1462, 0xec94, "MS-7C94", 1),
 	SND_PCI_QUIRK(0x8086, 0x2060, "Intel NUC5CPYB", 1),
 	SND_PCI_QUIRK(0x8086, 0x2081, "Intel NUC 10", 1),
-- 
2.43.0

