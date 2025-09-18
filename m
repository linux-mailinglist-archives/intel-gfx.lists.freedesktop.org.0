Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 3F720B8759B
	for <lists+intel-gfx@lfdr.de>; Fri, 19 Sep 2025 01:22:40 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id B7F5A10E90B;
	Thu, 18 Sep 2025 23:22:38 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="b3cekX31";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.16])
 by gabe.freedesktop.org (Postfix) with ESMTPS id E000410E20E;
 Thu, 18 Sep 2025 23:22:37 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1758237758; x=1789773758;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=ZZNJtfB859H24Exx0Rrrof9P+gilyu0z9ndXudRHaY8=;
 b=b3cekX31YIwDEfScfVauvPldbg5KIoUfnKd/PNadrIXoPRpO8pvjHeDb
 lemli2EAckJ4xrp0+z/r3qQwRU8FiVnomYnumNSA/7YDUrjMzQFMk9G/w
 IPOm/Tk4cGmdv3o86zd0aZRY2bMAXol/6RxCUvnWaN5aVp0vXGqwAFdFp
 WmORi8461vLlg1AEx3rUZR6YGCre9Wjx9ypBIywTOxcj/gn+BSXsUZWmA
 aEnPC3SmW3PpoOBK+cGR/sDI+DDU05n81UlrC/+PkoP4L9YR0QkOSyiGC
 2DfXs4vcINewl+LBpfTHW1f6au1LPMFoJA+9JP8RktVuqVsH6XBdS4HWU g==;
X-CSE-ConnectionGUID: 3/PRoWhfThSsqv8XD2x01w==
X-CSE-MsgGUID: 9hQRbMbQS+GiqLCzS2Wn3g==
X-IronPort-AV: E=McAfee;i="6800,10657,11557"; a="60735330"
X-IronPort-AV: E=Sophos;i="6.18,276,1751266800"; d="scan'208";a="60735330"
Received: from fmviesa010.fm.intel.com ([10.60.135.150])
 by orvoesa108.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 18 Sep 2025 16:22:38 -0700
X-CSE-ConnectionGUID: qJzgVQOVR9evDTqOjJN+Hw==
X-CSE-MsgGUID: Q8OrN4cCRLSXLM4F/Sfwaw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.18,276,1751266800"; d="scan'208";a="176491306"
Received: from pgcooper-mobl3.ger.corp.intel.com (HELO localhost)
 ([10.245.244.255])
 by fmviesa010-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 18 Sep 2025 16:22:36 -0700
From: Ville Syrjala <ville.syrjala@linux.intel.com>
To: intel-gfx@lists.freedesktop.org
Cc: intel-xe@lists.freedesktop.org
Subject: [PATCH 2/2] drm/i915/vrr:
 s/intel_vrr_flipline_offset/intel_vrr_vmin_flipline_offset/
Date: Fri, 19 Sep 2025 02:22:26 +0300
Message-ID: <20250918232226.25295-3-ville.syrjala@linux.intel.com>
X-Mailer: git-send-email 2.49.1
In-Reply-To: <20250918232226.25295-1-ville.syrjala@linux.intel.com>
References: <20250918232226.25295-1-ville.syrjala@linux.intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
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

Rename intel_vrr_flipline_offset() to intel_vrr_vmin_flipline_offset()
to better reflect the fact that it gives us the minimum offset allowed
between vmin and flipline.

Signed-off-by: Ville Syrjälä <ville.syrjala@linux.intel.com>
---
 drivers/gpu/drm/i915/display/intel_vrr.c | 8 ++++----
 1 file changed, 4 insertions(+), 4 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_vrr.c b/drivers/gpu/drm/i915/display/intel_vrr.c
index e725b4581e81..9e007aab1452 100644
--- a/drivers/gpu/drm/i915/display/intel_vrr.c
+++ b/drivers/gpu/drm/i915/display/intel_vrr.c
@@ -106,7 +106,7 @@ int intel_vrr_vblank_delay(const struct intel_crtc_state *crtc_state)
 		intel_vrr_extra_vblank_delay(display);
 }
 
-static int intel_vrr_flipline_offset(struct intel_display *display)
+static int intel_vrr_vmin_flipline_offset(struct intel_display *display)
 {
 	/*
 	 * ICL/TGL hardware imposes flipline>=vmin+1
@@ -288,7 +288,7 @@ int intel_vrr_fixed_rr_hw_vmin(const struct intel_crtc_state *crtc_state)
 	struct intel_display *display = to_intel_display(crtc_state);
 
 	return intel_vrr_fixed_rr_hw_vtotal(crtc_state) -
-		intel_vrr_flipline_offset(display);
+		intel_vrr_vmin_flipline_offset(display);
 }
 
 static
@@ -599,7 +599,7 @@ static int intel_vrr_hw_vmin(const struct intel_crtc_state *crtc_state)
 	struct intel_display *display = to_intel_display(crtc_state);
 
 	return intel_vrr_hw_value(crtc_state, crtc_state->vrr.vmin) -
-		intel_vrr_flipline_offset(display);
+		intel_vrr_vmin_flipline_offset(display);
 }
 
 static int intel_vrr_hw_vmax(const struct intel_crtc_state *crtc_state)
@@ -765,7 +765,7 @@ void intel_vrr_get_config(struct intel_crtc_state *crtc_state)
 			crtc_state->vrr.vmax += intel_vrr_real_vblank_delay(crtc_state);
 			crtc_state->vrr.vmin += intel_vrr_real_vblank_delay(crtc_state);
 
-			crtc_state->vrr.vmin += intel_vrr_flipline_offset(display);
+			crtc_state->vrr.vmin += intel_vrr_vmin_flipline_offset(display);
 		}
 
 		/*
-- 
2.49.1

