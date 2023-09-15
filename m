Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 9FDCD7A251A
	for <lists+intel-gfx@lfdr.de>; Fri, 15 Sep 2023 19:47:20 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 2251A10E671;
	Fri, 15 Sep 2023 17:47:10 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [134.134.136.100])
 by gabe.freedesktop.org (Postfix) with ESMTPS id A8FB210E671;
 Fri, 15 Sep 2023 17:46:52 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1694800012; x=1726336012;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=a7+gh32prj8nz06hf6z+QcrNIirN7XXaqMYJyv6/LZw=;
 b=ElmUvq2X8p6Cc2o9CPl+Y4MiB5FRWI5SNoCh3FL83iSTjCujQtqxmTko
 0xZCpF3q4DXWnyUflv3uzqDlDfxV2bTnJ65XJ3a0yrKNUJ6l/y0OyNLZY
 BnCvPIuZD3qYXoUvLiafgihPjcC/8K9dmmkPxX1MSfpAMdW0FRZTLs3rx
 ugJIE1/bdX82qZbnSatvEPB7DEh0lOk8KOHvS9s1oNySoIf1KQtwfO4Jl
 m3MLcTPTS6A3A94ILboolWspee/yT7TuDBDX5aXmp1dloW8k8xQJeQpye
 RijzhTKvKMRk3zPkBNj05MVCN8ZOKRHO2knw7AKDfRcGNqFMt+ZXvVDrf w==;
X-IronPort-AV: E=McAfee;i="6600,9927,10834"; a="445779281"
X-IronPort-AV: E=Sophos;i="6.02,149,1688454000"; d="scan'208";a="445779281"
Received: from orsmga004.jf.intel.com ([10.7.209.38])
 by orsmga105.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 15 Sep 2023 10:46:50 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10834"; a="868818290"
X-IronPort-AV: E=Sophos;i="6.02,149,1688454000"; d="scan'208";a="868818290"
Received: from lucas-s2600cw.jf.intel.com ([10.165.21.196])
 by orsmga004-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 15 Sep 2023 10:46:50 -0700
From: Lucas De Marchi <lucas.demarchi@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Fri, 15 Sep 2023 10:46:41 -0700
Message-Id: <20230915174651.1928176-21-lucas.demarchi@intel.com>
X-Mailer: git-send-email 2.40.1
In-Reply-To: <20230915174651.1928176-1-lucas.demarchi@intel.com>
References: <20230915174651.1928176-1-lucas.demarchi@intel.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH v4 20/30] drm/i915/xe2lpd: Add support for HPD
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
Cc: Matt Roper <matthew.d.roper@intel.com>,
 Lucas De Marchi <lucas.demarchi@intel.com>, intel-xe@lists.freedesktop.org
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

From: Gustavo Sousa <gustavo.sousa@intel.com>

Hotplug setup for Xe2_LPD differs from Xe_LPD+ by the fact that the
extra programming for hotplug inversion and DDI HPD filter duration is
not necessary anymore. As mtp_hpd_irq_setup() is reasonably small,
prefer to fork it into a new function for Xe2_LPD instead of adding a
platform check.

v2: Add extra bspec reference and fix missing else (Matt Roper)

BSpec: 68970, 69940
Signed-off-by: Gustavo Sousa <gustavo.sousa@intel.com>
Signed-off-by: Lucas De Marchi <lucas.demarchi@intel.com>
Reviewed-by: Matt Roper <matthew.d.roper@intel.com>
---
 .../gpu/drm/i915/display/intel_hotplug_irq.c  | 21 +++++++++++++++++--
 1 file changed, 19 insertions(+), 2 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_hotplug_irq.c b/drivers/gpu/drm/i915/display/intel_hotplug_irq.c
index 3398cc21bd26..f07047e9cb30 100644
--- a/drivers/gpu/drm/i915/display/intel_hotplug_irq.c
+++ b/drivers/gpu/drm/i915/display/intel_hotplug_irq.c
@@ -163,7 +163,9 @@ static void intel_hpd_init_pins(struct drm_i915_private *dev_priv)
 	    (!HAS_PCH_SPLIT(dev_priv) || HAS_PCH_NOP(dev_priv)))
 		return;
 
-	if (INTEL_PCH_TYPE(dev_priv) >= PCH_DG1)
+	if (INTEL_PCH_TYPE(dev_priv) >= PCH_LNL)
+		hpd->pch_hpd = hpd_mtp;
+	else if (INTEL_PCH_TYPE(dev_priv) >= PCH_DG1)
 		hpd->pch_hpd = hpd_sde_dg1;
 	else if (INTEL_PCH_TYPE(dev_priv) >= PCH_MTP)
 		hpd->pch_hpd = hpd_mtp;
@@ -1063,6 +1065,19 @@ static void mtp_hpd_irq_setup(struct drm_i915_private *i915)
 	mtp_tc_hpd_detection_setup(i915);
 }
 
+static void xe2lpd_sde_hpd_irq_setup(struct drm_i915_private *i915)
+{
+	u32 hotplug_irqs, enabled_irqs;
+
+	enabled_irqs = intel_hpd_enabled_irqs(i915, i915->display.hotplug.pch_hpd);
+	hotplug_irqs = intel_hpd_hotplug_irqs(i915, i915->display.hotplug.pch_hpd);
+
+	ibx_display_interrupt_update(i915, hotplug_irqs, enabled_irqs);
+
+	mtp_ddi_hpd_detection_setup(i915);
+	mtp_tc_hpd_detection_setup(i915);
+}
+
 static bool is_xelpdp_pica_hpd_pin(enum hpd_pin hpd_pin)
 {
 	return hpd_pin >= HPD_PORT_TC1 && hpd_pin <= HPD_PORT_TC4;
@@ -1122,7 +1137,9 @@ static void xelpdp_hpd_irq_setup(struct drm_i915_private *i915)
 
 	xelpdp_pica_hpd_detection_setup(i915);
 
-	if (INTEL_PCH_TYPE(i915) >= PCH_MTP)
+	if (INTEL_PCH_TYPE(i915) >= PCH_LNL)
+		xe2lpd_sde_hpd_irq_setup(i915);
+	else if (INTEL_PCH_TYPE(i915) >= PCH_MTP)
 		mtp_hpd_irq_setup(i915);
 }
 
-- 
2.40.1

