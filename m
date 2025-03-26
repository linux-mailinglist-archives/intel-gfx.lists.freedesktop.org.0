Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 2E560A71BCB
	for <lists+intel-gfx@lfdr.de>; Wed, 26 Mar 2025 17:26:09 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id AEB4F10E729;
	Wed, 26 Mar 2025 16:26:07 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="KKwncEwg";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.20])
 by gabe.freedesktop.org (Postfix) with ESMTPS id E4E6210E72B;
 Wed, 26 Mar 2025 16:26:06 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1743006367; x=1774542367;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=MXUHSPZrFrhD/AVHfwjTd6U17Qcx35xM0TN3BCajM0M=;
 b=KKwncEwgeQfuHZorcJzNXLCkSyyXXl6aPJvNJ3l1J2+hFK+EnkxC0QSd
 jxpqxTnpLeBNKnr42icTEEDxkBwdNT8BI9GGvlUfGHXeDWlib2CdmIzmX
 u9J4axaZiYt2r2gglUKsK6Zs8eVgUWALw1KLs/sm/zUib/bS6ER2q9mPk
 /EbReO9HPCXFqeRdeXevY4hlkAc6YVP+pUOEJ2b9GiNI+zdeh135KRrZk
 /8XAToqvxGOJftJDUu2IFleVfY4+7YtHAuT0BI3QPOzEPhcBLirOhnPSP
 rzHGY4L1Ah5PPfmWLYlG8hpHFb6W8oGiznXBseSPBPSUqxo0uwChIJtwZ Q==;
X-CSE-ConnectionGUID: Ce3wVDeMS6uerp5GbxTf8Q==
X-CSE-MsgGUID: B2kwAWTMTFqgQjHCKuPEBw==
X-IronPort-AV: E=McAfee;i="6700,10204,11385"; a="44029566"
X-IronPort-AV: E=Sophos;i="6.14,278,1736841600"; d="scan'208";a="44029566"
Received: from orviesa005.jf.intel.com ([10.64.159.145])
 by orvoesa112.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 26 Mar 2025 09:26:07 -0700
X-CSE-ConnectionGUID: PvmJWnHWTUGkkitA200Q2g==
X-CSE-MsgGUID: KRaTcI06RCemwDzrxynoCQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.14,278,1736841600"; d="scan'208";a="130016318"
Received: from stinkpipe.fi.intel.com (HELO stinkbox) ([10.237.72.74])
 by orviesa005.jf.intel.com with SMTP; 26 Mar 2025 09:26:05 -0700
Received: by stinkbox (sSMTP sendmail emulation);
 Wed, 26 Mar 2025 18:26:03 +0200
From: Ville Syrjala <ville.syrjala@linux.intel.com>
To: intel-gfx@lists.freedesktop.org
Cc: intel-xe@lists.freedesktop.org
Subject: [PATCH v2 06/14] drm/i915: Do more bw readout
Date: Wed, 26 Mar 2025 18:25:36 +0200
Message-ID: <20250326162544.3642-7-ville.syrjala@linux.intel.com>
X-Mailer: git-send-email 2.45.3
In-Reply-To: <20250326162544.3642-1-ville.syrjala@linux.intel.com>
References: <20250326162544.3642-1-ville.syrjala@linux.intel.com>
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
 drivers/gpu/drm/i915/display/intel_cdclk.c | 4 ++++
 2 files changed, 7 insertions(+)

diff --git a/drivers/gpu/drm/i915/display/intel_bw.c b/drivers/gpu/drm/i915/display/intel_bw.c
index 19b516084fac..69f3de0bba6a 100644
--- a/drivers/gpu/drm/i915/display/intel_bw.c
+++ b/drivers/gpu/drm/i915/display/intel_bw.c
@@ -1495,6 +1495,8 @@ void intel_bw_update_hw_state(struct intel_display *display)
 
 		if (DISPLAY_VER(display) >= 11)
 			intel_bw_crtc_update(bw_state, crtc_state);
+
+		skl_crtc_calc_dbuf_bw(&bw_state->dbuf_bw[pipe], crtc_state);
 	}
 }
 
@@ -1510,6 +1512,7 @@ void intel_bw_crtc_disable_noatomic(struct intel_crtc *crtc)
 
 	bw_state->data_rate[pipe] = 0;
 	bw_state->num_active_planes[pipe] = 0;
+	memset(&bw_state->dbuf_bw[pipe], 0, sizeof(bw_state->dbuf_bw[pipe]));
 }
 
 static struct intel_global_state *
diff --git a/drivers/gpu/drm/i915/display/intel_cdclk.c b/drivers/gpu/drm/i915/display/intel_cdclk.c
index 984fd9f98c9f..ea2fbee2d62f 100644
--- a/drivers/gpu/drm/i915/display/intel_cdclk.c
+++ b/drivers/gpu/drm/i915/display/intel_cdclk.c
@@ -3341,6 +3341,8 @@ int intel_modeset_calc_cdclk(struct intel_atomic_state *state)
 
 void intel_cdclk_update_hw_state(struct intel_display *display)
 {
+	const struct intel_bw_state *bw_state =
+		to_intel_bw_state(display->bw.obj.state);
 	struct intel_cdclk_state *cdclk_state =
 		to_intel_cdclk_state(display->cdclk.obj.state);
 	struct intel_crtc *crtc;
@@ -3358,6 +3360,8 @@ void intel_cdclk_update_hw_state(struct intel_display *display)
 		cdclk_state->min_cdclk[pipe] = intel_crtc_compute_min_cdclk(crtc_state);
 		cdclk_state->min_voltage_level[pipe] = crtc_state->min_voltage_level;
 	}
+
+	cdclk_state->bw_min_cdclk = intel_bw_min_cdclk(display, bw_state);
 }
 
 void intel_cdclk_crtc_disable_noatomic(struct intel_crtc *crtc)
-- 
2.45.3

