Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 4DFD79AE4C9
	for <lists+intel-gfx@lfdr.de>; Thu, 24 Oct 2024 14:33:57 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id DAEE610E287;
	Thu, 24 Oct 2024 12:33:55 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="X9s2bxXz";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.15])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 5983210E287;
 Thu, 24 Oct 2024 12:33:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1729773234; x=1761309234;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=ZXV1OkPEwWypp18ZDLAL/7XnNcOSLvRoKKIlnfATxKM=;
 b=X9s2bxXzpEL43aV8PHv2Qkqolgb5kNtwBX4vsEF9iZYA84fh04Lg6FmU
 eN8tCo/7ilq8wrfJr9McdPkSsTQ3o6IaE9xPF717DNiGPkVmNXtBN6VdM
 8+dbO8Us8KztUCnWrk12SBc4i+GNV+riHNwoASUF+REd0dAig6VAlEw0j
 R2y0hxbEycLdHoixADYDeW4bLhvmGyXrgrQS9uowJYLPoafREcFUNXHMM
 x323mWZy//38EtAuwp350+trBvW/2d5mi+g8Wqml7uQNP8KQkQ60marwl
 M0YJPm3OxcNM4Xpx4nGy1AoGcMPbW3fLiKHj4+aGhtqv6FDEk4ulev5FC g==;
X-CSE-ConnectionGUID: KvZ1DGZGSpK/CMqpvqrGUw==
X-CSE-MsgGUID: YB97sNtDQ5mc5HnAXeLe/w==
X-IronPort-AV: E=McAfee;i="6700,10204,11235"; a="29512417"
X-IronPort-AV: E=Sophos;i="6.11,229,1725346800"; d="scan'208";a="29512417"
Received: from fmviesa005.fm.intel.com ([10.60.135.145])
 by fmvoesa109.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 24 Oct 2024 05:33:54 -0700
X-CSE-ConnectionGUID: I0lU60PZRG2yEdOxMFPKBA==
X-CSE-MsgGUID: 5n1K/M5MSwSVXsrSeRinpg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.11,229,1725346800"; d="scan'208";a="85138169"
Received: from unknown (HELO localhost) ([10.237.66.160])
 by fmviesa005-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 24 Oct 2024 05:33:53 -0700
From: Jani Nikula <jani.nikula@intel.com>
To: intel-gfx@lists.freedesktop.org,
	intel-xe@lists.freedesktop.org
Cc: jani.nikula@intel.com, rodrigo.vivi@intel.com, lucas.demarchi@intel.com,
 maarten.lankhorst@linux.intel.com
Subject: [CI v4 v4 01/16] drm/i915/display: reindent subplatform initialization
Date: Thu, 24 Oct 2024 15:33:27 +0300
Message-Id: <baa7f6fd9af9cf94c7d671d40c4b90f50f57e298.1729773149.git.jani.nikula@intel.com>
X-Mailer: git-send-email 2.39.5
In-Reply-To: <cover.1729773149.git.jani.nikula@intel.com>
References: <cover.1729773149.git.jani.nikula@intel.com>
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

Make the subplatform initialization less cramped, and follow the coding
style more closely. Initialize .pciidlist using designated initializers.

Reviewed-by: Rodrigo Vivi <rodrigo.vivi@intel.com>
Signed-off-by: Jani Nikula <jani.nikula@intel.com>
---
 .../drm/i915/display/intel_display_device.c   | 116 +++++++++++++-----
 1 file changed, 88 insertions(+), 28 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_display_device.c b/drivers/gpu/drm/i915/display/intel_display_device.c
index aa22189e3853..9c54a8b3cb6f 100644
--- a/drivers/gpu/drm/i915/display/intel_display_device.c
+++ b/drivers/gpu/drm/i915/display/intel_display_device.c
@@ -497,8 +497,14 @@ static const u16 hsw_ulx_ids[] = {
 static const struct platform_desc hsw_desc = {
 	PLATFORM(HASWELL),
 	.subplatforms = (const struct subplatform_desc[]) {
-		{ INTEL_DISPLAY_HASWELL_ULT, "ULT", hsw_ult_ids },
-		{ INTEL_DISPLAY_HASWELL_ULX, "ULX", hsw_ulx_ids },
+		{
+			INTEL_DISPLAY_HASWELL_ULT, "ULT",
+			.pciidlist = hsw_ult_ids,
+		},
+		{
+			INTEL_DISPLAY_HASWELL_ULX, "ULX",
+			.pciidlist = hsw_ulx_ids,
+		},
 		{},
 	},
 	.info = &(const struct intel_display_device_info) {
@@ -541,8 +547,14 @@ static const u16 bdw_ulx_ids[] = {
 static const struct platform_desc bdw_desc = {
 	PLATFORM(BROADWELL),
 	.subplatforms = (const struct subplatform_desc[]) {
-		{ INTEL_DISPLAY_BROADWELL_ULT, "ULT", bdw_ult_ids },
-		{ INTEL_DISPLAY_BROADWELL_ULX, "ULX", bdw_ulx_ids },
+		{
+			INTEL_DISPLAY_BROADWELL_ULT, "ULT",
+			.pciidlist = bdw_ult_ids,
+		},
+		{
+			INTEL_DISPLAY_BROADWELL_ULX, "ULX",
+			.pciidlist = bdw_ulx_ids,
+		},
 		{},
 	},
 	.info = &(const struct intel_display_device_info) {
@@ -632,8 +644,14 @@ static const enum intel_step skl_steppings[] = {
 static const struct platform_desc skl_desc = {
 	PLATFORM(SKYLAKE),
 	.subplatforms = (const struct subplatform_desc[]) {
-		{ INTEL_DISPLAY_SKYLAKE_ULT, "ULT", skl_ult_ids },
-		{ INTEL_DISPLAY_SKYLAKE_ULX, "ULX", skl_ulx_ids },
+		{
+			INTEL_DISPLAY_SKYLAKE_ULT, "ULT",
+			.pciidlist = skl_ult_ids,
+		},
+		{
+			INTEL_DISPLAY_SKYLAKE_ULX, "ULX",
+			.pciidlist = skl_ulx_ids,
+		},
 		{},
 	},
 	.info = &skl_display,
@@ -667,8 +685,14 @@ static const enum intel_step kbl_steppings[] = {
 static const struct platform_desc kbl_desc = {
 	PLATFORM(KABYLAKE),
 	.subplatforms = (const struct subplatform_desc[]) {
-		{ INTEL_DISPLAY_KABYLAKE_ULT, "ULT", kbl_ult_ids },
-		{ INTEL_DISPLAY_KABYLAKE_ULX, "ULX", kbl_ulx_ids },
+		{
+			INTEL_DISPLAY_KABYLAKE_ULT, "ULT",
+			.pciidlist = kbl_ult_ids,
+		},
+		{
+			INTEL_DISPLAY_KABYLAKE_ULX, "ULX",
+			.pciidlist = kbl_ulx_ids,
+		},
 		{},
 	},
 	.info = &skl_display,
@@ -692,8 +716,14 @@ static const u16 cfl_ulx_ids[] = {
 static const struct platform_desc cfl_desc = {
 	PLATFORM(COFFEELAKE),
 	.subplatforms = (const struct subplatform_desc[]) {
-		{ INTEL_DISPLAY_COFFEELAKE_ULT, "ULT", cfl_ult_ids },
-		{ INTEL_DISPLAY_COFFEELAKE_ULX, "ULX", cfl_ulx_ids },
+		{
+			INTEL_DISPLAY_COFFEELAKE_ULT, "ULT",
+			.pciidlist = cfl_ult_ids,
+		},
+		{
+			INTEL_DISPLAY_COFFEELAKE_ULX, "ULX",
+			.pciidlist = cfl_ulx_ids,
+		},
 		{},
 	},
 	.info = &skl_display,
@@ -708,7 +738,10 @@ static const u16 cml_ult_ids[] = {
 static const struct platform_desc cml_desc = {
 	PLATFORM(COMETLAKE),
 	.subplatforms = (const struct subplatform_desc[]) {
-		{ INTEL_DISPLAY_COMETLAKE_ULT, "ULT", cml_ult_ids },
+		{
+			INTEL_DISPLAY_COMETLAKE_ULT, "ULT",
+			.pciidlist = cml_ult_ids,
+		},
 		{},
 	},
 	.info = &skl_display,
@@ -824,7 +857,10 @@ static const enum intel_step icl_steppings[] = {
 static const struct platform_desc icl_desc = {
 	PLATFORM(ICELAKE),
 	.subplatforms = (const struct subplatform_desc[]) {
-		{ INTEL_DISPLAY_ICELAKE_PORT_F, "Port F", icl_port_f_ids },
+		{
+			INTEL_DISPLAY_ICELAKE_PORT_F, "Port F",
+			.pciidlist = icl_port_f_ids,
+		},
 		{},
 	},
 	.info = &(const struct intel_display_device_info) {
@@ -921,8 +957,11 @@ static const enum intel_step tgl_uy_steppings[] = {
 static const struct platform_desc tgl_desc = {
 	PLATFORM(TIGERLAKE),
 	.subplatforms = (const struct subplatform_desc[]) {
-		{ INTEL_DISPLAY_TIGERLAKE_UY, "UY", tgl_uy_ids,
-		  STEP_INFO(tgl_uy_steppings) },
+		{
+			INTEL_DISPLAY_TIGERLAKE_UY, "UY",
+			.pciidlist = tgl_uy_ids,
+			STEP_INFO(tgl_uy_steppings),
+		},
 		{},
 	},
 	.info = &(const struct intel_display_device_info) {
@@ -998,8 +1037,11 @@ static const enum intel_step adl_s_rpl_s_steppings[] = {
 static const struct platform_desc adl_s_desc = {
 	PLATFORM(ALDERLAKE_S),
 	.subplatforms = (const struct subplatform_desc[]) {
-		{ INTEL_DISPLAY_ALDERLAKE_S_RAPTORLAKE_S, "RPL-S", adls_rpls_ids,
-		  STEP_INFO(adl_s_rpl_s_steppings) },
+		{
+			INTEL_DISPLAY_ALDERLAKE_S_RAPTORLAKE_S, "RPL-S",
+			.pciidlist = adls_rpls_ids,
+			STEP_INFO(adl_s_rpl_s_steppings),
+		},
 		{},
 	},
 	.info = &(const struct intel_display_device_info) {
@@ -1102,12 +1144,21 @@ static const enum intel_step adl_p_rpl_pu_steppings[] = {
 static const struct platform_desc adl_p_desc = {
 	PLATFORM(ALDERLAKE_P),
 	.subplatforms = (const struct subplatform_desc[]) {
-		{ INTEL_DISPLAY_ALDERLAKE_P_ALDERLAKE_N, "ADL-N", adlp_adln_ids,
-		  STEP_INFO(adl_p_adl_n_steppings) },
-		{ INTEL_DISPLAY_ALDERLAKE_P_RAPTORLAKE_P, "RPL-P", adlp_rplp_ids,
-		  STEP_INFO(adl_p_rpl_pu_steppings) },
-		{ INTEL_DISPLAY_ALDERLAKE_P_RAPTORLAKE_U, "RPL-U", adlp_rplu_ids,
-		  STEP_INFO(adl_p_rpl_pu_steppings) },
+		{
+			INTEL_DISPLAY_ALDERLAKE_P_ALDERLAKE_N, "ADL-N",
+			.pciidlist = adlp_adln_ids,
+			STEP_INFO(adl_p_adl_n_steppings),
+		},
+		{
+			INTEL_DISPLAY_ALDERLAKE_P_RAPTORLAKE_P, "RPL-P",
+			.pciidlist = adlp_rplp_ids,
+			STEP_INFO(adl_p_rpl_pu_steppings),
+		},
+		{
+			INTEL_DISPLAY_ALDERLAKE_P_RAPTORLAKE_U, "RPL-U",
+			.pciidlist = adlp_rplu_ids,
+			STEP_INFO(adl_p_rpl_pu_steppings),
+		},
 		{},
 	},
 	.info = &xe_lpd_display,
@@ -1161,12 +1212,21 @@ static const enum intel_step dg2_g12_steppings[] = {
 static const struct platform_desc dg2_desc = {
 	PLATFORM(DG2),
 	.subplatforms = (const struct subplatform_desc[]) {
-		{ INTEL_DISPLAY_DG2_G10, "G10", dg2_g10_ids,
-		  STEP_INFO(dg2_g10_steppings) },
-		{ INTEL_DISPLAY_DG2_G11, "G11", dg2_g11_ids,
-		  STEP_INFO(dg2_g11_steppings) },
-		{ INTEL_DISPLAY_DG2_G12, "G12", dg2_g12_ids,
-		  STEP_INFO(dg2_g12_steppings) },
+		{
+			INTEL_DISPLAY_DG2_G10, "G10",
+			.pciidlist = dg2_g10_ids,
+			STEP_INFO(dg2_g10_steppings),
+		},
+		{
+			INTEL_DISPLAY_DG2_G11, "G11",
+			.pciidlist = dg2_g11_ids,
+			STEP_INFO(dg2_g11_steppings),
+		},
+		{
+			INTEL_DISPLAY_DG2_G12, "G12",
+			.pciidlist = dg2_g12_ids,
+			STEP_INFO(dg2_g12_steppings),
+		},
 		{},
 	},
 	.info = &xe_hpd_display,
-- 
2.39.5

