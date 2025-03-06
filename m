Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id E5ED3A55121
	for <lists+intel-gfx@lfdr.de>; Thu,  6 Mar 2025 17:34:47 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 4E33C10EA02;
	Thu,  6 Mar 2025 16:34:46 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="SqyAvnZo";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.10])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 33B7D10EA02
 for <intel-gfx@lists.freedesktop.org>; Thu,  6 Mar 2025 16:34:45 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1741278886; x=1772814886;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=Vf7o+pPu/09LWioYyHjNv+67+CIIJPRCc5rI7cWu584=;
 b=SqyAvnZoE9HhX4LD9M1nYJ6FgM50yqsMf9pEV74/osOUgsxG8OFJtr7B
 D1N44F++bq3WgRfmUZ6WNVJHXfZAdxskXhn7XFASZbFXi2TXI2KiJx4RJ
 8gQOTTf89vYjnFboKYnMJGvs1evBElTaI5mqbOcf0nteeEV5V4etiRtJW
 gTXadYbepTDxBPB288lB3GMKthsiCUHJWfhW4jSDJyzatH8G0TocqFNnL
 FcQNgPM74PSBlpYaLmtIf6aYkonlK5/fzZ7YHkQao+qunju1kPimjbX1E
 soLNiincjyDFR7n9vtLcjzHDW+52BRYJAuwRa7H0/wRiNOHFBF6/qIlLb g==;
X-CSE-ConnectionGUID: Td+IpTjJQyK2Yl6aUCRaXA==
X-CSE-MsgGUID: 3VX8fvv5QP23KJqTTQc1+Q==
X-IronPort-AV: E=McAfee;i="6700,10204,11365"; a="53704339"
X-IronPort-AV: E=Sophos;i="6.14,226,1736841600"; d="scan'208";a="53704339"
Received: from orviesa005.jf.intel.com ([10.64.159.145])
 by fmvoesa104.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 06 Mar 2025 08:34:45 -0800
X-CSE-ConnectionGUID: VjPIJt4STYiiH3q/WWlRuQ==
X-CSE-MsgGUID: cuiQoV6URtircM9iS7z1DQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.12,224,1728975600"; d="scan'208";a="124288992"
Received: from stinkpipe.fi.intel.com (HELO stinkbox) ([10.237.72.74])
 by orviesa005.jf.intel.com with SMTP; 06 Mar 2025 08:34:42 -0800
Received: by stinkbox (sSMTP sendmail emulation);
 Thu, 06 Mar 2025 18:34:42 +0200
From: Ville Syrjala <ville.syrjala@linux.intel.com>
To: intel-gfx@lists.freedesktop.org
Cc: Vinod Govindapillai <vinod.govindapillai@intel.com>
Subject: [PATCH v2 07/18] drm/i915: Add skl_wm_plane_disable_noatomic()
Date: Thu,  6 Mar 2025 18:34:09 +0200
Message-ID: <20250306163420.3961-8-ville.syrjala@linux.intel.com>
X-Mailer: git-send-email 2.45.3
In-Reply-To: <20250306163420.3961-1-ville.syrjala@linux.intel.com>
References: <20250306163420.3961-1-ville.syrjala@linux.intel.com>
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

Add skl_wm_plane_disable_noatomic() which will clear out all
the ddb and wm state for the plane. And let's do this _before_
we call plane->disable_arm() so that it'll actually clear out
the state in the hardware as well.

Currently this won't do anything new for most of the
intel_plane_disable_noatomic() calls since those are done before
wm readout, and thus everything wm/ddb related in the state
will still be zeroed anyway. The only difference will be for
skl_dbuf_sanitize() is happens after wm readout. But I'll be
reordering thigns so that wm readout happens earlier and at that
point this will guarantee that we still clear out the old
wm/ddb junk from the state.

Reviewed-by: Vinod Govindapillai <vinod.govindapillai@intel.com>
Signed-off-by: Ville Syrjälä <ville.syrjala@linux.intel.com>
---
 drivers/gpu/drm/i915/display/intel_display.c |  2 ++
 drivers/gpu/drm/i915/display/skl_watermark.c | 22 ++++++++++++++++++++
 drivers/gpu/drm/i915/display/skl_watermark.h |  2 ++
 3 files changed, 26 insertions(+)

diff --git a/drivers/gpu/drm/i915/display/intel_display.c b/drivers/gpu/drm/i915/display/intel_display.c
index 5d7b28f6009f..3afb85fe8536 100644
--- a/drivers/gpu/drm/i915/display/intel_display.c
+++ b/drivers/gpu/drm/i915/display/intel_display.c
@@ -678,6 +678,8 @@ void intel_plane_disable_noatomic(struct intel_crtc *crtc,
 	intel_set_plane_visible(crtc_state, plane_state, false);
 	intel_plane_fixup_bitmasks(crtc_state);
 
+	skl_wm_plane_disable_noatomic(crtc, plane);
+
 	if ((crtc_state->active_planes & ~BIT(PLANE_CURSOR)) == 0 &&
 	    hsw_ips_disable(crtc_state)) {
 		crtc_state->ips_enabled = false;
diff --git a/drivers/gpu/drm/i915/display/skl_watermark.c b/drivers/gpu/drm/i915/display/skl_watermark.c
index 9584d4da13d0..da7ffcfd9478 100644
--- a/drivers/gpu/drm/i915/display/skl_watermark.c
+++ b/drivers/gpu/drm/i915/display/skl_watermark.c
@@ -3867,6 +3867,28 @@ void skl_wm_crtc_disable_noatomic(struct intel_crtc *crtc)
 	memset(&crtc_state->wm.skl.ddb, 0, sizeof(crtc_state->wm.skl.ddb));
 }
 
+void skl_wm_plane_disable_noatomic(struct intel_crtc *crtc,
+				   struct intel_plane *plane)
+{
+	struct intel_display *display = to_intel_display(crtc);
+	struct intel_crtc_state *crtc_state =
+		to_intel_crtc_state(crtc->base.state);
+
+	if (DISPLAY_VER(display) < 9)
+		return;
+
+	skl_ddb_entry_init(&crtc_state->wm.skl.plane_ddb[plane->id], 0, 0);
+	skl_ddb_entry_init(&crtc_state->wm.skl.plane_ddb[plane->id], 0, 0);
+
+	crtc_state->wm.skl.plane_min_ddb[plane->id] = 0;
+	crtc_state->wm.skl.plane_interim_ddb[plane->id] = 0;
+
+	memset(&crtc_state->wm.skl.raw.planes[plane->id], 0,
+	       sizeof(crtc_state->wm.skl.raw.planes[plane->id]));
+	memset(&crtc_state->wm.skl.optimal.planes[plane->id], 0,
+	       sizeof(crtc_state->wm.skl.optimal.planes[plane->id]));
+}
+
 void intel_wm_state_verify(struct intel_atomic_state *state,
 			   struct intel_crtc *crtc)
 {
diff --git a/drivers/gpu/drm/i915/display/skl_watermark.h b/drivers/gpu/drm/i915/display/skl_watermark.h
index 8c07c11135c7..d9cff6c54310 100644
--- a/drivers/gpu/drm/i915/display/skl_watermark.h
+++ b/drivers/gpu/drm/i915/display/skl_watermark.h
@@ -42,6 +42,8 @@ void intel_wm_state_verify(struct intel_atomic_state *state,
 			   struct intel_crtc *crtc);
 
 void skl_wm_crtc_disable_noatomic(struct intel_crtc *crtc);
+void skl_wm_plane_disable_noatomic(struct intel_crtc *crtc,
+				   struct intel_plane *plane);
 
 void skl_watermark_ipc_init(struct drm_i915_private *i915);
 void skl_watermark_ipc_update(struct drm_i915_private *i915);
-- 
2.45.3

