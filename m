Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 029D6A1DB35
	for <lists+intel-gfx@lfdr.de>; Mon, 27 Jan 2025 18:22:21 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 360F310E593;
	Mon, 27 Jan 2025 17:22:18 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="Pc3k3Gvw";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.17])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 90DA310E5A8
 for <intel-gfx@lists.freedesktop.org>; Mon, 27 Jan 2025 17:22:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1737998536; x=1769534536;
 h=from:to:subject:date:message-id:in-reply-to:references:
 mime-version:content-transfer-encoding;
 bh=TzrSRIXTjV2JmMWXxB4c/s8PDhICdQcutbvDIZ6f7wc=;
 b=Pc3k3GvwBRFmp3KQMN/kOahx77YFVCenHBd+7Leu7Xq/uvsi5r42iBPz
 omFH6F1vSetDAzkQflSMjmwAGdVRiXLLy/pdE4epup51D+QC/ONqPnItA
 30bfYhUE7cYooSgjIDw9m0WmdbcV3FMYJPNjX3KS1mqVaq2Iu9GM6FkZA
 XX0SrXiz46tqc4i/5KUN133C+OcuifJbW7zO4PpZmFEcQp7ldkEmUVZSm
 1OBsRE0O8CjJUb4rtX5pmAjQkXDhUSBnJg5liT8aV5pbZnoXdUa3XYxRh
 9dBMej6t0bq7/nu+tqOrAkZ9DP75IaCLyB9bZooVHkT+19oSfUboKawCB A==;
X-CSE-ConnectionGUID: P3eLDmIAQha/NDuGSoTtJw==
X-CSE-MsgGUID: qRQwwEs2Q9a7m9qQ8HbIpw==
X-IronPort-AV: E=McAfee;i="6700,10204,11328"; a="38501392"
X-IronPort-AV: E=Sophos;i="6.13,239,1732608000"; d="scan'208";a="38501392"
Received: from fmviesa008.fm.intel.com ([10.60.135.148])
 by orvoesa109.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 27 Jan 2025 09:22:16 -0800
X-CSE-ConnectionGUID: 0XJ3XTlqQkWjs8MlzDMhKA==
X-CSE-MsgGUID: okzL5YlCRbmiQmdI/xU3Pw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.13,239,1732608000"; d="scan'208";a="108610218"
Received: from stinkpipe.fi.intel.com (HELO stinkbox) ([10.237.72.74])
 by fmviesa008.fm.intel.com with SMTP; 27 Jan 2025 09:22:14 -0800
Received: by stinkbox (sSMTP sendmail emulation);
 Mon, 27 Jan 2025 19:22:13 +0200
From: Ville Syrjala <ville.syrjala@linux.intel.com>
To: intel-gfx@lists.freedesktop.org
Subject: [PATCH 06/11] drm/i915: Remove pointless visible check in
 unlink_nv12_plane()
Date: Mon, 27 Jan 2025 19:21:51 +0200
Message-ID: <20250127172156.21928-7-ville.syrjala@linux.intel.com>
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

visible can't be true when is_y_plane is true. Replace the
bogus check with an WARN_ON(). Flatten the function while
at it.

Signed-off-by: Ville Syrjälä <ville.syrjala@linux.intel.com>
---
 drivers/gpu/drm/i915/display/intel_display.c | 18 +++++++++++-------
 1 file changed, 11 insertions(+), 7 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_display.c b/drivers/gpu/drm/i915/display/intel_display.c
index bc62298b1b49..8004ad20ed0a 100644
--- a/drivers/gpu/drm/i915/display/intel_display.c
+++ b/drivers/gpu/drm/i915/display/intel_display.c
@@ -4405,19 +4405,23 @@ static bool check_single_encoder_cloning(struct intel_atomic_state *state,
 static void unlink_nv12_plane(struct intel_crtc_state *crtc_state,
 			      struct intel_plane_state *plane_state)
 {
+	struct intel_display *display = to_intel_display(plane_state);
 	struct intel_plane *plane = to_intel_plane(plane_state->uapi.plane);
 
 	plane_state->planar_linked_plane = NULL;
 
-	if (plane_state->is_y_plane && !plane_state->uapi.visible) {
-		crtc_state->enabled_planes &= ~BIT(plane->id);
-		crtc_state->active_planes &= ~BIT(plane->id);
-		crtc_state->update_planes |= BIT(plane->id);
-		crtc_state->data_rate[plane->id] = 0;
-		crtc_state->rel_data_rate[plane->id] = 0;
-	}
+	if (!plane_state->is_y_plane)
+		return;
+
+	drm_WARN_ON(display->drm, plane_state->uapi.visible);
 
 	plane_state->is_y_plane = false;
+
+	crtc_state->enabled_planes &= ~BIT(plane->id);
+	crtc_state->active_planes &= ~BIT(plane->id);
+	crtc_state->update_planes |= BIT(plane->id);
+	crtc_state->data_rate[plane->id] = 0;
+	crtc_state->rel_data_rate[plane->id] = 0;
 }
 
 static int icl_check_nv12_planes(struct intel_atomic_state *state,
-- 
2.45.3

