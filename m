Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 2222549F8AE
	for <lists+intel-gfx@lfdr.de>; Fri, 28 Jan 2022 12:49:46 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id AFA2510E89B;
	Fri, 28 Jan 2022 11:49:40 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga07.intel.com (mga07.intel.com [134.134.136.100])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 6EE3A10E714
 for <intel-gfx@lists.freedesktop.org>; Fri, 28 Jan 2022 11:49:38 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1643370578; x=1674906578;
 h=from:to:subject:date:message-id:in-reply-to:references:
 mime-version:content-transfer-encoding;
 bh=1SI33Q90RWJZKlsCWP4OkG37UMaNJ+6u6EhBh60wL9s=;
 b=iWj1xuUaBCyi9n6Otx4LvL+pa2M45NnoOc8NdYzObbWuCAfog3Z31wtY
 nMaul0kuPak5pRGICTMocVUwVllisSvn08VjFWx/7KN2kektMkc1ehD1G
 s9tjHTBKXokhaYTe0ldotF0to3MIS3UUUj9plvaf87fQX9FW8B/HJdI+b
 9QHenIR5xxhGlUSnMhmUqG1LPMvRn4XG6FvvrdvmBdInRl5XqIBJzOTn/
 /0DzqOw88XwMn0b4PRxdwkDK6qHT9rs1DBVwKs+0Xz1O5VrCKOzZJr3MW
 XGt8UFcL/GelptmmQwqgQGFVWJbm66M4hxs5ULC5VvwuUtAeLj2fF1W+O A==;
X-IronPort-AV: E=McAfee;i="6200,9189,10240"; a="310420965"
X-IronPort-AV: E=Sophos;i="5.88,323,1635231600"; d="scan'208";a="310420965"
Received: from orsmga006.jf.intel.com ([10.7.209.51])
 by orsmga105.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 28 Jan 2022 03:49:38 -0800
X-IronPort-AV: E=Sophos;i="5.88,323,1635231600"; d="scan'208";a="480712876"
Received: from ideak-desk.fi.intel.com ([10.237.68.141])
 by orsmga006-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 28 Jan 2022 03:49:37 -0800
From: Imre Deak <imre.deak@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Fri, 28 Jan 2022 13:49:12 +0200
Message-Id: <20220128114914.2339526-18-imre.deak@intel.com>
X-Mailer: git-send-email 2.27.0
In-Reply-To: <20220128114914.2339526-1-imre.deak@intel.com>
References: <20220128114914.2339526-1-imre.deak@intel.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH 17/19] drm/i915: Remove the ICL specific TBT
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
 .../drm/i915/display/intel_display_power.h    |  4 ---
 .../i915/display/intel_display_power_map.c    | 26 +++++++------------
 2 files changed, 9 insertions(+), 21 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_display_power.h b/drivers/gpu/drm/i915/display/intel_display_power.h
index 355819a163b6f..28291decc3789 100644
--- a/drivers/gpu/drm/i915/display/intel_display_power.h
+++ b/drivers/gpu/drm/i915/display/intel_display_power.h
@@ -101,10 +101,6 @@ enum intel_display_power_domain {
 	POWER_DOMAIN_AUX_E_XELPD,
 
 	POWER_DOMAIN_AUX_IO_A,
-	POWER_DOMAIN_AUX_TBT_C,
-	POWER_DOMAIN_AUX_TBT_D,
-	POWER_DOMAIN_AUX_TBT_E,
-	POWER_DOMAIN_AUX_TBT_F,
 
 	POWER_DOMAIN_AUX_TBT1,
 	POWER_DOMAIN_AUX_TBT2,
diff --git a/drivers/gpu/drm/i915/display/intel_display_power_map.c b/drivers/gpu/drm/i915/display/intel_display_power_map.c
index a82887410ba6e..1b79f04b1dd5d 100644
--- a/drivers/gpu/drm/i915/display/intel_display_power_map.c
+++ b/drivers/gpu/drm/i915/display/intel_display_power_map.c
@@ -181,14 +181,6 @@ intel_display_power_domain_str(enum intel_display_power_domain domain)
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
@@ -267,7 +259,7 @@ d11_port_map[] = {
 		.ddi_lanes = POWER_DOMAIN_PORT_DDI_LANES_C,
 		.ddi_io = POWER_DOMAIN_PORT_DDI_IO_C,
 		.aux_legacy_usbc = POWER_DOMAIN_AUX_C,
-		.aux_tbt = POWER_DOMAIN_AUX_TBT_C,
+		.aux_tbt = POWER_DOMAIN_AUX_TBT1,
 	},
 };
 
@@ -1001,10 +993,10 @@ I915_DECL_PW_DOMAINS(icl_pwdoms_pw_4,
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
@@ -1047,10 +1039,10 @@ I915_DECL_PW_DOMAINS(icl_pwdoms_aux_c,		POWER_DOMAIN_AUX_C);
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

