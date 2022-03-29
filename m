Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id B4CE44EB212
	for <lists+intel-gfx@lfdr.de>; Tue, 29 Mar 2022 18:46:25 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 2341210F15E;
	Tue, 29 Mar 2022 16:46:19 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga12.intel.com (mga12.intel.com [192.55.52.136])
 by gabe.freedesktop.org (Postfix) with ESMTPS id E9CE710F0CF
 for <intel-gfx@lists.freedesktop.org>; Tue, 29 Mar 2022 16:46:03 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1648572364; x=1680108364;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=X8r2P36Yt/nikwuD6jphTS8WNz//6mRIGUJUTn9D3qU=;
 b=OAefPOsYZ4+zGzTNA7BrrtC0S7qzm8+flnaktsCOkM/bZsmPXvEml+32
 xGRXo7Oixkc8vK3BR4ehqNxLcPE1vttrLrWjBUajrmj9A/jIx6kN+KINi
 86NoWTQ9t28zPrNGqOumGKJERZf7We4DtMGr4H3jpwRtiLFXsS/J6SghL
 6a/InzuG6kwWnPdv2qXewFqfYvPjIf7A1djz7y9RImv6qpjjpiF677OVo
 /W7L2TBXVhQ7oM7QwoOT7qQBGX87vHupp4gHWfjWNzGwezBZBxcTICWC5
 EIWBx4FrQGXSqlZ9TMYxypai/zRn79PcjrflOi0szLCm8Czss/mZZDzLD w==;
X-IronPort-AV: E=McAfee;i="6200,9189,10301"; a="239237134"
X-IronPort-AV: E=Sophos;i="5.90,220,1643702400"; d="scan'208";a="239237134"
Received: from orsmga006.jf.intel.com ([10.7.209.51])
 by fmsmga106.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 29 Mar 2022 09:44:05 -0700
X-IronPort-AV: E=Sophos;i="5.90,220,1643702400"; d="scan'208";a="521514015"
Received: from ideak-desk.fi.intel.com ([10.237.72.175])
 by orsmga006-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 29 Mar 2022 09:44:04 -0700
From: Imre Deak <imre.deak@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Tue, 29 Mar 2022 19:43:34 +0300
Message-Id: <20220329164336.1199359-17-imre.deak@intel.com>
X-Mailer: git-send-email 2.30.2
In-Reply-To: <20220329164336.1199359-1-imre.deak@intel.com>
References: <20220329164336.1199359-1-imre.deak@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH v3 16/18] drm/i915: Remove the ICL specific TBT
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
Reviewed-by: Jouni Högander <jouni.hogander@intel.com>
---
 .../gpu/drm/i915/display/intel_display_power.c   | 10 +---------
 .../gpu/drm/i915/display/intel_display_power.h   |  4 ----
 .../drm/i915/display/intel_display_power_map.c   | 16 ++++++++--------
 3 files changed, 9 insertions(+), 21 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_display_power.c b/drivers/gpu/drm/i915/display/intel_display_power.c
index 7065b6265ea20..21da53aabff8b 100644
--- a/drivers/gpu/drm/i915/display/intel_display_power.c
+++ b/drivers/gpu/drm/i915/display/intel_display_power.c
@@ -166,14 +166,6 @@ intel_display_power_domain_str(enum intel_display_power_domain domain)
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
@@ -2341,7 +2333,7 @@ d11_port_domains[] = {
 		.ddi_lanes = POWER_DOMAIN_PORT_DDI_LANES_C,
 		.ddi_io = POWER_DOMAIN_PORT_DDI_IO_C,
 		.aux_legacy_usbc = POWER_DOMAIN_AUX_C,
-		.aux_tbt = POWER_DOMAIN_AUX_TBT_C,
+		.aux_tbt = POWER_DOMAIN_AUX_TBT1,
 	},
 };
 
diff --git a/drivers/gpu/drm/i915/display/intel_display_power.h b/drivers/gpu/drm/i915/display/intel_display_power.h
index b58c5bada6d85..e04b2ff7b4b99 100644
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
index 86d937f8bfe13..d9cf3d3bc02e7 100644
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
2.30.2

