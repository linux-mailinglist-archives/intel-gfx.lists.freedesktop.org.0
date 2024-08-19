Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 77EC09573CF
	for <lists+intel-gfx@lfdr.de>; Mon, 19 Aug 2024 20:45:31 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 21B9A10E29A;
	Mon, 19 Aug 2024 18:45:30 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="lJ80zWiK";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.18])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 29EFF10E292;
 Mon, 19 Aug 2024 18:45:29 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1724093129; x=1755629129;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=rJQ2R+Y4yURj7oVintsbUZLVrCanseKc8eMvWq2zW6Y=;
 b=lJ80zWiKv9aQ4Cnir4FXHlgOQyW9dzfluTpUfDb04dklofNylBIch0cq
 AmV/nsqO4em5iJ1YmtKLAxduuVwKN47asQNcvjLZot0OZPTSC3zLCSOrR
 T3YK7QtaxD14x9mu4qx06Sgu+VxjbxXPN6Mrkd2TydmwIQFQvKHfH5Oad
 UGfFpv3KIwsyQQWh2SitX1tEkBgv48iYV1gm5RgameMitw9wBoIaxMJZD
 GXAvCRTZ/YiCLo6Cnf/wVm1tw37SwPJ2Gz4uZ70T6Dc+yDzMjq+bRkwrZ
 IIXVgXHFXbPAwrMEVF49gmr1AgJSnUfshl60oD8bEulcUzZJa6tM8TnvQ g==;
X-CSE-ConnectionGUID: yT2hNHp2QmCK3+J6FXgKwQ==
X-CSE-MsgGUID: GTZeKGs/QkGQHsSn8k7cIQ==
X-IronPort-AV: E=McAfee;i="6700,10204,11169"; a="21902230"
X-IronPort-AV: E=Sophos;i="6.10,159,1719903600"; d="scan'208";a="21902230"
Received: from fmviesa002.fm.intel.com ([10.60.135.142])
 by fmvoesa112.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 19 Aug 2024 11:45:29 -0700
X-CSE-ConnectionGUID: z82SVGvXQ2ahooWGiiW94g==
X-CSE-MsgGUID: i2DpUTbFSEu0bU3VLRWDGw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.10,159,1719903600"; d="scan'208";a="83670910"
Received: from mwiniars-desk2.ger.corp.intel.com (HELO localhost)
 ([10.245.246.70])
 by fmviesa002-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 19 Aug 2024 11:45:27 -0700
From: Jani Nikula <jani.nikula@intel.com>
To: intel-gfx@lists.freedesktop.org,
	intel-xe@lists.freedesktop.org
Cc: jani.nikula@intel.com, rodrigo.vivi@intel.com, lucas.demarchi@intel.com,
 ville.syrjala@linux.intel.com
Subject: [PATCH v2 8/9] drm/i915/display: keep subplatforms next to their
 platforms
Date: Mon, 19 Aug 2024 21:44:35 +0300
Message-Id: <43a8e73d499d909741e4b6c78ed4e20895fe1b24.1724092799.git.jani.nikula@intel.com>
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

There's no reason to keep subplatforms separated in the members. Update
the comment while at it.

Signed-off-by: Jani Nikula <jani.nikula@intel.com>
---
 .../drm/i915/display/intel_display_device.h   | 51 ++++++++++---------
 1 file changed, 27 insertions(+), 24 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_display_device.h b/drivers/gpu/drm/i915/display/intel_display_device.h
index 6d1f3de46836..86664b999ca9 100644
--- a/drivers/gpu/drm/i915/display/intel_display_device.h
+++ b/drivers/gpu/drm/i915/display/intel_display_device.h
@@ -15,7 +15,11 @@
 struct drm_i915_private;
 struct drm_printer;
 
-/* Keep in gen based order, and chronological order within a gen */
+/*
+ * Display platforms and subplatforms. Keep platforms in display version based
+ * order, chronological order within a version, and subplatforms next to the
+ * platform.
+ */
 #define INTEL_DISPLAY_PLATFORMS(func) \
 	/* Display ver 2 */ \
 	func(I830) \
@@ -42,56 +46,55 @@ struct drm_printer;
 	func(IVYBRIDGE) \
 	func(VALLEYVIEW) \
 	func(HASWELL) \
+	func(HASWELL_ULT) \
+	func(HASWELL_ULX) \
 	/* Display ver 8 */ \
 	func(BROADWELL) \
+	func(BROADWELL_ULT) \
+	func(BROADWELL_ULX) \
 	func(CHERRYVIEW) \
 	/* Display ver 9 */ \
 	func(SKYLAKE) \
+	func(SKYLAKE_ULT) \
+	func(SKYLAKE_ULX) \
 	func(BROXTON) \
 	func(KABYLAKE) \
+	func(KABYLAKE_ULT) \
+	func(KABYLAKE_ULX) \
 	func(GEMINILAKE) \
 	func(COFFEELAKE) \
+	func(COFFEELAKE_ULT) \
+	func(COFFEELAKE_ULX) \
 	func(COMETLAKE) \
+	func(COMETLAKE_ULT) \
+	func(COMETLAKE_ULX) \
 	/* Display ver 11 */ \
 	func(ICELAKE) \
+	func(ICELAKE_PORT_F) \
 	func(JASPERLAKE) \
 	func(ELKHARTLAKE) \
 	/* Display ver 12 */ \
 	func(TIGERLAKE) \
+	func(TIGERLAKE_UY) \
 	func(ROCKETLAKE) \
 	func(DG1) \
 	func(ALDERLAKE_S) \
+	func(ALDERLAKE_S_RAPTORLAKE_S) \
 	/* Display ver 13 */ \
 	func(ALDERLAKE_P) \
+	func(ALDERLAKE_P_ALDERLAKE_N) \
+	func(ALDERLAKE_P_RAPTORLAKE_P) \
+	func(ALDERLAKE_P_RAPTORLAKE_U) \
 	func(DG2) \
+	func(DG2_G10) \
+	func(DG2_G11) \
+	func(DG2_G12) \
 	/* Display ver 14 (based on GMD ID) */ \
 	func(METEORLAKE) \
 	/* Display ver 20 (based on GMD ID) */ \
 	func(LUNARLAKE) \
 	/* Display ver 14.1 (based on GMD ID) */ \
-	func(BATTLEMAGE) \
-	/* Subplatforms */ \
-	func(HASWELL_ULT) \
-	func(HASWELL_ULX) \
-	func(BROADWELL_ULT) \
-	func(BROADWELL_ULX) \
-	func(SKYLAKE_ULT) \
-	func(SKYLAKE_ULX) \
-	func(KABYLAKE_ULT) \
-	func(KABYLAKE_ULX) \
-	func(COFFEELAKE_ULT) \
-	func(COFFEELAKE_ULX) \
-	func(COMETLAKE_ULT) \
-	func(COMETLAKE_ULX) \
-	func(ICELAKE_PORT_F) \
-	func(TIGERLAKE_UY) \
-	func(ALDERLAKE_S_RAPTORLAKE_S) \
-	func(ALDERLAKE_P_ALDERLAKE_N) \
-	func(ALDERLAKE_P_RAPTORLAKE_P) \
-	func(ALDERLAKE_P_RAPTORLAKE_U) \
-	func(DG2_G10) \
-	func(DG2_G11) \
-	func(DG2_G12)
+	func(BATTLEMAGE)
 
 #define __MEMBER(name) unsigned long name:1;
 #define __COUNT(x) 1 +
-- 
2.39.2

