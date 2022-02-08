Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 3F7134AD78C
	for <lists+intel-gfx@lfdr.de>; Tue,  8 Feb 2022 12:37:39 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id EA4A510E650;
	Tue,  8 Feb 2022 11:37:35 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga18.intel.com (mga18.intel.com [134.134.136.126])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 9CB4F10E646
 for <intel-gfx@lists.freedesktop.org>; Tue,  8 Feb 2022 11:37:29 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1644320249; x=1675856249;
 h=from:to:subject:date:message-id:in-reply-to:references:
 mime-version:content-transfer-encoding;
 bh=ZKrzIZpLjl2SeHEB2WwIjlni39sRqS+0XDXyY1irNg4=;
 b=SeUY43hU8506UikLMJgkQ5uKiiqv2sUkrIN3G/ZnurDMR5BYzC7zTieQ
 ICl+21jbhu/KtUTdrhMmpFhxACbl6g8htWehdp9JsPqfKqBWQ1/uzI4x8
 7p+GF9uM7qGuDvsOClakTvk8CZwN40S0DclQaUp0daOba+ayh+yKgcc9R
 IPtkeydhB3VWU7oiZMUQQTNZzg+WJPyKeN4hDEoi4XDT++qaN3AUF2I+n
 b/gPi6fwD0577JpFndAfg9SiYoIlAaJJtdoK0Al0Vcnr7Ljt6auzLK0tk
 VUs+6a8QioRd4Zg1E5CoVgHlJ1YadFtFtbd5k0cf3asJ0R7JzMg4Ux4cT Q==;
X-IronPort-AV: E=McAfee;i="6200,9189,10251"; a="232496017"
X-IronPort-AV: E=Sophos;i="5.88,352,1635231600"; d="scan'208";a="232496017"
Received: from orsmga003.jf.intel.com ([10.7.209.27])
 by orsmga106.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 08 Feb 2022 03:37:29 -0800
X-IronPort-AV: E=Sophos;i="5.88,352,1635231600"; d="scan'208";a="481915372"
Received: from ideak-desk.fi.intel.com ([10.237.68.141])
 by orsmga003-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 08 Feb 2022 03:37:28 -0800
From: Imre Deak <imre.deak@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Tue,  8 Feb 2022 13:36:54 +0200
Message-Id: <20220208113656.179823-25-imre.deak@intel.com>
X-Mailer: git-send-email 2.27.0
In-Reply-To: <20220208113656.179823-1-imre.deak@intel.com>
References: <20220208113656.179823-1-imre.deak@intel.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH v2 24/26] drm/i915: Remove the ICL specific TBT
 power domains
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

The spec calls the ICL TBT AUX power well instances TBT1-4 (similarly to
all later platforms), align the power domain names with the spec.

Signed-off-by: Imre Deak <imre.deak@intel.com>
---
 .../gpu/drm/i915/display/intel_display_power.c   | 10 +---------
 .../gpu/drm/i915/display/intel_display_power.h   |  4 ----
 .../drm/i915/display/intel_display_power_map.c   | 16 ++++++++--------
 3 files changed, 9 insertions(+), 21 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_display_power.c b/drivers/gpu/drm/i915/display/intel_display_power.c
index f6a6e15eca9b1..0cadcf98a0f9e 100644
--- a/drivers/gpu/drm/i915/display/intel_display_power.c
+++ b/drivers/gpu/drm/i915/display/intel_display_power.c
@@ -163,14 +163,6 @@ intel_display_power_domain_str(enum intel_display_power_domain domain)
 		return "AUX_E_XELPD";
 	case POWER_DOMAIN_AUX_IO_A:
 		return "AUX_IO_A";
-	case POWER_DOMAIN_AUX_TBT_C:
-		return "AUX_TBT_C";
-	case POWER_DOMAIN_AUX_TBT_D:
-		return "AUX_TBT_D";
-	case POWER_DOMAIN_AUX_TBT_E:
-		return "AUX_TBT_E";
-	case POWER_DOMAIN_AUX_TBT_F:
-		return "AUX_TBT_F";
 	case POWER_DOMAIN_AUX_TBT1:
 		return "AUX_TBT1";
 	case POWER_DOMAIN_AUX_TBT2:
@@ -2338,7 +2330,7 @@ d11_port_domains[] = {
 		.ddi_lanes = POWER_DOMAIN_PORT_DDI_LANES_C,
 		.ddi_io = POWER_DOMAIN_PORT_DDI_IO_C,
 		.aux_legacy_usbc = POWER_DOMAIN_AUX_C,
-		.aux_tbt = POWER_DOMAIN_AUX_TBT_C,
+		.aux_tbt = POWER_DOMAIN_AUX_TBT1,
 	},
 };
 
diff --git a/drivers/gpu/drm/i915/display/intel_display_power.h b/drivers/gpu/drm/i915/display/intel_display_power.h
index 3c555cb05c9c6..3347eaeb22e15 100644
--- a/drivers/gpu/drm/i915/display/intel_display_power.h
+++ b/drivers/gpu/drm/i915/display/intel_display_power.h
@@ -100,10 +100,6 @@ enum intel_display_power_domain {
 	POWER_DOMAIN_AUX_E_XELPD,
 
 	POWER_DOMAIN_AUX_IO_A,
-	POWER_DOMAIN_AUX_TBT_C,
-	POWER_DOMAIN_AUX_TBT_D,
-	POWER_DOMAIN_AUX_TBT_E,
-	POWER_DOMAIN_AUX_TBT_F,
 
 	POWER_DOMAIN_AUX_TBT1,
 	POWER_DOMAIN_AUX_TBT2,
diff --git a/drivers/gpu/drm/i915/display/intel_display_power_map.c b/drivers/gpu/drm/i915/display/intel_display_power_map.c
index c4f7ff3bcc3dc..4c7def498dd6f 100644
--- a/drivers/gpu/drm/i915/display/intel_display_power_map.c
+++ b/drivers/gpu/drm/i915/display/intel_display_power_map.c
@@ -622,10 +622,10 @@ I915_DECL_PW_DOMAINS(icl_pwdoms_pw_4,
 	POWER_DOMAIN_AUX_D, \
 	POWER_DOMAIN_AUX_E, \
 	POWER_DOMAIN_AUX_F, \
-	POWER_DOMAIN_AUX_TBT_C, \
-	POWER_DOMAIN_AUX_TBT_D, \
-	POWER_DOMAIN_AUX_TBT_E, \
-	POWER_DOMAIN_AUX_TBT_F
+	POWER_DOMAIN_AUX_TBT1, \
+	POWER_DOMAIN_AUX_TBT2, \
+	POWER_DOMAIN_AUX_TBT3, \
+	POWER_DOMAIN_AUX_TBT4
 
 I915_DECL_PW_DOMAINS(icl_pwdoms_pw_3,
 	ICL_PW_3_POWER_DOMAINS,
@@ -668,10 +668,10 @@ I915_DECL_PW_DOMAINS(icl_pwdoms_aux_c,		POWER_DOMAIN_AUX_C);
 I915_DECL_PW_DOMAINS(icl_pwdoms_aux_d,		POWER_DOMAIN_AUX_D);
 I915_DECL_PW_DOMAINS(icl_pwdoms_aux_e,		POWER_DOMAIN_AUX_E);
 I915_DECL_PW_DOMAINS(icl_pwdoms_aux_f,		POWER_DOMAIN_AUX_F);
-I915_DECL_PW_DOMAINS(icl_pwdoms_aux_tbt1,	POWER_DOMAIN_AUX_TBT_C);
-I915_DECL_PW_DOMAINS(icl_pwdoms_aux_tbt2,	POWER_DOMAIN_AUX_TBT_D);
-I915_DECL_PW_DOMAINS(icl_pwdoms_aux_tbt3,	POWER_DOMAIN_AUX_TBT_E);
-I915_DECL_PW_DOMAINS(icl_pwdoms_aux_tbt4,	POWER_DOMAIN_AUX_TBT_F);
+I915_DECL_PW_DOMAINS(icl_pwdoms_aux_tbt1,	POWER_DOMAIN_AUX_TBT1);
+I915_DECL_PW_DOMAINS(icl_pwdoms_aux_tbt2,	POWER_DOMAIN_AUX_TBT2);
+I915_DECL_PW_DOMAINS(icl_pwdoms_aux_tbt3,	POWER_DOMAIN_AUX_TBT3);
+I915_DECL_PW_DOMAINS(icl_pwdoms_aux_tbt4,	POWER_DOMAIN_AUX_TBT4);
 
 static const struct i915_power_well_desc icl_power_wells_pw_1[] = {
 	{
-- 
2.27.0

