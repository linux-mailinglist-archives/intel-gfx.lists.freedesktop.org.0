Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id C3A51A2B1C7
	for <lists+intel-gfx@lfdr.de>; Thu,  6 Feb 2025 19:56:16 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 698C610E92C;
	Thu,  6 Feb 2025 18:56:15 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="RkGOixgE";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.21])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 78A8310E92B;
 Thu,  6 Feb 2025 18:56:14 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1738868174; x=1770404174;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=t4xvdKVLDqBmHscvK54fU196xmhaa+ZR70H+E+sm/Nk=;
 b=RkGOixgEZ4zlA1UZV6QQo8uIU0doSRweb+54n+roCwgUZhnwiULlsMi2
 W/WjQY5Rs7XTf22FFRbFyBw3eCWFr+4XKdWA0Sxcg7gML124i8g6Gep4p
 vJzQBQcyKfxKz/NJ0aR8Ra3CGJMLA9UAdGbmHotY7MDr1VK2U2mgsCcV4
 I3kK3z4uLk5pDh46DQSuA3yf6NNWqBO+BPE7y24YigE7ZASw6tbovljbh
 cgDg4K8XG3AwstZMKvrQqk1oQDx25z76pN+IHUPoIc0iZFdVDhY1GpK8a
 yKDTUkbq3oBdJvf3BXGzMBwdjgeuvpNDv8klnU9AdMYmFPghLxXz7qEl+ w==;
X-CSE-ConnectionGUID: l4Bhb7YhTMmkDBWAIGeP4Q==
X-CSE-MsgGUID: uLwhSzVySdmrMi5YkA/2Ag==
X-IronPort-AV: E=McAfee;i="6700,10204,11336"; a="39395073"
X-IronPort-AV: E=Sophos;i="6.13,265,1732608000"; d="scan'208";a="39395073"
Received: from fmviesa008.fm.intel.com ([10.60.135.148])
 by orvoesa113.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 06 Feb 2025 10:56:14 -0800
X-CSE-ConnectionGUID: kNul86A1TEaCbAI81rl9gg==
X-CSE-MsgGUID: VoQLouv0TJW4zUQquf/PqQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.13,265,1732608000"; d="scan'208";a="111499639"
Received: from stinkpipe.fi.intel.com (HELO stinkbox) ([10.237.72.74])
 by fmviesa008.fm.intel.com with SMTP; 06 Feb 2025 10:56:11 -0800
Received: by stinkbox (sSMTP sendmail emulation);
 Thu, 06 Feb 2025 20:56:10 +0200
From: Ville Syrjala <ville.syrjala@linux.intel.com>
To: intel-gfx@lists.freedesktop.org
Cc: intel-xe@lists.freedesktop.org,
	Jani Nikula <jani.nikula@intel.com>
Subject: [PATCH v2 11/12] drm/i915: Use DRM_RECT_FMT & co. for plane debugs
Date: Thu,  6 Feb 2025 20:55:32 +0200
Message-ID: <20250206185533.32306-12-ville.syrjala@linux.intel.com>
X-Mailer: git-send-email 2.45.3
In-Reply-To: <20250206185533.32306-1-ville.syrjala@linux.intel.com>
References: <20250206185533.32306-1-ville.syrjala@linux.intel.com>
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

Reviewed-by: Jani Nikula <jani.nikula@intel.com>
Signed-off-by: Ville Syrjälä <ville.syrjala@linux.intel.com>
---
 drivers/gpu/drm/i915/display/intel_atomic_plane.c | 11 +++++------
 1 file changed, 5 insertions(+), 6 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_atomic_plane.c b/drivers/gpu/drm/i915/display/intel_atomic_plane.c
index 651f81ed85ab..3a474652abaa 100644
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

