Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id BDF27C413C5
	for <lists+intel-gfx@lfdr.de>; Fri, 07 Nov 2025 19:12:20 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id D94ED10EB8B;
	Fri,  7 Nov 2025 18:11:56 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="IcLRn6Sy";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.18])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 96D6510EB81;
 Fri,  7 Nov 2025 18:11:55 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1762539116; x=1794075116;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=W8Bb9Xysdd9Yjh0CoRGqodwedPXDeQaPlaSF288yGdQ=;
 b=IcLRn6Sy36e1A+MFjlTHQ7l19D3srqfd1OMt1ibzJBjquAO9s1cxb3Ap
 TJBwIzre8r/zr+vjEb8ogdt6VtOHRzLsLHjWQiV01JZ+qaL+RVF51z7mx
 q0aYe6RtLe3Uei/Ot0V0EmBDecv/te3kHWHj+o+2fVFemgxgMdUOC8Oft
 iqG+N+ESgTeYjkfjVL6cCJz+upIynkLzrF5DDmgZzmMgBKOsb4bgnf6lj
 Rr0g7EmtEymUY+h2BKhVG5dmlZPRhw/4mvyikUTr4FC+Z4zn2b+GGmTlV
 AVzzXYlcTqcYo260ArnDHSe0Swvr78V+nXhkKPVFCKYJ6D0hQ31DNKgys A==;
X-CSE-ConnectionGUID: /l9BfcgUQtO2tSTifKBZYA==
X-CSE-MsgGUID: /dtiXZgARfmL3cnjLx6p5Q==
X-IronPort-AV: E=McAfee;i="6800,10657,11606"; a="64732929"
X-IronPort-AV: E=Sophos;i="6.19,287,1754982000"; d="scan'208";a="64732929"
Received: from orviesa007.jf.intel.com ([10.64.159.147])
 by orvoesa110.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 07 Nov 2025 10:11:55 -0800
X-CSE-ConnectionGUID: qL1QRSo9S46XPYaf7dFMcQ==
X-CSE-MsgGUID: sVvvPyakQKK9efhl45iVTw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.19,287,1754982000"; d="scan'208";a="188040251"
Received: from dalessan-mobl3.ger.corp.intel.com (HELO localhost)
 ([10.245.245.106])
 by orviesa007-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 07 Nov 2025 10:11:54 -0800
From: Ville Syrjala <ville.syrjala@linux.intel.com>
To: intel-gfx@lists.freedesktop.org
Cc: intel-xe@lists.freedesktop.org
Subject: [PATCH 6/9] drm/i915/wm: Use drm_get_format_info() in SKL+ cursor DDB
 allocation
Date: Fri,  7 Nov 2025 20:11:23 +0200
Message-ID: <20251107181126.5743-7-ville.syrjala@linux.intel.com>
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

Replace the technically inaccurate drm_format_info() with the
accurate drm_get_format_info() in the SKL+ cursor DDB
allocation code.

Since we're only interested in the linear modifier here, the two
functions do actually return the same information. But let's not
use drm_format_info() to avoid setting a bad examples.

Signed-off-by: Ville Syrjälä <ville.syrjala@linux.intel.com>
---
 drivers/gpu/drm/i915/display/skl_watermark.c | 12 +++++++++---
 1 file changed, 9 insertions(+), 3 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/skl_watermark.c b/drivers/gpu/drm/i915/display/skl_watermark.c
index 36a266f882d1..16d74ab3a2b5 100644
--- a/drivers/gpu/drm/i915/display/skl_watermark.c
+++ b/drivers/gpu/drm/i915/display/skl_watermark.c
@@ -635,15 +635,21 @@ skl_cursor_allocation(const struct intel_crtc_state *crtc_state,
 {
 	struct intel_display *display = to_intel_display(crtc_state);
 	struct intel_plane *plane = to_intel_plane(crtc_state->uapi.crtc->cursor);
+	const struct drm_format_info *info;
 	struct skl_wm_level wm = {};
 	int ret, min_ddb_alloc = 0;
 	struct skl_wm_params wp;
+	u64 modifier;
+	u32 format;
 	int level;
 
+	format = DRM_FORMAT_ARGB8888;
+	modifier = DRM_FORMAT_MOD_LINEAR;
+
+	info  = drm_get_format_info(display->drm, format, modifier);
+
 	ret = skl_compute_wm_params(crtc_state, 256,
-				    drm_format_info(DRM_FORMAT_ARGB8888),
-				    DRM_FORMAT_MOD_LINEAR,
-				    DRM_MODE_ROTATE_0,
+				    info, modifier, DRM_MODE_ROTATE_0,
 				    crtc_state->pixel_rate, &wp, 0, 0);
 	drm_WARN_ON(display->drm, ret);
 
-- 
2.49.1

