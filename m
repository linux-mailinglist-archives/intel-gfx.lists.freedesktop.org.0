Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id D4D5C8AABA7
	for <lists+intel-gfx@lfdr.de>; Fri, 19 Apr 2024 11:42:31 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 6809E10E950;
	Fri, 19 Apr 2024 09:42:30 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="c7HJLtWq";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.10])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 4A5F410E86E;
 Fri, 19 Apr 2024 09:42:29 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1713519750; x=1745055750;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=VjV/S5u6AnSNeBCUOx1m6tKnOP0//hYGKq+opxrdaQg=;
 b=c7HJLtWq8V/Rx264zbH9aF6CgO6jAajkSqcJil0GsAwr1l5yLsvh5tLD
 cVZoNJABOYnpuJmK9i8ejljmSvnLsfBLeEfoXIMbCSzoqfDPxjv999ID6
 frNh+tNPhK5lnnu0ARvtHqXnTnSOmfT1ezxPeyXtVKAJ4FoqYgc6ng6Px
 TqR4oGX/8uxtrQJBQ6CVkYjuc10Fqh95s3OMS9NHRSoa+hwrCcCBLhkAj
 mU15vgOvHq6k6UVAxjzYQK/d0X9YlSrY3acLk8p2lz2sRhJWQIFfmRlCH
 CM2PRuA053Xd/KbyFI/ZusLnfn/3FBttjjuUtD+ebjgn13j7YwtzxtVPX g==;
X-CSE-ConnectionGUID: LbaK2G1SRHS02pVMh67QtQ==
X-CSE-MsgGUID: PTC/GCu8QdSS5MA8gVOCvA==
X-IronPort-AV: E=McAfee;i="6600,9927,11047"; a="20503858"
X-IronPort-AV: E=Sophos;i="6.07,213,1708416000"; d="scan'208";a="20503858"
Received: from orviesa004.jf.intel.com ([10.64.159.144])
 by fmvoesa104.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 19 Apr 2024 02:42:29 -0700
X-CSE-ConnectionGUID: c7NW1ABsS8mnuFKcauvdmQ==
X-CSE-MsgGUID: vvyTgipvQ2m9/fnej2ScfQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.07,213,1708416000"; d="scan'208";a="28117188"
Received: from agherasi-mobl.ger.corp.intel.com (HELO localhost)
 ([10.252.46.119])
 by orviesa004-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 19 Apr 2024 02:42:26 -0700
From: Jani Nikula <jani.nikula@intel.com>
To: intel-gfx@lists.freedesktop.org,
	intel-xe@lists.freedesktop.org
Cc: lucas.demarchi@intel.com, Gustavo Sousa <gustavo.sousa@intel.com>,
 jani.nikula@intel.com
Subject: [PATCH v2 4/5] drm/i915/dmc: change how to disable DMC firmware using
 module param
Date: Fri, 19 Apr 2024 12:41:57 +0300
Message-Id: <8695aca8a6643e36bb680bc2dcab97c637e70b00.1713519628.git.jani.nikula@intel.com>
X-Mailer: git-send-email 2.39.2
In-Reply-To: <cover.1713519628.git.jani.nikula@intel.com>
References: <cover.1713519628.git.jani.nikula@intel.com>
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

The distinction between the dmc_firmware_path module param being NULL
and the empty string "" is problematic. It's not possible to set the
parameter back to NULL via sysfs or debugfs. Remove the distinction, and
consider NULL and the empty string to be the same thing, and use the
platform default for them.

This removes the possibility to disable DMC (and runtime PM) via
i915.dmc_firmware_path="". Instead, use "/dev/null" as the magic
firmware path to skip DMC firmware loading and disable runtime PM.

v2: Add support for i915.dmc_firmware_path="/dev/null" (Gustavo)

Cc: Gustavo Sousa <gustavo.sousa@intel.com>
Cc: Lucas De Marchi <lucas.demarchi@intel.com>
Signed-off-by: Jani Nikula <jani.nikula@intel.com>
---
 drivers/gpu/drm/i915/display/intel_dmc.c | 31 +++++++++++++++++-------
 drivers/gpu/drm/i915/i915_params.c       |  3 ++-
 2 files changed, 24 insertions(+), 10 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_dmc.c b/drivers/gpu/drm/i915/display/intel_dmc.c
index a2027c6cf4f1..7dabfaa636e4 100644
--- a/drivers/gpu/drm/i915/display/intel_dmc.c
+++ b/drivers/gpu/drm/i915/display/intel_dmc.c
@@ -73,6 +73,21 @@ static struct intel_dmc *i915_to_dmc(struct drm_i915_private *i915)
 	return i915->display.dmc.dmc;
 }
 
+static const char *dmc_firmware_param(struct drm_i915_private *i915)
+{
+	const char *p = i915->params.dmc_firmware_path;
+
+	return p && *p ? p : NULL;
+}
+
+static bool dmc_firmware_param_disabled(struct drm_i915_private *i915)
+{
+	const char *p = dmc_firmware_param(i915);
+
+	/* Magic path to indicate disabled */
+	return p && !strcmp(p, "/dev/null");
+}
+
 #define DMC_VERSION(major, minor)	((major) << 16 | (minor))
 #define DMC_VERSION_MAJOR(version)	((version) >> 16)
 #define DMC_VERSION_MINOR(version)	((version) & 0xffff)
@@ -991,7 +1006,7 @@ static void dmc_load_work_fn(struct work_struct *work)
 
 	err = request_firmware(&fw, dmc->fw_path, i915->drm.dev);
 
-	if (err == -ENOENT && !i915->params.dmc_firmware_path) {
+	if (err == -ENOENT && !dmc_firmware_param(i915)) {
 		fallback_path = dmc_fallback_path(i915);
 		if (fallback_path) {
 			drm_dbg_kms(&i915->drm, "%s not found, falling back to %s\n",
@@ -1064,16 +1079,14 @@ void intel_dmc_init(struct drm_i915_private *i915)
 
 	dmc->fw_path = dmc_firmware_default(i915, &dmc->max_fw_size);
 
-	if (i915->params.dmc_firmware_path) {
-		if (strlen(i915->params.dmc_firmware_path) == 0) {
-			drm_info(&i915->drm,
-				 "Disabling DMC firmware and runtime PM\n");
-			goto out;
-		}
-
-		dmc->fw_path = i915->params.dmc_firmware_path;
+	if (dmc_firmware_param_disabled(i915)) {
+		drm_info(&i915->drm, "Disabling DMC firmware and runtime PM\n");
+		goto out;
 	}
 
+	if (dmc_firmware_param(i915))
+		dmc->fw_path = dmc_firmware_param(i915);
+
 	if (!dmc->fw_path) {
 		drm_dbg_kms(&i915->drm,
 			    "No known DMC firmware for platform, disabling runtime PM\n");
diff --git a/drivers/gpu/drm/i915/i915_params.c b/drivers/gpu/drm/i915/i915_params.c
index de43048543e8..edfd1f54a882 100644
--- a/drivers/gpu/drm/i915/i915_params.c
+++ b/drivers/gpu/drm/i915/i915_params.c
@@ -109,7 +109,8 @@ i915_param_named_unsafe(huc_firmware_path, charp, 0400,
 	"HuC firmware path to use instead of the default one");
 
 i915_param_named_unsafe(dmc_firmware_path, charp, 0400,
-	"DMC firmware path to use instead of the default one");
+	"DMC firmware path to use instead of the default one. "
+	"Use /dev/null to disable DMC and runtime PM.");
 
 i915_param_named_unsafe(gsc_firmware_path, charp, 0400,
 	"GSC firmware path to use instead of the default one");
-- 
2.39.2

