Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 2BA5E518C31
	for <lists+intel-gfx@lfdr.de>; Tue,  3 May 2022 20:23:09 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 86E5E10E882;
	Tue,  3 May 2022 18:23:07 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 4536B10E882
 for <intel-gfx@lists.freedesktop.org>; Tue,  3 May 2022 18:23:06 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1651602186; x=1683138186;
 h=from:to:subject:date:message-id:in-reply-to:references:
 mime-version:content-transfer-encoding;
 bh=XAjZK0Dw78LeFsyT30J6uf2fgPef9NTguOCkhA0cTYg=;
 b=AvmPm0LnaGAAaTNHKXisH/k5Cax6crOWtRiiJC2iyhogaxqSKHbkSE0a
 kyUltiv5XocV7/xqOp8RY6mGIPk/l+ryaSSpjh6iHIvynJi708cqzBnLM
 y7Gx/Q3R/ilNQWJh4l5euEWdvUUcIKNKCGBqVIhw5M40JMJjOd64Ys8Gl
 M0DmX0nCbgIdVMzD0ZNAlg7ztBYEbMSllI44sOzqm5ChhFY5GkKHMsnzh
 YXAiMITzZbUsoNoMyEO/FqJjeqBFmUYcod4z6ZV8ITgjHhD9vvtUtwGhY
 Hcx+cWIc+ayMLUTMSMj7i97wIPLYqppGDc3gTbG6fQbW4UZBUbPgDek6k g==;
X-IronPort-AV: E=McAfee;i="6400,9594,10336"; a="255016094"
X-IronPort-AV: E=Sophos;i="5.91,195,1647327600"; d="scan'208";a="255016094"
Received: from fmsmga007.fm.intel.com ([10.253.24.52])
 by orsmga101.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 03 May 2022 11:23:05 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.91,195,1647327600"; d="scan'208";a="567754215"
Received: from stinkpipe.fi.intel.com (HELO stinkbox) ([10.237.72.51])
 by fmsmga007.fm.intel.com with SMTP; 03 May 2022 11:23:01 -0700
Received: by stinkbox (sSMTP sendmail emulation);
 Tue, 03 May 2022 21:23:01 +0300
From: Ville Syrjala <ville.syrjala@linux.intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Tue,  3 May 2022 21:22:22 +0300
Message-Id: <20220503182242.18797-7-ville.syrjala@linux.intel.com>
X-Mailer: git-send-email 2.35.1
In-Reply-To: <20220503182242.18797-1-ville.syrjala@linux.intel.com>
References: <20220503182242.18797-1-ville.syrjala@linux.intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH 06/26] drm/i915: Extract PIPE_CONF_CHECK_RECT()
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

From: Ville Syrjälä <ville.syrjala@linux.intel.com>

Deduplicate the drm_rect comparisons.

Signed-off-by: Ville Syrjälä <ville.syrjala@linux.intel.com>
---
 drivers/gpu/drm/i915/display/intel_display.c | 20 ++++++++++----------
 1 file changed, 10 insertions(+), 10 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_display.c b/drivers/gpu/drm/i915/display/intel_display.c
index e38d93beafdd..1093665122a4 100644
--- a/drivers/gpu/drm/i915/display/intel_display.c
+++ b/drivers/gpu/drm/i915/display/intel_display.c
@@ -6088,6 +6088,13 @@ intel_pipe_config_compare(const struct intel_crtc_state *current_config,
 	PIPE_CONF_CHECK_I(name.crtc_vsync_end); \
 } while (0)
 
+#define PIPE_CONF_CHECK_RECT(name) do { \
+	PIPE_CONF_CHECK_I(name.x1); \
+	PIPE_CONF_CHECK_I(name.x2); \
+	PIPE_CONF_CHECK_I(name.y1); \
+	PIPE_CONF_CHECK_I(name.y2); \
+} while (0)
+
 /* This is required for BDW+ where there is only one set of registers for
  * switching between high and low RR.
  * This macro can be used whenever a comparison has to be made between one
@@ -6250,18 +6257,10 @@ intel_pipe_config_compare(const struct intel_crtc_state *current_config,
 	PIPE_CONF_CHECK_BOOL(pch_pfit.force_thru);
 
 	if (!fastset) {
-		PIPE_CONF_CHECK_I(pipe_src.x1);
-		PIPE_CONF_CHECK_I(pipe_src.y1);
-		PIPE_CONF_CHECK_I(pipe_src.x2);
-		PIPE_CONF_CHECK_I(pipe_src.y2);
+		PIPE_CONF_CHECK_RECT(pipe_src);
 
 		PIPE_CONF_CHECK_BOOL(pch_pfit.enabled);
-		if (current_config->pch_pfit.enabled) {
-			PIPE_CONF_CHECK_I(pch_pfit.dst.x1);
-			PIPE_CONF_CHECK_I(pch_pfit.dst.y1);
-			PIPE_CONF_CHECK_I(pch_pfit.dst.x2);
-			PIPE_CONF_CHECK_I(pch_pfit.dst.y2);
-		}
+		PIPE_CONF_CHECK_RECT(pch_pfit.dst);
 
 		PIPE_CONF_CHECK_I(scaler_state.scaler_id);
 		PIPE_CONF_CHECK_CLOCK_FUZZY(pixel_rate);
@@ -6383,6 +6382,7 @@ intel_pipe_config_compare(const struct intel_crtc_state *current_config,
 #undef PIPE_CONF_CHECK_CLOCK_FUZZY
 #undef PIPE_CONF_CHECK_COLOR_LUT
 #undef PIPE_CONF_CHECK_TIMINGS
+#undef PIPE_CONF_CHECK_RECT
 #undef PIPE_CONF_QUIRK
 
 	return ret;
-- 
2.35.1

