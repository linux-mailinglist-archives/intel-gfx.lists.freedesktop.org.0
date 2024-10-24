Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 7AD5E9AE4CA
	for <lists+intel-gfx@lfdr.de>; Thu, 24 Oct 2024 14:34:01 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 1F08E10E918;
	Thu, 24 Oct 2024 12:34:00 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="NgM5xssk";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.15])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 9576210E915;
 Thu, 24 Oct 2024 12:33:58 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1729773238; x=1761309238;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=aCy0TjXMg20dRsMrVXmSFqvtbzzoQU9MXZ5tt3aH/OQ=;
 b=NgM5xsskChIlfBoXSeCE2pzdWCApY33Sm1CbSsuDZ3C4XrAn5mZHysRZ
 UkCGIn1XzORHqJBz5y9YcBuxzRPEpPNk4984nbRTp3IE24BnTcVxUsqxH
 Z/a9Wi2XXSFxpKGhcO6MNT/TUUHPrNGhpwiXqbr61GARkT4R4OKZsVJD8
 JIhCsp02NFtxGVaewdzy/VAwFar5oZS0UpKS3R/h479rlkAHmWv1tK7Y6
 +4ZWJ/hh11VCSnNCPfikALX7uvV+iEa8XiAYdCfNbAS3hvAaJn0hEc/cd
 iPS3s+dRmrs+AZrJYkvnpcs/WnZ9RFw0NfvsRZlTrE+FfDJRO54UEMo3I A==;
X-CSE-ConnectionGUID: RXEVL/glSUCUgMoEFzDtlQ==
X-CSE-MsgGUID: GEdUL3Z/QiKz+vQG+kCBHw==
X-IronPort-AV: E=McAfee;i="6700,10204,11235"; a="29512423"
X-IronPort-AV: E=Sophos;i="6.11,229,1725346800"; d="scan'208";a="29512423"
Received: from fmviesa005.fm.intel.com ([10.60.135.145])
 by fmvoesa109.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 24 Oct 2024 05:33:58 -0700
X-CSE-ConnectionGUID: QwlNN9UeTHOcGEh1XiM31g==
X-CSE-MsgGUID: EV0/EdzJTwuH4n/v1c0Opg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.11,229,1725346800"; d="scan'208";a="85138181"
Received: from unknown (HELO localhost) ([10.237.66.160])
 by fmviesa005-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 24 Oct 2024 05:33:57 -0700
From: Jani Nikula <jani.nikula@intel.com>
To: intel-gfx@lists.freedesktop.org,
	intel-xe@lists.freedesktop.org
Cc: jani.nikula@intel.com, rodrigo.vivi@intel.com, lucas.demarchi@intel.com,
 maarten.lankhorst@linux.intel.com
Subject: [CI v4 v4 02/16] drm/i915/display: use a macro to initialize
 subplatforms
Date: Thu, 24 Oct 2024 15:33:28 +0300
Message-Id: <e3b17c35f488bd13d971bc0210cc02198354f1b7.1729773149.git.jani.nikula@intel.com>
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

