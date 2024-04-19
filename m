Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id B57C38AABA4
	for <lists+intel-gfx@lfdr.de>; Fri, 19 Apr 2024 11:42:21 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 24D5710E8CA;
	Fri, 19 Apr 2024 09:42:20 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="OHtoUh8c";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.9])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 1130910E8B4;
 Fri, 19 Apr 2024 09:42:18 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1713519739; x=1745055739;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=VrZbzsOXysKCqrowhyQ4qUV6OCW5B7Jl+6zGc97d8iE=;
 b=OHtoUh8cxkSQtGaiPy+gUViV5JYRQEUhgGKlckXcxvIzVVU3EgKabUOB
 xGLLuS2h1Nr+5DvpWG+VP4HP85SGghwrb0Y1e3rX8HaOOqgQ/kraIyupZ
 IB7bZcbXZJL0xYgb+jIFDOfwmrtGQ6YI2xWFwnnGS7ToUYi3kftWwC9xh
 +Wv3+IoAf8j1+zZU7swzfuJg9Lw60d1+23tUhYSkgSdiF7peFmAXrZXq7
 3VmfBBZ2BrXmrN0g98lP9GAZUZ6V8DS+lsRnH/mMvbwcgo0PfcNrfZ1G9
 aPmjYedNtXrkPtFEB3NPyutkHxLly1W4dnwsh6TQyQvPcTnPNhHOCwzLG w==;
X-CSE-ConnectionGUID: sB58yTsVRQGJaLqttsmohA==
X-CSE-MsgGUID: f1/DKAtQRAW+A8otVw7hQw==
X-IronPort-AV: E=McAfee;i="6600,9927,11047"; a="19809306"
X-IronPort-AV: E=Sophos;i="6.07,213,1708416000"; d="scan'208";a="19809306"
Received: from orviesa007.jf.intel.com ([10.64.159.147])
 by fmvoesa103.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 19 Apr 2024 02:42:18 -0700
X-CSE-ConnectionGUID: OE8mBs/6QFmN/t4hMe3XQw==
X-CSE-MsgGUID: 4e6T05iWTveZpN8FyYjqBA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.07,213,1708416000"; d="scan'208";a="23785869"
Received: from agherasi-mobl.ger.corp.intel.com (HELO localhost)
 ([10.252.46.119])
 by orviesa007-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 19 Apr 2024 02:42:16 -0700
From: Jani Nikula <jani.nikula@intel.com>
To: intel-gfx@lists.freedesktop.org,
	intel-xe@lists.freedesktop.org
Cc: lucas.demarchi@intel.com, Gustavo Sousa <gustavo.sousa@intel.com>,
 jani.nikula@intel.com
Subject: [PATCH v2 2/5] drm/i915/dmc: improve firmware parse failure
 propagation
Date: Fri, 19 Apr 2024 12:41:55 +0300
Message-Id: <18833681978ec3ac779cce943221cc5b532c7c45.1713519628.git.jani.nikula@intel.com>
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

Return failures from parse_dmc_fw() instead of relying on
intel_dmc_has_payload(). Handle and error report them slightly better,
including a new error message for when the firmware does not contain the
main program.

v2: Print specific error message for payload not found (Gustavo)

Reviewed-by: Gustavo Sousa <gustavo.sousa@intel.com>
Signed-off-by: Jani Nikula <jani.nikula@intel.com>
---
 drivers/gpu/drm/i915/display/intel_dmc.c | 41 ++++++++++++++----------
 1 file changed, 24 insertions(+), 17 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_dmc.c b/drivers/gpu/drm/i915/display/intel_dmc.c
index 8f2a0afe48ba..2e06a39579df 100644
--- a/drivers/gpu/drm/i915/display/intel_dmc.c
+++ b/drivers/gpu/drm/i915/display/intel_dmc.c
@@ -853,7 +853,7 @@ static u32 parse_dmc_fw_css(struct intel_dmc *dmc,
 	return sizeof(struct intel_css_header);
 }
 
-static void parse_dmc_fw(struct intel_dmc *dmc, const struct firmware *fw)
+static int parse_dmc_fw(struct intel_dmc *dmc, const struct firmware *fw)
 {
 	struct drm_i915_private *i915 = dmc->i915;
 	struct intel_css_header *css_header;
@@ -866,13 +866,13 @@ static void parse_dmc_fw(struct intel_dmc *dmc, const struct firmware *fw)
 	u32 r, offset;
 
 	if (!fw)
-		return;
+		return -EINVAL;
 
 	/* Extract CSS Header information */
 	css_header = (struct intel_css_header *)fw->data;
 	r = parse_dmc_fw_css(dmc, css_header, fw->size);
 	if (!r)
-		return;
+		return -EINVAL;
 
 	readcount += r;
 
@@ -880,7 +880,7 @@ static void parse_dmc_fw(struct intel_dmc *dmc, const struct firmware *fw)
 	package_header = (struct intel_package_header *)&fw->data[readcount];
 	r = parse_dmc_fw_package(dmc, package_header, si, fw->size - readcount);
 	if (!r)
-		return;
+		return -EINVAL;
 
 	readcount += r;
 
@@ -897,6 +897,13 @@ static void parse_dmc_fw(struct intel_dmc *dmc, const struct firmware *fw)
 		dmc_header = (struct intel_dmc_header_base *)&fw->data[offset];
 		parse_dmc_fw_header(dmc, dmc_header, fw->size - offset, dmc_id);
 	}
+
+	if (!intel_dmc_has_payload(i915)) {
+		drm_err(&i915->drm, "DMC firmware main program not found\n");
+		return -ENOENT;
+	}
+
+	return 0;
 }
 
 static void intel_dmc_runtime_pm_get(struct drm_i915_private *i915)
@@ -951,22 +958,22 @@ static void dmc_load_work_fn(struct work_struct *work)
 		return;
 	}
 
-	parse_dmc_fw(dmc, fw);
-
-	if (intel_dmc_has_payload(i915)) {
-		intel_dmc_load_program(i915);
-		intel_dmc_runtime_pm_put(i915);
-
-		drm_info(&i915->drm, "Finished loading DMC firmware %s (v%u.%u)\n",
-			 dmc->fw_path, DMC_VERSION_MAJOR(dmc->version),
-			 DMC_VERSION_MINOR(dmc->version));
-	} else {
+	err = parse_dmc_fw(dmc, fw);
+	if (err) {
 		drm_notice(&i915->drm,
-			   "Failed to load DMC firmware %s."
-			   " Disabling runtime power management.\n",
-			   dmc->fw_path);
+			   "Failed to parse DMC firmware %s (%pe). Disabling runtime power management.\n",
+			   dmc->fw_path, ERR_PTR(err));
+		goto out;
 	}
 
+	intel_dmc_load_program(i915);
+	intel_dmc_runtime_pm_put(i915);
+
+	drm_info(&i915->drm, "Finished loading DMC firmware %s (v%u.%u)\n",
+		 dmc->fw_path, DMC_VERSION_MAJOR(dmc->version),
+		 DMC_VERSION_MINOR(dmc->version));
+
+out:
 	release_firmware(fw);
 }
 
-- 
2.39.2

