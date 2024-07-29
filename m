Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 0DE9893FC7B
	for <lists+intel-gfx@lfdr.de>; Mon, 29 Jul 2024 19:33:29 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 7C1CA10E428;
	Mon, 29 Jul 2024 17:33:27 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="T3U+KkUn";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.21])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 0FC8910E428
 for <intel-gfx@lists.freedesktop.org>; Mon, 29 Jul 2024 17:33:26 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1722274406; x=1753810406;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=cwIvrWPZJ9/7gEr/5G2HhJQ7EaFjT8TNr6ULuNXIZus=;
 b=T3U+KkUn10EKnhhItT2u/nDKJFq/MdteuS164fhEPlMQ+fgTMrQxjqRn
 nOHEm7rNN/7eIBg4b2rgKKA/4R1EjZ2r4ulz1kjTdabdRforWK923Bxkc
 y8f6ZjdQAchvzvwRQlwPkm6HhX5aqGUhj1/PynoDGns7TpnlJflDFKjq1
 8IAIFEChSneT5bdbs/i4DJNIcujdRRRr8OltjlHubUuifB2yHXIU5ZdcI
 taq0XVLrEnfBc2kTG2gvx27WihTSE+lhh3eojYTU6njKe9pJ54GUTdTMr
 eauOh3zgiKLY48eQBeOEMBTNpasvDoo6Zp8m2CrxsxQzuSA6ZAZYYnwGO w==;
X-CSE-ConnectionGUID: ZsEWGf19Q+OKjZqFLSHTYQ==
X-CSE-MsgGUID: fVe6v8AXR5yGwCDK9QVg1Q==
X-IronPort-AV: E=McAfee;i="6700,10204,11148"; a="19996833"
X-IronPort-AV: E=Sophos;i="6.09,246,1716274800"; d="scan'208";a="19996833"
Received: from fmviesa004.fm.intel.com ([10.60.135.144])
 by orvoesa113.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 29 Jul 2024 10:33:25 -0700
X-CSE-ConnectionGUID: HLGMHrKoRAmEGEeEYa3OsA==
X-CSE-MsgGUID: qn5LKv/fRnGBPp0cglZqBw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.09,246,1716274800"; d="scan'208";a="58638929"
Received: from lfiedoro-mobl.ger.corp.intel.com (HELO localhost)
 ([10.245.246.251])
 by fmviesa004-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 29 Jul 2024 10:33:24 -0700
From: Jani Nikula <jani.nikula@intel.com>
To: intel-gfx@lists.freedesktop.org
Cc: jani.nikula@intel.com
Subject: [PATCH] drm/i915/bios: remove stale and useless comments
Date: Mon, 29 Jul 2024 20:33:20 +0300
Message-Id: <20240729173320.1053791-1-jani.nikula@intel.com>
X-Mailer: git-send-email 2.39.2
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

The comments do not add any value. Remove.

Signed-off-by: Jani Nikula <jani.nikula@intel.com>
---
 drivers/gpu/drm/i915/display/intel_bios.c | 8 --------
 1 file changed, 8 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_bios.c b/drivers/gpu/drm/i915/display/intel_bios.c
index 02443462bec3..460e83f0d5a5 100644
--- a/drivers/gpu/drm/i915/display/intel_bios.c
+++ b/drivers/gpu/drm/i915/display/intel_bios.c
@@ -1692,14 +1692,6 @@ parse_mipi_config(struct drm_i915_private *i915,
 	/* Initialize this to undefined indicating no generic MIPI support */
 	panel->vbt.dsi.panel_id = MIPI_DSI_UNDEFINED_PANEL_ID;
 
-	/* Block #40 is already parsed and panel_fixed_mode is
-	 * stored in i915->lfp_vbt_mode
-	 * resuse this when needed
-	 */
-
-	/* Parse #52 for panel index used from panel_type already
-	 * parsed
-	 */
 	start = bdb_find_section(i915, BDB_MIPI_CONFIG);
 	if (!start) {
 		drm_dbg_kms(&i915->drm, "No MIPI config BDB found");
-- 
2.39.2

