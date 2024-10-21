Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id A3A339A6B19
	for <lists+intel-gfx@lfdr.de>; Mon, 21 Oct 2024 15:54:32 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 406D110E514;
	Mon, 21 Oct 2024 13:54:31 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="aPqNd4a8";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.11])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 436DC10E513;
 Mon, 21 Oct 2024 13:54:29 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1729518869; x=1761054869;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=ZXV1OkPEwWypp18ZDLAL/7XnNcOSLvRoKKIlnfATxKM=;
 b=aPqNd4a8azo41VN3xpIrtzpBrUwNgYxoj+w+ndaYEmDIBdN+nPu3fxs1
 5MZfB3CwehKLcFRdjkATitVONnLUrs7/mSzuQHRSiGg16eTCXeQpa1J+n
 /UUsiUR6FKU/uwmB4bOC632QqPbGEfl+BF5IjSa8aIfVrRw7g+1kq8YAd
 ZdqgdO6DB200CFHtGBpQEKEB5TR0rRiFosWm1PsjGzKmA77t5+2b7TdaB
 HEO2TuYTxtZDr/JigPmYfylfh46PsHyDZxR2I5Zpxs8o8fmTTce6IqX5D
 mJ0iGeuzokPfl4STJS+nI5hp+NAJg5mlox5YARBfi+z58WEi0VP0KVD6l Q==;
X-CSE-ConnectionGUID: xVbssxBqRbq/dhG7xQ6vVg==
X-CSE-MsgGUID: pOFks9VdTEqTz9eCM43bgQ==
X-IronPort-AV: E=McAfee;i="6700,10204,11222"; a="39540472"
X-IronPort-AV: E=Sophos;i="6.11,199,1725346800"; d="scan'208";a="39540472"
Received: from fmviesa003.fm.intel.com ([10.60.135.143])
 by orvoesa103.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 21 Oct 2024 06:54:29 -0700
X-CSE-ConnectionGUID: aekxrlPCQt+gwYbDW2WL5Q==
X-CSE-MsgGUID: ZiYFt4omT1+8VXpQmFy14Q==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.11,221,1725346800"; d="scan'208";a="83547846"
Received: from lbogdanm-mobl3.ger.corp.intel.com (HELO localhost)
 ([10.245.246.222])
 by fmviesa003-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 21 Oct 2024 06:54:26 -0700
From: Jani Nikula <jani.nikula@intel.com>
To: intel-gfx@lists.freedesktop.org,
	intel-xe@lists.freedesktop.org
Cc: jani.nikula@intel.com, rodrigo.vivi@intel.com, lucas.demarchi@intel.com,
 maarten.lankhorst@linux.intel.com
Subject: [PATCH v4 01/15] drm/i915/display: reindent subplatform initialization
Date: Mon, 21 Oct 2024 16:54:02 +0300
Message-Id: <cb6d6d3688f9c29f5ccfb49289f104c14e5f302b.1729518793.git.jani.nikula@intel.com>
X-Mailer: git-send-email 2.39.5
In-Reply-To: <cover.1729518793.git.jani.nikula@intel.com>
References: <cover.1729518793.git.jani.nikula@intel.com>
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

