Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id A192D9573C4
	for <lists+intel-gfx@lfdr.de>; Mon, 19 Aug 2024 20:45:00 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 445B710E227;
	Mon, 19 Aug 2024 18:44:59 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="IYRuC+7i";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.14])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 5537210E227;
 Mon, 19 Aug 2024 18:44:58 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1724093099; x=1755629099;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=fgZJAUKJM8ZqmPtBkdV4iFHMA3Ldgx4mQHgBunVkYRc=;
 b=IYRuC+7i4q7mBGFk9z9wvK9Of8m3k4Ft2mJ5twtBp2QBUFSNju9NRmde
 f/jLKzdeeE9QxqsBU9HDGCIf0KTHAle6iSvkwZVBKETOGisvFroyhiOg0
 5TCco1y4AqxrTyDEBjYTqkDZt0l8ZRXB8/31D8/BrnUGHQyFr+7ngAlLF
 7wixExiY3v3N45pOkomtefNhsDTrkAJt4T7OlKXnCfIPH1rci+tIkY0Fi
 24Y5pKqHceENPIzsLCT0Kxp6ohSzhIKIIgsym0O87zSZUIOJC35lQChha
 zE+cIfryuRj/GWqPPZRPHYGBg8w1oQHPEVK7IjHPsE2hLAviIIBt/hLib g==;
X-CSE-ConnectionGUID: oTQums+bRkucYP3fyoikvw==
X-CSE-MsgGUID: Hy53E8ctQ/C7dEWh8VHiEQ==
X-IronPort-AV: E=McAfee;i="6700,10204,11169"; a="26157486"
X-IronPort-AV: E=Sophos;i="6.10,159,1719903600"; d="scan'208";a="26157486"
Received: from orviesa001.jf.intel.com ([10.64.159.141])
 by orvoesa106.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 19 Aug 2024 11:44:59 -0700
X-CSE-ConnectionGUID: C9nMYzH+SHOKgHOJSIUfPw==
X-CSE-MsgGUID: MbXeOjgCSKaJ/Nlg4hVS0w==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.10,159,1719903600"; d="scan'208";a="97940312"
Received: from mwiniars-desk2.ger.corp.intel.com (HELO localhost)
 ([10.245.246.70])
 by smtpauth.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 19 Aug 2024 11:44:52 -0700
From: Jani Nikula <jani.nikula@intel.com>
To: intel-gfx@lists.freedesktop.org,
	intel-xe@lists.freedesktop.org
Cc: jani.nikula@intel.com, rodrigo.vivi@intel.com, lucas.demarchi@intel.com,
 ville.syrjala@linux.intel.com
Subject: [PATCH v2 2/9] drm/i915/display: use a macro to define platform
 enumerations
Date: Mon, 19 Aug 2024 21:44:29 +0300
Message-Id: <326615309c714fd6cfdde0ca63d3502ddb58c417.1724092799.git.jani.nikula@intel.com>
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

We'll be needing a macro based list of platforms for more things in the
future. Start by defining the platform enumerations with it.

Reviewed-by: Rodrigo Vivi <rodrigo.vivi@intel.com>
Signed-off-by: Jani Nikula <jani.nikula@intel.com>
---
 .../drm/i915/display/intel_display_device.h   | 115 ++++++++++--------
 1 file changed, 61 insertions(+), 54 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_display_device.h b/drivers/gpu/drm/i915/display/intel_display_device.h
index 13453ea4daea..f5c9bba3baa2 100644
--- a/drivers/gpu/drm/i915/display/intel_display_device.h
+++ b/drivers/gpu/drm/i915/display/intel_display_device.h
@@ -15,63 +15,70 @@ struct drm_i915_private;
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
+	func(BATTLEMAGE)
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
+	INTEL_DISPLAY_PLATFORMS(__ENUM)
 };
 
+#undef __ENUM
+
 enum intel_display_subplatform {
 	INTEL_DISPLAY_SUBPLATFORM_UNINITIALIZED = 0,
 	INTEL_DISPLAY_HASWELL_ULT,
-- 
2.39.2

