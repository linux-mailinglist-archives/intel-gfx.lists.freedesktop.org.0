Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 307D58117E0
	for <lists+intel-gfx@lfdr.de>; Wed, 13 Dec 2023 16:45:04 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 62E0110E7B8;
	Wed, 13 Dec 2023 15:45:02 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.13])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 29D9D10E7B8
 for <intel-gfx@lists.freedesktop.org>; Wed, 13 Dec 2023 15:45:00 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1702482300; x=1734018300;
 h=from:to:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=xpgEVKnFqeQBxTjrDZhMXJZQt4N0zyISob2D9hx+3v0=;
 b=cisIem9YLPKZmI4C3bpDZCpAcRErsuhqQOEchz2zAaV9Ve8V5iZlM8Il
 DtWY1KOF1Dcs2wRMPBlU8/hogLCjOrbhOWLg7N4kg9fwbRDk8ExVSWFwk
 LebJdizea5UHzcKEiPRjq/XawNCxvwlplXeeWrngkc/BZV0GOrI4mTQ4q
 uEiVzlaqTcLlshlzHXMNygVgEomDPUAFQn3bE/0XTSYMb3VugdxTLZ8HC
 Qk8sTs0bmucaMjvTOL0PUxkIN7KxhU3tOGzkS7/TvNNz791kLjGGhg/8Z
 mSfRfqNlHdtl1oZyp13hzfT3p4RXeu0XH0X7QmOV7BSlvVo3H3SvZGcBv Q==;
X-IronPort-AV: E=McAfee;i="6600,9927,10923"; a="2064979"
X-IronPort-AV: E=Sophos;i="6.04,273,1695711600"; 
   d="scan'208";a="2064979"
Received: from orsmga007.jf.intel.com ([10.7.209.58])
 by orvoesa105.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 13 Dec 2023 07:45:00 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10923"; a="767255543"
X-IronPort-AV: E=Sophos;i="6.04,273,1695711600"; d="scan'208";a="767255543"
Received: from stinkpipe.fi.intel.com (HELO stinkbox) ([10.237.72.74])
 by orsmga007.jf.intel.com with SMTP; 13 Dec 2023 07:44:57 -0800
Received: by stinkbox (sSMTP sendmail emulation);
 Wed, 13 Dec 2023 17:44:56 +0200
From: Ville Syrjala <ville.syrjala@linux.intel.com>
To: intel-gfx@lists.freedesktop.org
Subject: [PATCH 1/3] drm/i915: Allow the initial async flip to change modifier
Date: Wed, 13 Dec 2023 17:44:54 +0200
Message-ID: <20231213154456.20141-1-ville.syrjala@linux.intel.com>
X-Mailer: git-send-email 2.41.0
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

With Xorg+modesetting on skl+ we see the following behaviour:
1. root pixmap is X-tiled
2. client submitted buffers can be Y-tiled (w/ 'Option "dmabuf_capable"')
3. we try to switch from the X-tiled buffer to the Y-tiled buffer
   using an async flip (when vsync is disabled).
4. the async flip will be rejected by i915 due to the modifier change

Relax the rules a bit by turning the first async flip into a sync
flip so that we can change the modifier if necessary. Note that
we already convert the first async flip into a sync flip on adl+
in order to reprogram the watermarks.

Signed-off-by: Ville Syrjälä <ville.syrjala@linux.intel.com>
---
 .../gpu/drm/i915/display/intel_atomic_plane.c    | 16 +++++++++++++---
 drivers/gpu/drm/i915/display/intel_display.c     |  7 +++++++
 2 files changed, 20 insertions(+), 3 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_atomic_plane.c b/drivers/gpu/drm/i915/display/intel_atomic_plane.c
index 06c2455bdd78..605f3b7ef4e0 100644
--- a/drivers/gpu/drm/i915/display/intel_atomic_plane.c
+++ b/drivers/gpu/drm/i915/display/intel_atomic_plane.c
@@ -429,10 +429,20 @@ static bool intel_plane_do_async_flip(struct intel_plane *plane,
 	 * In platforms after DISPLAY13, we might need to override
 	 * first async flip in order to change watermark levels
 	 * as part of optimization.
-	 * So for those, we are checking if this is a first async flip.
-	 * For platforms earlier than DISPLAY13 we always do async flip.
+	 *
+	 * And let's do this for all skl+ so that we can eg. change the
+	 * modifier as well.
+	 *
+	 * TODO: For older platforms there is less reason to do this as
+	 * only X-tile is supported with async flips, though we could
+	 * extend this so other scanout parameters (stride/etc) could
+	 * be changed as well...
+	 *
+	 * FIXME: Platforms with need_async_flip_disable_wa==true will
+	 * now end up doing two sync flips initially. Would be nice to
+	 * combine those into just the one sync flip...
 	 */
-	return DISPLAY_VER(i915) < 13 || old_crtc_state->uapi.async_flip;
+	return DISPLAY_VER(i915) < 9 || old_crtc_state->uapi.async_flip;
 }
 
 static bool i9xx_must_disable_cxsr(const struct intel_crtc_state *new_crtc_state,
diff --git a/drivers/gpu/drm/i915/display/intel_display.c b/drivers/gpu/drm/i915/display/intel_display.c
index ccf88c907db2..926e21d9132f 100644
--- a/drivers/gpu/drm/i915/display/intel_display.c
+++ b/drivers/gpu/drm/i915/display/intel_display.c
@@ -6058,6 +6058,13 @@ static int intel_async_flip_check_hw(struct intel_atomic_state *state, struct in
 			return -EINVAL;
 		}
 
+		/*
+		 * We turn the first async flip request into a sync flip
+		 * so that we can reconfigure the plane (eg. change modifier).
+		 */
+		if (!new_crtc_state->do_async_flip)
+			continue;
+
 		if (old_plane_state->view.color_plane[0].mapping_stride !=
 		    new_plane_state->view.color_plane[0].mapping_stride) {
 			drm_dbg_kms(&i915->drm,
-- 
2.41.0

