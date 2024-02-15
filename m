Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 41B258569C4
	for <lists+intel-gfx@lfdr.de>; Thu, 15 Feb 2024 17:41:34 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 9E93110E9E1;
	Thu, 15 Feb 2024 16:41:32 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="OdXtbyFH";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.8])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 7C4A710E9E1
 for <intel-gfx@lists.freedesktop.org>; Thu, 15 Feb 2024 16:41:31 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1708015291; x=1739551291;
 h=from:to:subject:date:message-id:in-reply-to:references:
 mime-version:content-transfer-encoding;
 bh=VLKFQBl7NGqlfSCivXdOfIXlsph4zHTd9dcdg/6aw5E=;
 b=OdXtbyFHZJWxvm8OvVgmucBb/yUQYgNddnZExMojwpWUlR3o27w8jA3X
 qHiDEn8AD6oZ2bNIi9injZWtcoyRZUQGgD34oytaPTEunOO9ZHW9+PCmC
 4R9ljEqrZEI1sXFDAGWe0AhBaGHM5WtLOqZLga0Cl2Vob6/EglFWGEgzI
 WYXrFU+hyOoI6X/RuWKCzTADGG7BUp03gOgKDwI9vxdyFWwOD42hvLxxj
 BsAUKWMMAyzaS4rzK+RQXbmU/vQ2R9S3uywllqCugOSAgeT3LSJ1crXQO
 bSpza3iEGpTIzJBMDYt+sP7/wi89+7gIm5QlFLarKarF8yAPeoygLNgKv g==;
X-IronPort-AV: E=McAfee;i="6600,9927,10985"; a="19630087"
X-IronPort-AV: E=Sophos;i="6.06,162,1705392000"; d="scan'208";a="19630087"
Received: from orsmga001.jf.intel.com ([10.7.209.18])
 by fmvoesa102.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 15 Feb 2024 08:41:29 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10985"; a="826434867"
X-IronPort-AV: E=Sophos;i="6.06,162,1705392000"; d="scan'208";a="826434867"
Received: from stinkpipe.fi.intel.com (HELO stinkbox) ([10.237.72.74])
 by orsmga001.jf.intel.com with SMTP; 15 Feb 2024 08:41:26 -0800
Received: by stinkbox (sSMTP sendmail emulation);
 Thu, 15 Feb 2024 18:41:25 +0200
From: Ville Syrjala <ville.syrjala@linux.intel.com>
To: intel-gfx@lists.freedesktop.org
Subject: [PATCH 10/12] drm/i915: Relocate pipe_config_mismatch()
Date: Thu, 15 Feb 2024 18:40:53 +0200
Message-ID: <20240215164055.30585-11-ville.syrjala@linux.intel.com>
X-Mailer: git-send-email 2.43.0
In-Reply-To: <20240215164055.30585-1-ville.syrjala@linux.intel.com>
References: <20240215164055.30585-1-ville.syrjala@linux.intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
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

From: Ville Syrjälä <ville.syrjala@linux.intel.com>

Hoist pipe_config_mismatch() upwards a bit so that it can get
reused by the other mismatch() functions.

Signed-off-by: Ville Syrjälä <ville.syrjala@linux.intel.com>
---
 drivers/gpu/drm/i915/display/intel_display.c | 46 ++++++++++----------
 1 file changed, 23 insertions(+), 23 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_display.c b/drivers/gpu/drm/i915/display/intel_display.c
index d7f39ad84138..a9dd3632898c 100644
--- a/drivers/gpu/drm/i915/display/intel_display.c
+++ b/drivers/gpu/drm/i915/display/intel_display.c
@@ -4787,6 +4787,29 @@ intel_compare_buffer(const u8 *a, const u8 *b, size_t len)
 	return memcmp(a, b, len) == 0;
 }
 
+static void __printf(4, 5)
+pipe_config_mismatch(bool fastset, const struct intel_crtc *crtc,
+		     const char *name, const char *format, ...)
+{
+	struct drm_i915_private *i915 = to_i915(crtc->base.dev);
+	struct va_format vaf;
+	va_list args;
+
+	va_start(args, format);
+	vaf.fmt = format;
+	vaf.va = &args;
+
+	if (fastset)
+		drm_dbg_kms(&i915->drm,
+			    "[CRTC:%d:%s] fastset requirement not met in %s %pV\n",
+			    crtc->base.base.id, crtc->base.name, name, &vaf);
+	else
+		drm_err(&i915->drm, "[CRTC:%d:%s] mismatch in %s %pV\n",
+			crtc->base.base.id, crtc->base.name, name, &vaf);
+
+	va_end(args);
+}
+
 static void
 pipe_config_infoframe_mismatch(bool fastset, const struct intel_crtc *crtc,
 			       const char *name,
@@ -4896,29 +4919,6 @@ pipe_config_buffer_mismatch(bool fastset, const struct intel_crtc *crtc,
 		       16, 0, b, len, false);
 }
 
-static void __printf(4, 5)
-pipe_config_mismatch(bool fastset, const struct intel_crtc *crtc,
-		     const char *name, const char *format, ...)
-{
-	struct drm_i915_private *i915 = to_i915(crtc->base.dev);
-	struct va_format vaf;
-	va_list args;
-
-	va_start(args, format);
-	vaf.fmt = format;
-	vaf.va = &args;
-
-	if (fastset)
-		drm_dbg_kms(&i915->drm,
-			    "[CRTC:%d:%s] fastset requirement not met in %s %pV\n",
-			    crtc->base.base.id, crtc->base.name, name, &vaf);
-	else
-		drm_err(&i915->drm, "[CRTC:%d:%s] mismatch in %s %pV\n",
-			crtc->base.base.id, crtc->base.name, name, &vaf);
-
-	va_end(args);
-}
-
 static void
 pipe_config_pll_mismatch(bool fastset,
 			 const struct intel_crtc *crtc,
-- 
2.43.0

