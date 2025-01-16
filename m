Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id D5123A142E3
	for <lists+intel-gfx@lfdr.de>; Thu, 16 Jan 2025 21:16:48 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 8433110E28C;
	Thu, 16 Jan 2025 20:16:47 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="KsEgVKDb";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.13])
 by gabe.freedesktop.org (Postfix) with ESMTPS id BC15110E28C
 for <intel-gfx@lists.freedesktop.org>; Thu, 16 Jan 2025 20:16:46 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1737058606; x=1768594606;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=qOTOrDrdR5AIRq/gAZoN0n6kSI2GO+4AqOT6eZJ1Yj4=;
 b=KsEgVKDbcc5t8+89WdZe5ZA+nMImBUUiC7SUGO2e9JJPjk2ChSwXeD1k
 y5ClGIWBpJcLj7KIrP4O7qQwCHHBMTGv39ZtFPAP8zIlT3oReVFM3T0MO
 qDg9QdjFmk9M+p11w3CnfAUv+zuDNLL4qm22tz74lXUatwiWfpAk+/FTc
 e04KaKu74VuLa7J+Kxc51idT1Xg0dCcnjuHaBx39cFt/I5JMj8o7DK1HP
 OLZCTfvgEWDkvN92kFUi+majX3K4MrE75wcDNjfR/HfFJpmW/gvDIV0s6
 UKtTL7VitECud2sTAxhJMpwCCAHhzdk5LYXjtpRyz8WAyTR+9rtyQCg6i w==;
X-CSE-ConnectionGUID: qjEqXEsoTpezdvT69eJwug==
X-CSE-MsgGUID: Y829JOLBQjyROrbwIwWyFA==
X-IronPort-AV: E=McAfee;i="6700,10204,11317"; a="40279232"
X-IronPort-AV: E=Sophos;i="6.13,210,1732608000"; d="scan'208";a="40279232"
Received: from fmviesa008.fm.intel.com ([10.60.135.148])
 by fmvoesa107.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 16 Jan 2025 12:16:46 -0800
X-CSE-ConnectionGUID: nI40Os5BTd2Eqd5wl4cZAg==
X-CSE-MsgGUID: HWRnf1/5SKGKvTTvVnvHkw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.13,210,1732608000"; d="scan'208";a="105743486"
Received: from stinkpipe.fi.intel.com (HELO stinkbox) ([10.237.72.74])
 by fmviesa008.fm.intel.com with SMTP; 16 Jan 2025 12:16:44 -0800
Received: by stinkbox (sSMTP sendmail emulation);
 Thu, 16 Jan 2025 22:16:43 +0200
From: Ville Syrjala <ville.syrjala@linux.intel.com>
To: intel-gfx@lists.freedesktop.org
Cc: Paz Zcharya <pazz@chromium.org>
Subject: [PATCH 2/8] drm/i915: Handle interlaced modes in
 intel_set_transcoder_timings_lrr()
Date: Thu, 16 Jan 2025 22:16:31 +0200
Message-ID: <20250116201637.22486-3-ville.syrjala@linux.intel.com>
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

I want to start using intel_set_transcoder_timings_lrr() also for
fixing up the vblank delay during boot. To that end make sure it
can cope with interlaced modes as well.

Note that we have soft-defeatured interlaced modes on tgl+ so
technically this is dead code, but if we ever have the need to
bring interlaced support back it seems better to handle this.

Cc: Paz Zcharya <pazz@chromium.org>
Signed-off-by: Ville Syrjälä <ville.syrjala@linux.intel.com>
---
 drivers/gpu/drm/i915/display/intel_display.c | 8 ++++++--
 1 file changed, 6 insertions(+), 2 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_display.c b/drivers/gpu/drm/i915/display/intel_display.c
index 5ba3b2d658e5..1260e394afc7 100644
--- a/drivers/gpu/drm/i915/display/intel_display.c
+++ b/drivers/gpu/drm/i915/display/intel_display.c
@@ -2923,6 +2923,12 @@ static void intel_set_transcoder_timings_lrr(const struct intel_crtc_state *crtc
 	crtc_vblank_start = adjusted_mode->crtc_vblank_start;
 	crtc_vblank_end = adjusted_mode->crtc_vblank_end;
 
+	if (adjusted_mode->flags & DRM_MODE_FLAG_INTERLACE) {
+		/* the chip adds 2 halflines automatically */
+		crtc_vtotal -= 1;
+		crtc_vblank_end -= 1;
+	}
+
 	if (DISPLAY_VER(dev_priv) >= 13) {
 		/*
 		 * VBLANK_START not used by hw, just clear it
@@ -2931,8 +2937,6 @@ static void intel_set_transcoder_timings_lrr(const struct intel_crtc_state *crtc
 		crtc_vblank_start = 1;
 	}
 
-	drm_WARN_ON(&dev_priv->drm, adjusted_mode->flags & DRM_MODE_FLAG_INTERLACE);
-
 	/*
 	 * The hardware actually ignores TRANS_VBLANK.VBLANK_END in DP mode.
 	 * But let's write it anyway to keep the state checker happy.
-- 
2.45.2

