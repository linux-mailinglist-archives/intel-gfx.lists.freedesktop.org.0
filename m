Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 4ADC68D2395
	for <lists+intel-gfx@lfdr.de>; Tue, 28 May 2024 20:57:13 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id A86E610EA18;
	Tue, 28 May 2024 18:57:11 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="dutAvI2A";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.9])
 by gabe.freedesktop.org (Postfix) with ESMTPS id CCCFF10E8BE
 for <intel-gfx@lists.freedesktop.org>; Tue, 28 May 2024 18:56:55 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1716922615; x=1748458615;
 h=from:to:subject:date:message-id:in-reply-to:references:
 mime-version:content-transfer-encoding;
 bh=hNHD4XarBA/mrCtuCONNNbDkKaIS6O1OIM9RbVMN6a4=;
 b=dutAvI2AlN2AOu2btzRUeqf9QhuoC4d7WrCZk3Nqmv7o+1KPWMIbJG/N
 TrvszdHBUSrXk+4UVsKTjywVO17P5tZ2snEGJCr+Y5F/hqoqWDn3C/8+9
 F6SUOtDWuy/HWIWlcuTphj37zVlBkA6neF0NfU2+TuoCgWMdhwTraZ8C1
 N09p5dAWKKhw2Yhl7F14rR4n3X9ZnWAJ584xgkkm/BhNvPCmZiGqtm4LM
 n/TcLRYbLsWQGj6sSKp99tzqIiMKNYoLH07TbOvqrt/8g1xfAoNnWQD0g
 oY0weU87OTsDLCIss0xgp9XHtJCZnW2XLYgsCOttaJXOEgMCerPi/jUUl A==;
X-CSE-ConnectionGUID: KDyYbVr7RqS0W5UMkyMoVA==
X-CSE-MsgGUID: w2Zy0QotQJODikDtv5JKPA==
X-IronPort-AV: E=McAfee;i="6600,9927,11085"; a="35815206"
X-IronPort-AV: E=Sophos;i="6.08,196,1712646000"; d="scan'208";a="35815206"
Received: from fmviesa008.fm.intel.com ([10.60.135.148])
 by orvoesa101.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 28 May 2024 11:56:55 -0700
X-CSE-ConnectionGUID: vo8ZQ9cPSvqED3fqQEEHVg==
X-CSE-MsgGUID: vPCJqBjjQTul4g/ThaY9QQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.08,196,1712646000"; d="scan'208";a="35144452"
Received: from stinkpipe.fi.intel.com (HELO stinkbox) ([10.237.72.74])
 by fmviesa008.fm.intel.com with SMTP; 28 May 2024 11:56:53 -0700
Received: by stinkbox (sSMTP sendmail emulation);
 Tue, 28 May 2024 21:56:53 +0300
From: Ville Syrjala <ville.syrjala@linux.intel.com>
To: intel-gfx@lists.freedesktop.org
Subject: [PATCH 2/7] drm/i915: Extract intel_mode_vblank_end()
Date: Tue, 28 May 2024 21:56:42 +0300
Message-ID: <20240528185647.7765-3-ville.syrjala@linux.intel.com>
X-Mailer: git-send-email 2.44.1
In-Reply-To: <20240528185647.7765-1-ville.syrjala@linux.intel.com>
References: <20240528185647.7765-1-ville.syrjala@linux.intel.com>
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

Extract intel_mode_vblank_end() in the same vein as
intel_mode_vblank_start(). While we have only one use
of this it seems nicer to unify the approach.

Signed-off-by: Ville Syrjälä <ville.syrjala@linux.intel.com>
---
 drivers/gpu/drm/i915/display/intel_vblank.c | 16 ++++++++++++----
 drivers/gpu/drm/i915/display/intel_vblank.h |  1 +
 2 files changed, 13 insertions(+), 4 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_vblank.c b/drivers/gpu/drm/i915/display/intel_vblank.c
index 1f57596f8208..ba56015f2c40 100644
--- a/drivers/gpu/drm/i915/display/intel_vblank.c
+++ b/drivers/gpu/drm/i915/display/intel_vblank.c
@@ -312,12 +312,10 @@ static bool i915_get_crtc_scanoutpos(struct drm_crtc *_crtc,
 	hsync_start = mode->crtc_hsync_start;
 	vtotal = mode->crtc_vtotal;
 	vbl_start = intel_mode_vblank_start(mode);
-	vbl_end = mode->crtc_vblank_end;
+	vbl_end = intel_mode_vblank_end(mode);
 
-	if (mode->flags & DRM_MODE_FLAG_INTERLACE) {
-		vbl_end /= 2;
+	if (mode->flags & DRM_MODE_FLAG_INTERLACE)
 		vtotal /= 2;
-	}
 
 	/*
 	 * Enter vblank critical section, as we will do multiple
@@ -584,6 +582,16 @@ int intel_mode_vblank_start(const struct drm_display_mode *mode)
 	return vblank_start;
 }
 
+int intel_mode_vblank_end(const struct drm_display_mode *mode)
+{
+	int vblank_end = mode->crtc_vblank_end;
+
+	if (mode->flags & DRM_MODE_FLAG_INTERLACE)
+		vblank_end /= 2;
+
+	return vblank_end;
+}
+
 void intel_vblank_evade_init(const struct intel_crtc_state *old_crtc_state,
 			     const struct intel_crtc_state *new_crtc_state,
 			     struct intel_vblank_evade_ctx *evade)
diff --git a/drivers/gpu/drm/i915/display/intel_vblank.h b/drivers/gpu/drm/i915/display/intel_vblank.h
index 08825a4d8fb7..6f11fd070f19 100644
--- a/drivers/gpu/drm/i915/display/intel_vblank.h
+++ b/drivers/gpu/drm/i915/display/intel_vblank.h
@@ -21,6 +21,7 @@ struct intel_vblank_evade_ctx {
 };
 
 int intel_mode_vblank_start(const struct drm_display_mode *mode);
+int intel_mode_vblank_end(const struct drm_display_mode *mode);
 
 void intel_vblank_evade_init(const struct intel_crtc_state *old_crtc_state,
 			     const struct intel_crtc_state *new_crtc_state,
-- 
2.44.1

