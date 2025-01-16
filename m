Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 9DA16A142E7
	for <lists+intel-gfx@lfdr.de>; Thu, 16 Jan 2025 21:16:55 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 3F7B510E2D7;
	Thu, 16 Jan 2025 20:16:54 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="F4NDYofq";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.13])
 by gabe.freedesktop.org (Postfix) with ESMTPS id CF48510E2D0
 for <intel-gfx@lists.freedesktop.org>; Thu, 16 Jan 2025 20:16:52 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1737058612; x=1768594612;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=46JnZ9Yf3TiDPCo5hZM+E0LP7gZN2kZOFh6vX2TZ18g=;
 b=F4NDYofqPdkgMN3r84br11NuWBBFCcJq+LmSQsUs9ug7WzBZoakDkULa
 6wXHWfG4/JUMp5/6Ay2PbkCx3qyIO+WwUXCEXI1VOvwZ49rAK1totx3VQ
 58ylKz9cLzjrcgMHWrM4+42IqjPHeTkfJufLP5DKtp3PoOiabkxcSbSXq
 50UO3mu823qzA7Wy+2HRgmi4ZDIVbsg1Pg9x+mVfxiVpDH/+zun7Jaxm3
 2fPCNsTt77Yztdn1dxCny7VRGoLPBCTb8qGjJ5PxaO1AbWIdDSNFVo5Bb
 zLJXUJ6CWj1DuoJaSLrsnUEFnjbJmybRkt/6TX4liNzJhjw03j6Dww8Wd Q==;
X-CSE-ConnectionGUID: 6teuo5F6S7C5FTD9OemHQg==
X-CSE-MsgGUID: 7a4inuYBR+iW/HsEy5MJ3w==
X-IronPort-AV: E=McAfee;i="6700,10204,11317"; a="40279240"
X-IronPort-AV: E=Sophos;i="6.13,210,1732608000"; d="scan'208";a="40279240"
Received: from fmviesa008.fm.intel.com ([10.60.135.148])
 by fmvoesa107.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 16 Jan 2025 12:16:52 -0800
X-CSE-ConnectionGUID: PE1V2cPBR7+zHb8rcpkFkw==
X-CSE-MsgGUID: gmPto7VPRnyQ5wLhq+LZUA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.13,210,1732608000"; d="scan'208";a="105743490"
Received: from stinkpipe.fi.intel.com (HELO stinkbox) ([10.237.72.74])
 by fmviesa008.fm.intel.com with SMTP; 16 Jan 2025 12:16:50 -0800
Received: by stinkbox (sSMTP sendmail emulation);
 Thu, 16 Jan 2025 22:16:49 +0200
From: Ville Syrjala <ville.syrjala@linux.intel.com>
To: intel-gfx@lists.freedesktop.org
Cc: Paz Zcharya <pazz@chromium.org>
Subject: [PATCH 4/8] drm/i915: Warn if someone tries to use
 intel_set_transcoder_timings*() on DSI outputs
Date: Thu, 16 Jan 2025 22:16:33 +0200
Message-ID: <20250116201637.22486-5-ville.syrjala@linux.intel.com>
X-Mailer: git-send-email 2.45.2
In-Reply-To: <20250116201637.22486-1-ville.syrjala@linux.intel.com>
References: <20250116201637.22486-1-ville.syrjala@linux.intel.com>
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

intel_set_transcoder_timings*() aren't currently suitable for DSI.
Warn if someone accidentally calls them in such cases.

Cc: Paz Zcharya <pazz@chromium.org>
Signed-off-by: Ville Syrjälä <ville.syrjala@linux.intel.com>
---
 drivers/gpu/drm/i915/display/intel_display.c | 4 ++++
 1 file changed, 4 insertions(+)

diff --git a/drivers/gpu/drm/i915/display/intel_display.c b/drivers/gpu/drm/i915/display/intel_display.c
index ac6fc177099f..fa398d7d1baa 100644
--- a/drivers/gpu/drm/i915/display/intel_display.c
+++ b/drivers/gpu/drm/i915/display/intel_display.c
@@ -2837,6 +2837,8 @@ static void intel_set_transcoder_timings(const struct intel_crtc_state *crtc_sta
 	u32 crtc_vdisplay, crtc_vtotal, crtc_vblank_start, crtc_vblank_end;
 	int vsyncshift = 0;
 
+	drm_WARN_ON(&dev_priv->drm, transcoder_is_dsi(cpu_transcoder));
+
 	/* We need to be careful not to changed the adjusted mode, for otherwise
 	 * the hw state checker will get angry at the mismatch. */
 	crtc_vdisplay = adjusted_mode->crtc_vdisplay;
@@ -2918,6 +2920,8 @@ static void intel_set_transcoder_timings_lrr(const struct intel_crtc_state *crtc
 	const struct drm_display_mode *adjusted_mode = &crtc_state->hw.adjusted_mode;
 	u32 crtc_vdisplay, crtc_vtotal, crtc_vblank_start, crtc_vblank_end;
 
+	drm_WARN_ON(&dev_priv->drm, transcoder_is_dsi(cpu_transcoder));
+
 	crtc_vdisplay = adjusted_mode->crtc_vdisplay;
 	crtc_vtotal = adjusted_mode->crtc_vtotal;
 	crtc_vblank_start = adjusted_mode->crtc_vblank_start;
-- 
2.45.2

