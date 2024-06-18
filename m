Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id AA33890D49B
	for <lists+intel-gfx@lfdr.de>; Tue, 18 Jun 2024 16:23:33 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id E735B10E6A8;
	Tue, 18 Jun 2024 14:23:31 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="f3CPO7XN";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.19])
 by gabe.freedesktop.org (Postfix) with ESMTPS id DE9E110E6A8;
 Tue, 18 Jun 2024 14:23:30 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1718720611; x=1750256611;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=ZX2q7x1xELWxdenDQFdd87uxo0nF74j4AC4BA6EUryE=;
 b=f3CPO7XNfh0GCNHKsZVrsg1m38UquEFHc6bIe/Zsob54TJyeGXxLfK7l
 yBD0thCVhRiG8WjkeMQ0/pc5ybP2MxMclHxDvzXHGil+4fT35Cawh324P
 EHpG/X9AkcFjZtjnC6r6EPC9zD+uE8hlgWjQZ131r9KBQomulkVXwiIGL
 8QnTBS62m49bO9xlEOvxPkjFAjdUgUFTi2NEN/vjOiUqwZPRhYlgc6vok
 LC7UnoSgtsGvb3/jZjIoxdTTJ3nPPTwEsltNokY/Ce8X4huubm9dr+2gy
 uOdRX5dxqiP973x1KEVEZ4BE7hvqewiw/ZtaXL2OqGxNU/jW+oEM0FaPn w==;
X-CSE-ConnectionGUID: vhBQjUmGTOm0Kh+DWWFQLA==
X-CSE-MsgGUID: oVbjdSvQS5qD1ypTfHaauQ==
X-IronPort-AV: E=McAfee;i="6700,10204,11107"; a="15365299"
X-IronPort-AV: E=Sophos;i="6.08,247,1712646000"; d="scan'208";a="15365299"
Received: from orviesa010.jf.intel.com ([10.64.159.150])
 by fmvoesa113.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 18 Jun 2024 07:23:15 -0700
X-CSE-ConnectionGUID: fly57UsYQxCS9IoHyX8qLA==
X-CSE-MsgGUID: IZP5i8LWQLycKoux2b3AzQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.08,247,1712646000"; d="scan'208";a="41495475"
Received: from bergbenj-mobl1.ger.corp.intel.com (HELO localhost)
 ([10.245.246.176])
 by orviesa010-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 18 Jun 2024 07:23:12 -0700
From: Jani Nikula <jani.nikula@intel.com>
To: intel-gfx@lists.freedesktop.org,
	intel-xe@lists.freedesktop.org
Cc: jani.nikula@intel.com, rodrigo.vivi@intel.com,
 ville.syrjala@linux.intel.com, maarten.lankhorst@linux.intel.com,
 lucas.demarchi@intel.com
Subject: [PATCH 2/6] drm/i915/display: use a macro to define platform
 enumerations
Date: Tue, 18 Jun 2024 17:22:52 +0300
Message-Id: <da792d0f64fd47f4f5adb45643c9a28605c84daf.1718719962.git.jani.nikula@intel.com>
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

We'll be needing a macro based list of platforms for more things in the
future. Start by defining the platform enumerations with it.

Signed-off-by: Jani Nikula <jani.nikula@intel.com>
---
 .../drm/i915/display/intel_display_device.h   | 115 ++++++++++--------
 1 file changed, 61 insertions(+), 54 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_display_device.h b/drivers/gpu/drm/i915/display/intel_display_device.h
index 13453ea4daea..aca3dfd5e7af 100644
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
+#define ENUM(x) INTEL_DISPLAY_ ## x,
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
+	INTEL_DISPLAY_PLATFORMS(ENUM)
 };
 
+#undef ENUM
+
 enum intel_display_subplatform {
 	INTEL_DISPLAY_SUBPLATFORM_UNINITIALIZED = 0,
 	INTEL_DISPLAY_HASWELL_ULT,
-- 
2.39.2

