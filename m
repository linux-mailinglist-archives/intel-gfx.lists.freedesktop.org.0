Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id A882AB1B0D6
	for <lists+intel-gfx@lfdr.de>; Tue,  5 Aug 2025 11:18:39 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 44B4610E61A;
	Tue,  5 Aug 2025 09:18:38 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="UpCJIYzS";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.14])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 5B93010E618;
 Tue,  5 Aug 2025 09:18:36 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1754385517; x=1785921517;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=87S+Yt+a5jQhQakfmsp6Qy9JoFEsDZMm1NMe1x35ObM=;
 b=UpCJIYzS/jTgv3i2cFRzz+sVc43qbsn+uhMs1qSmTLMW+4SgkDnm6RhK
 R3uO+DN9Kzcl8md1kZv9LcTGksjFj27HJ0q9F1VT57luAch0xnpVM5EIn
 AaVi0kB5vqzDudX62N5xPTMzkdguoUDJe+Q01AAQZdCgZHLvBlNqu+GWT
 3Cnt/iBcQjmaY8vWLCLlyBsGtwxU5z2UwamerY0T59f9f2Uyqljt6KqsP
 96Mgwgxku3VH5vX9+tYZVIq8gDD9UTdGI4I/6fBQJwCKvGDOF2vFeQT5B
 XZsazfUEeQRXZP1GzoLDHSQhRKmyMa544oX9sHRPNsohUAPqX3dt9W1s2 g==;
X-CSE-ConnectionGUID: iEqosoNBSFijcW2BpbDNRQ==
X-CSE-MsgGUID: xsrXbWRbS7KpJIw/W3CCLg==
X-IronPort-AV: E=McAfee;i="6800,10657,11512"; a="60504305"
X-IronPort-AV: E=Sophos;i="6.17,265,1747724400"; d="scan'208";a="60504305"
Received: from orviesa002.jf.intel.com ([10.64.159.142])
 by orvoesa106.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 05 Aug 2025 02:18:37 -0700
X-CSE-ConnectionGUID: J+tD/yb1Rjucnk372f3cvg==
X-CSE-MsgGUID: MlbjIl1JTcKHc/NoJ1yQAg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.17,265,1747724400"; d="scan'208";a="195398037"
Received: from dhhellew-desk2.ger.corp.intel.com (HELO localhost)
 ([10.245.246.8])
 by orviesa002-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 05 Aug 2025 02:18:35 -0700
From: Jani Nikula <jani.nikula@intel.com>
To: intel-gfx@lists.freedesktop.org,
	intel-xe@lists.freedesktop.org
Cc: jani.nikula@intel.com
Subject: [PATCH 01/12] drm/i915: add vlv_clock_get_gpll()
Date: Tue,  5 Aug 2025 12:18:14 +0300
Message-Id: <becd1b070256c11ca3a12df76fb8fb1ac832d05c.1754385408.git.jani.nikula@intel.com>
X-Mailer: git-send-email 2.39.5
In-Reply-To: <cover.1754385408.git.jani.nikula@intel.com>
References: <cover.1754385408.git.jani.nikula@intel.com>
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

Add a vlv_clock_get_gpll() helper to hide the details from the callers.

Signed-off-by: Jani Nikula <jani.nikula@intel.com>
---
 drivers/gpu/drm/i915/display/intel_display.c | 8 ++++++++
 drivers/gpu/drm/i915/display/intel_display.h | 1 +
 drivers/gpu/drm/i915/gt/intel_rps.c          | 5 +----
 3 files changed, 10 insertions(+), 4 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_display.c b/drivers/gpu/drm/i915/display/intel_display.c
index 7035c1fc9033..fdd29d9256ed 100644
--- a/drivers/gpu/drm/i915/display/intel_display.c
+++ b/drivers/gpu/drm/i915/display/intel_display.c
@@ -186,6 +186,14 @@ int vlv_get_cck_clock_hpll(struct drm_device *drm,
 	return hpll;
 }
 
+int vlv_clock_get_gpll(struct drm_device *drm)
+{
+	struct drm_i915_private *i915 = to_i915(drm);
+
+	return vlv_get_cck_clock(drm, "GPLL ref", CCK_GPLL_CLOCK_CONTROL,
+				 i915->czclk_freq);
+}
+
 void intel_update_czclk(struct intel_display *display)
 {
 	struct drm_i915_private *dev_priv = to_i915(display->drm);
diff --git a/drivers/gpu/drm/i915/display/intel_display.h b/drivers/gpu/drm/i915/display/intel_display.h
index 37e2ab301a80..7ae899b8787a 100644
--- a/drivers/gpu/drm/i915/display/intel_display.h
+++ b/drivers/gpu/drm/i915/display/intel_display.h
@@ -440,6 +440,7 @@ int vlv_get_cck_clock(struct drm_device *drm,
 		      const char *name, u32 reg, int ref_freq);
 int vlv_get_cck_clock_hpll(struct drm_device *drm,
 			   const char *name, u32 reg);
+int vlv_clock_get_gpll(struct drm_device *drm);
 bool intel_has_pending_fb_unpin(struct intel_display *display);
 void intel_encoder_destroy(struct drm_encoder *encoder);
 struct drm_display_mode *
diff --git a/drivers/gpu/drm/i915/gt/intel_rps.c b/drivers/gpu/drm/i915/gt/intel_rps.c
index 0b35fdd461d4..e2b5cdf6b7cb 100644
--- a/drivers/gpu/drm/i915/gt/intel_rps.c
+++ b/drivers/gpu/drm/i915/gt/intel_rps.c
@@ -1683,10 +1683,7 @@ static void vlv_init_gpll_ref_freq(struct intel_rps *rps)
 {
 	struct drm_i915_private *i915 = rps_to_i915(rps);
 
-	rps->gpll_ref_freq =
-		vlv_get_cck_clock(&i915->drm, "GPLL ref",
-				  CCK_GPLL_CLOCK_CONTROL,
-				  i915->czclk_freq);
+	rps->gpll_ref_freq = vlv_clock_get_gpll(&i915->drm);
 
 	drm_dbg(&i915->drm, "GPLL reference freq: %d kHz\n",
 		rps->gpll_ref_freq);
-- 
2.39.5

