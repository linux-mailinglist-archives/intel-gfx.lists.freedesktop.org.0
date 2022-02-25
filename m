Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 93DD74C472F
	for <lists+intel-gfx@lfdr.de>; Fri, 25 Feb 2022 15:15:33 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id CE1FA10E117;
	Fri, 25 Feb 2022 14:15:31 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 7FD2910E117
 for <intel-gfx@lists.freedesktop.org>; Fri, 25 Feb 2022 14:15:30 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1645798530; x=1677334530;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=cLN3jU46ljo9GHa/mh6x70r9U4OK5wiIc2nMJlrJVdM=;
 b=m2CMyAKuPtOdRBkLP9Fp7ncOf1BE5LQ57jg9hYSQwy7n4zukl/8ybSTR
 eVJBJomWvn4JBoFqDybwgCWWn7MGeki8J80z4++V2bvavzVoEzXydTRit
 fLIlgikdDtdYkw9VFokSDwiUkdLEifN0zVum7j2Z6L0yRj4EhlqC5cxfM
 o35kxBVvl31ia7RdjpLnDO27Vj7XtAm7X/IJDstSWICpapxI1jRr4tX1g
 QhCdIVUYRCHN+pnlWURnrNzlpnuDs6QMlmv57EwLTJeJEm8MPm+Ns55Rp
 ANYK3Z3LTva/+8FZqIZecohkERCX0g8FQx6WCFrEbrGa54eQsOHv5X2/5 Q==;
X-IronPort-AV: E=McAfee;i="6200,9189,10268"; a="277135390"
X-IronPort-AV: E=Sophos;i="5.90,136,1643702400"; d="scan'208";a="277135390"
Received: from orsmga008.jf.intel.com ([10.7.209.65])
 by fmsmga101.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 25 Feb 2022 06:15:29 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.90,136,1643702400"; d="scan'208";a="549275377"
Received: from tejas-system-product-name.iind.intel.com ([10.145.162.130])
 by orsmga008.jf.intel.com with ESMTP; 25 Feb 2022 06:15:27 -0800
From: Tejas Upadhyay <tejaskumarx.surendrakumar.upadhyay@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Fri, 25 Feb 2022 19:31:57 +0530
Message-Id: <20220225140157.162399-1-tejaskumarx.surendrakumar.upadhyay@intel.com>
X-Mailer: git-send-email 2.34.1
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH topic/core-for-CI] iommu/vt-d: Add RPLS to quirk
 list to skip TE disabling
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
Cc: Raviteja Goud Talla <ravitejax.goud.talla@intel.com>,
 Tejas Upadhyay <tejaskumarx.surendrakumar.upadhyay@intel.com>,
 Rodrigo Vivi <rodrigo.vivi@intel.com>
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

Closes: https://gitlab.freedesktop.org/drm/intel/-/issues/4898
Tested-by: Raviteja Goud Talla <ravitejax.goud.talla@intel.com>
Reviewed-by: Rodrigo Vivi <rodrigo.vivi@intel.com>
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

