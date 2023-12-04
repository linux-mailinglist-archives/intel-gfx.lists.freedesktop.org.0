Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 5C4D580364F
	for <lists+intel-gfx@lfdr.de>; Mon,  4 Dec 2023 15:22:05 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 8A6F710E1E3;
	Mon,  4 Dec 2023 14:22:03 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [134.134.136.20])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 6B32910E2EA
 for <intel-gfx@lists.freedesktop.org>; Mon,  4 Dec 2023 14:22:00 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1701699720; x=1733235720;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=H9jEJcfaCMdjLM8CmqY8/smZbvXoD0x/WzXgqKWxXUU=;
 b=jHOL7E81VvB61vQQ8AIUQaDdPttWXCv8ssuCpNr8hy/KVOUzX7xV+KZ4
 9oNOAEO42IdoI1ep3lbFVth9O7Qf/6YC9c3lXFTrCJUcs/xRLv4BdRy6a
 8Ftc0YfpJwNT/N/WSUlCV1GF/6XEEV3V4HMGhng+PaY/Cfoj5H/D3V3fU
 ZWUE+M/ZfMQolmQs1V/hDCgJHY4Ml988l7U2GFAuANJ3qAyAsuw8XW+YR
 waa0QDUoIVZuOIpfMrhvmDS0Yw8MXUZOzdSJ+PeorVXD6DIo4bpGON7m0
 INh22UZyuYZeQH0ioXNQwnVl3SOon7ooW7opL2bQCF/QAlka5aRSZoSp0 w==;
X-IronPort-AV: E=McAfee;i="6600,9927,10914"; a="384144495"
X-IronPort-AV: E=Sophos;i="6.04,249,1695711600"; d="scan'208";a="384144495"
Received: from orsmga007.jf.intel.com ([10.7.209.58])
 by orsmga101.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 04 Dec 2023 06:09:59 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10914"; a="763958993"
X-IronPort-AV: E=Sophos;i="6.04,249,1695711600"; d="scan'208";a="763958993"
Received: from eliteleevi.tm.intel.com ([10.237.54.20])
 by orsmga007.jf.intel.com with ESMTP; 04 Dec 2023 06:09:58 -0800
From: Kai Vehmanen <kai.vehmanen@linux.intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Mon,  4 Dec 2023 16:09:53 +0200
Message-ID: <20231204140955.2020491-2-kai.vehmanen@linux.intel.com>
X-Mailer: git-send-email 2.43.0
In-Reply-To: <20231204140955.2020491-1-kai.vehmanen@linux.intel.com>
References: <20231204140955.2020491-1-kai.vehmanen@linux.intel.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH 1/3] ALSA: hda/hdmi: add connect-all quirk for
 NUC5CPYB
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

Add one more older NUC model that requires quirk to force
all pins to be connected.

Without this quirk, only one pin is registered as a PCM and
this leads to failures in monitor connection tests (igt
test kms_hdmi_inject@inject-audio).

Link: https://gitlab.freedesktop.org/drm/igt-gpu-tools/-/issues/3
Signed-off-by: Kai Vehmanen <kai.vehmanen@linux.intel.com>
---
 sound/pci/hda/patch_hdmi.c | 1 +
 1 file changed, 1 insertion(+)

diff --git a/sound/pci/hda/patch_hdmi.c b/sound/pci/hda/patch_hdmi.c
index 1cde2a69bdb4..b152c941414f 100644
--- a/sound/pci/hda/patch_hdmi.c
+++ b/sound/pci/hda/patch_hdmi.c
@@ -1994,6 +1994,7 @@ static const struct snd_pci_quirk force_connect_list[] = {
 	SND_PCI_QUIRK(0x103c, 0x8711, "HP", 1),
 	SND_PCI_QUIRK(0x103c, 0x8715, "HP", 1),
 	SND_PCI_QUIRK(0x1462, 0xec94, "MS-7C94", 1),
+	SND_PCI_QUIRK(0x8086, 0x2060, "Intel NUC5CPYB", 1),
 	SND_PCI_QUIRK(0x8086, 0x2081, "Intel NUC 10", 1),
 	{}
 };
-- 
2.43.0

