Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 0F58C8A9D4C
	for <lists+intel-gfx@lfdr.de>; Thu, 18 Apr 2024 16:40:16 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 655A3113D14;
	Thu, 18 Apr 2024 14:40:14 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="l4qk/vdt";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.9])
 by gabe.freedesktop.org (Postfix) with ESMTPS id D7A8A113D0E;
 Thu, 18 Apr 2024 14:40:12 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1713451212; x=1744987212;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=72XPbsK5To5BjGVxWSefTrws5ijtWmOKPiSMv7ZPPts=;
 b=l4qk/vdt9cjCduYMQJUDtCNtHyo4NmTki4KsGtNO8p2nZwYQaftkwhIv
 G/CnaBM01wssEvzvcBVwJPIyn9GhJlfRnp6u04xh/x0kfF8mU4PwEvwZ4
 NisxELNPYJqRbK4AYxgorkusio9mHNX4lcZUWWcZihHicbiZczGFC/v9r
 iAui0IbitORqHjDmfhgR3ZucI3XmXq1i4x3KJrNxyBVo/EsUyR7w1Vz/q
 z0pjbeqOJ9I59FQXmMWlkpHIvhC1lsddypq1nI15iiiU4ofl5es0ldfWR
 DwepMSeXeubEVW+PfhnmOpLwwvmT+5yi8Kuk5G4EnQV7l5dfAQarcYtoW A==;
X-CSE-ConnectionGUID: pdZLQr/qSJex5TpMK4/hbA==
X-CSE-MsgGUID: Yh74C98pRQKJbln7XfD4vw==
X-IronPort-AV: E=McAfee;i="6600,9927,11047"; a="19701114"
X-IronPort-AV: E=Sophos;i="6.07,212,1708416000"; d="scan'208";a="19701114"
Received: from orviesa005.jf.intel.com ([10.64.159.145])
 by fmvoesa103.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 18 Apr 2024 07:40:12 -0700
X-CSE-ConnectionGUID: QxxMahn5QIeLdYcqq1sIHQ==
X-CSE-MsgGUID: NmEhmN+oT3q1Q8WbegbYlQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.07,212,1708416000"; d="scan'208";a="27780991"
Received: from unknown (HELO localhost) ([10.237.66.160])
 by orviesa005-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 18 Apr 2024 07:40:11 -0700
From: Jani Nikula <jani.nikula@intel.com>
To: intel-gfx@lists.freedesktop.org,
	intel-xe@lists.freedesktop.org
Cc: jani.nikula@intel.com,
	lucas.demarchi@intel.com,
	rodrigo.vivi@intel.com
Subject: [PATCH 2/5] drm/i915/dmc: improve firmware parse failure propagation
Date: Thu, 18 Apr 2024 17:39:51 +0300
Message-Id: <08137052f324f47f9ca9aadfc5bdf915a17bfd06.1713450693.git.jani.nikula@intel.com>
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

Return failures from parse_dmc_fw() instead of relying on
intel_dmc_has_payload(). Handle and error report them slightly better.

Signed-off-by: Jani Nikula <jani.nikula@intel.com>
---
 drivers/gpu/drm/i915/display/intel_dmc.c | 39 +++++++++++++-----------
 1 file changed, 22 insertions(+), 17 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_dmc.c b/drivers/gpu/drm/i915/display/intel_dmc.c
index 65880dea9c15..ee5db1aafd50 100644
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
 
@@ -897,6 +897,11 @@ static void parse_dmc_fw(struct intel_dmc *dmc, const struct firmware *fw)
 		dmc_header = (struct intel_dmc_header_base *)&fw->data[offset];
 		parse_dmc_fw_header(dmc, dmc_header, fw->size - offset, dmc_id);
 	}
+
+	if (!intel_dmc_has_payload(i915))
+		return -ENOENT;
+
+	return 0;
 }
 
 static void intel_dmc_runtime_pm_get(struct drm_i915_private *i915)
@@ -951,22 +956,22 @@ static void dmc_load_work_fn(struct work_struct *work)
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

