Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 21605C413AD
	for <lists+intel-gfx@lfdr.de>; Fri, 07 Nov 2025 19:11:48 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 7621B10EB72;
	Fri,  7 Nov 2025 18:11:46 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="fcjak3gi";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.11])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 7984B10EB6E;
 Fri,  7 Nov 2025 18:11:44 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1762539105; x=1794075105;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=CQWOqA6PxkPnyfrvZhKnRkZRsXtcxSnp0g0vTWBZklw=;
 b=fcjak3gia33aMtX0crrznwb35HZtmpDALoXBFjmBWxZlcnM5SH/cNfk6
 UedwrH7kzSrYZJberORxv9rUXcNy2jcl+h+zLZ5pyjyr04IV3DZy3RxO+
 knF9gzYbA0YdZUYxcsMxi3yWXZcWQhLoNNwwzpgLh//+SpDnEuuhxwYVh
 DBovnyhGrPYogQUuIazF3P5wG9JPZn7mRIEliNMz8p1gNE+mwvhm+ezA4
 wchXjCtadjcRhxmBxzQq07DboD1zs/Xa0uY4l7kErglLnw/MDlzWwS9cc
 GqrsZuqqgOM/V1P46qCBj8T9NG21j3hWIDGgx2vGrQDA+uBWXdqBfo0Tt Q==;
X-CSE-ConnectionGUID: Q6dIE+nCRjuirNMCAfet8Q==
X-CSE-MsgGUID: LQO/YgUwReS4ZrN3v14+6g==
X-IronPort-AV: E=McAfee;i="6800,10657,11606"; a="74987247"
X-IronPort-AV: E=Sophos;i="6.19,287,1754982000"; d="scan'208";a="74987247"
Received: from orviesa004.jf.intel.com ([10.64.159.144])
 by orvoesa103.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 07 Nov 2025 10:11:44 -0800
X-CSE-ConnectionGUID: ojk7xVWQRLOuT4hpoxGthA==
X-CSE-MsgGUID: UeZ2f1qFRHmcfUczgI4LmQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.19,287,1754982000"; d="scan'208";a="192454436"
Received: from dalessan-mobl3.ger.corp.intel.com (HELO localhost)
 ([10.245.245.106])
 by orviesa004-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 07 Nov 2025 10:11:42 -0800
From: Ville Syrjala <ville.syrjala@linux.intel.com>
To: intel-gfx@lists.freedesktop.org
Cc: intel-xe@lists.freedesktop.org
Subject: [PATCH 3/9] drm/i915: Populate fb->format accurately in BIOS FB
 readout
Date: Fri,  7 Nov 2025 20:11:20 +0200
Message-ID: <20251107181126.5743-4-ville.syrjala@linux.intel.com>
X-Mailer: git-send-email 2.49.1
In-Reply-To: <20251107181126.5743-1-ville.syrjala@linux.intel.com>
References: <20251107181126.5743-1-ville.syrjala@linux.intel.com>
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

Use drm_get_format_info() instead of drm_format_info() to populate
fb->format during the BIOS FB readout. The difference being that
drm_get_format_info() knows about compressed formats whereas
drm_format_info() doesn't.

This doesn't actually matter in practice since the BIOS FB should
never be compressed, but no reason we shouldn't use the more accurate
function here anyway.

Signed-off-by: Ville Syrjälä <ville.syrjala@linux.intel.com>
---
 drivers/gpu/drm/i915/display/i9xx_plane.c          | 3 ++-
 drivers/gpu/drm/i915/display/skl_universal_plane.c | 3 ++-
 2 files changed, 4 insertions(+), 2 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/i9xx_plane.c b/drivers/gpu/drm/i915/display/i9xx_plane.c
index b962d9f78b2c..559207b23dc3 100644
--- a/drivers/gpu/drm/i915/display/i9xx_plane.c
+++ b/drivers/gpu/drm/i915/display/i9xx_plane.c
@@ -1203,7 +1203,8 @@ i9xx_get_initial_plane_config(struct intel_crtc *crtc,
 
 	pixel_format = val & DISP_FORMAT_MASK;
 	fourcc = i9xx_format_to_fourcc(pixel_format);
-	fb->format = drm_format_info(fourcc);
+
+	fb->format = drm_get_format_info(display->drm, fourcc, fb->modifier);
 
 	if (display->platform.haswell || display->platform.broadwell) {
 		offset = intel_de_read(display,
diff --git a/drivers/gpu/drm/i915/display/skl_universal_plane.c b/drivers/gpu/drm/i915/display/skl_universal_plane.c
index 0823ab38d1b7..7b17d1024502 100644
--- a/drivers/gpu/drm/i915/display/skl_universal_plane.c
+++ b/drivers/gpu/drm/i915/display/skl_universal_plane.c
@@ -3083,7 +3083,6 @@ skl_get_initial_plane_config(struct intel_crtc *crtc,
 
 	fourcc = skl_format_to_fourcc(pixel_format,
 				      val & PLANE_CTL_ORDER_RGBX, alpha);
-	fb->format = drm_format_info(fourcc);
 
 	tiling = val & PLANE_CTL_TILED_MASK;
 	switch (tiling) {
@@ -3136,6 +3135,8 @@ skl_get_initial_plane_config(struct intel_crtc *crtc,
 		goto error;
 	}
 
+	fb->format = drm_get_format_info(display->drm, fourcc, fb->modifier);
+
 	if (!display->params.enable_dpt &&
 	    intel_fb_modifier_uses_dpt(display, fb->modifier)) {
 		drm_dbg_kms(display->drm, "DPT disabled, skipping initial FB\n");
-- 
2.49.1

