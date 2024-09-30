Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 39B0B98A279
	for <lists+intel-gfx@lfdr.de>; Mon, 30 Sep 2024 14:31:44 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id D429A10E415;
	Mon, 30 Sep 2024 12:31:42 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="UCMnQ9jT";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.16])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 8E0A110E415;
 Mon, 30 Sep 2024 12:31:41 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1727699501; x=1759235501;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=EW2E9iUiByV8WiDIeKHEHvH0KSVz2+oEsT7EuXc5kgQ=;
 b=UCMnQ9jTGBnmMXKlhxEIvKWOhxol1wEqvYVq9ZaCJp+SsuCl/LWdzrEk
 0Qfqdz5Fy/Bgy0nXMq5Dd/bLTJK6XXtktKKPfvcRYZ96TyUI3Zkj3jv2B
 Xfx9L2fQ2RFyqQ8R+rYss+pKKleHgTv+BPRUWo26f7dMS2ydFtY8Y7tdG
 VKR5TNGvdMazPILO7aS/PnaJ+tAaNubLFEj5CbiwIJ1feb9rnQjBP0t+J
 qre4DbAu8siCgxA7LNs9q91HMHhP3MYoZfvzggcWKL44q6bdV69IKuWuD
 mM8xzDwNaYhHPe0FXMQ5vxJHlJ7o44LlgzVR4Mi5DJrGAbfhxNiBUMXBY A==;
X-CSE-ConnectionGUID: ckuWzkEmQ1WYpnc/cGhWTQ==
X-CSE-MsgGUID: lDnC1zsqQFG/w+z721RlGQ==
X-IronPort-AV: E=McAfee;i="6700,10204,11210"; a="14410304"
X-IronPort-AV: E=Sophos;i="6.11,165,1725346800"; d="scan'208";a="14410304"
Received: from fmviesa009.fm.intel.com ([10.60.135.149])
 by fmvoesa110.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 30 Sep 2024 05:31:41 -0700
X-CSE-ConnectionGUID: uIxZWBXkQ16V03kGHgElag==
X-CSE-MsgGUID: 5NbxRXnpQ2mbbU3SsaTQzA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.11,165,1725346800"; d="scan'208";a="73258349"
Received: from mklonows-mobl1.ger.corp.intel.com (HELO localhost)
 ([10.245.246.93])
 by fmviesa009-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 30 Sep 2024 05:31:38 -0700
From: Jani Nikula <jani.nikula@intel.com>
To: intel-gfx@lists.freedesktop.org,
	intel-xe@lists.freedesktop.org
Cc: jani.nikula@intel.com, rodrigo.vivi@intel.com, lucas.demarchi@intel.com,
 maarten.lankhorst@linux.intel.com, ville.syrjala@linux.intel.com
Subject: [PATCH v3 01/15] drm/i915/display: reindent subplatform initialization
Date: Mon, 30 Sep 2024 15:31:02 +0300
Message-Id: <8dbb0fc4a979dba2b1030384f6dde20ac622d1ba.1727699233.git.jani.nikula@intel.com>
X-Mailer: git-send-email 2.39.5
In-Reply-To: <cover.1727699233.git.jani.nikula@intel.com>
References: <cover.1727699233.git.jani.nikula@intel.com>
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

Signed-off-by: Jani Nikula <jani.nikula@intel.com>
---
 .../drm/i915/display/intel_display_device.c   | 116 +++++++++++++-----
 1 file changed, 88 insertions(+), 28 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_display_device.c b/drivers/gpu/drm/i915/display/intel_display_device.c
index f33062322c66..93c751fde1a9 100644
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

