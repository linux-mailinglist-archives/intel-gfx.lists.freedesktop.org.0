Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 3395F518C45
	for <lists+intel-gfx@lfdr.de>; Tue,  3 May 2022 20:24:07 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 51AF210E4D0;
	Tue,  3 May 2022 18:24:05 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
 by gabe.freedesktop.org (Postfix) with ESMTPS id B2D7710EB86
 for <intel-gfx@lists.freedesktop.org>; Tue,  3 May 2022 18:24:03 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1651602243; x=1683138243;
 h=from:to:subject:date:message-id:in-reply-to:references:
 mime-version:content-transfer-encoding;
 bh=qVQ7slkHjSO/TBLnFxcsBGoCv9ean0WTCmMQAMaFiMs=;
 b=WcGjeNIpp5gsVksmNLrJn4UYkdbbLzbbu8VDnmMr//TD9Kjh2Rx888L4
 1ssKojWQddTR4iU1AER50sA+yHS5+5d9avX5dY1RZyeyB9yTPivO8YStr
 K+EvM0g0ZjI+WWugvMjt0SG8NP8IUVP5LxoYkeIFzQmPaX7v29GEIXAZe
 YTaH1lC2X+eTptTc6gbc2nqKyPsNvXK7mWWE/P0VFB6vEDj/o3hewJJkt
 XaGY1h+usgX/mP8CXRkijtNVsgl2CJJdAMRQlXhYqDF9aczGRRlaBaM09
 hMsLJEu1/XWTqEyAM8yMersAYz4VfVV0WiyAqTZWWhnUE4oT9YgSGwxri Q==;
X-IronPort-AV: E=McAfee;i="6400,9594,10336"; a="267146197"
X-IronPort-AV: E=Sophos;i="5.91,195,1647327600"; d="scan'208";a="267146197"
Received: from fmsmga007.fm.intel.com ([10.253.24.52])
 by orsmga102.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 03 May 2022 11:24:03 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.91,195,1647327600"; d="scan'208";a="567754527"
Received: from stinkpipe.fi.intel.com (HELO stinkbox) ([10.237.72.51])
 by fmsmga007.fm.intel.com with SMTP; 03 May 2022 11:24:01 -0700
Received: by stinkbox (sSMTP sendmail emulation);
 Tue, 03 May 2022 21:24:00 +0300
From: Ville Syrjala <ville.syrjala@linux.intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Tue,  3 May 2022 21:22:42 +0300
Message-Id: <20220503182242.18797-27-ville.syrjala@linux.intel.com>
X-Mailer: git-send-email 2.35.1
In-Reply-To: <20220503182242.18797-1-ville.syrjala@linux.intel.com>
References: <20220503182242.18797-1-ville.syrjala@linux.intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH 26/26] drm/i915: Round TMDS clock to nearest
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

Use round-to-nearest behavour when calculating the TMDS clock.
Matches what we co for most other clock related things.

Signed-off-by: Ville Syrjälä <ville.syrjala@linux.intel.com>
---
 drivers/gpu/drm/i915/display/intel_ddi.c  | 3 ++-
 drivers/gpu/drm/i915/display/intel_hdmi.c | 2 +-
 2 files changed, 3 insertions(+), 2 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_ddi.c b/drivers/gpu/drm/i915/display/intel_ddi.c
index 0cf2d4fba6a8..8b3e6ae85a08 100644
--- a/drivers/gpu/drm/i915/display/intel_ddi.c
+++ b/drivers/gpu/drm/i915/display/intel_ddi.c
@@ -330,7 +330,8 @@ int intel_crtc_dotclock(const struct intel_crtc_state *pipe_config)
 		dotclock = intel_dotclock_calculate(pipe_config->port_clock,
 						    &pipe_config->dp_m_n);
 	else if (pipe_config->has_hdmi_sink && pipe_config->pipe_bpp > 24)
-		dotclock = pipe_config->port_clock * 24 / pipe_config->pipe_bpp;
+		dotclock = DIV_ROUND_CLOSEST(pipe_config->port_clock * 24,
+					     pipe_config->pipe_bpp);
 	else
 		dotclock = pipe_config->port_clock;
 
diff --git a/drivers/gpu/drm/i915/display/intel_hdmi.c b/drivers/gpu/drm/i915/display/intel_hdmi.c
index 1ae09431f53a..0b04b3800cd4 100644
--- a/drivers/gpu/drm/i915/display/intel_hdmi.c
+++ b/drivers/gpu/drm/i915/display/intel_hdmi.c
@@ -1891,7 +1891,7 @@ int intel_hdmi_tmds_clock(int clock, int bpc, bool ycbcr420_output)
 	 *  1.5x for 12bpc
 	 *  1.25x for 10bpc
 	 */
-	return clock * bpc / 8;
+	return DIV_ROUND_CLOSEST(clock * bpc, 8);
 }
 
 static bool intel_hdmi_source_bpc_possible(struct drm_i915_private *i915, int bpc)
-- 
2.35.1

