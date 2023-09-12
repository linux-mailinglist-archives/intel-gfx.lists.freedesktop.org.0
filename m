Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id CDAD079C4EA
	for <lists+intel-gfx@lfdr.de>; Tue, 12 Sep 2023 06:49:21 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 1626110E3B4;
	Tue, 12 Sep 2023 04:49:00 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.55.52.115])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 9581D10E33B;
 Tue, 12 Sep 2023 04:48:35 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1694494115; x=1726030115;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=eZfF+JjU9u9bZ94i85fxKrUQv6RTcJI6hya+KDj9lWs=;
 b=B+FyxTCA/vIiDjbvx8gMgT4tYiRsICefbaNfs1CBI/AEVuAy9zz+PAph
 j2NvZzYHSU/sThjc+5rGiNDL+ODPlchBtSs6kB0iai6grNxKKjUL/CmkI
 uAoPJqeIGiA5fzwoPtm8/KjRdF0sEvQEuJ2aFf5WSPF4bdkq42Rj7X132
 N6bLG2VXEob72pRVe119Epcc5Z1oVEVLVZ1p9zM7SBxp3PxPTq4diL0JU
 a7jcmZucT4V6vg8DGepwDZancKzjGuALmqechSGrAskuCZCRVZyvbX8bp
 9g8ofReDlCZOyjarQ/HxoWWtchK/1uGbZ7auoNpdWW86pAW3x+8EkWocq Q==;
X-IronPort-AV: E=McAfee;i="6600,9927,10830"; a="378182333"
X-IronPort-AV: E=Sophos;i="6.02,245,1688454000"; d="scan'208";a="378182333"
Received: from fmsmga005.fm.intel.com ([10.253.24.32])
 by fmsmga103.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 11 Sep 2023 21:48:35 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10830"; a="1074419959"
X-IronPort-AV: E=Sophos;i="6.02,245,1688454000"; d="scan'208";a="1074419959"
Received: from lucas-s2600cw.jf.intel.com ([10.165.21.196])
 by fmsmga005-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 11 Sep 2023 21:48:35 -0700
From: Lucas De Marchi <lucas.demarchi@intel.com>
To: intel-xe@lists.freedesktop.org,
	intel-gfx@lists.freedesktop.org
Date: Mon, 11 Sep 2023 21:48:25 -0700
Message-Id: <20230912044837.1672060-18-lucas.demarchi@intel.com>
X-Mailer: git-send-email 2.40.1
In-Reply-To: <20230912044837.1672060-1-lucas.demarchi@intel.com>
References: <20230912044837.1672060-1-lucas.demarchi@intel.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH v3 17/29] drm/i915/xe2lpd: Add DC state support
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
Reviewed-by: Anusha Srivatsa <anusha.srivatsa@intel.com>
---
 .../gpu/drm/i915/display/intel_display_power.c |  4 +++-
 .../drm/i915/display/intel_display_power_map.c | 18 ++++++++++++++++++
 2 files changed, 21 insertions(+), 1 deletion(-)

diff --git a/drivers/gpu/drm/i915/display/intel_display_power.c b/drivers/gpu/drm/i915/display/intel_display_power.c
index 68cf5e6b0b46..a0d90a613ab3 100644
--- a/drivers/gpu/drm/i915/display/intel_display_power.c
+++ b/drivers/gpu/drm/i915/display/intel_display_power.c
@@ -943,7 +943,9 @@ static u32 get_allowed_dc_mask(const struct drm_i915_private *dev_priv,
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
index 31c11586ede5..10948b3964ee 100644
--- a/drivers/gpu/drm/i915/display/intel_display_power_map.c
+++ b/drivers/gpu/drm/i915/display/intel_display_power_map.c
@@ -1561,9 +1561,27 @@ static const struct i915_power_well_desc xe2lpd_power_wells_pica[] = {
 	},
 };
 
+I915_DECL_PW_DOMAINS(xe2lpd_pwdoms_dc_off,
+	POWER_DOMAIN_DC_OFF,
+	XELPD_PW_C_POWER_DOMAINS,
+	XELPD_PW_D_POWER_DOMAINS,
+	POWER_DOMAIN_AUDIO_MMIO,
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

