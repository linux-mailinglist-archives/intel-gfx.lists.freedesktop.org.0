Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 06241B2C437
	for <lists+intel-gfx@lfdr.de>; Tue, 19 Aug 2025 14:54:06 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 9392A10E5E3;
	Tue, 19 Aug 2025 12:54:04 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="ERpmblzJ";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.10])
 by gabe.freedesktop.org (Postfix) with ESMTPS id C90B910E5DD;
 Tue, 19 Aug 2025 12:54:02 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1755608043; x=1787144043;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=1MB0nPgMlf0M/rihEmLCcFvjP609ni4TyjWuN/Trulk=;
 b=ERpmblzJ9Wbjph0JFbuQTTX0DftLCRvdPk65qdZ04a816L6PRozzHMYm
 Kl7GBV+eyW+bwd6Eiu3zH6L/Fq2KIcXbhQE/eSpDofR6D9Y5sbuc6X9lp
 NPzaiEmDqkONYg5THiP2E3qRyq0sC4LQXDwHqEdRiT92dMbAwrp+r9xQA
 lqSwa0Tc95KdJhNEY8ohIKmSrexxy2asc5xAx4zpkEVWEMgzOhNBHn5yA
 esGGxFiMWfPrMsMHdsBOQ98q/e7UZKFGXrOBu4gPaaLUmqVn59bMT6/+n
 m7Dv+UtYdYfp8L4JYj2/XJ/KzdNJzax8WanISk4PWMOxJqtjb13RAwXXT Q==;
X-CSE-ConnectionGUID: Lm1wxvEEQKaFwn9QZxMbrA==
X-CSE-MsgGUID: 9QRqnP6ZQvC1LnhgWctr9Q==
X-IronPort-AV: E=McAfee;i="6800,10657,11527"; a="75300784"
X-IronPort-AV: E=Sophos;i="6.17,300,1747724400"; d="scan'208";a="75300784"
Received: from fmviesa009.fm.intel.com ([10.60.135.149])
 by orvoesa102.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 19 Aug 2025 05:54:03 -0700
X-CSE-ConnectionGUID: FL7NoZl2RpKAek+wj/h/XQ==
X-CSE-MsgGUID: eJkES1f4QyGjBN5ovYhoew==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.17,300,1747724400"; d="scan'208";a="168246541"
Received: from dhhellew-desk2.ger.corp.intel.com (HELO localhost)
 ([10.245.246.251])
 by fmviesa009-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 19 Aug 2025 05:54:01 -0700
From: Jani Nikula <jani.nikula@intel.com>
To: intel-gfx@lists.freedesktop.org,
	intel-xe@lists.freedesktop.org
Cc: jani.nikula@intel.com
Subject: [RESEND 03/12] drm/i915: add vlv_clock_get_hrawclk()
Date: Tue, 19 Aug 2025 15:53:33 +0300
Message-ID: <62719c4668c802f09d07da9759832a817915a1a8.1755607980.git.jani.nikula@intel.com>
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

Add vlv_clock_get_hrawclk() helper to hide the details from the callers.

Signed-off-by: Jani Nikula <jani.nikula@intel.com>
---
 drivers/gpu/drm/i915/display/intel_cdclk.c   | 9 +--------
 drivers/gpu/drm/i915/display/intel_display.c | 6 ++++++
 drivers/gpu/drm/i915/display/intel_display.h | 1 +
 3 files changed, 8 insertions(+), 8 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_cdclk.c b/drivers/gpu/drm/i915/display/intel_cdclk.c
index a920964ff98c..65ad7d48dd39 100644
--- a/drivers/gpu/drm/i915/display/intel_cdclk.c
+++ b/drivers/gpu/drm/i915/display/intel_cdclk.c
@@ -3561,13 +3561,6 @@ static int pch_rawclk(struct intel_display *display)
 	return (intel_de_read(display, PCH_RAWCLK_FREQ) & RAWCLK_FREQ_MASK) * 1000;
 }
 
-static int vlv_hrawclk(struct intel_display *display)
-{
-	/* RAWCLK_FREQ_VLV register updated from power well code */
-	return vlv_get_cck_clock_hpll(display->drm, "hrawclk",
-				      CCK_DISPLAY_REF_CLOCK_CONTROL);
-}
-
 static int i9xx_hrawclk(struct intel_display *display)
 {
 	struct drm_i915_private *i915 = to_i915(display->drm);
@@ -3601,7 +3594,7 @@ u32 intel_read_rawclk(struct intel_display *display)
 	else if (HAS_PCH_SPLIT(display))
 		freq = pch_rawclk(display);
 	else if (display->platform.valleyview || display->platform.cherryview)
-		freq = vlv_hrawclk(display);
+		freq = vlv_clock_get_hrawclk(display->drm);
 	else if (DISPLAY_VER(display) >= 3)
 		freq = i9xx_hrawclk(display);
 	else
diff --git a/drivers/gpu/drm/i915/display/intel_display.c b/drivers/gpu/drm/i915/display/intel_display.c
index 2bc7e5f61bcc..a5f67adfb856 100644
--- a/drivers/gpu/drm/i915/display/intel_display.c
+++ b/drivers/gpu/drm/i915/display/intel_display.c
@@ -187,6 +187,12 @@ int vlv_get_cck_clock_hpll(struct drm_device *drm,
 	return hpll;
 }
 
+int vlv_clock_get_hrawclk(struct drm_device *drm)
+{
+	/* RAWCLK_FREQ_VLV register updated from power well code */
+	return vlv_get_cck_clock_hpll(drm, "hrawclk", CCK_DISPLAY_REF_CLOCK_CONTROL);
+}
+
 int vlv_clock_get_czclk(struct drm_device *drm)
 {
 	struct drm_i915_private *i915 = to_i915(drm);
diff --git a/drivers/gpu/drm/i915/display/intel_display.h b/drivers/gpu/drm/i915/display/intel_display.h
index 811066a9e69d..dbfb4b4aee4e 100644
--- a/drivers/gpu/drm/i915/display/intel_display.h
+++ b/drivers/gpu/drm/i915/display/intel_display.h
@@ -440,6 +440,7 @@ int vlv_get_cck_clock(struct drm_device *drm,
 		      const char *name, u32 reg, int ref_freq);
 int vlv_get_cck_clock_hpll(struct drm_device *drm,
 			   const char *name, u32 reg);
+int vlv_clock_get_hrawclk(struct drm_device *drm);
 int vlv_clock_get_czclk(struct drm_device *drm);
 int vlv_clock_get_gpll(struct drm_device *drm);
 bool intel_has_pending_fb_unpin(struct intel_display *display);
-- 
2.47.2

