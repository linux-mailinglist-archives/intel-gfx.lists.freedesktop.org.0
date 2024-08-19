Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 85A699573CD
	for <lists+intel-gfx@lfdr.de>; Mon, 19 Aug 2024 20:45:26 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 2D7D010E299;
	Mon, 19 Aug 2024 18:45:25 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="GJl/Cfrj";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.18])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 0E31810E298;
 Mon, 19 Aug 2024 18:45:24 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1724093124; x=1755629124;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=NyBsof0zbRFLIUQAn48iqsbMSAEp8yKJ0X/axtVHNIw=;
 b=GJl/Cfrj0WzC1svhowvfIPQXoh3I2EIDO7OkMsUbV43REily//Q/l6EA
 cs/rs3viJP2fGKlZ+rLakkSzAIad6NWLvcotIVtn98ezP0qiDwmnxCc1F
 iScKP8AxPRNiF1aokcJ+nCq0g7bi+c6LWFu2feUX3HnRvhPxYGKDOoSkP
 qyOiH3kqAbz3+2nEGPdnVaRmyz/lixPI5LGBansQOZwuJ9YJ18gKHUfsG
 Ih3Ecs/SEeAte021Fmu3M/zkWHfiQMrIeBthjldHe/JFgJLYNWDJiaoGv
 FwmHJ+j6xgdUcUlYTSsC/Xwkxsfd3jBszofDneKNq5dlDX7K0ZqFB9l9j w==;
X-CSE-ConnectionGUID: PhJo0g+OQuCtABmk7hcS9w==
X-CSE-MsgGUID: mLENushGQB+N/EvEo0NzFA==
X-IronPort-AV: E=McAfee;i="6700,10204,11169"; a="21902222"
X-IronPort-AV: E=Sophos;i="6.10,159,1719903600"; d="scan'208";a="21902222"
Received: from fmviesa002.fm.intel.com ([10.60.135.142])
 by fmvoesa112.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 19 Aug 2024 11:45:24 -0700
X-CSE-ConnectionGUID: KsmEGb0RQf2vaTIXKO325w==
X-CSE-MsgGUID: Bq3gYxUbQi+oow9JsfZ4bA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.10,159,1719903600"; d="scan'208";a="83670893"
Received: from mwiniars-desk2.ger.corp.intel.com (HELO localhost)
 ([10.245.246.70])
 by fmviesa002-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 19 Aug 2024 11:45:21 -0700
From: Jani Nikula <jani.nikula@intel.com>
To: intel-gfx@lists.freedesktop.org,
	intel-xe@lists.freedesktop.org
Cc: jani.nikula@intel.com, rodrigo.vivi@intel.com, lucas.demarchi@intel.com,
 ville.syrjala@linux.intel.com
Subject: [PATCH v2 7/9] drm/i915/display: consider HSW/BDW ULX to also be ULT
Date: Mon, 19 Aug 2024 21:44:34 +0300
Message-Id: <6d09d1d5b1868798c879b93f079742b472ef4f1e.1724092799.git.jani.nikula@intel.com>
X-Mailer: git-send-email 2.39.2
In-Reply-To: <cover.1724092799.git.jani.nikula@intel.com>
References: <cover.1724092799.git.jani.nikula@intel.com>
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

Follow i915 core and IS_HASWELL_ULT()/IS_BROADWELL_ULT() conventions,
i.e. "is ULT" also matches ULX platforms.

Using multiple SUBPLATFORM() macros, we initialize both ULT and ULX
subplatforms, and take the subplatform name from the last (so be careful
to keep ULX last).

This is *not* an example to be copied.

Note: Pedantically, this should have been done earlier, but it's only
feasible now that we no longer have a subplatform enum and can actually
initialize multiple subplatforms.

Signed-off-by: Jani Nikula <jani.nikula@intel.com>
---
 drivers/gpu/drm/i915/display/intel_display_device.c | 6 ++++--
 1 file changed, 4 insertions(+), 2 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_display_device.c b/drivers/gpu/drm/i915/display/intel_display_device.c
index 90609b561630..fd145f87d86b 100644
--- a/drivers/gpu/drm/i915/display/intel_display_device.c
+++ b/drivers/gpu/drm/i915/display/intel_display_device.c
@@ -490,7 +490,8 @@ static const struct platform_desc hsw_desc = {
 	PLATFORM(HASWELL),
 	.subplatforms = (const struct subplatform_desc[]) {
 		{ SUBPLATFORM(HASWELL, ULT), .pciidlist = hsw_ult_ids },
-		{ SUBPLATFORM(HASWELL, ULX), .pciidlist = hsw_ulx_ids },
+		/* Special case: ULX is also ULT. Do not copy this approach. */
+		{ SUBPLATFORM(HASWELL, ULT), SUBPLATFORM(HASWELL, ULX), .pciidlist = hsw_ulx_ids },
 		{},
 	},
 	.info = &(const struct intel_display_device_info) {
@@ -534,7 +535,8 @@ static const struct platform_desc bdw_desc = {
 	PLATFORM(BROADWELL),
 	.subplatforms = (const struct subplatform_desc[]) {
 		{ SUBPLATFORM(BROADWELL, ULT), .pciidlist = bdw_ult_ids },
-		{ SUBPLATFORM(BROADWELL, ULX), .pciidlist = bdw_ulx_ids },
+		/* Special case: ULX is also ULT. Do not copy this approach. */
+		{ SUBPLATFORM(BROADWELL, ULT), SUBPLATFORM(BROADWELL, ULX), .pciidlist = bdw_ulx_ids },
 		{},
 	},
 	.info = &(const struct intel_display_device_info) {
-- 
2.39.2

