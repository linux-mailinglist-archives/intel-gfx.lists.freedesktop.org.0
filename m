Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 01089903D73
	for <lists+intel-gfx@lfdr.de>; Tue, 11 Jun 2024 15:33:58 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 89E2F10E641;
	Tue, 11 Jun 2024 13:33:55 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="fclYQqVe";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.16])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 9653610E0AA
 for <intel-gfx@lists.freedesktop.org>; Tue, 11 Jun 2024 13:33:52 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1718112832; x=1749648832;
 h=from:to:subject:date:message-id:in-reply-to:references:
 mime-version:content-transfer-encoding;
 bh=isFdmX4tMkqDkcysdefetccIuVbJS6G2Vsarqm5G0B0=;
 b=fclYQqVer/6uSaI/U8AowylWWoKpnHnC2Q0vSMQ7zy/95ybfiq2UoUec
 AbNE/+sIsuz2H0DlUyWqUFCpcqf4omreUB8YSa4QR+WxDoQxk+PIiugAR
 CPOeCPimhK9iDH0j1fFH8+NO+oNDaEelskyPjCuzb8GmKDWfH0mr1Pt+r
 jI7l4txoT6S6sGtRQZdtBbPTFojGJZBB5/RvPw9wAQNiqrKf/iRm6JFXE
 BTcC05JvMMlrAmcNRmPf+5A/fpLF3Df5kj0Lq9QfZ50/ZectU8xIbNkr6
 yO63ytyySHaNOIDdIPfSc0UwebnBN+nw48owkZPt841ut4PGQBK7TYXCE A==;
X-CSE-ConnectionGUID: onuvKL1EQAGGqlKmZCqVwQ==
X-CSE-MsgGUID: G4GHy/TBQNGH6LCaZBuFcA==
X-IronPort-AV: E=McAfee;i="6600,9927,11099"; a="12018234"
X-IronPort-AV: E=Sophos;i="6.08,230,1712646000"; d="scan'208";a="12018234"
Received: from fmviesa008.fm.intel.com ([10.60.135.148])
 by fmvoesa110.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 11 Jun 2024 06:33:52 -0700
X-CSE-ConnectionGUID: kZOViAN1STeDz3s2L9Xgvg==
X-CSE-MsgGUID: jZGO5av8T0KNpBYIO+FJFA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.08,230,1712646000"; d="scan'208";a="39421365"
Received: from stinkpipe.fi.intel.com (HELO stinkbox) ([10.237.72.74])
 by fmviesa008.fm.intel.com with SMTP; 11 Jun 2024 06:33:50 -0700
Received: by stinkbox (sSMTP sendmail emulation);
 Tue, 11 Jun 2024 16:33:50 +0300
From: Ville Syrjala <ville.syrjala@linux.intel.com>
To: intel-gfx@lists.freedesktop.org
Subject: [PATCH 02/11] drm/i915: Add async flip tracepoint
Date: Tue, 11 Jun 2024 16:33:35 +0300
Message-ID: <20240611133344.30673-3-ville.syrjala@linux.intel.com>
X-Mailer: git-send-email 2.44.2
In-Reply-To: <20240611133344.30673-1-ville.syrjala@linux.intel.com>
References: <20240611133344.30673-1-ville.syrjala@linux.intel.com>
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

Add a separate tracepoint for async flips vs. sync plane updates
to make it a bit easier to figure out what is happening.

Signed-off-by: Ville Syrjälä <ville.syrjala@linux.intel.com>
---
 .../gpu/drm/i915/display/intel_atomic_plane.c | 22 +++++++++++----
 .../gpu/drm/i915/display/intel_atomic_plane.h |  4 +++
 drivers/gpu/drm/i915/display/intel_display.c  |  4 +--
 .../drm/i915/display/intel_display_trace.h    | 27 +++++++++++++++++++
 4 files changed, 50 insertions(+), 7 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_atomic_plane.c b/drivers/gpu/drm/i915/display/intel_atomic_plane.c
index 980c5dc70763..75b66998ddb2 100644
--- a/drivers/gpu/drm/i915/display/intel_atomic_plane.c
+++ b/drivers/gpu/drm/i915/display/intel_atomic_plane.c
@@ -801,18 +801,30 @@ void intel_plane_update_noarm(struct intel_plane *plane,
 		plane->update_noarm(plane, crtc_state, plane_state);
 }
 
+void intel_plane_async_flip(struct intel_plane *plane,
+			    const struct intel_crtc_state *crtc_state,
+			    const struct intel_plane_state *plane_state,
+			    bool async_flip)
+{
+	struct intel_crtc *crtc = to_intel_crtc(crtc_state->uapi.crtc);
+
+	trace_intel_plane_async_flip(plane, crtc, async_flip);
+	plane->async_flip(plane, crtc_state, plane_state, async_flip);
+}
+
 void intel_plane_update_arm(struct intel_plane *plane,
 			    const struct intel_crtc_state *crtc_state,
 			    const struct intel_plane_state *plane_state)
 {
 	struct intel_crtc *crtc = to_intel_crtc(crtc_state->uapi.crtc);
 
+	if (crtc_state->do_async_flip && plane->async_flip) {
+		intel_plane_async_flip(plane, crtc_state, plane_state, true);
+		return;
+	}
+
 	trace_intel_plane_update_arm(plane, crtc);
-
-	if (crtc_state->do_async_flip && plane->async_flip)
-		plane->async_flip(plane, crtc_state, plane_state, true);
-	else
-		plane->update_arm(plane, crtc_state, plane_state);
+	plane->update_arm(plane, crtc_state, plane_state);
 }
 
 void intel_plane_disable_arm(struct intel_plane *plane,
diff --git a/drivers/gpu/drm/i915/display/intel_atomic_plane.h b/drivers/gpu/drm/i915/display/intel_atomic_plane.h
index e7a0699f17c8..84541d97c67b 100644
--- a/drivers/gpu/drm/i915/display/intel_atomic_plane.h
+++ b/drivers/gpu/drm/i915/display/intel_atomic_plane.h
@@ -32,6 +32,10 @@ void intel_plane_copy_uapi_to_hw_state(struct intel_plane_state *plane_state,
 				       struct intel_crtc *crtc);
 void intel_plane_copy_hw_state(struct intel_plane_state *plane_state,
 			       const struct intel_plane_state *from_plane_state);
+void intel_plane_async_flip(struct intel_plane *plane,
+			    const struct intel_crtc_state *crtc_state,
+			    const struct intel_plane_state *plane_state,
+			    bool async_flip);
 void intel_plane_update_noarm(struct intel_plane *plane,
 			      const struct intel_crtc_state *crtc_state,
 			      const struct intel_plane_state *plane_state);
diff --git a/drivers/gpu/drm/i915/display/intel_display.c b/drivers/gpu/drm/i915/display/intel_display.c
index 5e0aa5a0b10c..0d1fbd05d655 100644
--- a/drivers/gpu/drm/i915/display/intel_display.c
+++ b/drivers/gpu/drm/i915/display/intel_display.c
@@ -1160,8 +1160,8 @@ static void intel_crtc_async_flip_disable_wa(struct intel_atomic_state *state,
 			 * Apart from the async flip bit we want to
 			 * preserve the old state for the plane.
 			 */
-			plane->async_flip(plane, old_crtc_state,
-					  old_plane_state, false);
+			intel_plane_async_flip(plane, old_crtc_state,
+					       old_plane_state, false);
 			need_vbl_wait = true;
 		}
 	}
diff --git a/drivers/gpu/drm/i915/display/intel_display_trace.h b/drivers/gpu/drm/i915/display/intel_display_trace.h
index 49a5e6d9dc0d..34c223ace5ea 100644
--- a/drivers/gpu/drm/i915/display/intel_display_trace.h
+++ b/drivers/gpu/drm/i915/display/intel_display_trace.h
@@ -308,6 +308,33 @@ TRACE_EVENT(vlv_fifo_size,
 		      __entry->sprite0_start, __entry->sprite1_start, __entry->fifo_size)
 );
 
+TRACE_EVENT(intel_plane_async_flip,
+	    TP_PROTO(struct intel_plane *plane, struct intel_crtc *crtc, bool async_flip),
+	    TP_ARGS(plane, crtc, async_flip),
+
+	    TP_STRUCT__entry(
+			     __string(dev, __dev_name_kms(plane))
+			     __field(enum pipe, pipe)
+			     __field(u32, frame)
+			     __field(u32, scanline)
+			     __field(bool, async_flip)
+			     __string(name, plane->base.name)
+			     ),
+
+	    TP_fast_assign(
+			   __assign_str(dev);
+			   __assign_str(name);
+			   __entry->pipe = crtc->pipe;
+			   __entry->frame = intel_crtc_get_vblank_counter(crtc);
+			   __entry->scanline = intel_get_crtc_scanline(crtc);
+			   __entry->async_flip = async_flip;
+			   ),
+
+	    TP_printk("dev %s, pipe %c, plane %s, frame=%u, scanline=%u, async_flip=%s",
+		      __get_str(dev), pipe_name(__entry->pipe), __get_str(name),
+		      __entry->frame, __entry->scanline, str_yes_no(__entry->async_flip))
+);
+
 TRACE_EVENT(intel_plane_update_noarm,
 	    TP_PROTO(struct intel_plane *plane, struct intel_crtc *crtc),
 	    TP_ARGS(plane, crtc),
-- 
2.44.2

