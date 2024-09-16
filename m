Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id BDE2E97A5EA
	for <lists+intel-gfx@lfdr.de>; Mon, 16 Sep 2024 18:24:29 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 6873610E3B6;
	Mon, 16 Sep 2024 16:24:28 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="D54VtoHY";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.10])
 by gabe.freedesktop.org (Postfix) with ESMTPS id D590010E3B8
 for <intel-gfx@lists.freedesktop.org>; Mon, 16 Sep 2024 16:24:26 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1726503867; x=1758039867;
 h=from:to:subject:date:message-id:in-reply-to:references:
 mime-version:content-transfer-encoding;
 bh=ZjGJ4WcG3yKL50dbadwe0EZsqgXhKuNkggYfoE/2vaU=;
 b=D54VtoHYJVfZQJ0vsYptgjGHDCESA3QgLiJGXYG4AS+q3cFHWOQOmTKI
 3NOgYerqoeBq23aI1wKe/O6Xn0k9uX7rey8QcRDMBtq60TTZfs+B41aw8
 zQLUT27Rltog0XLXDzAKB0WGQmsIlBMe/3mZG+2KKyeAzUegaOdqhl4rN
 cgfUi0qM7S6Eq0Z7b+kCHLX7zVT8PIqZHoBaOswi1fjhQxyCr7X1dWjdj
 Fy9V/T924a2viJWIvh9aiVkgSy5S0FbIKvrDRU+s4QE8uk9pSN2fNFuY/
 ir2+1GgN00fAT0gOY0P7LDWjiUintYphZYrUc+EkV8xfFUVM5cp9JeIjJ Q==;
X-CSE-ConnectionGUID: IhgFrsvIRPeW0IGMPK5nxg==
X-CSE-MsgGUID: uKecnEaQR1ySmeH4nY4kwg==
X-IronPort-AV: E=McAfee;i="6700,10204,11197"; a="42811728"
X-IronPort-AV: E=Sophos;i="6.10,233,1719903600"; d="scan'208";a="42811728"
Received: from fmviesa008.fm.intel.com ([10.60.135.148])
 by orvoesa102.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 16 Sep 2024 09:24:27 -0700
X-CSE-ConnectionGUID: NPrhm+qzTJWtXndHfPSi7w==
X-CSE-MsgGUID: A2AVM8EoTfCdRw2DrkzwLA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.10,233,1719903600"; d="scan'208";a="69029962"
Received: from stinkpipe.fi.intel.com (HELO stinkbox) ([10.237.72.74])
 by fmviesa008.fm.intel.com with SMTP; 16 Sep 2024 09:24:24 -0700
Received: by stinkbox (sSMTP sendmail emulation);
 Mon, 16 Sep 2024 19:24:24 +0300
From: Ville Syrjala <ville.syrjala@linux.intel.com>
To: intel-gfx@lists.freedesktop.org
Subject: [PATCH 4/7] drm/i915: Clean up intel_wm_need_update()
Date: Mon, 16 Sep 2024 19:24:10 +0300
Message-ID: <20240916162413.8555-5-ville.syrjala@linux.intel.com>
X-Mailer: git-send-email 2.44.2
In-Reply-To: <20240916162413.8555-1-ville.syrjala@linux.intel.com>
References: <20240916162413.8555-1-ville.syrjala@linux.intel.com>
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

intel_wm_need_update() is a mess when it comes to variable
names and constness. The checks also keep alternating randomly
between 'old != cur' vs. 'cur != old'. Clean it all up.

Signed-off-by: Ville Syrjälä <ville.syrjala@linux.intel.com>
---
 .../gpu/drm/i915/display/intel_atomic_plane.c | 20 +++++++++----------
 1 file changed, 10 insertions(+), 10 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_atomic_plane.c b/drivers/gpu/drm/i915/display/intel_atomic_plane.c
index b5bbcc773ec0..2aeb4cd5b5a1 100644
--- a/drivers/gpu/drm/i915/display/intel_atomic_plane.c
+++ b/drivers/gpu/drm/i915/display/intel_atomic_plane.c
@@ -393,22 +393,22 @@ void intel_plane_set_invisible(struct intel_crtc_state *crtc_state,
 }
 
 /* FIXME nuke when all wm code is atomic */
-static bool intel_wm_need_update(const struct intel_plane_state *cur,
-				 struct intel_plane_state *new)
+static bool intel_wm_need_update(const struct intel_plane_state *old_plane_state,
+				 const struct intel_plane_state *new_plane_state)
 {
 	/* Update watermarks on tiling or size changes. */
-	if (new->uapi.visible != cur->uapi.visible)
+	if (old_plane_state->uapi.visible != new_plane_state->uapi.visible)
 		return true;
 
-	if (!cur->hw.fb || !new->hw.fb)
+	if (!old_plane_state->hw.fb || !new_plane_state->hw.fb)
 		return false;
 
-	if (cur->hw.fb->modifier != new->hw.fb->modifier ||
-	    cur->hw.rotation != new->hw.rotation ||
-	    drm_rect_width(&new->uapi.src) != drm_rect_width(&cur->uapi.src) ||
-	    drm_rect_height(&new->uapi.src) != drm_rect_height(&cur->uapi.src) ||
-	    drm_rect_width(&new->uapi.dst) != drm_rect_width(&cur->uapi.dst) ||
-	    drm_rect_height(&new->uapi.dst) != drm_rect_height(&cur->uapi.dst))
+	if (old_plane_state->hw.fb->modifier != new_plane_state->hw.fb->modifier ||
+	    old_plane_state->hw.rotation != new_plane_state->hw.rotation ||
+	    drm_rect_width(&old_plane_state->uapi.src) != drm_rect_width(&new_plane_state->uapi.src) ||
+	    drm_rect_height(&old_plane_state->uapi.src) != drm_rect_height(&new_plane_state->uapi.src) ||
+	    drm_rect_width(&old_plane_state->uapi.dst) != drm_rect_width(&new_plane_state->uapi.dst) ||
+	    drm_rect_height(&old_plane_state->uapi.dst) != drm_rect_height(&new_plane_state->uapi.dst))
 		return true;
 
 	return false;
-- 
2.44.2

