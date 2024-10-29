Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 744D49B5548
	for <lists+intel-gfx@lfdr.de>; Tue, 29 Oct 2024 22:52:27 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 12B4F10E3B7;
	Tue, 29 Oct 2024 21:52:26 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="O9PhigQh";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.10])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 62ABC10E3B7
 for <intel-gfx@lists.freedesktop.org>; Tue, 29 Oct 2024 21:52:23 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1730238744; x=1761774744;
 h=from:to:subject:date:message-id:in-reply-to:references:
 mime-version:content-transfer-encoding;
 bh=V+hIC1CfGoFsf9wDb9CCgRJopzU9O3D9tCaFAIu1qmM=;
 b=O9PhigQhzdJSMY6D06ex0tcybYfYtsiyOPGKeKnZ0Yt74v+1ZvOwMXIH
 OrIm1b00vnIwXh+6T7QqZacFscFZZwJiNZPIi5elLLNlMjzuLX4y9FDqu
 mnyLuRmcFx8/PUHc7ObMkJLGcdZgQEz7qVsPZieyzg3Lovk7lofl+muvE
 8AH4HgwZO5VWjjGveYPLa3O5TGn9TIRXGwvjroilDjmZD7/VQuiuGMRej
 e2SzsTHEE370RDV1CqqRytEhCWxy+BRlFy+LoCh4jzqiREQPtIh3WCW37
 kTOfYRfyw1TfIxYskDuAqhR4fEzXMTAzBhRYwtCfNjejUFzW5ESqNaqyu Q==;
X-CSE-ConnectionGUID: SQAQQRloSt+hmaMq4m9nYQ==
X-CSE-MsgGUID: ErIID/s5QmS8rQceyv+N8Q==
X-IronPort-AV: E=McAfee;i="6700,10204,11240"; a="41275119"
X-IronPort-AV: E=Sophos;i="6.11,243,1725346800"; d="scan'208";a="41275119"
Received: from fmviesa008.fm.intel.com ([10.60.135.148])
 by fmvoesa104.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 29 Oct 2024 14:52:23 -0700
X-CSE-ConnectionGUID: +Oxh0BvISRCVAglqa9m4Tw==
X-CSE-MsgGUID: nJzAfQL1Q8mJnNxcktN7aw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.11,243,1725346800"; d="scan'208";a="82200199"
Received: from stinkpipe.fi.intel.com (HELO stinkbox) ([10.237.72.74])
 by fmviesa008.fm.intel.com with SMTP; 29 Oct 2024 14:52:21 -0700
Received: by stinkbox (sSMTP sendmail emulation);
 Tue, 29 Oct 2024 23:52:20 +0200
From: Ville Syrjala <ville.syrjala@linux.intel.com>
To: intel-gfx@lists.freedesktop.org
Subject: [PATCH 01/11] drm/i915: Introduce HAS_DOUBLE_WIDE()
Date: Tue, 29 Oct 2024 23:52:07 +0200
Message-ID: <20241029215217.3697-2-ville.syrjala@linux.intel.com>
X-Mailer: git-send-email 2.45.2
In-Reply-To: <20241029215217.3697-1-ville.syrjala@linux.intel.com>
References: <20241029215217.3697-1-ville.syrjala@linux.intel.com>
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

Make the code a bit more self documenting by adding
HAS_DOUBLE_WIDE().

Signed-off-by: Ville Syrjälä <ville.syrjala@linux.intel.com>
---
 drivers/gpu/drm/i915/display/intel_cdclk.c          | 2 +-
 drivers/gpu/drm/i915/display/intel_display.c        | 4 ++--
 drivers/gpu/drm/i915/display/intel_display_device.h | 1 +
 3 files changed, 4 insertions(+), 3 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_cdclk.c b/drivers/gpu/drm/i915/display/intel_cdclk.c
index 96523526a2c3..6cef3ca3a069 100644
--- a/drivers/gpu/drm/i915/display/intel_cdclk.c
+++ b/drivers/gpu/drm/i915/display/intel_cdclk.c
@@ -3462,7 +3462,7 @@ static int intel_compute_max_dotclk(struct intel_display *display)
 		return max_cdclk_freq;
 	else if (IS_CHERRYVIEW(dev_priv))
 		return max_cdclk_freq*95/100;
-	else if (DISPLAY_VER(display) < 4)
+	else if (HAS_DOUBLE_WIDE(display))
 		return 2*max_cdclk_freq*90/100;
 	else
 		return max_cdclk_freq*90/100;
diff --git a/drivers/gpu/drm/i915/display/intel_display.c b/drivers/gpu/drm/i915/display/intel_display.c
index 0e6d6c8354ef..9a5102224c59 100644
--- a/drivers/gpu/drm/i915/display/intel_display.c
+++ b/drivers/gpu/drm/i915/display/intel_display.c
@@ -2371,7 +2371,7 @@ static bool intel_crtc_supports_double_wide(const struct intel_crtc *crtc)
 	const struct drm_i915_private *dev_priv = to_i915(crtc->base.dev);
 
 	/* GDG double wide on either pipe, otherwise pipe A only */
-	return DISPLAY_VER(dev_priv) < 4 &&
+	return HAS_DOUBLE_WIDE(dev_priv) &&
 		(crtc->pipe == PIPE_A || IS_I915G(dev_priv));
 }
 
@@ -3207,7 +3207,7 @@ static bool i9xx_get_pipe_config(struct intel_crtc *crtc,
 
 	intel_color_get_config(pipe_config);
 
-	if (DISPLAY_VER(dev_priv) < 4)
+	if (HAS_DOUBLE_WIDE(dev_priv))
 		pipe_config->double_wide = tmp & TRANSCONF_DOUBLE_WIDE;
 
 	intel_get_transcoder_timings(crtc, pipe_config);
diff --git a/drivers/gpu/drm/i915/display/intel_display_device.h b/drivers/gpu/drm/i915/display/intel_display_device.h
index 410f8b33a8a1..ae7a35cf44ca 100644
--- a/drivers/gpu/drm/i915/display/intel_display_device.h
+++ b/drivers/gpu/drm/i915/display/intel_display_device.h
@@ -129,6 +129,7 @@ enum intel_display_subplatform {
 #define HAS_DISPLAY(i915)		(DISPLAY_RUNTIME_INFO(i915)->pipe_mask != 0)
 #define HAS_DMC(i915)			(DISPLAY_RUNTIME_INFO(i915)->has_dmc)
 #define HAS_DOUBLE_BUFFERED_M_N(i915)	(DISPLAY_VER(i915) >= 9 || IS_BROADWELL(i915))
+#define HAS_DOUBLE_WIDE(i915)		(DISPLAY_VER(i915) < 4)
 #define HAS_DP_MST(i915)		(DISPLAY_INFO(i915)->has_dp_mst)
 #define HAS_DP20(i915)			(IS_DG2(i915) || DISPLAY_VER(i915) >= 14)
 #define HAS_DPT(i915)			(DISPLAY_VER(i915) >= 13)
-- 
2.45.2

