Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 46B31BBEB9E
	for <lists+intel-gfx@lfdr.de>; Mon, 06 Oct 2025 18:47:02 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id C5C3110E435;
	Mon,  6 Oct 2025 16:47:00 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="dul7jxxc";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.12])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 1958C10E435;
 Mon,  6 Oct 2025 16:47:00 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1759769220; x=1791305220;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=XkVq8FRTj3g+LZPBHvBYSeTxmQhJGzL15eL7BxqA9Qg=;
 b=dul7jxxc6X4rA0J0GIHNvZfK5Hjb3dOfBa4KG1z+oja9nBl0YqrlZb69
 YpxjwULkrhqVig0tSEjzgCgKmmlyfqKjtyx1SC/oAK1AtOyQv990NkZ1u
 64BdFkIONht7aYf4cp2QMeF1GgZkXXRMCP0q2ujYSEzPcF3TCfh7IdekF
 EeCotvvqErHS/WQVnzTUqjkJVwK+CmaLPIlR616hDlUe9YBzOi5H1jQ+U
 VunowUi3wZ3kD8hos/do/hEZIOKnIkNtSe5UfPqHCqLikvRV0s+kHd2av
 4XNNtBCYZ2KMvQFBuWduZCPVgaCCOYmhxcJ+HiHP4KxyOnkPcSbwvV0LC g==;
X-CSE-ConnectionGUID: x6XrtVi9Qd6LamtWFpy+FQ==
X-CSE-MsgGUID: f/p5Pxc9SaSNwScViq/O6A==
X-IronPort-AV: E=McAfee;i="6800,10657,11574"; a="65795647"
X-IronPort-AV: E=Sophos;i="6.18,320,1751266800"; d="scan'208";a="65795647"
Received: from fmviesa006.fm.intel.com ([10.60.135.146])
 by fmvoesa106.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 06 Oct 2025 09:47:00 -0700
X-CSE-ConnectionGUID: p5GCHSkXQjSnktNA9Y5PWQ==
X-CSE-MsgGUID: V18DMNEOSHSC4WIWA1X63A==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.18,320,1751266800"; d="scan'208";a="179861496"
Received: from bergbenj-mobl1.ger.corp.intel.com (HELO localhost)
 ([10.245.245.80])
 by fmviesa006-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 06 Oct 2025 09:46:58 -0700
From: Ville Syrjala <ville.syrjala@linux.intel.com>
To: intel-gfx@lists.freedesktop.org
Cc: intel-xe@lists.freedesktop.org
Subject: [PATCH 02/10] drm/i915/overlay: Switchj to intel_frontbuffer_flip()
Date: Mon,  6 Oct 2025 19:46:40 +0300
Message-ID: <20251006164648.6761-3-ville.syrjala@linux.intel.com>
X-Mailer: git-send-email 2.49.1
In-Reply-To: <20251006164648.6761-1-ville.syrjala@linux.intel.com>
References: <20251006164648.6761-1-ville.syrjala@linux.intel.com>
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

