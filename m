Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 7C2D49C1106
	for <lists+intel-gfx@lfdr.de>; Thu,  7 Nov 2024 22:37:03 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 24DC110E8EB;
	Thu,  7 Nov 2024 21:37:02 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="Upu9Rcm0";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.9])
 by gabe.freedesktop.org (Postfix) with ESMTPS id ECBAE10E8EB;
 Thu,  7 Nov 2024 21:37:00 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1731015421; x=1762551421;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=Cn1QyQ6keuhLnPB9aY9ii/Ui/zO4N8Nw7PfiVLIRIBw=;
 b=Upu9Rcm0hQ2V6N0Y3lQtGA3wL/6/1w5T2oUcP2VdwUPtyv8XPu8cwGSf
 h3tIE5TbKQhU7fLzOJqmT3FA85vi0T4EIKP/Q17r3tBic4ggZ3scefkNZ
 XlF1pzgjBK4Wv4n8gYJwoNrW/A6TqlngYlT7jBOGVy341JsfJf+xdD+1d
 +4J1id9KmtYSrJTtZ9MwvUzFLiENWf9zRNGVyth00T2NDA0epjgacQzzb
 7U/6LpzbsfVQcRcVkChZYrZIMdmBEY4m73lLThksuuRijwXWaGXWb3Wvb
 sgZyQaQk8jzbQgKZnPJ+k8AA1egSdSqr8G0HfHckuawXNosIHu1jaWGDS w==;
X-CSE-ConnectionGUID: 2kpgDw/LTEqQtI7HKC6JPg==
X-CSE-MsgGUID: xb1Iut6gQg6YBExtLGfRLw==
X-IronPort-AV: E=McAfee;i="6700,10204,11249"; a="41504417"
X-IronPort-AV: E=Sophos;i="6.12,136,1728975600"; d="scan'208";a="41504417"
Received: from orviesa009.jf.intel.com ([10.64.159.149])
 by fmvoesa103.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 07 Nov 2024 13:37:01 -0800
X-CSE-ConnectionGUID: h+hTqYPXTNqr1BKtFEnx6A==
X-CSE-MsgGUID: sVdrVeYMQj+9R5IuIJMqgg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.12,136,1728975600"; d="scan'208";a="85171078"
Received: from klitkey1-mobl1.ger.corp.intel.com (HELO localhost)
 ([10.245.246.233])
 by orviesa009-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 07 Nov 2024 13:36:59 -0800
From: Jani Nikula <jani.nikula@intel.com>
To: intel-gfx@lists.freedesktop.org,
	intel-xe@lists.freedesktop.org
Cc: jani.nikula@intel.com,
	Rodrigo Vivi <rodrigo.vivi@intel.com>
Subject: [CI v2 v2 01/15] drm/i915/display: identify discrete graphics
Date: Thu,  7 Nov 2024 23:36:35 +0200
Message-Id: <f493d62135df4accc2ad1f21c2456dd0c29ab024.1731015334.git.jani.nikula@intel.com>
X-Mailer: git-send-email 2.39.5
In-Reply-To: <cover.1731015333.git.jani.nikula@intel.com>
References: <cover.1731015333.git.jani.nikula@intel.com>
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
index 14d16d111ae3..83177fa142a5 100644
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

