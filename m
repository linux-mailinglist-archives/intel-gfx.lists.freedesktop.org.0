Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 78E3480F526
	for <lists+intel-gfx@lfdr.de>; Tue, 12 Dec 2023 19:03:04 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 6DED010E650;
	Tue, 12 Dec 2023 18:03:02 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.55.52.136])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 8F45110E202
 for <intel-gfx@lists.freedesktop.org>; Tue, 12 Dec 2023 18:02:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1702404179; x=1733940179;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=E193hNF62p4RxxOXOlPEJoOpr7KjmaB6U7TK7g2ME1M=;
 b=JlW/Wu609GDSMQfxZaZiPwxTxe5nVB+Eyxf+EpM3fHgIh5YlGu2kp/Eo
 2XFOmH+eLHs0LR45HWCgxqmuYOzqEUsdcEI/uFQKpClWRcpCkV+g8Rdqk
 BCCD1MkEO6A5DWLEjH7Vo2uPhPVbefqXAA+MPUkezbF6DIH69l8l5/vK1
 LnORPNM7l+MOhJMhG9CHX5uzAA5FiSNyFwuUlbnCG+Q0xbk7vaRkm4JnU
 u/s+v2STTnB4riWWa2iJ1nRTTw53Uhj497uBKiUfqf5MdyZ5wKQbKyXyE
 ZPcCN7yaIXScdS0jBwe54Wql0e05Jd1ApUCGswPkKgWS1jF2OeJkR0lp9 w==;
X-IronPort-AV: E=McAfee;i="6600,9927,10922"; a="374350740"
X-IronPort-AV: E=Sophos;i="6.04,270,1695711600"; d="scan'208";a="374350740"
Received: from orsmga004.jf.intel.com ([10.7.209.38])
 by fmsmga106.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 12 Dec 2023 10:02:59 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10922"; a="897003081"
X-IronPort-AV: E=Sophos;i="6.04,270,1695711600"; d="scan'208";a="897003081"
Received: from eliteleevi.tm.intel.com ([10.237.54.20])
 by orsmga004.jf.intel.com with ESMTP; 12 Dec 2023 10:02:57 -0800
From: Kai Vehmanen <kai.vehmanen@linux.intel.com>
To: intel-gfx@lists.freedesktop.org
Subject: [PATCH 1/6] Revert "ALSA: hda/hdmi: add force-connect quirk for
 ASUSTeK Z170M Pro"
Date: Tue, 12 Dec 2023 20:02:48 +0200
Message-ID: <20231212180253.2883124-2-kai.vehmanen@linux.intel.com>
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

This reverts commit 6b2bcf964cad023bd9695a5cd842390578a7d1c9.

Signed-off-by: Kai Vehmanen <kai.vehmanen@linux.intel.com>
---
 sound/pci/hda/patch_hdmi.c | 1 -
 1 file changed, 1 deletion(-)

diff --git a/sound/pci/hda/patch_hdmi.c b/sound/pci/hda/patch_hdmi.c
index 8bf91fe25c65..3d7f8f510ec7 100644
--- a/sound/pci/hda/patch_hdmi.c
+++ b/sound/pci/hda/patch_hdmi.c
@@ -1995,7 +1995,6 @@ static const struct snd_pci_quirk force_connect_list[] = {
 	SND_PCI_QUIRK(0x103c, 0x8715, "HP", 1),
 	SND_PCI_QUIRK(0x1043, 0x8694, "ASUS", 1),  /* SKL/KBL + PRIME B560M-A */
 	SND_PCI_QUIRK(0x1043, 0x86ae, "ASUS", 1),  /* SKL + Z170 PRO */
-	SND_PCI_QUIRK(0x1043, 0x86c7, "ASUS", 1),  /* KBL + Z170M PRO */
 	SND_PCI_QUIRK(0x1462, 0xec94, "MS-7C94", 1),
 	SND_PCI_QUIRK(0x8086, 0x2060, "Intel NUC5CPYB", 1),
 	SND_PCI_QUIRK(0x8086, 0x2081, "Intel NUC 10", 1),
-- 
2.43.0

