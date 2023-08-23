Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id DC280785E27
	for <lists+intel-gfx@lfdr.de>; Wed, 23 Aug 2023 19:09:45 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id CE20510E49D;
	Wed, 23 Aug 2023 17:09:23 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [134.134.136.31])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 1BAE210E483;
 Wed, 23 Aug 2023 17:09:20 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1692810560; x=1724346560;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=JEEQdNfJ5gPUtbx0nbdVwDQtSviot8E6c114GT8eoew=;
 b=PRgD/BlbP1p1COT3cSigF6yQ2S4h+EpEpj04TaujIO9ZRXyWQut2X3Ur
 kX90DtC57SsW52qS4qobEZ2BKCmapTPZTLQWNXZaUpiFfhGfIF54nxPB7
 G75vlhIN4p9gC4htejZrI/MABIflVtD3AXaXbTzHvBe81WDJNXjMoeuPz
 6qwZUQkjun4IfmbxLJj7ocKHzB4dwNTnZUXqa4HrR8CX1buvws25CzgKA
 NimG3jPPzSm44L99Pfvb0Z0jOi3qHco5uRlzQ8ga8dBZCNvq2UnVe2Tub
 Bs62G7fLRghm5ipXnurjwQLprCkHvEn8sx5xZE8WFO/ovvEj1ckMyvXBG g==;
X-IronPort-AV: E=McAfee;i="6600,9927,10811"; a="438147490"
X-IronPort-AV: E=Sophos;i="6.01,195,1684825200"; d="scan'208";a="438147490"
Received: from fmsmga008.fm.intel.com ([10.253.24.58])
 by orsmga104.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 23 Aug 2023 10:09:19 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10811"; a="802204830"
X-IronPort-AV: E=Sophos;i="6.01,195,1684825200"; d="scan'208";a="802204830"
Received: from lucas-s2600cw.jf.intel.com ([10.165.21.196])
 by fmsmga008-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 23 Aug 2023 10:09:18 -0700
From: Lucas De Marchi <lucas.demarchi@intel.com>
To: intel-xe@lists.freedesktop.org,
	intel-gfx@lists.freedesktop.org
Date: Wed, 23 Aug 2023 10:07:20 -0700
Message-Id: <20230823170740.1180212-23-lucas.demarchi@intel.com>
X-Mailer: git-send-email 2.40.1
In-Reply-To: <20230823170740.1180212-1-lucas.demarchi@intel.com>
References: <20230823170740.1180212-1-lucas.demarchi@intel.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH 22/42] drm/i915/xe2lpd: Add DC state support
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
Cc: Lucas De Marchi <lucas.demarchi@intel.com>,
 Matt Roper <matthew.d.roper@intel.com>
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

From: Matt Roper <matthew.d.roper@intel.com>

Xe2_LPD supports DC5, DC6, and DC9 (DC3CO no longer exists).  The
overall programming and requirements to enter DC states are similar to
those of Xe_LPD+ although AUX transactions do not require DC5/DC6 exit
as they did previously.

Bspec: 68851, 68857, 68886, 69115
Cc: Anusha Srivatsa <anusha.srivatsa@intel.com>
Signed-off-by: Matt Roper <matthew.d.roper@intel.com>
Signed-off-by: Lucas De Marchi <lucas.demarchi@intel.com>
---
 .../drm/i915/display/intel_display_power.c    |  4 +++-
 .../i915/display/intel_display_power_map.c    | 19 +++++++++++++++++++
 2 files changed, 22 insertions(+), 1 deletion(-)

diff --git a/drivers/gpu/drm/i915/display/intel_display_power.c b/drivers/gpu/drm/i915/display/intel_display_power.c
index 7e2059abae9a..508a3225d9f0 100644
--- a/drivers/gpu/drm/i915/display/intel_display_power.c
+++ b/drivers/gpu/drm/i915/display/intel_display_power.c
@@ -944,7 +944,9 @@ static u32 get_allowed_dc_mask(const struct drm_i915_private *dev_priv,
 	if (!HAS_DISPLAY(dev_priv))
 		return 0;
 
-	if (IS_DG2(dev_priv))
+	if (DISPLAY_VER(dev_priv) >= 20)
+		max_dc = 2;
+	else if (IS_DG2(dev_priv))
 		max_dc = 1;
 	else if (IS_DG1(dev_priv))
 		max_dc = 3;
diff --git a/drivers/gpu/drm/i915/display/intel_display_power_map.c b/drivers/gpu/drm/i915/display/intel_display_power_map.c
index cef3b313c9f5..d74a742437c3 100644
--- a/drivers/gpu/drm/i915/display/intel_display_power_map.c
+++ b/drivers/gpu/drm/i915/display/intel_display_power_map.c
@@ -1570,9 +1570,28 @@ static const struct i915_power_well_desc xe2lpd_power_wells_pica[] = {
 	},
 };
 
+I915_DECL_PW_DOMAINS(xe2lpd_pwdoms_dc_off,
+	POWER_DOMAIN_DC_OFF,
+	XELPD_PW_C_POWER_DOMAINS,
+	XELPD_PW_D_POWER_DOMAINS,
+	POWER_DOMAIN_AUDIO_MMIO,
+	POWER_DOMAIN_MODESET,
+	POWER_DOMAIN_INIT);
+
+static const struct i915_power_well_desc xe2lpd_power_wells_dcoff[] = {
+	{
+		.instances = &I915_PW_INSTANCES(
+			I915_PW("DC_off", &xe2lpd_pwdoms_dc_off,
+				.id = SKL_DISP_DC_OFF),
+		),
+		.ops = &gen9_dc_off_power_well_ops,
+	},
+};
+
 static const struct i915_power_well_desc_list xe2lpd_power_wells[] = {
 	I915_PW_DESCRIPTORS(i9xx_power_wells_always_on),
 	I915_PW_DESCRIPTORS(icl_power_wells_pw_1),
+	I915_PW_DESCRIPTORS(xe2lpd_power_wells_dcoff),
 	I915_PW_DESCRIPTORS(xelpdp_power_wells_main),
 	I915_PW_DESCRIPTORS(xe2lpd_power_wells_pica),
 };
-- 
2.40.1

