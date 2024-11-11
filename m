Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 70BA79C3C0E
	for <lists+intel-gfx@lfdr.de>; Mon, 11 Nov 2024 11:34:17 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 126D110E469;
	Mon, 11 Nov 2024 10:34:16 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="GDnr85lL";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.14])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 8059810E165;
 Mon, 11 Nov 2024 10:34:14 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1731321254; x=1762857254;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=gBvNYN6omZDRuGXeGnYYJhtTrVlvu4sqslhlP43C9R4=;
 b=GDnr85lL7FLwnpVeo8aQDmWMRTHjIFQE5RRW/yDfeyJGtMKfWYJ318zN
 UgzVwunl4n3//GAf8gNxxaV7FmXAe4WOuQ98A5n1VTgtmpR0c/onIQWIt
 l3rBghxfadkwbDkhmMGhaBXRd9Xv6QqFfTCb3yD5fGiT1iHcxZFHQTPz6
 eo6fnLVJKuFEW8MQyDMT+G0pzW70O1DAUX47EycHFA23Po8MDlJn1PWge
 JWEKm/7vx7FQYSjOHOd5ObzctRe7KPfU1qQwzcPyVGK+wC3r5gWnVksc3
 ue45G4adAmBqlAU3jLR8HnNKVg+IJB6pg21/VbNJch0SyPYK6vGL8DJPB g==;
X-CSE-ConnectionGUID: aBotkhW0TjWlH7x/SBjbjg==
X-CSE-MsgGUID: PKg4wkHdTlmTVR9tj/6hyA==
X-IronPort-AV: E=McAfee;i="6700,10204,11252"; a="31343992"
X-IronPort-AV: E=Sophos;i="6.12,144,1728975600"; d="scan'208";a="31343992"
Received: from fmviesa009.fm.intel.com ([10.60.135.149])
 by fmvoesa108.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 11 Nov 2024 02:34:14 -0800
X-CSE-ConnectionGUID: CXF/WBp4QqG4nBefp3ovFA==
X-CSE-MsgGUID: SxW5S+/DRT6Jqh0qdRmBxA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.12,144,1728975600"; d="scan'208";a="87196293"
Received: from carterle-desk.ger.corp.intel.com (HELO localhost)
 ([10.245.246.75])
 by fmviesa009-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 11 Nov 2024 02:34:12 -0800
From: Jani Nikula <jani.nikula@intel.com>
To: intel-gfx@lists.freedesktop.org,
	intel-xe@lists.freedesktop.org
Cc: jani.nikula@intel.com,
	Rodrigo Vivi <rodrigo.vivi@intel.com>
Subject: [CI v3 01/15] drm/i915/display: identify discrete graphics
Date: Mon, 11 Nov 2024 12:33:50 +0200
Message-Id: <c02230d26cc0d9dbd7ddcc064661b2ad03739b6a.1731321183.git.jani.nikula@intel.com>
X-Mailer: git-send-email 2.39.5
In-Reply-To: <cover.1731321183.git.jani.nikula@intel.com>
References: <cover.1731321183.git.jani.nikula@intel.com>
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

Identify discrete graphics separately in display, using the platform
group mechanism. This enables dropping the dependency on i915_drv.h
IS_DGFX() from display code.

Start grouping platform groups separately in INTEL_DISPLAY_PLATFORMS()
in anticipation of more groups to come.

Reviewed-by: Rodrigo Vivi <rodrigo.vivi@intel.com>
Signed-off-by: Jani Nikula <jani.nikula@intel.com>
---
 drivers/gpu/drm/i915/display/intel_display_device.c | 8 ++++++--
 drivers/gpu/drm/i915/display/intel_display_device.h | 4 +++-
 2 files changed, 9 insertions(+), 3 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_display_device.c b/drivers/gpu/drm/i915/display/intel_display_device.c
index 5f98e1b2a401..47957384d56d 100644
--- a/drivers/gpu/drm/i915/display/intel_display_device.c
+++ b/drivers/gpu/drm/i915/display/intel_display_device.c
@@ -1011,6 +1011,7 @@ static const enum intel_step dg1_steppings[] = {
 
 static const struct platform_desc dg1_desc = {
 	PLATFORM(dg1),
+	PLATFORM_GROUP(dgfx),
 	.info = &(const struct intel_display_device_info) {
 		XE_D_DISPLAY,
 
@@ -1238,6 +1239,7 @@ static const enum intel_step dg2_g12_steppings[] = {
 
 static const struct platform_desc dg2_desc = {
 	PLATFORM(dg2),
+	PLATFORM_GROUP(dgfx),
 	.subplatforms = (const struct subplatform_desc[]) {
 		{
 			SUBPLATFORM(dg2, g10),
@@ -1338,6 +1340,7 @@ static const struct platform_desc lnl_desc = {
 
 static const struct platform_desc bmg_desc = {
 	PLATFORM(battlemage),
+	PLATFORM_GROUP(dgfx),
 };
 
 static const struct platform_desc ptl_desc = {
@@ -1636,9 +1639,10 @@ void intel_display_device_probe(struct drm_i915_private *i915)
 
 	DISPLAY_RUNTIME_INFO(i915)->step = step;
 
-	drm_info(&i915->drm, "Found %s%s%s (device ID %04x) display version %u.%02u stepping %s\n",
+	drm_info(&i915->drm, "Found %s%s%s (device ID %04x) %s display version %u.%02u stepping %s\n",
 		 desc->name, subdesc ? "/" : "", subdesc ? subdesc->name : "",
-		 pdev->device, DISPLAY_RUNTIME_INFO(i915)->ip.ver,
+		 pdev->device, display->platform.dgfx ? "discrete" : "integrated",
+		 DISPLAY_RUNTIME_INFO(i915)->ip.ver,
 		 DISPLAY_RUNTIME_INFO(i915)->ip.rel,
 		 step != STEP_NONE ? intel_step_name(step) : "N/A");
 
diff --git a/drivers/gpu/drm/i915/display/intel_display_device.h b/drivers/gpu/drm/i915/display/intel_display_device.h
index a8a0b4332247..962a46e54499 100644
--- a/drivers/gpu/drm/i915/display/intel_display_device.h
+++ b/drivers/gpu/drm/i915/display/intel_display_device.h
@@ -21,6 +21,9 @@ struct drm_printer;
  * platform.
  */
 #define INTEL_DISPLAY_PLATFORMS(func) \
+	/* Platform group aliases */ \
+	func(g4x) /* g45 and gm45 */ \
+	func(dgfx) /* discrete graphics */ \
 	/* Display ver 2 */ \
 	func(i830) \
 	func(i845g) \
@@ -38,7 +41,6 @@ struct drm_printer;
 	func(i965gm) \
 	func(g45) \
 	func(gm45) \
-	func(g4x) /* group alias for g45 and gm45 */ \
 	/* Display ver 5 */ \
 	func(ironlake) \
 	/* Display ver 6 */ \
-- 
2.39.5

