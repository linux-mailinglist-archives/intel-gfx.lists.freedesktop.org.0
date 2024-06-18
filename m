Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 8A28790D496
	for <lists+intel-gfx@lfdr.de>; Tue, 18 Jun 2024 16:23:12 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id CB5B510E6AE;
	Tue, 18 Jun 2024 14:23:10 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="FxKN2nUU";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.19])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 5C64F10E6AC;
 Tue, 18 Jun 2024 14:23:09 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1718720589; x=1750256589;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=KWEGNgh9gFbIFi42tYLXu+xv/HtJHzLfqvYKaYY9HZE=;
 b=FxKN2nUUqMgwKCzfltu9Fa0ccuIDJlL0CyeUqpER6dc7je2s9MsyOLvq
 5bwz0IKo+hqv4gqNOLZEhtuN2xmJWB/IBac6wLTheA6yO+t9OpsAEZxIQ
 DKdDyQrC2gZUXRi8oId6SBn9An95bspe2MmBlkYWDgmeGHxlZEmwEEmzg
 lVfxOZ0w7UCEzWeGYPIa2moHfqa6B2ZkC413Qe1Oae/TBahhQzs15ZdyZ
 3J1AMfYTa7sCmoypcb94yP12Y0FgwToWYdckBsACgsVXPb8gkIB6M5jHp
 doccVw9jHG3hIJqGFPNwiqxKfSzhDrAEtHv8cA+n00fB/0fjfECV2+nJd Q==;
X-CSE-ConnectionGUID: RMBk0M/CSquyOl+FYF9D2Q==
X-CSE-MsgGUID: Cb21krk4TpKvjnGWjLoQ3A==
X-IronPort-AV: E=McAfee;i="6700,10204,11107"; a="15365274"
X-IronPort-AV: E=Sophos;i="6.08,247,1712646000"; d="scan'208";a="15365274"
Received: from orviesa010.jf.intel.com ([10.64.159.150])
 by fmvoesa113.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 18 Jun 2024 07:23:09 -0700
X-CSE-ConnectionGUID: RPAQU3wqShmgOLSAxfLSyA==
X-CSE-MsgGUID: xhadKhwTT0u83i04kxwJBA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.08,247,1712646000"; d="scan'208";a="41495458"
Received: from bergbenj-mobl1.ger.corp.intel.com (HELO localhost)
 ([10.245.246.176])
 by orviesa010-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 18 Jun 2024 07:23:06 -0700
From: Jani Nikula <jani.nikula@intel.com>
To: intel-gfx@lists.freedesktop.org,
	intel-xe@lists.freedesktop.org
Cc: jani.nikula@intel.com, rodrigo.vivi@intel.com,
 ville.syrjala@linux.intel.com, maarten.lankhorst@linux.intel.com,
 lucas.demarchi@intel.com
Subject: [PATCH 1/6] drm/i915/display: use a macro to initialize subplatforms
Date: Tue, 18 Jun 2024 17:22:51 +0300
Message-Id: <03025d8bbb5036abd4c670b052f20a273feac62f.1718719962.git.jani.nikula@intel.com>
X-Mailer: git-send-email 2.39.2
In-Reply-To: <cover.1718719962.git.jani.nikula@intel.com>
References: <cover.1718719962.git.jani.nikula@intel.com>
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

Signed-off-by: Jani Nikula <jani.nikula@intel.com>
---
 .../drm/i915/display/intel_display_device.c   | 44 ++++++++++---------
 1 file changed, 24 insertions(+), 20 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_display_device.c b/drivers/gpu/drm/i915/display/intel_display_device.c
index dd7dce4b0e7a..d900c30907ac 100644
--- a/drivers/gpu/drm/i915/display/intel_display_device.c
+++ b/drivers/gpu/drm/i915/display/intel_display_device.c
@@ -26,6 +26,10 @@ struct subplatform_desc {
 	const u16 *pciidlist;
 };
 
+#define SUBPLATFORM(_platform, _subplatform)				\
+	.subplatform = (INTEL_DISPLAY_##_platform##_##_subplatform),	\
+	.name = #_subplatform
+
 struct platform_desc {
 	enum intel_display_platform platform;
 	const char *name;
@@ -485,8 +489,8 @@ static const u16 hsw_ulx_ids[] = {
 static const struct platform_desc hsw_desc = {
 	PLATFORM(HASWELL),
 	.subplatforms = (const struct subplatform_desc[]) {
-		{ INTEL_DISPLAY_HASWELL_ULT, "ULT", hsw_ult_ids },
-		{ INTEL_DISPLAY_HASWELL_ULX, "ULX", hsw_ulx_ids },
+		{ SUBPLATFORM(HASWELL, ULT), .pciidlist = hsw_ult_ids },
+		{ SUBPLATFORM(HASWELL, ULX), .pciidlist = hsw_ulx_ids },
 		{},
 	},
 	.info = &(const struct intel_display_device_info) {
@@ -529,8 +533,8 @@ static const u16 bdw_ulx_ids[] = {
 static const struct platform_desc bdw_desc = {
 	PLATFORM(BROADWELL),
 	.subplatforms = (const struct subplatform_desc[]) {
-		{ INTEL_DISPLAY_BROADWELL_ULT, "ULT", bdw_ult_ids },
-		{ INTEL_DISPLAY_BROADWELL_ULX, "ULX", bdw_ulx_ids },
+		{ SUBPLATFORM(BROADWELL, ULT), .pciidlist = bdw_ult_ids },
+		{ SUBPLATFORM(BROADWELL, ULX), .pciidlist = bdw_ulx_ids },
 		{},
 	},
 	.info = &(const struct intel_display_device_info) {
@@ -613,8 +617,8 @@ static const u16 skl_ulx_ids[] = {
 static const struct platform_desc skl_desc = {
 	PLATFORM(SKYLAKE),
 	.subplatforms = (const struct subplatform_desc[]) {
-		{ INTEL_DISPLAY_SKYLAKE_ULT, "ULT", skl_ult_ids },
-		{ INTEL_DISPLAY_SKYLAKE_ULX, "ULX", skl_ulx_ids },
+		{ SUBPLATFORM(SKYLAKE, ULT), .pciidlist = skl_ult_ids },
+		{ SUBPLATFORM(SKYLAKE, ULX), .pciidlist = skl_ulx_ids },
 		{},
 	},
 	.info = &skl_display,
@@ -637,8 +641,8 @@ static const u16 kbl_ulx_ids[] = {
 static const struct platform_desc kbl_desc = {
 	PLATFORM(KABYLAKE),
 	.subplatforms = (const struct subplatform_desc[]) {
-		{ INTEL_DISPLAY_KABYLAKE_ULT, "ULT", kbl_ult_ids },
-		{ INTEL_DISPLAY_KABYLAKE_ULX, "ULX", kbl_ulx_ids },
+		{ SUBPLATFORM(KABYLAKE, ULT), .pciidlist = kbl_ult_ids },
+		{ SUBPLATFORM(KABYLAKE, ULX), .pciidlist = kbl_ulx_ids },
 		{},
 	},
 	.info = &skl_display,
@@ -661,8 +665,8 @@ static const u16 cfl_ulx_ids[] = {
 static const struct platform_desc cfl_desc = {
 	PLATFORM(COFFEELAKE),
 	.subplatforms = (const struct subplatform_desc[]) {
-		{ INTEL_DISPLAY_COFFEELAKE_ULT, "ULT", cfl_ult_ids },
-		{ INTEL_DISPLAY_COFFEELAKE_ULX, "ULX", cfl_ulx_ids },
+		{ SUBPLATFORM(COFFEELAKE, ULT), .pciidlist = cfl_ult_ids },
+		{ SUBPLATFORM(COFFEELAKE, ULX), .pciidlist = cfl_ulx_ids },
 		{},
 	},
 	.info = &skl_display,
@@ -677,7 +681,7 @@ static const u16 cml_ult_ids[] = {
 static const struct platform_desc cml_desc = {
 	PLATFORM(COMETLAKE),
 	.subplatforms = (const struct subplatform_desc[]) {
-		{ INTEL_DISPLAY_COMETLAKE_ULT, "ULT", cml_ult_ids },
+		{ SUBPLATFORM(COMETLAKE, ULT), .pciidlist = cml_ult_ids },
 		{},
 	},
 	.info = &skl_display,
@@ -776,7 +780,7 @@ static const u16 icl_port_f_ids[] = {
 static const struct platform_desc icl_desc = {
 	PLATFORM(ICELAKE),
 	.subplatforms = (const struct subplatform_desc[]) {
-		{ INTEL_DISPLAY_ICELAKE_PORT_F, "Port F", icl_port_f_ids },
+		{ SUBPLATFORM(ICELAKE, PORT_F), .pciidlist = icl_port_f_ids },
 		{},
 	},
 	.info = &(const struct intel_display_device_info) {
@@ -853,7 +857,7 @@ static const u16 tgl_uy_ids[] = {
 static const struct platform_desc tgl_desc = {
 	PLATFORM(TIGERLAKE),
 	.subplatforms = (const struct subplatform_desc[]) {
-		{ INTEL_DISPLAY_TIGERLAKE_UY, "UY", tgl_uy_ids },
+		{ SUBPLATFORM(TIGERLAKE, UY), .pciidlist = tgl_uy_ids },
 		{},
 	},
 	.info = &(const struct intel_display_device_info) {
@@ -902,7 +906,7 @@ static const u16 adls_rpls_ids[] = {
 static const struct platform_desc adl_s_desc = {
 	PLATFORM(ALDERLAKE_S),
 	.subplatforms = (const struct subplatform_desc[]) {
-		{ INTEL_DISPLAY_ALDERLAKE_S_RAPTORLAKE_S, "RPL-S", adls_rpls_ids },
+		{ SUBPLATFORM(ALDERLAKE_S, RAPTORLAKE_S), .pciidlist = adls_rpls_ids },
 		{},
 	},
 	.info = &(const struct intel_display_device_info) {
@@ -989,9 +993,9 @@ static const u16 adlp_rplp_ids[] = {
 static const struct platform_desc adl_p_desc = {
 	PLATFORM(ALDERLAKE_P),
 	.subplatforms = (const struct subplatform_desc[]) {
-		{ INTEL_DISPLAY_ALDERLAKE_P_ALDERLAKE_N, "ADL-N", adlp_adln_ids },
-		{ INTEL_DISPLAY_ALDERLAKE_P_RAPTORLAKE_U, "RPL-U", adlp_rplu_ids },
-		{ INTEL_DISPLAY_ALDERLAKE_P_RAPTORLAKE_P, "RPL-P", adlp_rplp_ids },
+		{ SUBPLATFORM(ALDERLAKE_P, ALDERLAKE_N), .pciidlist = adlp_adln_ids },
+		{ SUBPLATFORM(ALDERLAKE_P, RAPTORLAKE_U), .pciidlist = adlp_rplu_ids },
+		{ SUBPLATFORM(ALDERLAKE_P, RAPTORLAKE_P), .pciidlist = adlp_rplp_ids },
 		{},
 	},
 	.info = &xe_lpd_display,
@@ -1026,9 +1030,9 @@ static const u16 dg2_g12_ids[] = {
 static const struct platform_desc dg2_desc = {
 	PLATFORM(DG2),
 	.subplatforms = (const struct subplatform_desc[]) {
-		{ INTEL_DISPLAY_DG2_G10, "G10", dg2_g10_ids },
-		{ INTEL_DISPLAY_DG2_G11, "G11", dg2_g11_ids },
-		{ INTEL_DISPLAY_DG2_G12, "G12", dg2_g12_ids },
+		{ SUBPLATFORM(DG2, G10), .pciidlist = dg2_g10_ids },
+		{ SUBPLATFORM(DG2, G11), .pciidlist = dg2_g11_ids },
+		{ SUBPLATFORM(DG2, G12), .pciidlist = dg2_g12_ids },
 		{},
 	},
 	.info = &xe_hpd_display,
-- 
2.39.2

