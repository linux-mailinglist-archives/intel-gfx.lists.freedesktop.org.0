Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 48416302605
	for <lists+intel-gfx@lfdr.de>; Mon, 25 Jan 2021 15:08:53 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 6AC306E15D;
	Mon, 25 Jan 2021 14:08:51 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
 by gabe.freedesktop.org (Postfix) with ESMTPS id E09316E054
 for <intel-gfx@lists.freedesktop.org>; Mon, 25 Jan 2021 14:08:49 +0000 (UTC)
IronPort-SDR: g36qQkfMmLvevxHE0F4mCsSiKQHGyOnJT8wBZ4/gA0Z33+mhov9LUZOseC9tpKxWDng3KzTsHZ
 95bd2VYwWN+w==
X-IronPort-AV: E=McAfee;i="6000,8403,9874"; a="179879100"
X-IronPort-AV: E=Sophos;i="5.79,373,1602572400"; d="scan'208";a="179879100"
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
 by orsmga102.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 25 Jan 2021 06:08:28 -0800
IronPort-SDR: PrOCqdp9md9j0WwAs0EduA78tXGrh/dE5fOPcfoJBGaEVVXibdvPtyq3GGG2zowRCuN5nlvzNV
 WsV0lrrIiP2A==
X-IronPort-AV: E=Sophos;i="5.79,373,1602572400"; d="scan'208";a="472319525"
Received: from iduggana-mobl.amr.corp.intel.com (HELO
 aswarup-mobl.amr.corp.intel.com) ([10.254.81.9])
 by fmsmga001-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 25 Jan 2021 06:08:27 -0800
From: Aditya Swarup <aditya.swarup@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Mon, 25 Jan 2021 06:07:44 -0800
Message-Id: <20210125140753.347998-2-aditya.swarup@intel.com>
X-Mailer: git-send-email 2.27.0
In-Reply-To: <20210125140753.347998-1-aditya.swarup@intel.com>
References: <20210125140753.347998-1-aditya.swarup@intel.com>
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH 01/10] x86/gpu: Add Alderlake-S stolen memory
 support
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
Cc: Lucas De Marchi <lucas.demarchi@intel.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

From: Caz Yokoyama <caz.yokoyama@intel.com>

Alderlake-S is a Gen 12 based hybrid processor architeture. As it
belongs to Gen 12 family, it uses the same GTT stolen memory settings
like its predecessors - ICL(Gen 11) and TGL(Gen 12). This patch inherits
the gen11 and gen 9 quirks for determining base and size of stolen
memory.

Note that this patch depends on commit 0883d63b19bb
("drm/i915/adl_s: Add ADL-S platform info and PCI ids")

Bspec: 52055
Bspec: 49589
Bspec: 49636

Cc: Lucas De Marchi <lucas.demarchi@intel.com>
Signed-off-by: Caz Yokoyama <caz.yokoyama@intel.com>
Signed-off-by: Aditya Swarup <aditya.swarup@intel.com>
Reviewed-by: Lucas De Marchi <lucas.demarchi@intel.com>
---
 arch/x86/kernel/early-quirks.c | 1 +
 1 file changed, 1 insertion(+)

diff --git a/arch/x86/kernel/early-quirks.c b/arch/x86/kernel/early-quirks.c
index a4b5af03dcc1..6edd1e2ee8af 100644
--- a/arch/x86/kernel/early-quirks.c
+++ b/arch/x86/kernel/early-quirks.c
@@ -551,6 +551,7 @@ static const struct pci_device_id intel_early_ids[] __initconst = {
 	INTEL_EHL_IDS(&gen11_early_ops),
 	INTEL_TGL_12_IDS(&gen11_early_ops),
 	INTEL_RKL_IDS(&gen11_early_ops),
+	INTEL_ADLS_IDS(&gen11_early_ops),
 };
 
 struct resource intel_graphics_stolen_res __ro_after_init = DEFINE_RES_MEM(0, 0);
-- 
2.27.0

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
