Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 296E868D6F6
	for <lists+intel-gfx@lfdr.de>; Tue,  7 Feb 2023 13:40:56 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 60E4110E4ED;
	Tue,  7 Feb 2023 12:40:54 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga12.intel.com (mga12.intel.com [192.55.52.136])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 891EF10E4ED
 for <intel-gfx@lists.freedesktop.org>; Tue,  7 Feb 2023 12:40:52 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1675773652; x=1707309652;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=0/iH4Ueo7+9cwJv/OHWF6wMuTJcO6neTFMuLbkmIeys=;
 b=XoUnp8X1pccXpXABQ/k2Aq+Ba3j1cGS/QQNHCyLKPpZE+cGWhmsYso45
 S8dhmkoyHUGsAUns8zqKYrBbTH0Iugxk8ZXFwFn/gYICoqfug8DCZfj1F
 b1Q3cZBLVIj6Iz/GEvp9slETYCqmN25cg2jvPVbeu+cpRB4mOJvKPMAF/
 2/OnLcWvHWBF9nfiDeFVrMaXxivGMPA4n1cFnX71oQdxKTRHaKKbij4Qt
 gBVaT4OMj+75OIAMQGE7R0LvTUb7sTxps4QiDut7ZvKyKKF4TTpl5HnOv
 3AjdgCRjRadpvj3sQBbfRnD/KMtWez7fymSdifgDp71sDIeeFwAPLwQMi A==;
X-IronPort-AV: E=McAfee;i="6500,9779,10613"; a="309141418"
X-IronPort-AV: E=Sophos;i="5.97,278,1669104000"; d="scan'208";a="309141418"
Received: from orsmga008.jf.intel.com ([10.7.209.65])
 by fmsmga106.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 07 Feb 2023 04:40:37 -0800
X-IronPort-AV: E=McAfee;i="6500,9779,10613"; a="697268432"
X-IronPort-AV: E=Sophos;i="5.97,278,1669104000"; d="scan'208";a="697268432"
Received: from tronach-mobl.ger.corp.intel.com (HELO localhost)
 ([10.252.36.11])
 by orsmga008-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 07 Feb 2023 04:40:35 -0800
From: Jani Nikula <jani.nikula@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Tue,  7 Feb 2023 14:40:24 +0200
Message-Id: <20230207124026.2105442-2-jani.nikula@intel.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20230207124026.2105442-1-jani.nikula@intel.com>
References: <20230207124026.2105442-1-jani.nikula@intel.com>
MIME-Version: 1.0
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH 2/4] drm/i915/uncore: cast iomem to avoid sparse
 warning
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
Cc: jani.nikula@intel.com
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

drmm_add_action_or_reset() is unaware of __iomem and the pointer needs
to be a plain void *. Cast __iomem away and back while the pointer goes
through drmm.

drivers/gpu/drm/i915/intel_uncore.c:2463:17: warning: incorrect type in argument 1 (different address spaces)
drivers/gpu/drm/i915/intel_uncore.c:2463:17:    expected void volatile [noderef] __iomem *addr
drivers/gpu/drm/i915/intel_uncore.c:2463:17:    got void *regs
drivers/gpu/drm/i915/intel_uncore.c:2494:16: warning: incorrect type in argument 3 (different address spaces)
drivers/gpu/drm/i915/intel_uncore.c:2494:16:    expected void *data
drivers/gpu/drm/i915/intel_uncore.c:2494:16:    got void [noderef] __iomem *regs

Cc: Matt Roper <matthew.d.roper@intel.com>
Signed-off-by: Jani Nikula <jani.nikula@intel.com>
---
 drivers/gpu/drm/i915/intel_uncore.c | 5 +++--
 1 file changed, 3 insertions(+), 2 deletions(-)

diff --git a/drivers/gpu/drm/i915/intel_uncore.c b/drivers/gpu/drm/i915/intel_uncore.c
index 8dee9e62a73e..f018da7ebaac 100644
--- a/drivers/gpu/drm/i915/intel_uncore.c
+++ b/drivers/gpu/drm/i915/intel_uncore.c
@@ -2460,7 +2460,7 @@ static int i915_pmic_bus_access_notifier(struct notifier_block *nb,
 
 static void uncore_unmap_mmio(struct drm_device *drm, void *regs)
 {
-	iounmap(regs);
+	iounmap((void __iomem *)regs);
 }
 
 int intel_uncore_setup_mmio(struct intel_uncore *uncore, phys_addr_t phys_addr)
@@ -2491,7 +2491,8 @@ int intel_uncore_setup_mmio(struct intel_uncore *uncore, phys_addr_t phys_addr)
 		return -EIO;
 	}
 
-	return drmm_add_action_or_reset(&i915->drm, uncore_unmap_mmio, uncore->regs);
+	return drmm_add_action_or_reset(&i915->drm, uncore_unmap_mmio,
+					(void __force *)uncore->regs);
 }
 
 void intel_uncore_init_early(struct intel_uncore *uncore,
-- 
2.34.1

