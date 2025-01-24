Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 06912A1BA69
	for <lists+intel-gfx@lfdr.de>; Fri, 24 Jan 2025 17:31:17 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 97B1010E9FE;
	Fri, 24 Jan 2025 16:31:15 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="bsgisZcQ";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.12])
 by gabe.freedesktop.org (Postfix) with ESMTPS id EDEFE10E9EE;
 Fri, 24 Jan 2025 16:31:14 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1737736275; x=1769272275;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=pv4N+8iWVvxpgNb6OyUINDD9vYTWvDnt9vIdWNYWMXk=;
 b=bsgisZcQvjwHuBhiSPcQVkjg0o7RTdhSR6fVjGUXhRAlrkVRN1seEGvz
 Ls5TgRYZenQ7sIcBYSBZF+PBDdybP0cBT3tCap2iTjXx8zQnHedRKAtMV
 Cvwb0LiN2deg2kdiyST+49VBb8SFlZRk9pbTGYc25MAA/4LLUV0/P3mZt
 64spLJUgFWclUPFNa4z1VQM/JyySuGO6tiQJPyDQuAbXkew+nCO/g0omp
 f6P8V4inqGkHMJGL0mRCa0tPun7wOAyfIwvoMBtZ0vTTsR9wtFy/5Aw+G
 XRa3aJRLYSXvdWNdcDlIs4AJS9UMOkEm/FRZ2XzQi/A+lyBr1vGbCEUAZ w==;
X-CSE-ConnectionGUID: QnZ9UXO8T8ST04XNKm7OhQ==
X-CSE-MsgGUID: HKVwN6IZQVOuMVdPOv81SA==
X-IronPort-AV: E=McAfee;i="6700,10204,11325"; a="42200470"
X-IronPort-AV: E=Sophos;i="6.13,231,1732608000"; d="scan'208";a="42200470"
Received: from fmviesa008.fm.intel.com ([10.60.135.148])
 by fmvoesa106.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 24 Jan 2025 08:31:14 -0800
X-CSE-ConnectionGUID: kXQaFrxuTbeqYJgx7ffs/w==
X-CSE-MsgGUID: +g8/LSDZS66QqJReR646jA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.13,231,1732608000"; d="scan'208";a="107925952"
Received: from stinkpipe.fi.intel.com (HELO stinkbox) ([10.237.72.74])
 by fmviesa008.fm.intel.com with SMTP; 24 Jan 2025 08:31:13 -0800
Received: by stinkbox (sSMTP sendmail emulation);
 Fri, 24 Jan 2025 18:31:11 +0200
From: Ville Syrjala <ville.syrjala@linux.intel.com>
To: intel-gfx@lists.freedesktop.org
Cc: intel-xe@lists.freedesktop.org
Subject: [PATCH 10/11] drm/i915: Use DRM_RECT_FMT & co. for plane debugs
Date: Fri, 24 Jan 2025 18:30:39 +0200
Message-ID: <20250124163040.8886-11-ville.syrjala@linux.intel.com>
X-Mailer: git-send-email 2.45.3
In-Reply-To: <20250124163040.8886-1-ville.syrjala@linux.intel.com>
References: <20250124163040.8886-1-ville.syrjala@linux.intel.com>
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

Switch the plane debugs to use DRM_RECT_FMT & co. instead
of drm_rect_debug_print() so that the debugs go on the same line.

Signed-off-by: Ville Syrjälä <ville.syrjala@linux.intel.com>
---
 drivers/gpu/drm/i915/display/intel_atomic_plane.c | 11 +++++------
 1 file changed, 5 insertions(+), 6 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_atomic_plane.c b/drivers/gpu/drm/i915/display/intel_atomic_plane.c
index c558143f4f82..f5ea6712dacf 100644
--- a/drivers/gpu/drm/i915/display/intel_atomic_plane.c
+++ b/drivers/gpu/drm/i915/display/intel_atomic_plane.c
@@ -944,9 +944,9 @@ int intel_atomic_plane_check_clipping(struct intel_plane_state *plane_state,
 	hscale = drm_rect_calc_hscale(src, dst, min_scale, max_scale);
 	vscale = drm_rect_calc_vscale(src, dst, min_scale, max_scale);
 	if (hscale < 0 || vscale < 0) {
-		drm_dbg_kms(&i915->drm, "Invalid scaling of plane\n");
-		drm_rect_debug_print("src: ", src, true);
-		drm_rect_debug_print("dst: ", dst, false);
+		drm_dbg_kms(&i915->drm,
+			    "Invalid scaling of plane " DRM_RECT_FP_FMT " -> " DRM_RECT_FMT "\n",
+			    DRM_RECT_FP_ARG(src), DRM_RECT_ARG(dst));
 		return -ERANGE;
 	}
 
@@ -960,9 +960,8 @@ int intel_atomic_plane_check_clipping(struct intel_plane_state *plane_state,
 
 	if (!can_position && plane_state->uapi.visible &&
 	    !drm_rect_equals(dst, clip)) {
-		drm_dbg_kms(&i915->drm, "Plane must cover entire CRTC\n");
-		drm_rect_debug_print("dst: ", dst, false);
-		drm_rect_debug_print("clip: ", clip, false);
+		drm_dbg_kms(&i915->drm, "Plane (" DRM_RECT_FMT ") must cover entire CRTC (" DRM_RECT_FMT ")\n",
+			    DRM_RECT_ARG(dst), DRM_RECT_ARG(clip));
 		return -EINVAL;
 	}
 
-- 
2.45.3

