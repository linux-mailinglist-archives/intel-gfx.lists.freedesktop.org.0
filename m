Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id B5FD58A9D4E
	for <lists+intel-gfx@lfdr.de>; Thu, 18 Apr 2024 16:40:24 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 3941D113D0C;
	Thu, 18 Apr 2024 14:40:23 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="dDLGwst/";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.9])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 46808113D13;
 Thu, 18 Apr 2024 14:40:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1713451222; x=1744987222;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=mftEDXoWAjkItb4r7gYxoVq75qubY5ESXppUlCowv9I=;
 b=dDLGwst/peYO4uWxCZcAMplrwaEU1/lUbicWyTOExSF63qTGP/HUIrsa
 ANbn0DCGTQb71vDfkgVcU4wRGhsQkw9S720Igz1PrlZdRe6pj86bEzbuA
 TBYmigN9YcqDY3KRjAb0f7tiGRUP5BMoThj4yHW+9xXdn+cSM+3IY+3+e
 RUcajuh2TI6yvRM0YsEO6PZUXqkZSvu2gFd25aHRoha8C5vO6A8OF8YpF
 7Pi+a1iFlfQ2AvnteCJPZ0ejowKK/MVd+zK/nBiReF67AyVqHxZhjn4KU
 5uy2lgcicuZ5ZrzI13rxUA9Oq7UAhS7bpBEklsaQie08ffeBfrqOzzdb6 Q==;
X-CSE-ConnectionGUID: 0vUUoyivTx25y6qwhi/Aaw==
X-CSE-MsgGUID: U5BbXrqjRnyjSRrxK8cdBA==
X-IronPort-AV: E=McAfee;i="6600,9927,11047"; a="19701158"
X-IronPort-AV: E=Sophos;i="6.07,212,1708416000"; d="scan'208";a="19701158"
Received: from orviesa005.jf.intel.com ([10.64.159.145])
 by fmvoesa103.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 18 Apr 2024 07:40:22 -0700
X-CSE-ConnectionGUID: +70Tg1GmSBGYmLgmIPhoOQ==
X-CSE-MsgGUID: /G5oddI2Su2Slg0iqpfI7Q==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.07,212,1708416000"; d="scan'208";a="27781048"
Received: from unknown (HELO localhost) ([10.237.66.160])
 by orviesa005-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 18 Apr 2024 07:40:21 -0700
From: Jani Nikula <jani.nikula@intel.com>
To: intel-gfx@lists.freedesktop.org,
	intel-xe@lists.freedesktop.org
Cc: jani.nikula@intel.com,
	lucas.demarchi@intel.com,
	rodrigo.vivi@intel.com
Subject: [PATCH 4/5] drm/i915/dmc: change meaning of dmc_firmware_path=""
 module param
Date: Thu, 18 Apr 2024 17:39:53 +0300
Message-Id: <f88657c63d698d339a7a1079f6c428ba9e6b6b06.1713450693.git.jani.nikula@intel.com>
X-Mailer: git-send-email 2.39.2
In-Reply-To: <cover.1713450693.git.jani.nikula@intel.com>
References: <cover.1713450693.git.jani.nikula@intel.com>
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
i915.dmc_firmware_path="". Instead, you will need to specify a
non-existent file or a file that will not parse correctly.

Signed-off-by: Jani Nikula <jani.nikula@intel.com>
---
 drivers/gpu/drm/i915/display/intel_dmc.c | 20 ++++++++++----------
 drivers/gpu/drm/i915/i915_params.c       |  3 ++-
 2 files changed, 12 insertions(+), 11 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_dmc.c b/drivers/gpu/drm/i915/display/intel_dmc.c
index 740c05ce83cc..3e510c2be1eb 100644
--- a/drivers/gpu/drm/i915/display/intel_dmc.c
+++ b/drivers/gpu/drm/i915/display/intel_dmc.c
@@ -73,6 +73,13 @@ static struct intel_dmc *i915_to_dmc(struct drm_i915_private *i915)
 	return i915->display.dmc.dmc;
 }
 
+static const char *dmc_firmware_param(struct drm_i915_private *i915)
+{
+	const char *p = i915->params.dmc_firmware_path;
+
+	return p && *p ? p : NULL;
+}
+
 #define DMC_VERSION(major, minor)	((major) << 16 | (minor))
 #define DMC_VERSION_MAJOR(version)	((version) >> 16)
 #define DMC_VERSION_MINOR(version)	((version) & 0xffff)
@@ -989,7 +996,7 @@ static void dmc_load_work_fn(struct work_struct *work)
 
 	err = request_firmware(&fw, dmc->fw_path, i915->drm.dev);
 
-	if (err == -ENOENT && !i915->params.dmc_firmware_path) {
+	if (err == -ENOENT && !dmc_firmware_param(i915)) {
 		fallback_path = dmc_fallback_path(i915);
 		if (fallback_path) {
 			drm_dbg_kms(&i915->drm, "%s not found, falling back to %s\n",
@@ -1062,15 +1069,8 @@ void intel_dmc_init(struct drm_i915_private *i915)
 
 	dmc->fw_path = dmc_firmware_default(i915, &dmc->max_fw_size);
 
-	if (i915->params.dmc_firmware_path) {
-		if (strlen(i915->params.dmc_firmware_path) == 0) {
-			drm_info(&i915->drm,
-				 "Disabling DMC firmware and runtime PM\n");
-			goto out;
-		}
-
-		dmc->fw_path = i915->params.dmc_firmware_path;
-	}
+	if (dmc_firmware_param(i915))
+		dmc->fw_path = dmc_firmware_param(i915);
 
 	if (!dmc->fw_path) {
 		drm_dbg_kms(&i915->drm,
diff --git a/drivers/gpu/drm/i915/i915_params.c b/drivers/gpu/drm/i915/i915_params.c
index de43048543e8..9e7f2a9f6287 100644
--- a/drivers/gpu/drm/i915/i915_params.c
+++ b/drivers/gpu/drm/i915/i915_params.c
@@ -109,7 +109,8 @@ i915_param_named_unsafe(huc_firmware_path, charp, 0400,
 	"HuC firmware path to use instead of the default one");
 
 i915_param_named_unsafe(dmc_firmware_path, charp, 0400,
-	"DMC firmware path to use instead of the default one");
+	"DMC firmware path to use instead of the default one. "
+	"Use non-existent file to disable DMC and runtime PM.");
 
 i915_param_named_unsafe(gsc_firmware_path, charp, 0400,
 	"GSC firmware path to use instead of the default one");
-- 
2.39.2

