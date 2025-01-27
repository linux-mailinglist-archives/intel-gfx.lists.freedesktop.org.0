Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id A1D87A1DB3C
	for <lists+intel-gfx@lfdr.de>; Mon, 27 Jan 2025 18:22:33 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 47C1910E597;
	Mon, 27 Jan 2025 17:22:32 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="UdPFYJPr";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.17])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 4A0D110E595
 for <intel-gfx@lists.freedesktop.org>; Mon, 27 Jan 2025 17:22:30 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1737998550; x=1769534550;
 h=from:to:subject:date:message-id:in-reply-to:references:
 mime-version:content-transfer-encoding;
 bh=bxLjU7BslkIAkIEDcxOzZkJQR9srwJIWqTN7FAQ2UQg=;
 b=UdPFYJPrhYP231WT0o/KO4MxSkbulyRHQnWNC0rVlxnLKgppc+jvxeHr
 73Ic1YGDV1FDW+FBvHYkanwrNMAMVSvLAvjNBy7dYISwSQKiLaT80+4i1
 +0G0S6e0xtTl8GLJq27byvR19oop+wKUUWYNki7sMOGSdY44v7vjkoQtq
 Sg2uAsq5P7z2FrGke5Q+EWiBTn8cCt+2iN0DSlahYKwrzWF8F8zZGJrQb
 RC9kIsG0gf0/JQgeclwK/B0U9HKeSEVeuVVnABgMxiMMMsGr2zG4J6f2S
 UaBis2ik8rhejedMCWF6nqd98kCZs2KkmuxQ71qCSbumkxDbr162ZaaM3 g==;
X-CSE-ConnectionGUID: 6KK597pxQfq/X5Gyqp6fnA==
X-CSE-MsgGUID: XSfM91M0Qt2Br77h57B8+A==
X-IronPort-AV: E=McAfee;i="6700,10204,11328"; a="38501409"
X-IronPort-AV: E=Sophos;i="6.13,239,1732608000"; d="scan'208";a="38501409"
Received: from fmviesa008.fm.intel.com ([10.60.135.148])
 by orvoesa109.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 27 Jan 2025 09:22:30 -0800
X-CSE-ConnectionGUID: mjM32oRtTnupCvZfgZmiPQ==
X-CSE-MsgGUID: cXYQnw42TXG0hKvYGalnIw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.13,239,1732608000"; d="scan'208";a="108610279"
Received: from stinkpipe.fi.intel.com (HELO stinkbox) ([10.237.72.74])
 by fmviesa008.fm.intel.com with SMTP; 27 Jan 2025 09:22:28 -0800
Received: by stinkbox (sSMTP sendmail emulation);
 Mon, 27 Jan 2025 19:22:27 +0200
From: Ville Syrjala <ville.syrjala@linux.intel.com>
To: intel-gfx@lists.freedesktop.org
Subject: [PATCH 11/11] drm/i915: Pimp the Y plane selection debugs
Date: Mon, 27 Jan 2025 19:21:56 +0200
Message-ID: <20250127172156.21928-12-ville.syrjala@linux.intel.com>
X-Mailer: git-send-email 2.45.3
In-Reply-To: <20250127172156.21928-1-ville.syrjala@linux.intel.com>
References: <20250127172156.21928-1-ville.syrjala@linux.intel.com>
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

Use the standard [PLANE:%d:%s] stuff for the Y plane debugs,
and more clearly spell out which plane is UV plane and which
is Y plane when linking them.

Signed-off-by: Ville Syrjälä <ville.syrjala@linux.intel.com>
---
 drivers/gpu/drm/i915/display/intel_atomic_plane.c | 8 +++++---
 1 file changed, 5 insertions(+), 3 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_atomic_plane.c b/drivers/gpu/drm/i915/display/intel_atomic_plane.c
index 1fb35f4a7cf4..9c2e8aaba8cd 100644
--- a/drivers/gpu/drm/i915/display/intel_atomic_plane.c
+++ b/drivers/gpu/drm/i915/display/intel_atomic_plane.c
@@ -1236,8 +1236,9 @@ static void link_nv12_planes(struct intel_crtc_state *crtc_state,
 	crtc_state->data_rate[y_plane->id] = crtc_state->data_rate_y[uv_plane->id];
 	crtc_state->rel_data_rate[y_plane->id] = crtc_state->rel_data_rate_y[uv_plane->id];
 
-	drm_dbg_kms(&dev_priv->drm, "Using %s as Y plane for %s\n",
-		    y_plane->base.name, uv_plane->base.name);
+	drm_dbg_kms(&dev_priv->drm, "UV plane [PLANE:%d:%s] using Y plane [PLANE:%d:%s]\n",
+		    uv_plane->base.base.id, uv_plane->base.name,
+		    y_plane->base.base.id, y_plane->base.name);
 
 	/* Copy parameters to Y plane */
 	intel_plane_copy_hw_state(y_plane_state, uv_plane_state);
@@ -1328,7 +1329,8 @@ static int icl_check_nv12_planes(struct intel_atomic_state *state,
 
 		if (!y_plane_state) {
 			drm_dbg_kms(&dev_priv->drm,
-				    "Need %d free Y planes for planar YUV\n",
+				    "[CRTC:%d:%s] need %d free Y planes for planar YUV\n",
+				    crtc->base.base.id, crtc->base.name,
 				    hweight8(crtc_state->nv12_planes));
 
 			return -EINVAL;
-- 
2.45.3

