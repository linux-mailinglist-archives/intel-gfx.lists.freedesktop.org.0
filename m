Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 8E9BB7A6B7B
	for <lists+intel-gfx@lfdr.de>; Tue, 19 Sep 2023 21:21:46 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 392FA10E298;
	Tue, 19 Sep 2023 19:21:33 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.55.52.136])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 6D34D10E294
 for <intel-gfx@lists.freedesktop.org>; Tue, 19 Sep 2023 19:21:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1695151287; x=1726687287;
 h=from:to:subject:date:message-id:in-reply-to:references:
 mime-version:content-transfer-encoding;
 bh=a+Nfya7ORmNO+5J3FeHNHBGLBVbSyUfG8K1GSTOGS5Q=;
 b=XVMshtCgthQ6rZmZvTmTB9kHUkzueb4fc45bgZGWf9NtMbtVhbuyKsro
 2VxUKc8Ib0eAn+OP+dbD3R0tivj+KrLrm46MBMffm0z+P2relqrj2foSQ
 KrbpCyhMj0vCcpkYf0+S2a930wNs3Mfnd9chiH2+The0WHBkNpa49s+Nw
 vBAnWSSYZ29kezouMV9i1UmrLtGs0sx6MhdlmctpMIMHTBYd2TxHql/ch
 w9r7lfVRU6cCK9bUDkVfxlFu6eVI+NIAfT2v6NOSWkCPsTRqajvWEUBlB
 swEWYsNr15PQlogZoHxY0l36ulC72rD195CsXWHmtR3aw55EASfi9tL05 g==;
X-IronPort-AV: E=McAfee;i="6600,9927,10838"; a="359423148"
X-IronPort-AV: E=Sophos;i="6.02,160,1688454000"; d="scan'208";a="359423148"
Received: from orsmga002.jf.intel.com ([10.7.209.21])
 by fmsmga106.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 19 Sep 2023 12:21:26 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10838"; a="746350110"
X-IronPort-AV: E=Sophos;i="6.02,160,1688454000"; d="scan'208";a="746350110"
Received: from lucas-s2600cw.jf.intel.com ([10.165.21.196])
 by orsmga002-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 19 Sep 2023 12:21:25 -0700
From: Lucas De Marchi <lucas.demarchi@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Tue, 19 Sep 2023 12:21:27 -0700
Message-Id: <20230919192128.2045154-21-lucas.demarchi@intel.com>
X-Mailer: git-send-email 2.40.1
In-Reply-To: <20230919192128.2045154-1-lucas.demarchi@intel.com>
References: <20230919192128.2045154-1-lucas.demarchi@intel.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [CI 21/22] drm/i915/xe2lpd: Add DC state support
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
index 889bb26009a2..e25785ae1c20 100644
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

