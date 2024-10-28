Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id E81309B3AB2
	for <lists+intel-gfx@lfdr.de>; Mon, 28 Oct 2024 20:49:16 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 7088910E552;
	Mon, 28 Oct 2024 19:49:15 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="WzyNMpeZ";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.13])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 5030410E553;
 Mon, 28 Oct 2024 19:49:13 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1730144954; x=1761680954;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=tQqF2j/gAr40awNF+JIPGl6RRjzkjFlq3Xew2yNxhY0=;
 b=WzyNMpeZqut8FCLl8hBdjP330mg988w+CbgtWYIabS8zHZlOT1rwNEk9
 dSW14lEx6/8nkDdVoXNYPn3lKirlrJtCx6RDSXKHPBrhCYQEsNiIyt6lO
 FAkkXD/xUgsNves473xfMuXbE016GCigsIEcMm45r1UCKGloyvBIiMDxa
 0hXAqju3FLkxQ+KvPMQVcdeZ4WytHEeQ/SRCnZrpYrrOtGiLCU43ymWQc
 a1juIbHUi1K0HJhF/FMDf7HqPB8C87MJTjoqTAXWgnGZsEs/spwp87YRX
 wKuyil36mfedB/2mAxVqBFjhbrJoNR2cyzXfr6v+9riS2os7tjPCZL9Ta w==;
X-CSE-ConnectionGUID: fsSMD91jRlaJR3FKlOxQHQ==
X-CSE-MsgGUID: DLjb7EfAS1uD/gjNtLhGUg==
X-IronPort-AV: E=McAfee;i="6700,10204,11222"; a="40857821"
X-IronPort-AV: E=Sophos;i="6.11,199,1725346800"; d="scan'208";a="40857821"
Received: from fmviesa009.fm.intel.com ([10.60.135.149])
 by orvoesa105.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 28 Oct 2024 12:49:14 -0700
X-CSE-ConnectionGUID: et5LhymfRb6v23hZYCrxwQ==
X-CSE-MsgGUID: 8cEZL06WRRuQTEhiuyGE8Q==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.11,239,1725346800"; d="scan'208";a="81780203"
Received: from fdefranc-mobl3.ger.corp.intel.com (HELO localhost)
 ([10.245.246.21])
 by fmviesa009-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 28 Oct 2024 12:49:10 -0700
From: Jani Nikula <jani.nikula@intel.com>
To: intel-gfx@lists.freedesktop.org,
	intel-xe@lists.freedesktop.org
Cc: jani.nikula@intel.com, rodrigo.vivi@intel.com, lucas.demarchi@intel.com,
 maarten.lankhorst@linux.intel.com
Subject: [CI RESEND v4 v4 03/16] drm/i915/display: use a macro to define
 platform enumerations
Date: Mon, 28 Oct 2024 21:48:36 +0200
Message-Id: <fca14c018c54ef4099012d2a764257d651d672d9.1730144869.git.jani.nikula@intel.com>
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

We'll be needing a macro based list of platforms for more things in the
future. Start by defining the platform enumerations with it.

v3: Rebase for PTL

Reviewed-by: Rodrigo Vivi <rodrigo.vivi@intel.com>
Signed-off-by: Jani Nikula <jani.nikula@intel.com>
---
 .../drm/i915/display/intel_display_device.h   | 119 +++++++++---------
 1 file changed, 63 insertions(+), 56 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_display_device.h b/drivers/gpu/drm/i915/display/intel_display_device.h
index 071a36b51f79..39da0c25c0b5 100644
--- a/drivers/gpu/drm/i915/display/intel_display_device.h
+++ b/drivers/gpu/drm/i915/display/intel_display_device.h
@@ -15,65 +15,72 @@ struct drm_i915_private;
 struct drm_printer;
 
 /* Keep in gen based order, and chronological order within a gen */
+#define INTEL_DISPLAY_PLATFORMS(func) \
+	func(PLATFORM_UNINITIALIZED) \
+	/* Display ver 2 */ \
+	func(I830) \
+	func(I845G) \
+	func(I85X) \
+	func(I865G) \
+	/* Display ver 3 */ \
+	func(I915G) \
+	func(I915GM) \
+	func(I945G) \
+	func(I945GM) \
+	func(G33) \
+	func(PINEVIEW) \
+	/* Display ver 4 */ \
+	func(I965G) \
+	func(I965GM) \
+	func(G45) \
+	func(GM45) \
+	/* Display ver 5 */ \
+	func(IRONLAKE) \
+	/* Display ver 6 */ \
+	func(SANDYBRIDGE) \
+	/* Display ver 7 */ \
+	func(IVYBRIDGE) \
+	func(VALLEYVIEW) \
+	func(HASWELL) \
+	/* Display ver 8 */ \
+	func(BROADWELL) \
+	func(CHERRYVIEW) \
+	/* Display ver 9 */ \
+	func(SKYLAKE) \
+	func(BROXTON) \
+	func(KABYLAKE) \
+	func(GEMINILAKE) \
+	func(COFFEELAKE) \
+	func(COMETLAKE) \
+	/* Display ver 11 */ \
+	func(ICELAKE) \
+	func(JASPERLAKE) \
+	func(ELKHARTLAKE) \
+	/* Display ver 12 */ \
+	func(TIGERLAKE) \
+	func(ROCKETLAKE) \
+	func(DG1) \
+	func(ALDERLAKE_S) \
+	/* Display ver 13 */ \
+	func(ALDERLAKE_P) \
+	func(DG2) \
+	/* Display ver 14 (based on GMD ID) */ \
+	func(METEORLAKE) \
+	/* Display ver 20 (based on GMD ID) */ \
+	func(LUNARLAKE) \
+	/* Display ver 14.1 (based on GMD ID) */ \
+	func(BATTLEMAGE) \
+	/* Display ver 30 (based on GMD ID) */ \
+	func(PANTHERLAKE)
+
+#define __ENUM(x) INTEL_DISPLAY_ ## x,
+
 enum intel_display_platform {
-	INTEL_DISPLAY_PLATFORM_UNINITIALIZED = 0,
-	/* Display ver 2 */
-	INTEL_DISPLAY_I830,
-	INTEL_DISPLAY_I845G,
-	INTEL_DISPLAY_I85X,
-	INTEL_DISPLAY_I865G,
-	/* Display ver 3 */
-	INTEL_DISPLAY_I915G,
-	INTEL_DISPLAY_I915GM,
-	INTEL_DISPLAY_I945G,
-	INTEL_DISPLAY_I945GM,
-	INTEL_DISPLAY_G33,
-	INTEL_DISPLAY_PINEVIEW,
-	/* Display ver 4 */
-	INTEL_DISPLAY_I965G,
-	INTEL_DISPLAY_I965GM,
-	INTEL_DISPLAY_G45,
-	INTEL_DISPLAY_GM45,
-	/* Display ver 5 */
-	INTEL_DISPLAY_IRONLAKE,
-	/* Display ver 6 */
-	INTEL_DISPLAY_SANDYBRIDGE,
-	/* Display ver 7 */
-	INTEL_DISPLAY_IVYBRIDGE,
-	INTEL_DISPLAY_VALLEYVIEW,
-	INTEL_DISPLAY_HASWELL,
-	/* Display ver 8 */
-	INTEL_DISPLAY_BROADWELL,
-	INTEL_DISPLAY_CHERRYVIEW,
-	/* Display ver 9 */
-	INTEL_DISPLAY_SKYLAKE,
-	INTEL_DISPLAY_BROXTON,
-	INTEL_DISPLAY_KABYLAKE,
-	INTEL_DISPLAY_GEMINILAKE,
-	INTEL_DISPLAY_COFFEELAKE,
-	INTEL_DISPLAY_COMETLAKE,
-	/* Display ver 11 */
-	INTEL_DISPLAY_ICELAKE,
-	INTEL_DISPLAY_JASPERLAKE,
-	INTEL_DISPLAY_ELKHARTLAKE,
-	/* Display ver 12 */
-	INTEL_DISPLAY_TIGERLAKE,
-	INTEL_DISPLAY_ROCKETLAKE,
-	INTEL_DISPLAY_DG1,
-	INTEL_DISPLAY_ALDERLAKE_S,
-	/* Display ver 13 */
-	INTEL_DISPLAY_ALDERLAKE_P,
-	INTEL_DISPLAY_DG2,
-	/* Display ver 14 (based on GMD ID) */
-	INTEL_DISPLAY_METEORLAKE,
-	/* Display ver 20 (based on GMD ID) */
-	INTEL_DISPLAY_LUNARLAKE,
-	/* Display ver 14.1 (based on GMD ID) */
-	INTEL_DISPLAY_BATTLEMAGE,
-	/* Display ver 30 (based on GMD ID) */
-	INTEL_DISPLAY_PANTHERLAKE,
+	INTEL_DISPLAY_PLATFORMS(__ENUM)
 };
 
+#undef __ENUM
+
 enum intel_display_subplatform {
 	INTEL_DISPLAY_SUBPLATFORM_UNINITIALIZED = 0,
 	INTEL_DISPLAY_HASWELL_ULT,
-- 
2.39.5

