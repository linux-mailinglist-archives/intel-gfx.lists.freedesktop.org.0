Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 4C6AFA56FE7
	for <lists+intel-gfx@lfdr.de>; Fri,  7 Mar 2025 19:02:09 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id C06BF10E15D;
	Fri,  7 Mar 2025 18:02:07 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="M/309SJc";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.11])
 by gabe.freedesktop.org (Postfix) with ESMTPS id B46F010EC23;
 Fri,  7 Mar 2025 18:02:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1741370526; x=1772906526;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=PEAmXlZHfuUiCO0JAVwzhRXIXUOyM5f7gXgG6tQJTwQ=;
 b=M/309SJcfkPqp3LNhMTqhnPwkTvl+of08eCOPd+AcmOvBH988P1Eu45e
 jpMWA/yV1caCuPFeLkGzBCb23RJNXuGQmMQMHTsD7ir6B1uG3qLnDlgnQ
 rWls7L4GhqVFs/PdJPCj6dTgN9erduwGiFKSJ0zsoanoqMyqSJ1c6N62u
 K+weErv2sBYia9EvShColIlYHvvLuq60D9Z84i238sIUf5h3E87ogmIEh
 Nu/DyLBYAx6RPf9B7bqyhu3f4I0riX/cAQs/gV69JGGG18DjCDxbxXF6J
 SoUV/mZIbErkNOEr2yAdqYYhu8zwCB5WGDTaoBajODJpLcngJ6oWGphOG Q==;
X-CSE-ConnectionGUID: jB7C/LK1RQm4sQHJoIT88w==
X-CSE-MsgGUID: PcRhGQ3VTjCecNQUIO0MuA==
X-IronPort-AV: E=McAfee;i="6700,10204,11365"; a="52637153"
X-IronPort-AV: E=Sophos;i="6.14,229,1736841600"; d="scan'208";a="52637153"
Received: from orviesa005.jf.intel.com ([10.64.159.145])
 by orvoesa103.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 07 Mar 2025 10:02:06 -0800
X-CSE-ConnectionGUID: gQv61xunQLC5PadXp3E2NA==
X-CSE-MsgGUID: 3GCpKNXVQomgoduV5iqB1A==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.12,224,1728975600"; d="scan'208";a="124621152"
Received: from stinkpipe.fi.intel.com (HELO stinkbox) ([10.237.72.74])
 by orviesa005.jf.intel.com with SMTP; 07 Mar 2025 10:02:04 -0800
Received: by stinkbox (sSMTP sendmail emulation);
 Fri, 07 Mar 2025 20:02:02 +0200
From: Ville Syrjala <ville.syrjala@linux.intel.com>
To: intel-gfx@lists.freedesktop.org
Cc: intel-xe@lists.freedesktop.org
Subject: [PATCH 06/14] drm/i915: Do more bw readout
Date: Fri,  7 Mar 2025 20:01:31 +0200
Message-ID: <20250307180139.15744-7-ville.syrjala@linux.intel.com>
X-Mailer: git-send-email 2.45.3
In-Reply-To: <20250307180139.15744-1-ville.syrjala@linux.intel.com>
References: <20250307180139.15744-1-ville.syrjala@linux.intel.com>
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

Update a bunch of bw related stuff during readout:
- bw_state->dbuf_bw possible now that the wm readout
  has given us access to the plane ddb data
- cdclk_state->bw_min_cdclk

Signed-off-by: Ville Syrjälä <ville.syrjala@linux.intel.com>
---
 drivers/gpu/drm/i915/display/intel_bw.c    | 3 +++
 drivers/gpu/drm/i915/display/intel_cdclk.c | 5 +++++
 2 files changed, 8 insertions(+)

diff --git a/drivers/gpu/drm/i915/display/intel_bw.c b/drivers/gpu/drm/i915/display/intel_bw.c
index 16ae337376fe..bbb040be0502 100644
--- a/drivers/gpu/drm/i915/display/intel_bw.c
+++ b/drivers/gpu/drm/i915/display/intel_bw.c
@@ -1459,6 +1459,8 @@ void intel_bw_update_hw_state(struct intel_display *display)
 
 		if (DISPLAY_VER(display) >= 11)
 			intel_bw_crtc_update(bw_state, crtc_state);
+
+		skl_crtc_calc_dbuf_bw(&bw_state->dbuf_bw[pipe], crtc_state);
 	}
 }
 
@@ -1474,6 +1476,7 @@ void intel_bw_crtc_disable_noatomic(struct intel_crtc *crtc)
 
 	bw_state->data_rate[pipe] = 0;
 	bw_state->num_active_planes[pipe] = 0;
+	memset(&bw_state->dbuf_bw[pipe], 0, sizeof(bw_state->dbuf_bw[pipe]));
 }
 
 static struct intel_global_state *
diff --git a/drivers/gpu/drm/i915/display/intel_cdclk.c b/drivers/gpu/drm/i915/display/intel_cdclk.c
index 2a8749a0213e..1db847de6995 100644
--- a/drivers/gpu/drm/i915/display/intel_cdclk.c
+++ b/drivers/gpu/drm/i915/display/intel_cdclk.c
@@ -3342,6 +3342,9 @@ int intel_modeset_calc_cdclk(struct intel_atomic_state *state)
 
 void intel_cdclk_update_hw_state(struct intel_display *display)
 {
+	struct drm_i915_private *i915 = to_i915(display->drm);
+	const struct intel_bw_state *bw_state =
+		to_intel_bw_state(display->bw.obj.state);
 	struct intel_cdclk_state *cdclk_state =
 		to_intel_cdclk_state(display->cdclk.obj.state);
 	struct intel_crtc *crtc;
@@ -3359,6 +3362,8 @@ void intel_cdclk_update_hw_state(struct intel_display *display)
 		cdclk_state->min_cdclk[pipe] = intel_crtc_compute_min_cdclk(crtc_state);
 		cdclk_state->min_voltage_level[pipe] = crtc_state->min_voltage_level;
 	}
+
+	cdclk_state->bw_min_cdclk = intel_bw_min_cdclk(i915, bw_state);
 }
 
 void intel_cdclk_crtc_disable_noatomic(struct intel_crtc *crtc)
-- 
2.45.3

