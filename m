Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id C3482A3AAB5
	for <lists+intel-gfx@lfdr.de>; Tue, 18 Feb 2025 22:20:06 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 5C39210E774;
	Tue, 18 Feb 2025 21:20:05 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="GIEPbdJ7";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.18])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 39DEE10E772
 for <intel-gfx@lists.freedesktop.org>; Tue, 18 Feb 2025 21:20:03 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1739913603; x=1771449603;
 h=from:to:subject:date:message-id:in-reply-to:references:
 mime-version:content-transfer-encoding;
 bh=Pvs2sP0NqLY1PAru65cCngWK3Sxc/bDHkBY+1GAf8tw=;
 b=GIEPbdJ7HoA83BP3mZdyLYXLIEelJ24bNurF3JHs2Nmu1D5di5WHSv2b
 4n3LSb4PXkCG0i00yo/KLeB6yYnLARBVEvhZorAZ5UeZPtza0zgarfJjg
 fsqnSog5rKHC8VRVtABKUXfcugw/Dy8oauu+7INJ4h3dZLKqvfAB/Wtf/
 vlNLvaq/+T1t6v45B/v6FvHN+n+B2vVx9NA7v0bNn6FLnfVh5Gjx0Asvo
 NyzRB6n13WKwagY0Z49fCS2fEUYj91LQF654UZ3qyLVYPta6eIYWVE+SK
 h78Hw1acpJG2s8z/iKObafFtL2GY3R7XJD55p+WIE5l+TUO9CZNRGh4KP w==;
X-CSE-ConnectionGUID: BwHW22CWTAycxXAhkmhLOA==
X-CSE-MsgGUID: Nncrg4SSTD28lpOKyDxkJg==
X-IronPort-AV: E=McAfee;i="6700,10204,11348"; a="39862324"
X-IronPort-AV: E=Sophos;i="6.13,296,1732608000"; d="scan'208";a="39862324"
Received: from fmviesa008.fm.intel.com ([10.60.135.148])
 by fmvoesa112.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 18 Feb 2025 13:20:03 -0800
X-CSE-ConnectionGUID: YR4BMyZfSAWWDqZ3ZXUIbQ==
X-CSE-MsgGUID: th/H7Eg/QvmL1WyCSDvoeA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.13,296,1732608000"; d="scan'208";a="114693509"
Received: from stinkpipe.fi.intel.com (HELO stinkbox) ([10.237.72.74])
 by fmviesa008.fm.intel.com with SMTP; 18 Feb 2025 13:20:01 -0800
Received: by stinkbox (sSMTP sendmail emulation);
 Tue, 18 Feb 2025 23:20:00 +0200
From: Ville Syrjala <ville.syrjala@linux.intel.com>
To: intel-gfx@lists.freedesktop.org
Subject: [PATCH 14/19] sem/i915: Simplify intel_cdclk_update_hw_state()
Date: Tue, 18 Feb 2025 23:19:08 +0200
Message-ID: <20250218211913.27867-15-ville.syrjala@linux.intel.com>
X-Mailer: git-send-email 2.45.3
In-Reply-To: <20250218211913.27867-1-ville.syrjala@linux.intel.com>
References: <20250218211913.27867-1-ville.syrjala@linux.intel.com>
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

intel_crtc_calculate_min_cdclk() can't return an error
(since commit 5ac860cc5254 ("drm/i915: Fix DBUF bandwidth vs.
cdclk handling")) so there is no point in checking for one.

Also we can just call it unconditionally since it itself
checks crtc_state->hw.enabled. We are currently checking
crtc_state->hw.active in the readout path, but active==enabled
during readout, and arguably enabled is the more correct thing
to check anyway.

Signed-off-by: Ville Syrjälä <ville.syrjala@linux.intel.com>
---
 drivers/gpu/drm/i915/display/intel_cdclk.c | 10 ++--------
 1 file changed, 2 insertions(+), 8 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_cdclk.c b/drivers/gpu/drm/i915/display/intel_cdclk.c
index 947833a96ab7..62caee4a8b64 100644
--- a/drivers/gpu/drm/i915/display/intel_cdclk.c
+++ b/drivers/gpu/drm/i915/display/intel_cdclk.c
@@ -3352,17 +3352,11 @@ void intel_cdclk_update_hw_state(struct intel_display *display)
 		const struct intel_crtc_state *crtc_state =
 			to_intel_crtc_state(crtc->base.state);
 		enum pipe pipe = crtc->pipe;
-		int min_cdclk = 0;
 
-		if (crtc_state->hw.active) {
+		if (crtc_state->hw.active)
 			cdclk_state->active_pipes |= BIT(pipe);
 
-			min_cdclk = intel_crtc_compute_min_cdclk(crtc_state);
-			if (drm_WARN_ON(display->drm, min_cdclk < 0))
-				min_cdclk = 0;
-		}
-
-		cdclk_state->min_cdclk[pipe] = min_cdclk;
+		cdclk_state->min_cdclk[pipe] = intel_crtc_compute_min_cdclk(crtc_state);
 		cdclk_state->min_voltage_level[pipe] = crtc_state->min_voltage_level;
 	}
 }
-- 
2.45.3

