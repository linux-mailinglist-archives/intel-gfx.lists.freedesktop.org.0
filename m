Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 3453DBE51F0
	for <lists+intel-gfx@lfdr.de>; Thu, 16 Oct 2025 20:54:24 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 949FA10E347;
	Thu, 16 Oct 2025 18:54:22 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="TgtQUs92";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.18])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 9919D10E346;
 Thu, 16 Oct 2025 18:54:20 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1760640860; x=1792176860;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=P2LjqR/kOt3dlZ75oUnLBxwmaBIc7cxQWLeTRoebbW0=;
 b=TgtQUs92W9hjQD14Dg1XxE9psjyzbrmwTuOZanzN+Plu4R6zd27hsd2+
 40KjskCA4xaw4abG+rJ6bsl0NRwsYOGCq6lrEMipygDHLFbpRHrUApdWD
 k+38vrnWQzOmDSrXPuKy4JB0dM8V0l4ItmX4cq1KtMML4pxd9/mlTwYK3
 HW3iAzGPKc5DAOMYtI2XmziuPBtYCl9OOhEYswqwqIGtoysiVixutaLWX
 wok29rT9+vkpP0xOF2GkEESd/c0TI7PQSIhSC5YXDr/TPV9b6w0xemLAj
 6CrlszM5cUECERoyurJtwDhpoBkhSqjK2ojNK5Ytg45AMQbE81+o6rOyJ A==;
X-CSE-ConnectionGUID: vkMF+qyxQeKhL9S3GHmxyw==
X-CSE-MsgGUID: frLhhs+VS4Crd7R/wn++ew==
X-IronPort-AV: E=McAfee;i="6800,10657,11584"; a="62894806"
X-IronPort-AV: E=Sophos;i="6.19,234,1754982000"; d="scan'208";a="62894806"
Received: from orviesa008.jf.intel.com ([10.64.159.148])
 by orvoesa110.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 16 Oct 2025 11:54:20 -0700
X-CSE-ConnectionGUID: ooiOda1xSJ+YR+14wMLBwg==
X-CSE-MsgGUID: 0dJDl9yGSruHrEjOKEVTVg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.19,234,1754982000"; d="scan'208";a="182514549"
Received: from kniemiec-mobl1.ger.corp.intel.com (HELO localhost)
 ([10.245.244.12])
 by orviesa008-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 16 Oct 2025 11:54:19 -0700
From: Ville Syrjala <ville.syrjala@linux.intel.com>
To: intel-gfx@lists.freedesktop.org
Cc: intel-xe@lists.freedesktop.org,
	Jani Nikula <jani.nikula@intel.com>
Subject: [PATCH v2 02/10] drm/i915/overlay: Switch to intel_frontbuffer_flip()
Date: Thu, 16 Oct 2025 21:54:00 +0300
Message-ID: <20251016185408.22735-3-ville.syrjala@linux.intel.com>
X-Mailer: git-send-email 2.49.1
In-Reply-To: <20251016185408.22735-1-ville.syrjala@linux.intel.com>
References: <20251016185408.22735-1-ville.syrjala@linux.intel.com>
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

Get rid of intel_frontbuffer_flip_{prepare,complete}() from
the overlay code and just use intel_frontbuffer_flip() instead.

The only difference between these are the light interactions
with the ORIGIN_CS busyness tracking, but since the only user
of this is the overlay/xf86-video-intel/Xv the buffer will
always be filled by the CPU and thus we'll never see any
ORIGIN_CS frontbuffer activity there anyway. Also I don't
think we actually have anything covered by the frontbuffer
tracking that affects the overlay (FBC is on the primary
plane, DRRS isn't currently enabled on the platforms with
overlay, and PSR doesn't exist in the hardware).

Acked-by: Jani Nikula <jani.nikula@intel.com>
Signed-off-by: Ville Syrjälä <ville.syrjala@linux.intel.com>
---
 drivers/gpu/drm/i915/display/intel_overlay.c | 4 +---
 1 file changed, 1 insertion(+), 3 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_overlay.c b/drivers/gpu/drm/i915/display/intel_overlay.c
index 8400a0236cdd..60ec68e917a5 100644
--- a/drivers/gpu/drm/i915/display/intel_overlay.c
+++ b/drivers/gpu/drm/i915/display/intel_overlay.c
@@ -307,8 +307,6 @@ static void intel_overlay_flip_prepare(struct intel_overlay *overlay,
 		intel_frontbuffer_put(overlay->frontbuffer);
 	overlay->frontbuffer = frontbuffer;
 
-	intel_frontbuffer_flip_prepare(display, INTEL_FRONTBUFFER_OVERLAY(pipe));
-
 	overlay->old_vma = overlay->vma;
 	if (vma)
 		overlay->vma = i915_vma_get(vma);
@@ -365,7 +363,7 @@ static void intel_overlay_release_old_vma(struct intel_overlay *overlay)
 	if (drm_WARN_ON(display->drm, !vma))
 		return;
 
-	intel_frontbuffer_flip_complete(display, INTEL_FRONTBUFFER_OVERLAY(overlay->crtc->pipe));
+	intel_frontbuffer_flip(display, INTEL_FRONTBUFFER_OVERLAY(overlay->crtc->pipe));
 
 	i915_vma_unpin(vma);
 	i915_vma_put(vma);
-- 
2.49.1

