Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 4B8CB4B20FA
	for <lists+intel-gfx@lfdr.de>; Fri, 11 Feb 2022 10:06:46 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 3423A10EA2D;
	Fri, 11 Feb 2022 09:06:44 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga07.intel.com (mga07.intel.com [134.134.136.100])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 2FA3C10EA2D
 for <intel-gfx@lists.freedesktop.org>; Fri, 11 Feb 2022 09:06:42 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1644570402; x=1676106402;
 h=from:to:subject:date:message-id:in-reply-to:references:
 mime-version:content-transfer-encoding;
 bh=8kojrdjKEW9yvq3VPpZNW+PLeXbxvir6hGlw1/8baKo=;
 b=gq0sgO3UQOc1FRx1FuHiomXXcbvqKTonAkVDOFwJ4xC+Qa2iCGj/9mzY
 YrbsLeqIC/N8ktE7rBAQFsE/joIfcLPa4sCz/yxIZT9ocVlDCkaKpWFs6
 I0RSZVp9v2/ts+ib8FgqsHNlzFTcH7o8YXl4VmKWX0oSRc0IwB6cMRTHx
 mDzWDp/2xlyC50OcRojqZi1c81SFXqruxiH207xXB/pPhwDFfOpDdk9AB
 Usd+w57ehi+E0EoDQ2agYUEuB4y6UkXSUhKykChsnsCKUwjqgp7QpGQ8/
 w2K1oet0DCz/UaMPqVTMLEnBehNRokJfTN0fXcYgrDRpHHrZvY+yTEfhw w==;
X-IronPort-AV: E=McAfee;i="6200,9189,10254"; a="312977791"
X-IronPort-AV: E=Sophos;i="5.88,360,1635231600"; d="scan'208";a="312977791"
Received: from orsmga007.jf.intel.com ([10.7.209.58])
 by orsmga105.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 11 Feb 2022 01:06:41 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.88,360,1635231600"; d="scan'208";a="526883719"
Received: from stinkpipe.fi.intel.com (HELO stinkbox) ([10.237.72.151])
 by orsmga007.jf.intel.com with SMTP; 11 Feb 2022 01:06:39 -0800
Received: by stinkbox (sSMTP sendmail emulation);
 Fri, 11 Feb 2022 11:06:38 +0200
From: Ville Syrjala <ville.syrjala@linux.intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Fri, 11 Feb 2022 11:06:24 +0200
Message-Id: <20220211090629.15555-4-ville.syrjala@linux.intel.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20220211090629.15555-1-ville.syrjala@linux.intel.com>
References: <20220211090629.15555-1-ville.syrjala@linux.intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH 3/8] drm/i915: Introduce scaled_planes bitmask
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

Add another plane bitmask, this time tracking which planes are
scaled. This is going to be useful in ILK watermark computations,
and skl+ pipe scaler assignments.

Signed-off-by: Ville Syrjälä <ville.syrjala@linux.intel.com>
---
 drivers/gpu/drm/i915/display/intel_atomic_plane.c  | 5 +++++
 drivers/gpu/drm/i915/display/intel_display_types.h | 1 +
 2 files changed, 6 insertions(+)

diff --git a/drivers/gpu/drm/i915/display/intel_atomic_plane.c b/drivers/gpu/drm/i915/display/intel_atomic_plane.c
index bba2f105b7dd..79720bd5a485 100644
--- a/drivers/gpu/drm/i915/display/intel_atomic_plane.c
+++ b/drivers/gpu/drm/i915/display/intel_atomic_plane.c
@@ -323,6 +323,7 @@ void intel_plane_set_invisible(struct intel_crtc_state *crtc_state,
 	struct intel_plane *plane = to_intel_plane(plane_state->uapi.plane);
 
 	crtc_state->active_planes &= ~BIT(plane->id);
+	crtc_state->scaled_planes &= ~BIT(plane->id);
 	crtc_state->nv12_planes &= ~BIT(plane->id);
 	crtc_state->c8_planes &= ~BIT(plane->id);
 	crtc_state->data_rate[plane->id] = 0;
@@ -536,6 +537,10 @@ int intel_plane_atomic_check_with_state(const struct intel_crtc_state *old_crtc_
 	if (new_plane_state->uapi.visible)
 		new_crtc_state->active_planes |= BIT(plane->id);
 
+	if (new_plane_state->uapi.visible &&
+	    intel_plane_is_scaled(new_plane_state))
+		new_crtc_state->scaled_planes |= BIT(plane->id);
+
 	if (new_plane_state->uapi.visible &&
 	    intel_format_info_is_yuv_semiplanar(fb->format, fb->modifier))
 		new_crtc_state->nv12_planes |= BIT(plane->id);
diff --git a/drivers/gpu/drm/i915/display/intel_display_types.h b/drivers/gpu/drm/i915/display/intel_display_types.h
index 60e15226a8cb..7a5c1e334449 100644
--- a/drivers/gpu/drm/i915/display/intel_display_types.h
+++ b/drivers/gpu/drm/i915/display/intel_display_types.h
@@ -1168,6 +1168,7 @@ struct intel_crtc_state {
 
 	/* bitmask of actually visible planes (enum plane_id) */
 	u8 active_planes;
+	u8 scaled_planes;
 	u8 nv12_planes;
 	u8 c8_planes;
 
-- 
2.34.1

