Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 324A49B3AB1
	for <lists+intel-gfx@lfdr.de>; Mon, 28 Oct 2024 20:49:11 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 15DF010E1E3;
	Mon, 28 Oct 2024 19:49:09 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="hyQTAcBt";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.13])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 7757010E1E3;
 Mon, 28 Oct 2024 19:49:07 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1730144948; x=1761680948;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=aCy0TjXMg20dRsMrVXmSFqvtbzzoQU9MXZ5tt3aH/OQ=;
 b=hyQTAcBtdY2ZlQHqZdBhEwzrpF2uDdgS/0g654CAcIxfeUVjK2FkEIT+
 jybkkBYf7bhWhyowX08eetfIRp/wRJQemBsWqO3t9FySJbVORDA4N3Jqa
 tJMid8ynT9cwPYR4k4SddDhUjDnRuQzn563Ju1Lj1U3qo+D2to2gW2qmi
 szHsVk9LImbCeQkPWg1Xy8kJ4LRxDW+q9Meru6WrAbil+MC1SDSg5BGaK
 kSVg/MWR9mxYFl6rBC+EvoVlUtDY19CFt26EM1vfb4ERk1cQyHIWTq9JQ
 bZ2Z1O8AsMW6XQ9t162lyXuzHr4A0RTsWdM4i1IAtbdbkbqYUc/DngGO5 A==;
X-CSE-ConnectionGUID: 2wcZpcvYRfi2fj4+aHK1GQ==
X-CSE-MsgGUID: R9o4oMseSpy84CzLJSxx4g==
X-IronPort-AV: E=McAfee;i="6700,10204,11222"; a="40857806"
X-IronPort-AV: E=Sophos;i="6.11,199,1725346800"; d="scan'208";a="40857806"
Received: from fmviesa009.fm.intel.com ([10.60.135.149])
 by orvoesa105.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 28 Oct 2024 12:49:08 -0700
X-CSE-ConnectionGUID: 7gCphym1RGSOMohFYgGLbA==
X-CSE-MsgGUID: jeHtc8SiSEeTw9VKWE40cA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.11,239,1725346800"; d="scan'208";a="81780175"
Received: from fdefranc-mobl3.ger.corp.intel.com (HELO localhost)
 ([10.245.246.21])
 by fmviesa009-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 28 Oct 2024 12:49:05 -0700
From: Jani Nikula <jani.nikula@intel.com>
To: intel-gfx@lists.freedesktop.org,
	intel-xe@lists.freedesktop.org
Cc: jani.nikula@intel.com, rodrigo.vivi@intel.com, lucas.demarchi@intel.com,
 maarten.lankhorst@linux.intel.com
Subject: [CI RESEND v4 v4 02/16] drm/i915/display: use a macro to initialize
 subplatforms
Date: Mon, 28 Oct 2024 21:48:35 +0200
Message-Id: <c4c9d7ea779475513db68e843c970a4dd8f8ac2c.1730144869.git.jani.nikula@intel.com>
X-Mailer: git-send-email 2.39.5
In-Reply-To: <cover.1730144869.git.jani.nikula@intel.com>
References: <cover.1730144869.git.jani.nikula@intel.com>
MIME-Version: 1.0
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
Content-Transfer-Encoding: 8bit
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

Make it easier to change the underlying structures by using a macro
similar to PLATFORM() for initialization.

The subplatform names in debug logs change slightly as they now reflect
the enum rather than manually entered names. For example, RAPTORLAKE_S
rather than RPL-S.

Reviewed-by: Rodrigo Vivi <rodrigo.vivi@intel.com>
Signed-off-by: Jani Nikula <jani.nikula@intel.com>
---
 .../drm/i915/display/intel_display_device.c   | 44 ++++++++++---------
 1 file changed, 24 insertions(+), 20 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_display_device.c b/drivers/gpu/drm/i915/display/intel_display_device.c
index 9c54a8b3cb6f..3330ec1bf2cf 100644
--- a/drivers/gpu/drm/i915/display/intel_display_device.c
+++ b/drivers/gpu/drm/i915/display/intel_display_device.c
@@ -37,6 +37,10 @@ struct subplatform_desc {
 	struct stepping_desc step_info;
 };
 
+#define SUBPLATFORM(_platform, _subplatform)				\
+	.subplatform = (INTEL_DISPLAY_##_platform##_##_subplatform),	\
+	.name = #_subplatform
+
 struct platform_desc {
 	enum intel_display_platform platform;
 	const char *name;
@@ -498,11 +502,11 @@ static const struct platform_desc hsw_desc = {
 	PLATFORM(HASWELL),
 	.subplatforms = (const struct subplatform_desc[]) {
 		{
-			INTEL_DISPLAY_HASWELL_ULT, "ULT",
+			SUBPLATFORM(HASWELL, ULT),
 			.pciidlist = hsw_ult_ids,
 		},
 		{
-			INTEL_DISPLAY_HASWELL_ULX, "ULX",
+			SUBPLATFORM(HASWELL, ULX),
 			.pciidlist = hsw_ulx_ids,
 		},
 		{},
@@ -548,11 +552,11 @@ static const struct platform_desc bdw_desc = {
 	PLATFORM(BROADWELL),
 	.subplatforms = (const struct subplatform_desc[]) {
 		{
-			INTEL_DISPLAY_BROADWELL_ULT, "ULT",
+			SUBPLATFORM(BROADWELL, ULT),
 			.pciidlist = bdw_ult_ids,
 		},
 		{
-			INTEL_DISPLAY_BROADWELL_ULX, "ULX",
+			SUBPLATFORM(BROADWELL, ULX),
 			.pciidlist = bdw_ulx_ids,
 		},
 		{},
@@ -645,11 +649,11 @@ static const struct platform_desc skl_desc = {
 	PLATFORM(SKYLAKE),
 	.subplatforms = (const struct subplatform_desc[]) {
 		{
-			INTEL_DISPLAY_SKYLAKE_ULT, "ULT",
+			SUBPLATFORM(SKYLAKE, ULT),
 			.pciidlist = skl_ult_ids,
 		},
 		{
-			INTEL_DISPLAY_SKYLAKE_ULX, "ULX",
+			SUBPLATFORM(SKYLAKE, ULX),
 			.pciidlist = skl_ulx_ids,
 		},
 		{},
@@ -686,11 +690,11 @@ static const struct platform_desc kbl_desc = {
 	PLATFORM(KABYLAKE),
 	.subplatforms = (const struct subplatform_desc[]) {
 		{
-			INTEL_DISPLAY_KABYLAKE_ULT, "ULT",
+			SUBPLATFORM(KABYLAKE, ULT),
 			.pciidlist = kbl_ult_ids,
 		},
 		{
-			INTEL_DISPLAY_KABYLAKE_ULX, "ULX",
+			SUBPLATFORM(KABYLAKE, ULX),
 			.pciidlist = kbl_ulx_ids,
 		},
 		{},
@@ -717,11 +721,11 @@ static const struct platform_desc cfl_desc = {
 	PLATFORM(COFFEELAKE),
 	.subplatforms = (const struct subplatform_desc[]) {
 		{
-			INTEL_DISPLAY_COFFEELAKE_ULT, "ULT",
+			SUBPLATFORM(COFFEELAKE, ULT),
 			.pciidlist = cfl_ult_ids,
 		},
 		{
-			INTEL_DISPLAY_COFFEELAKE_ULX, "ULX",
+			SUBPLATFORM(COFFEELAKE, ULX),
 			.pciidlist = cfl_ulx_ids,
 		},
 		{},
@@ -739,7 +743,7 @@ static const struct platform_desc cml_desc = {
 	PLATFORM(COMETLAKE),
 	.subplatforms = (const struct subplatform_desc[]) {
 		{
-			INTEL_DISPLAY_COMETLAKE_ULT, "ULT",
+			SUBPLATFORM(COMETLAKE, ULT),
 			.pciidlist = cml_ult_ids,
 		},
 		{},
@@ -858,7 +862,7 @@ static const struct platform_desc icl_desc = {
 	PLATFORM(ICELAKE),
 	.subplatforms = (const struct subplatform_desc[]) {
 		{
-			INTEL_DISPLAY_ICELAKE_PORT_F, "Port F",
+			SUBPLATFORM(ICELAKE, PORT_F),
 			.pciidlist = icl_port_f_ids,
 		},
 		{},
@@ -958,7 +962,7 @@ static const struct platform_desc tgl_desc = {
 	PLATFORM(TIGERLAKE),
 	.subplatforms = (const struct subplatform_desc[]) {
 		{
-			INTEL_DISPLAY_TIGERLAKE_UY, "UY",
+			SUBPLATFORM(TIGERLAKE, UY),
 			.pciidlist = tgl_uy_ids,
 			STEP_INFO(tgl_uy_steppings),
 		},
@@ -1038,7 +1042,7 @@ static const struct platform_desc adl_s_desc = {
 	PLATFORM(ALDERLAKE_S),
 	.subplatforms = (const struct subplatform_desc[]) {
 		{
-			INTEL_DISPLAY_ALDERLAKE_S_RAPTORLAKE_S, "RPL-S",
+			SUBPLATFORM(ALDERLAKE_S, RAPTORLAKE_S),
 			.pciidlist = adls_rpls_ids,
 			STEP_INFO(adl_s_rpl_s_steppings),
 		},
@@ -1145,17 +1149,17 @@ static const struct platform_desc adl_p_desc = {
 	PLATFORM(ALDERLAKE_P),
 	.subplatforms = (const struct subplatform_desc[]) {
 		{
-			INTEL_DISPLAY_ALDERLAKE_P_ALDERLAKE_N, "ADL-N",
+			SUBPLATFORM(ALDERLAKE_P, ALDERLAKE_N),
 			.pciidlist = adlp_adln_ids,
 			STEP_INFO(adl_p_adl_n_steppings),
 		},
 		{
-			INTEL_DISPLAY_ALDERLAKE_P_RAPTORLAKE_P, "RPL-P",
+			SUBPLATFORM(ALDERLAKE_P, RAPTORLAKE_P),
 			.pciidlist = adlp_rplp_ids,
 			STEP_INFO(adl_p_rpl_pu_steppings),
 		},
 		{
-			INTEL_DISPLAY_ALDERLAKE_P_RAPTORLAKE_U, "RPL-U",
+			SUBPLATFORM(ALDERLAKE_P, RAPTORLAKE_U),
 			.pciidlist = adlp_rplu_ids,
 			STEP_INFO(adl_p_rpl_pu_steppings),
 		},
@@ -1213,17 +1217,17 @@ static const struct platform_desc dg2_desc = {
 	PLATFORM(DG2),
 	.subplatforms = (const struct subplatform_desc[]) {
 		{
-			INTEL_DISPLAY_DG2_G10, "G10",
+			SUBPLATFORM(DG2, G10),
 			.pciidlist = dg2_g10_ids,
 			STEP_INFO(dg2_g10_steppings),
 		},
 		{
-			INTEL_DISPLAY_DG2_G11, "G11",
+			SUBPLATFORM(DG2, G11),
 			.pciidlist = dg2_g11_ids,
 			STEP_INFO(dg2_g11_steppings),
 		},
 		{
-			INTEL_DISPLAY_DG2_G12, "G12",
+			SUBPLATFORM(DG2, G12),
 			.pciidlist = dg2_g12_ids,
 			STEP_INFO(dg2_g12_steppings),
 		},
-- 
2.39.5

