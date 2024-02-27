Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 417EC869C50
	for <lists+intel-gfx@lfdr.de>; Tue, 27 Feb 2024 17:37:42 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id C15BA10E4A7;
	Tue, 27 Feb 2024 16:37:40 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="OfJrgVVo";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.9])
 by gabe.freedesktop.org (Postfix) with ESMTPS id C48CE10E4A7
 for <intel-gfx@lists.freedesktop.org>; Tue, 27 Feb 2024 16:37:36 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1709051857; x=1740587857;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=MhCFoDScNgWCTIxuuo0vte1IIi82gLta1GYSEke9ohU=;
 b=OfJrgVVoadE6pmcz177lIGh8v2M27XmbPW/zaVddB6UM14EIh52Jcmyy
 kjGCNuYwSblQ4x85+2PB2hUqeMYmeAwdGCro5LKStTpS323E7jHa4HscI
 MzM3z2q3t8rqsqT5Klhbm5hI2+8ETtYAyKJXoVOFPGIQD8OBBK3ngmCzx
 dTW3TDu1J1Fgs+pTerul73j6hu2NBAq4C+Rkvi0lkO4DXr2ZoWOSbajdk
 HwDzNt1zfW4XNfREoQ5GHOzv2DrBl799Jc3BoyX9XM5Za0izlD+08jbAt
 +rJe0ihpF+T8MEpebWaF+9Xf6eg7YUsfA6hdkTx9RUIm16BV537+hr08d g==;
X-IronPort-AV: E=McAfee;i="6600,9927,10996"; a="25866713"
X-IronPort-AV: E=Sophos;i="6.06,188,1705392000"; d="scan'208";a="25866713"
Received: from orviesa006.jf.intel.com ([10.64.159.146])
 by orvoesa101.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 27 Feb 2024 08:37:31 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.06,188,1705392000"; 
   d="scan'208";a="7533562"
Received: from dut-internal-9dd7.jf.intel.com ([10.165.21.194])
 by orviesa006-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 27 Feb 2024 08:37:31 -0800
From: Jonathan Cavitt <jonathan.cavitt@intel.com>
To: intel-gfx@lists.freedesktop.org
Cc: saurabhg.gupta@intel.com, jonathan.cavitt@intel.com,
 rodrigo.vivi@intel.com, tomasz.mistat@intel.com
Subject: [PATCH 1/3] mei: me: add arrow lake point S DID
Date: Tue, 27 Feb 2024 08:26:31 -0800
Message-Id: <20240227162633.1833550-1-jonathan.cavitt@intel.com>
X-Mailer: git-send-email 2.25.1
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

From: Alexander Usyskin <alexander.usyskin@intel.com>

Add Arrow Lake S device id.

Cc: <stable@vger.kernel.org>
Signed-off-by: Alexander Usyskin <alexander.usyskin@intel.com>
Signed-off-by: Tomas Winkler <tomas.winkler@intel.com>
---
 drivers/misc/mei/hw-me-regs.h | 1 +
 drivers/misc/mei/pci-me.c     | 1 +
 2 files changed, 2 insertions(+)

diff --git a/drivers/misc/mei/hw-me-regs.h b/drivers/misc/mei/hw-me-regs.h
index 961e5d53a27a8..b10536e4974db 100644
--- a/drivers/misc/mei/hw-me-regs.h
+++ b/drivers/misc/mei/hw-me-regs.h
@@ -112,6 +112,7 @@
 #define MEI_DEV_ID_RPL_S      0x7A68  /* Raptor Lake Point S */
 
 #define MEI_DEV_ID_MTL_M      0x7E70  /* Meteor Lake Point M */
+#define MEI_DEV_ID_ARL_S      0x7F68  /* Arrow Lake Point S */
 
 /*
  * MEI HW Section
diff --git a/drivers/misc/mei/pci-me.c b/drivers/misc/mei/pci-me.c
index 676d566f38ddf..1a614fb7fdb67 100644
--- a/drivers/misc/mei/pci-me.c
+++ b/drivers/misc/mei/pci-me.c
@@ -119,6 +119,7 @@ static const struct pci_device_id mei_me_pci_tbl[] = {
 	{MEI_PCI_DEVICE(MEI_DEV_ID_RPL_S, MEI_ME_PCH15_CFG)},
 
 	{MEI_PCI_DEVICE(MEI_DEV_ID_MTL_M, MEI_ME_PCH15_CFG)},
+	{MEI_PCI_DEVICE(MEI_DEV_ID_ARL_S, MEI_ME_PCH15_CFG)},
 
 	/* required last entry */
 	{0, }
-- 
2.25.1

