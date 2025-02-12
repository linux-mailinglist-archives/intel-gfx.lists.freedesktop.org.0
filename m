Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 4F21CA32C1B
	for <lists+intel-gfx@lfdr.de>; Wed, 12 Feb 2025 17:43:54 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id D2FCA10E927;
	Wed, 12 Feb 2025 16:43:52 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="PfHfPl7Z";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.9])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 15C7710E927
 for <intel-gfx@lists.freedesktop.org>; Wed, 12 Feb 2025 16:43:51 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1739378631; x=1770914631;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=+F+oybkadsDWgyG+xX8uvpvf9PEo8vURyhSi5puUN6U=;
 b=PfHfPl7Z2/xvux3UcnRuNNiMrUKteVGFlVR0H1/f6QAD9TLI4gALxpts
 l6mlQilze9SbQ7Lm4VtqPHq9MFGyEI85L3roQJBxsQsgZ1UWaiRUvJWce
 zkpgUQrrm9+Zxcf2Owcj17LrATkpmuE9WWsbo53hScOMp0nT4k0Hpx+UY
 FOB3G3O+td0FDhGY57/fBfSbPpQ+wiz+8bxRqdNcaCH3GHK6EXeyyG4pb
 95C7ToLMWrisBKKYlUd0r2Am3Sc31IDrQVrK6+qRCAsfG3oEiGY4rihw1
 mefi8Br97QRPSQ2mZSNDdqIQT+Ulkpfwn7HHdzulsSW31LzMH7q/yBnjT w==;
X-CSE-ConnectionGUID: 1+FAjofrRDe465C/PFnqRg==
X-CSE-MsgGUID: 42ULJQDXSt+yXEj5RBBbiw==
X-IronPort-AV: E=McAfee;i="6700,10204,11343"; a="62515003"
X-IronPort-AV: E=Sophos;i="6.13,280,1732608000"; d="scan'208";a="62515003"
Received: from fmviesa008.fm.intel.com ([10.60.135.148])
 by orvoesa101.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 12 Feb 2025 08:43:51 -0800
X-CSE-ConnectionGUID: 18uUeFVZQzWyBxVwChsz0g==
X-CSE-MsgGUID: 1F82cjizSsC7EAXaChOoZA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.13,280,1732608000"; d="scan'208";a="113082648"
Received: from stinkpipe.fi.intel.com (HELO stinkbox) ([10.237.72.74])
 by fmviesa008.fm.intel.com with SMTP; 12 Feb 2025 08:43:49 -0800
Received: by stinkbox (sSMTP sendmail emulation);
 Wed, 12 Feb 2025 18:43:47 +0200
From: Ville Syrjala <ville.syrjala@linux.intel.com>
To: intel-gfx@lists.freedesktop.org
Cc: Maarten Lankhorst <maarten.lankhorst@linux.intel.com>
Subject: [PATCH v2 06/10] drm/i915: Remove pointless visible check in
 unlink_nv12_plane()
Date: Wed, 12 Feb 2025 18:43:26 +0200
Message-ID: <20250212164330.16891-7-ville.syrjala@linux.intel.com>
X-Mailer: git-send-email 2.45.3
In-Reply-To: <20250212164330.16891-1-ville.syrjala@linux.intel.com>
References: <20250212164330.16891-1-ville.syrjala@linux.intel.com>
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

Reviewed-by: Maarten Lankhorst <maarten.lankhorst@linux.intel.com>
Signed-off-by: Ville Syrjälä <ville.syrjala@linux.intel.com>
---
 drivers/gpu/drm/i915/display/intel_display.c | 18 +++++++++++-------
 1 file changed, 11 insertions(+), 7 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_display.c b/drivers/gpu/drm/i915/display/intel_display.c
index 5ce450550ba8..cccf5d39b34a 100644
--- a/drivers/gpu/drm/i915/display/intel_display.c
+++ b/drivers/gpu/drm/i915/display/intel_display.c
@@ -4413,19 +4413,23 @@ static bool check_single_encoder_cloning(struct intel_atomic_state *state,
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

