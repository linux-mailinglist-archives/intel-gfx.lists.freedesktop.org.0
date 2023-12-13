Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 0268B810D45
	for <lists+intel-gfx@lfdr.de>; Wed, 13 Dec 2023 10:24:33 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 4300C10E756;
	Wed, 13 Dec 2023 09:24:29 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.9])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 9725110E740
 for <intel-gfx@lists.freedesktop.org>; Wed, 13 Dec 2023 09:24:26 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1702459466; x=1733995466;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=5lZYeFPa/hq8Aw9VXM+hVoWRVyY5KM8KnacaOJu311E=;
 b=Y1uuOpABpjNwRIwYAE/HFKJ8ME8iD+kUeGUQ7FeFRWaNNRQaINd6tvyA
 icT/PRWGWXlmb0u5vqzyl7Di7Gclov2QX+06Qu+gtyJDJUonA1yorBo+F
 JeL0KcgvnX5dyZWrgftn00a1uRAlD+K74nZb5pAM30mc5pmkEZQlXWEFT
 Ht9j5d9zz4DQCdGZR08smA4oRxxAeAbtiuJZeYcGAoA6hjEkuNh3cvRev
 yuROS+TqX3SWCGFUqItlmiay8O+nDC4C4GRCxY6/lG+1r/B3By+CCdoXW
 kOEINmZ13wJfwymxIPEClwNcpaAaHBQbgob09tsQ8WasBYCgG3DhFrt3h g==;
X-IronPort-AV: E=McAfee;i="6600,9927,10922"; a="13632992"
X-IronPort-AV: E=Sophos;i="6.04,272,1695711600"; d="scan'208";a="13632992"
Received: from fmviesa001.fm.intel.com ([10.60.135.141])
 by orvoesa101.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 13 Dec 2023 01:24:26 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.04,272,1695711600"; d="scan'208";a="17665258"
Received: from srr4-3-linux-103-aknautiy.iind.intel.com ([10.223.34.160])
 by smtpauth.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 13 Dec 2023 01:24:24 -0800
From: Ankit Nautiyal <ankit.k.nautiyal@intel.com>
To: intel-gfx@lists.freedesktop.org
Subject: [PATCH 1/5] drm/i915/dp: Simplify checks for helper
 intel_dp_dsc_max_src_input_bpc
Date: Wed, 13 Dec 2023 14:46:28 +0530
Message-Id: <20231213091632.431557-2-ankit.k.nautiyal@intel.com>
X-Mailer: git-send-email 2.40.1
In-Reply-To: <20231213091632.431557-1-ankit.k.nautiyal@intel.com>
References: <20231213091632.431557-1-ankit.k.nautiyal@intel.com>
MIME-Version: 1.0
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
Cc: jani.nikula@intel.com
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

In helper intel_dp_dsc_max_src_input_bpc it is assumed that platforms
earlier to ICL do not support DSC, and the function returns 0 for
those platforms.

Use HAS_DSC macro instead and return 0 for platforms that do not support
DSC.

v2: Updated commit message with clarification. (Jani)

Signed-off-by: Ankit Nautiyal <ankit.k.nautiyal@intel.com>
---
 drivers/gpu/drm/i915/display/intel_dp.c | 7 ++++---
 1 file changed, 4 insertions(+), 3 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_dp.c b/drivers/gpu/drm/i915/display/intel_dp.c
index 3b2482bf683f..a8015f701626 100644
--- a/drivers/gpu/drm/i915/display/intel_dp.c
+++ b/drivers/gpu/drm/i915/display/intel_dp.c
@@ -1629,13 +1629,14 @@ intel_dp_compute_link_config_wide(struct intel_dp *intel_dp,
 static
 u8 intel_dp_dsc_max_src_input_bpc(struct drm_i915_private *i915)
 {
+	if (!HAS_DSC(i915))
+		return 0;
+
 	/* Max DSC Input BPC for ICL is 10 and for TGL+ is 12 */
-	if (DISPLAY_VER(i915) >= 12)
-		return 12;
 	if (DISPLAY_VER(i915) == 11)
 		return 10;
 
-	return 0;
+	return 12;
 }
 
 int intel_dp_dsc_compute_max_bpp(const struct intel_connector *connector,
-- 
2.40.1

