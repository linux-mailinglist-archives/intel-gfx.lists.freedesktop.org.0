Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 18B58A142E2
	for <lists+intel-gfx@lfdr.de>; Thu, 16 Jan 2025 21:16:46 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 4EB2510E21B;
	Thu, 16 Jan 2025 20:16:44 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="nA6ovh9V";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.13])
 by gabe.freedesktop.org (Postfix) with ESMTPS id CC0D310E21B
 for <intel-gfx@lists.freedesktop.org>; Thu, 16 Jan 2025 20:16:43 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1737058603; x=1768594603;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=jTlxSwWcdPLbXsYuRzkarNOFmh/kk/qDAHwp/J4m1uo=;
 b=nA6ovh9VmlgyxTHg3ESS/EdH19OrTJ74jFnLrVHun+PUFzC0QUYHo+3B
 JZUbZOKnylfThOF22XNxchMJFRshu3G4FNn5nUL+5F1aSyETVHWKp1ZSa
 vEjENFyiaXvMqxHdqIBrL7GPODE1JgOmLET6CECWeobrUmnFnUopo1lMb
 fZ0kl/aHpHGf2O6uoK4cTV5oRcuC5Mj+Q7wwOrbzFZ/LN+5IXFfvAwA+L
 YMj+23F7vHgzGkYUXLkF+7+XSBykgc/8P8URoMgbO0xZzWwHjqoyT1rUL
 xqlBYFuEksjZ04chwtoxvXCOFmyBMXs2pMcx7v8vnVLvPnQweACZrQM6w g==;
X-CSE-ConnectionGUID: p0MnSmfdQHC/c9fWUbo+Yw==
X-CSE-MsgGUID: 32EUZmzGSLOL1ryZmQqWAw==
X-IronPort-AV: E=McAfee;i="6700,10204,11317"; a="40279230"
X-IronPort-AV: E=Sophos;i="6.13,210,1732608000"; d="scan'208";a="40279230"
Received: from fmviesa008.fm.intel.com ([10.60.135.148])
 by fmvoesa107.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 16 Jan 2025 12:16:43 -0800
X-CSE-ConnectionGUID: IYgLytA+SOeEPUtuI8uyjA==
X-CSE-MsgGUID: +GWyPWVvSa2ps6IsRQ5qfA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.13,210,1732608000"; d="scan'208";a="105743484"
Received: from stinkpipe.fi.intel.com (HELO stinkbox) ([10.237.72.74])
 by fmviesa008.fm.intel.com with SMTP; 16 Jan 2025 12:16:41 -0800
Received: by stinkbox (sSMTP sendmail emulation);
 Thu, 16 Jan 2025 22:16:40 +0200
From: Ville Syrjala <ville.syrjala@linux.intel.com>
To: intel-gfx@lists.freedesktop.org
Cc: Paz Zcharya <pazz@chromium.org>
Subject: [PATCH 1/8] drm/i915: Keep TRANS_VBLANK.vblank_start==0 on ADL+ even
 when doing LRR updates
Date: Thu, 16 Jan 2025 22:16:30 +0200
Message-ID: <20250116201637.22486-2-ville.syrjala@linux.intel.com>
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

intel_set_transcoder_timings() will set TRANS_VBLANK.vblank_start to 0
for clarity on ADL+ (non-DSI) because the hardware no longer uses that
value. So the same in intel_set_transcoder_timings_lrr() to make sure
the registers stay constitent even when doing LRR timing updates.

Cc: Paz Zcharya <pazz@chromium.org>
Signed-off-by: Ville Syrjälä <ville.syrjala@linux.intel.com>
---
 drivers/gpu/drm/i915/display/intel_display.c | 8 ++++++++
 1 file changed, 8 insertions(+)

diff --git a/drivers/gpu/drm/i915/display/intel_display.c b/drivers/gpu/drm/i915/display/intel_display.c
index f5d2eacce119..5ba3b2d658e5 100644
--- a/drivers/gpu/drm/i915/display/intel_display.c
+++ b/drivers/gpu/drm/i915/display/intel_display.c
@@ -2923,6 +2923,14 @@ static void intel_set_transcoder_timings_lrr(const struct intel_crtc_state *crtc
 	crtc_vblank_start = adjusted_mode->crtc_vblank_start;
 	crtc_vblank_end = adjusted_mode->crtc_vblank_end;
 
+	if (DISPLAY_VER(dev_priv) >= 13) {
+		/*
+		 * VBLANK_START not used by hw, just clear it
+		 * to make it stand out in register dumps.
+		 */
+		crtc_vblank_start = 1;
+	}
+
 	drm_WARN_ON(&dev_priv->drm, adjusted_mode->flags & DRM_MODE_FLAG_INTERLACE);
 
 	/*
-- 
2.45.2

