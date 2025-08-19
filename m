Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 335FEB2C435
	for <lists+intel-gfx@lfdr.de>; Tue, 19 Aug 2025 14:53:56 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id ADD0C10E5E2;
	Tue, 19 Aug 2025 12:53:54 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="D5HJAv8F";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.10])
 by gabe.freedesktop.org (Postfix) with ESMTPS id EFE3B10E5E1;
 Tue, 19 Aug 2025 12:53:52 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1755608033; x=1787144033;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=96zbm4NIpGEddVXcqS5cC58tfZ1IeBrFkj3NDY7gy3g=;
 b=D5HJAv8FbG1FyWehMttnWKM7F7oohhecLZmgWvUp6c1stiYIPFDXnT7h
 OZ7PyJLu5NZA9biLgm3W5jbPyTAv9wB+FuxyFp3Ydwk6Lqq4NXFmvpzyY
 GIoASmCKx5S1/IeZZwF2oErTBnhijS5LuaV2kCK82tBC4YBaZHDQ7y1W3
 qNi5BcnCty9cxY5ZzaoQzw2+90bJGEMxtWaZ8uj+oHSLmAlBJub480sc2
 vY/y/eIc2T7fZWiIjeIDXzetQuBLP+ucB1z3OtrtdLnYVDzEUvxkw+s2v
 hjnzKEOxfJn+BparFZN48d8xD+WTWGKM0X6CIL/O+CAs4rc1XIs1vQYJR Q==;
X-CSE-ConnectionGUID: ys7Csoz3SCeDa+dTnfnt4w==
X-CSE-MsgGUID: aaeQAu3dRKC3xsQAF0RuOA==
X-IronPort-AV: E=McAfee;i="6800,10657,11527"; a="75300772"
X-IronPort-AV: E=Sophos;i="6.17,300,1747724400"; d="scan'208";a="75300772"
Received: from fmviesa009.fm.intel.com ([10.60.135.149])
 by orvoesa102.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 19 Aug 2025 05:53:53 -0700
X-CSE-ConnectionGUID: zT+KhgAaRMOP/VcKVVMWlQ==
X-CSE-MsgGUID: 1KwcTf9lRtyX66salw/LLg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.17,300,1747724400"; d="scan'208";a="168246469"
Received: from dhhellew-desk2.ger.corp.intel.com (HELO localhost)
 ([10.245.246.251])
 by fmviesa009-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 19 Aug 2025 05:53:51 -0700
From: Jani Nikula <jani.nikula@intel.com>
To: intel-gfx@lists.freedesktop.org,
	intel-xe@lists.freedesktop.org
Cc: jani.nikula@intel.com,
	Mika Kahola <mika.kahola@intel.com>
Subject: [RESEND 01/12] drm/i915: add vlv_clock_get_gpll()
Date: Tue, 19 Aug 2025 15:53:31 +0300
Message-ID: <9f35240b1317ed446bcb4de3831ebc97010dd423.1755607980.git.jani.nikula@intel.com>
X-Mailer: git-send-email 2.47.2
In-Reply-To: <cover.1755607980.git.jani.nikula@intel.com>
References: <cover.1755607980.git.jani.nikula@intel.com>
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

Reviewed-by: Mika Kahola <mika.kahola@intel.com>
Signed-off-by: Jani Nikula <jani.nikula@intel.com>
---
 drivers/gpu/drm/i915/display/intel_display.c | 8 ++++++++
 drivers/gpu/drm/i915/display/intel_display.h | 1 +
 drivers/gpu/drm/i915/gt/intel_rps.c          | 5 +----
 3 files changed, 10 insertions(+), 4 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_display.c b/drivers/gpu/drm/i915/display/intel_display.c
index c1a3a95c65f0..8c67d357dd2d 100644
--- a/drivers/gpu/drm/i915/display/intel_display.c
+++ b/drivers/gpu/drm/i915/display/intel_display.c
@@ -187,6 +187,14 @@ int vlv_get_cck_clock_hpll(struct drm_device *drm,
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
index 006042e0b229..019cec057c52 100644
--- a/drivers/gpu/drm/i915/gt/intel_rps.c
+++ b/drivers/gpu/drm/i915/gt/intel_rps.c
@@ -1688,10 +1688,7 @@ static void vlv_init_gpll_ref_freq(struct intel_rps *rps)
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
2.47.2

