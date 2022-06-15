Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 0177754D057
	for <lists+intel-gfx@lfdr.de>; Wed, 15 Jun 2022 19:49:01 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 623D8112808;
	Wed, 15 Jun 2022 17:48:59 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga06.intel.com (mga06b.intel.com [134.134.136.31])
 by gabe.freedesktop.org (Postfix) with ESMTPS id BB5E011280C
 for <intel-gfx@lists.freedesktop.org>; Wed, 15 Jun 2022 17:48:57 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1655315337; x=1686851337;
 h=from:to:subject:date:message-id:in-reply-to:references:
 mime-version:content-transfer-encoding;
 bh=97ecvbuKbA09TXXk8Ldtm5KRUzwhisGQXdf6vHjaZ60=;
 b=WrnNfXaa2ZKMZoC597GXoRyBFh+XZlN3NWqhZa+9J8ndLCKurm6ksQD+
 9LASUPwRgLIGgzjxvH6y1mwzGoyvICdxlKBV7KdgWbKKUj5xYFC7Swe8W
 7J+Cb8WcOaqs53CCrpsQJQ1WssMN+CAejZaGNo5u/k/6E6/WbxZ5ogays
 RILASQ5X23/MUUGCvbeeuUjd3wfevCH0t51v9aGaOWRihD8kYb3ASwwPa
 YinGSHlJEZafNWyL8ztT3MidSxcrGZRVTa1H2dK0hs4mH5JteA32cUXKb
 sxLdQZDtvTYA5omFA3GQ4LZzKnPGWXeG5kmYF3HaxU0MKU/kpuQEhPBa0 w==;
X-IronPort-AV: E=McAfee;i="6400,9594,10379"; a="340710135"
X-IronPort-AV: E=Sophos;i="5.91,302,1647327600"; d="scan'208";a="340710135"
Received: from fmsmga003.fm.intel.com ([10.253.24.29])
 by orsmga104.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 15 Jun 2022 10:48:56 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.91,302,1647327600"; d="scan'208";a="674634334"
Received: from stinkpipe.fi.intel.com (HELO stinkbox) ([10.237.72.163])
 by FMSMGA003.fm.intel.com with SMTP; 15 Jun 2022 10:48:54 -0700
Received: by stinkbox (sSMTP sendmail emulation);
 Wed, 15 Jun 2022 20:48:54 +0300
From: Ville Syrjala <ville.syrjala@linux.intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Wed, 15 Jun 2022 20:48:51 +0300
Message-Id: <20220615174851.20658-2-ville.syrjala@linux.intel.com>
X-Mailer: git-send-email 2.35.1
In-Reply-To: <20220615174851.20658-1-ville.syrjala@linux.intel.com>
References: <20220615174851.20658-1-ville.syrjala@linux.intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH 2/2] drm/i915: Sanitize underrun reporting
 before turning off any pipes
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

Make sure FIFO underrun reporting is flagged as disabled very
early during the state readout so that we don't get any
spurious FIFO underruns reports from intel_crtc_disable_noatomic().

Signed-off-by: Ville Syrjälä <ville.syrjala@linux.intel.com>
---
 drivers/gpu/drm/i915/display/intel_display.c | 4 ++--
 1 file changed, 2 insertions(+), 2 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_display.c b/drivers/gpu/drm/i915/display/intel_display.c
index e38d0a85889b..40fb356b5d46 100644
--- a/drivers/gpu/drm/i915/display/intel_display.c
+++ b/drivers/gpu/drm/i915/display/intel_display.c
@@ -9962,8 +9962,6 @@ static void intel_sanitize_crtc(struct intel_crtc *crtc,
 	if (crtc_state->hw.active && !intel_crtc_has_encoders(crtc) &&
 	    !intel_crtc_is_bigjoiner_slave(crtc_state))
 		intel_crtc_disable_noatomic(crtc, ctx);
-
-	intel_sanitize_fifo_underrun_reporting(crtc_state);
 }
 
 static bool has_bogus_dpll_config(const struct intel_crtc_state *crtc_state)
@@ -10363,6 +10361,8 @@ intel_modeset_setup_hw_state(struct drm_device *dev,
 		struct intel_crtc_state *crtc_state =
 			to_intel_crtc_state(crtc->base.state);
 
+		intel_sanitize_fifo_underrun_reporting(crtc_state);
+
 		drm_crtc_vblank_reset(&crtc->base);
 
 		if (crtc_state->hw.active)
-- 
2.35.1

