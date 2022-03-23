Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 8D9BC4E59BB
	for <lists+intel-gfx@lfdr.de>; Wed, 23 Mar 2022 21:17:58 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 195DA10E05C;
	Wed, 23 Mar 2022 20:17:55 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
 by gabe.freedesktop.org (Postfix) with ESMTPS id CE7E210E05C
 for <intel-gfx@lists.freedesktop.org>; Wed, 23 Mar 2022 20:17:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1648066673; x=1679602673;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=yiwzb6pZwRSiEudnsfJDkFxeM1QLhYEsHKfiA84SIoE=;
 b=i3ZQKHsBr47gaRkRgeq4QyhwVL59QB6kPRfcgvZ03DDYGb7of5+mrLHE
 8QttD9buBUeVNPi8HdGkDIIux3t/D1WnlfdMN/D/ljO85va7ZbzY9LovL
 KsyFMfsLppUSfcuvdDq+VvBB09xQP7WUFkf8xrWRWQEvzpct/s74ISFHo
 TzlPLYyZxmh4tZ/30CvcHzAGBVuVqq0iHq/lrLHliLpiLXTLGhKr3b70e
 r9eK57qKQCq4Wg9HK+QPd5v7NOXgB2+zUPZ2BXRZXgJO02ZnzIFk1/3Ha
 ewQ4zQhxsDhtTH+EIsPCtlP9N8csoygCVjUTRME+2i0a8U/8Brug3N+9U g==;
X-IronPort-AV: E=McAfee;i="6200,9189,10295"; a="257929614"
X-IronPort-AV: E=Sophos;i="5.90,204,1643702400"; d="scan'208";a="257929614"
Received: from orsmga005.jf.intel.com ([10.7.209.41])
 by orsmga102.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 23 Mar 2022 13:17:53 -0700
X-IronPort-AV: E=Sophos;i="5.90,204,1643702400"; d="scan'208";a="717549445"
Received: from ideak-desk.fi.intel.com ([10.237.72.175])
 by orsmga005-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 23 Mar 2022 13:17:51 -0700
From: Imre Deak <imre.deak@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Wed, 23 Mar 2022 22:17:49 +0200
Message-Id: <20220323201749.288566-1-imre.deak@intel.com>
X-Mailer: git-send-email 2.30.2
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH] drm/i915/adlp: Fix register corruption after
 DDI clock enabling
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
Cc: Arthur J Runyan <arthur.j.runyan@intel.com>
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

Accessing the DDI_BUF_CTL register without the port's DDI clock being
enabled (to set/clear the TypeC PHY ownership for the port) can lead to
a corrupted value read during any i915 register access right after the
DDI clock is enabled.

The root cause is the way clock synchronization works for this register,
controlled by the CHICKEN_DCPR_1 DDI_CLOCK_REG_ACCESS flag. Correctly
this flag should be cleared on ADLP (see the Bspec link below), however
after bootup the flag is set.

One easily reproducible issue is an unclaimed register access of the
PWR_WELL_CTL_DDI2 register, programmed right after DDI clock enabling to
enable the port's DDI_IO power well (see the HSDES, VLK links below).
With the correct setting above this problem can't be reproduced.

Bspec: 49189
HSDES: 18019028154
VLK: 28328, 28655

Cc: Jouni Högander <jouni.hogander@intel.com>
Cc: Arthur J Runyan <arthur.j.runyan@intel.com>
Signed-off-by: Imre Deak <imre.deak@intel.com>
---
 drivers/gpu/drm/i915/i915_reg.h | 1 +
 drivers/gpu/drm/i915/intel_pm.c | 3 +++
 2 files changed, 4 insertions(+)

diff --git a/drivers/gpu/drm/i915/i915_reg.h b/drivers/gpu/drm/i915/i915_reg.h
index a0d652f19ff93..d83bd7a75c788 100644
--- a/drivers/gpu/drm/i915/i915_reg.h
+++ b/drivers/gpu/drm/i915/i915_reg.h
@@ -5939,6 +5939,7 @@
 #define   ICL_DELAY_PMRSP			REG_BIT(22)
 #define   DISABLE_FLR_SRC			REG_BIT(15)
 #define   MASK_WAKEMEM				REG_BIT(13)
+#define   DDI_CLOCK_REG_ACCESS			REG_BIT(7)
 
 #define GEN11_CHICKEN_DCPR_2			_MMIO(0x46434)
 #define   DCPR_MASK_MAXLATENCY_MEMUP_CLR	REG_BIT(27)
diff --git a/drivers/gpu/drm/i915/intel_pm.c b/drivers/gpu/drm/i915/intel_pm.c
index 2c3cd4d775daf..4291963013c51 100644
--- a/drivers/gpu/drm/i915/intel_pm.c
+++ b/drivers/gpu/drm/i915/intel_pm.c
@@ -7470,6 +7470,9 @@ static void adlp_init_clock_gating(struct drm_i915_private *dev_priv)
 
 	/* Wa_22011091694:adlp */
 	intel_de_rmw(dev_priv, GEN9_CLKGATE_DIS_5, 0, DPCE_GATING_DIS);
+
+	/* Bspec/49189 Initialize Sequence */
+	intel_de_rmw(dev_priv, GEN8_CHICKEN_DCPR_1, DDI_CLOCK_REG_ACCESS, 0);
 }
 
 static void dg1_init_clock_gating(struct drm_i915_private *dev_priv)
-- 
2.30.2

