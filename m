Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id E70534B6B4F
	for <lists+intel-gfx@lfdr.de>; Tue, 15 Feb 2022 12:42:30 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 0C81B10E444;
	Tue, 15 Feb 2022 11:42:29 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
 by gabe.freedesktop.org (Postfix) with ESMTPS id AF59E10E455
 for <intel-gfx@lists.freedesktop.org>; Tue, 15 Feb 2022 11:42:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1644925347; x=1676461347;
 h=from:to:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=BpWQkJsRFSS1jW6LzHqxzIN8EsuOrNwhpGIdVsRzWgs=;
 b=cGjBZCVvSboQSwebl2PwmG+wVvwL6yAlm5AOOvPV1IaSSnY+BqEXQTq9
 RzJ2zlwer4++2hHY45/5FmoqcgE3PHTBfZJWRP7bbJy8Vh+hMToiIxWxt
 VqmBOOFi90QkH/1rwA1uGC7ooQMMdlJn9FEvZN4cp3gvL0dEgS04ipZLh
 ktpiAMrpajQ4mV6R5meJGMDbBJCH03JRxeeg3j3SYdHP0pC6SrZ9Fbe20
 VzCnJsUznW2OtFkdAMIA8EdI84ecLBIMkryfq4YJu462m74pq4UcT5n4G
 6/nAG2qEjVxqrAuHUrsPg86pZYhjm7t9E38DuGLICC6Tjne01pIGW3yuD g==;
X-IronPort-AV: E=McAfee;i="6200,9189,10258"; a="274907356"
X-IronPort-AV: E=Sophos;i="5.88,370,1635231600"; d="scan'208";a="274907356"
Received: from orsmga008.jf.intel.com ([10.7.209.65])
 by fmsmga101.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 15 Feb 2022 03:42:27 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.88,370,1635231600"; d="scan'208";a="544260332"
Received: from tejas-system-product-name.iind.intel.com ([10.145.162.130])
 by orsmga008.jf.intel.com with ESMTP; 15 Feb 2022 03:42:26 -0800
From: Tejas Upadhyay <tejaskumarx.surendrakumar.upadhyay@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Tue, 15 Feb 2022 17:08:18 +0530
Message-Id: <20220215113818.729239-1-tejaskumarx.surendrakumar.upadhyay@intel.com>
X-Mailer: git-send-email 2.34.1
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH] iommu/vt-d: Add RPLS to quirk list to skip TE
 disabling
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

The VT-d spec requires (10.4.4 Global Command Register, TE
field) that:

Hardware implementations supporting DMA draining must drain
any in-flight DMA read/write requests queued within the
Root-Complex before completing the translation enable
command and reflecting the status of the command through
the TES field in the Global Status register.

Unfortunately, some integrated graphic devices fail to do
so after some kind of power state transition. As the
result, the system might stuck in iommu_disable_translati
on(), waiting for the completion of TE transition.

This adds RPLS to a quirk list for those devices and skips
TE disabling if the qurik hits.

Fixes: https://gitlab.freedesktop.org/drm/intel/-/issues/4898
Fixes: LCK-10789
Tested-by: Raviteja Goud Talla <ravitejax.goud.talla@intel.com>
Cc: Ashok Raj <ashok.raj@intel.com>
Cc: stable@vger.kernel.org
Signed-off-by: Tejas Upadhyay <tejaskumarx.surendrakumar.upadhyay@intel.com>
---
 drivers/iommu/intel/iommu.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/iommu/intel/iommu.c b/drivers/iommu/intel/iommu.c
index 639e4438827e..bd6dac90a948 100644
--- a/drivers/iommu/intel/iommu.c
+++ b/drivers/iommu/intel/iommu.c
@@ -5741,7 +5741,7 @@ static void quirk_igfx_skip_te_disable(struct pci_dev *dev)
 	ver = (dev->device >> 8) & 0xff;
 	if (ver != 0x45 && ver != 0x46 && ver != 0x4c &&
 	    ver != 0x4e && ver != 0x8a && ver != 0x98 &&
-	    ver != 0x9a)
+	    ver != 0x9a && ver != 0xa7)
 		return;
 
 	if (risky_device(dev))
-- 
2.34.1

