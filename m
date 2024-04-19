Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id F0C2B8AABA1
	for <lists+intel-gfx@lfdr.de>; Fri, 19 Apr 2024 11:42:15 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id AB44E10E8B3;
	Fri, 19 Apr 2024 09:42:13 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="jctdZksY";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.10])
 by gabe.freedesktop.org (Postfix) with ESMTPS id DF5DF10E8B3;
 Fri, 19 Apr 2024 09:42:12 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1713519733; x=1745055733;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=xQIF7FvBMpBqLdkYwWcr71rbPvlg+36UEp0/CifGUlo=;
 b=jctdZksYTYNVRlaAcbR4z9FF6imrLcs3SWSOICzzdp3CaWBaEagBIZe9
 YAHsvM1U2aE7QYjDOjvjRqoZSZaLbzjWynzHG7ioSKxCsRSm5GoxN4fgt
 pF2yU83qsI8j13xRueE677/qh9qS1CqR8HY+BJZdfOtM4BleculdDfb3I
 yOsNSi0t9Yc4TsIqqfF99BiMuXPo5K7diQVGgScn5UmOKREFqiV8JFLvr
 AoIPQiRhGWMcSoLcZHACspWBd/e8AO01eCazFT11KttXKdzDP1N2jJHW/
 rk4Z3eDNlgKzoGgaR+SfyDyAxObHcxdJLXSm3aScIfqNcCBfVGZclL3Bv A==;
X-CSE-ConnectionGUID: rkP3PUCnTtCJVFKm5A44tg==
X-CSE-MsgGUID: qKsA14UTRhKuL+QJOGKQzQ==
X-IronPort-AV: E=McAfee;i="6600,9927,11047"; a="20503833"
X-IronPort-AV: E=Sophos;i="6.07,213,1708416000"; d="scan'208";a="20503833"
Received: from orviesa004.jf.intel.com ([10.64.159.144])
 by fmvoesa104.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 19 Apr 2024 02:42:13 -0700
X-CSE-ConnectionGUID: 3LSMBaSgTDCXcJiFli28BQ==
X-CSE-MsgGUID: goq2Om02QWS60c8XJ84c4Q==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.07,213,1708416000"; d="scan'208";a="28117117"
Received: from agherasi-mobl.ger.corp.intel.com (HELO localhost)
 ([10.252.46.119])
 by orviesa004-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 19 Apr 2024 02:42:10 -0700
From: Jani Nikula <jani.nikula@intel.com>
To: intel-gfx@lists.freedesktop.org,
	intel-xe@lists.freedesktop.org
Cc: lucas.demarchi@intel.com, Gustavo Sousa <gustavo.sousa@intel.com>,
 jani.nikula@intel.com
Subject: [PATCH v2 1/5] drm/i915/dmc: handle request_firmware() errors
 separately
Date: Fri, 19 Apr 2024 12:41:54 +0300
Message-Id: <0654bb3480f8d2103225d26f665badead5495532.1713519628.git.jani.nikula@intel.com>
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

Clarify request_firmware() error handling. Don't proceed to trying to
parse non-existent firmware or check for payload when request_firmware()
failed to begin with. There's no reason to release_firmware() either
when request_firmware() failed.

Also move the message about DMC firmware homepage here, as in other
cases the user probably has some firmware, although its parsing fails
for some reason.

Reviewed-by: Gustavo Sousa <gustavo.sousa@intel.com>
Signed-off-by: Jani Nikula <jani.nikula@intel.com>
---
 drivers/gpu/drm/i915/display/intel_dmc.c | 11 +++++++++--
 1 file changed, 9 insertions(+), 2 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_dmc.c b/drivers/gpu/drm/i915/display/intel_dmc.c
index 3697a02b51b6..8f2a0afe48ba 100644
--- a/drivers/gpu/drm/i915/display/intel_dmc.c
+++ b/drivers/gpu/drm/i915/display/intel_dmc.c
@@ -942,6 +942,15 @@ static void dmc_load_work_fn(struct work_struct *work)
 		}
 	}
 
+	if (err) {
+		drm_notice(&i915->drm,
+			   "Failed to load DMC firmware %s (%pe). Disabling runtime power management.\n",
+			   dmc->fw_path, ERR_PTR(err));
+		drm_notice(&i915->drm, "DMC firmware homepage: %s",
+			   INTEL_DMC_FIRMWARE_URL);
+		return;
+	}
+
 	parse_dmc_fw(dmc, fw);
 
 	if (intel_dmc_has_payload(i915)) {
@@ -956,8 +965,6 @@ static void dmc_load_work_fn(struct work_struct *work)
 			   "Failed to load DMC firmware %s."
 			   " Disabling runtime power management.\n",
 			   dmc->fw_path);
-		drm_notice(&i915->drm, "DMC firmware homepage: %s",
-			   INTEL_DMC_FIRMWARE_URL);
 	}
 
 	release_firmware(fw);
-- 
2.39.2

