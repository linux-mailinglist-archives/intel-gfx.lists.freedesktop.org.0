Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id DB290A74688
	for <lists+intel-gfx@lfdr.de>; Fri, 28 Mar 2025 10:44:08 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 46BFF10E9C4;
	Fri, 28 Mar 2025 09:44:07 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="nj0fs9qj";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.15])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 630EE10E9C2;
 Fri, 28 Mar 2025 09:44:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1743155046; x=1774691046;
 h=from:date:subject:mime-version:content-transfer-encoding:
 message-id:references:in-reply-to:to:cc;
 bh=qxz1RaYnDVyG6YLXgFcywoizd+AxvxWD7Tc17GPbCyw=;
 b=nj0fs9qjYYrRe8S22h4pHZxVyEphrIXD9yVsxGvZogKr6wPf6oQEa/Ip
 DoZix1d8uNcfMahHYCjFziscUpBKvVQxSbLy2NRM8QSnQ99OVaH7BQ8Ex
 VrCVqwJHA2jSxGlEiX1VUOy3MLrDjh4tRIE3XTdGgYGw6HJ8xzUSXOGKj
 Lf1DrbdXzVR3FNb1hXG8vLISXdYa64y2Fi8ebYkiubOWf4bWHYJQWArIH
 C3AGFX/KcWd6VsnlfuJ94NFD5hYUUKeQCFY6OkLQnZKwU472n06DQUTU+
 AksUCxndvdwDfcK1qypQa2Gr5l/puOHA3CR9oqK+U21lMlViMS+gK1cJw g==;
X-CSE-ConnectionGUID: XZd+biI7QBOsbONnQaZHMQ==
X-CSE-MsgGUID: 2qq4T8PSTQ+TXoqTFagDCQ==
X-IronPort-AV: E=McAfee;i="6700,10204,11385"; a="48170274"
X-IronPort-AV: E=Sophos;i="6.14,283,1736841600"; d="scan'208";a="48170274"
Received: from fmviesa003.fm.intel.com ([10.60.135.143])
 by orvoesa107.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 28 Mar 2025 02:44:05 -0700
X-CSE-ConnectionGUID: hxDqW90cRn2aRL+A7kDaYQ==
X-CSE-MsgGUID: epbAstjUSa6hiixoQS+ltA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.14,283,1736841600"; d="scan'208";a="129547527"
Received: from srr4-3-linux-106-armuthy.iind.intel.com ([10.190.238.56])
 by fmviesa003.fm.intel.com with ESMTP; 28 Mar 2025 02:44:02 -0700
From: Arun R Murthy <arun.r.murthy@intel.com>
Date: Fri, 28 Mar 2025 14:59:15 +0530
Subject: [PATCH v10 3/4] drm/i915/display: Acomodate format check in
 can_async_flip()
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20250328-asyn-v10-3-8b8ad12cfc97@intel.com>
References: <20250328-asyn-v10-0-8b8ad12cfc97@intel.com>
In-Reply-To: <20250328-asyn-v10-0-8b8ad12cfc97@intel.com>
To: dri-devel@lists.freedesktop.org, intel-gfx@lists.freedesktop.org, 
 intel-xe@lists.freedesktop.org
Cc: Jani Nikula <jani.nikula@linux.intel.com>, 
 chaitanya.kumar.borah@intel.com, ville.syrjala@intel.com, 
 Arun R Murthy <arun.r.murthy@intel.com>
X-Mailer: b4 0.15-dev
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

The function pointer can_async_flip() checks for async supported
modifier, add format support check also in the same function.

Signed-off-by: Arun R Murthy <arun.r.murthy@intel.com>
---
 drivers/gpu/drm/i915/display/i9xx_plane.c          |  4 ++--
 drivers/gpu/drm/i915/display/intel_atomic_plane.c  | 11 ++++++++++-
 drivers/gpu/drm/i915/display/intel_atomic_plane.h  |  3 ++-
 drivers/gpu/drm/i915/display/intel_display.c       | 14 ++++----------
 drivers/gpu/drm/i915/display/skl_universal_plane.c |  2 +-
 5 files changed, 19 insertions(+), 15 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/i9xx_plane.c b/drivers/gpu/drm/i915/display/i9xx_plane.c
index 5e8344fdfc28a311dc0632bb848a0e08f9e6c6d2..20c47de6d8bfd1d8ddafae02ed68370df799e22b 100644
--- a/drivers/gpu/drm/i915/display/i9xx_plane.c
+++ b/drivers/gpu/drm/i915/display/i9xx_plane.c
@@ -828,7 +828,7 @@ unsigned int vlv_plane_min_alignment(struct intel_plane *plane,
 {
 	struct intel_display *display = to_intel_display(plane);
 
-	if (intel_plane_can_async_flip(plane, fb->modifier))
+	if (intel_plane_can_async_flip(plane, fb->format->format, fb->modifier))
 		return 256 * 1024;
 
 	/* FIXME undocumented so not sure what's actually needed */
@@ -852,7 +852,7 @@ static unsigned int g4x_primary_min_alignment(struct intel_plane *plane,
 {
 	struct intel_display *display = to_intel_display(plane);
 
-	if (intel_plane_can_async_flip(plane, fb->modifier))
+	if (intel_plane_can_async_flip(plane, fb->format->format, fb->modifier))
 		return 256 * 1024;
 
 	if (intel_scanout_needs_vtd_wa(display))
diff --git a/drivers/gpu/drm/i915/display/intel_atomic_plane.c b/drivers/gpu/drm/i915/display/intel_atomic_plane.c
index 7276179df878658b7053fe6d8dc37b69f19625e3..5260b9e723af3f654cb36512fe0b5368523082e6 100644
--- a/drivers/gpu/drm/i915/display/intel_atomic_plane.c
+++ b/drivers/gpu/drm/i915/display/intel_atomic_plane.c
@@ -174,8 +174,17 @@ bool intel_plane_needs_physical(struct intel_plane *plane)
 		DISPLAY_INFO(display)->cursor_needs_physical;
 }
 
-bool intel_plane_can_async_flip(struct intel_plane *plane, u64 modifier)
+bool intel_plane_can_async_flip(struct intel_plane *plane, u32 format,
+				u64 modifier)
 {
+	if (intel_format_info_is_yuv_semiplanar(drm_format_info(format), modifier)
+	    || format == DRM_FORMAT_C8) {
+		drm_dbg_kms(plane->base.dev,
+			    "[PLANE:%d:%s] Planar formats do not support async flips\n",
+			    plane->base.base.id, plane->base.name);
+		return false;
+	}
+
 	return plane->can_async_flip && plane->can_async_flip(modifier);
 }
 
diff --git a/drivers/gpu/drm/i915/display/intel_atomic_plane.h b/drivers/gpu/drm/i915/display/intel_atomic_plane.h
index 6efac923dcbc757e6f68564cbef2919c920f13cb..772a12aa9c6997d77b9393f964e91f3e8747d149 100644
--- a/drivers/gpu/drm/i915/display/intel_atomic_plane.h
+++ b/drivers/gpu/drm/i915/display/intel_atomic_plane.h
@@ -21,7 +21,8 @@ enum plane_id;
 
 struct intel_plane *
 intel_crtc_get_plane(struct intel_crtc *crtc, enum plane_id plane_id);
-bool intel_plane_can_async_flip(struct intel_plane *plane, u64 modifier);
+bool intel_plane_can_async_flip(struct intel_plane *plane, u32 format,
+				u64 modifier);
 unsigned int intel_adjusted_rate(const struct drm_rect *src,
 				 const struct drm_rect *dst,
 				 unsigned int rate);
diff --git a/drivers/gpu/drm/i915/display/intel_display.c b/drivers/gpu/drm/i915/display/intel_display.c
index ee7812126129227971be89d3a79f944155620b03..ff349355ac95a039272f2fe174034ca06a555249 100644
--- a/drivers/gpu/drm/i915/display/intel_display.c
+++ b/drivers/gpu/drm/i915/display/intel_display.c
@@ -5998,22 +5998,16 @@ static int intel_async_flip_check_hw(struct intel_atomic_state *state, struct in
 		if (!plane->async_flip)
 			continue;
 
-		if (!intel_plane_can_async_flip(plane, new_plane_state->hw.fb->modifier)) {
+		if (!intel_plane_can_async_flip(plane, new_plane_state->hw.fb->format->format,
+						new_plane_state->hw.fb->modifier)) {
 			drm_dbg_kms(display->drm,
-				    "[PLANE:%d:%s] Modifier 0x%llx does not support async flip\n",
+				    "[PLANE:%d:%s] Format %p4cc Modifier 0x%llx does not support async flip\n",
 				    plane->base.base.id, plane->base.name,
+				    &new_plane_state->hw.fb->format->format,
 				    new_plane_state->hw.fb->modifier);
 			return -EINVAL;
 		}
 
-		if (intel_format_info_is_yuv_semiplanar(new_plane_state->hw.fb->format,
-							new_plane_state->hw.fb->modifier)) {
-			drm_dbg_kms(display->drm,
-				    "[PLANE:%d:%s] Planar formats do not support async flips\n",
-				    plane->base.base.id, plane->base.name);
-			return -EINVAL;
-		}
-
 		/*
 		 * We turn the first async flip request into a sync flip
 		 * so that we can reconfigure the plane (eg. change modifier).
diff --git a/drivers/gpu/drm/i915/display/skl_universal_plane.c b/drivers/gpu/drm/i915/display/skl_universal_plane.c
index 8739195aba696d13b30e1b978c8b2bb5e188119b..8f6170a5c108a000582f3415f78bad279254d8cf 100644
--- a/drivers/gpu/drm/i915/display/skl_universal_plane.c
+++ b/drivers/gpu/drm/i915/display/skl_universal_plane.c
@@ -601,7 +601,7 @@ static u32 tgl_plane_min_alignment(struct intel_plane *plane,
 	 * Figure out what's going on here...
 	 */
 	if (display->platform.alderlake_p &&
-	    intel_plane_can_async_flip(plane, fb->modifier))
+	    intel_plane_can_async_flip(plane, fb->format->format, fb->modifier))
 		return mult * 16 * 1024;
 
 	switch (fb->modifier) {

-- 
2.25.1

