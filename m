Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id B48A1881529
	for <lists+intel-gfx@lfdr.de>; Wed, 20 Mar 2024 17:04:39 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 0BE4010FDA1;
	Wed, 20 Mar 2024 16:04:38 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="DaHUenDQ";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.13])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 9225C10FDA1
 for <intel-gfx@lists.freedesktop.org>; Wed, 20 Mar 2024 16:04:36 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1710950677; x=1742486677;
 h=from:to:subject:date:message-id:in-reply-to:references:
 mime-version:content-transfer-encoding;
 bh=A6hRU3n0qY4ASytwF0b23w6aLnUquWpBWfHTdAww7mI=;
 b=DaHUenDQWHp1GK093MmvXqM39qZzJDNCfZW6SXRgFAmn2PmyztLQifH8
 ogSNadH1fh4v+t4z447ofHvIFYN4bQQFG76jHa1i+nTelU1LUZ+nyHCUD
 jLyXn42d+76zbVaUM4cHCwXMTvzQwjTwrKjYM0gr4wp4CsLoS9NzKa8TS
 hQuri+huiRRQ9KbLXy0EeT3EN3Ed6hR8sn74HT9qSXY3AFz2DfdkAntkQ
 oS9/mRrc3/aFtrZV73awly1gAoItpoNcnyBqYNDPuoreidWxtpu5BzLVa
 WH+WBwhPXb6bVpry5V9g85hapHPUChUxPkdNqDJXxP2XZ7W+iQ2kXMWoa w==;
X-IronPort-AV: E=McAfee;i="6600,9927,11019"; a="8834771"
X-IronPort-AV: E=Sophos;i="6.07,140,1708416000"; 
   d="scan'208";a="8834771"
Received: from orsmga001.jf.intel.com ([10.7.209.18])
 by fmvoesa107.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 20 Mar 2024 09:04:36 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,11019"; a="827782600"
X-IronPort-AV: E=Sophos;i="6.07,140,1708416000"; d="scan'208";a="827782600"
Received: from stinkpipe.fi.intel.com (HELO stinkbox) ([10.237.72.74])
 by orsmga001.jf.intel.com with SMTP; 20 Mar 2024 09:04:34 -0700
Received: by stinkbox (sSMTP sendmail emulation);
 Wed, 20 Mar 2024 18:04:33 +0200
From: Ville Syrjala <ville.syrjala@linux.intel.com>
To: intel-gfx@lists.freedesktop.org
Subject: [PATCH 3/6] drm/i915: Allow the initial async flip to change modifier
Date: Wed, 20 Mar 2024 18:04:21 +0200
Message-ID: <20240320160424.700-4-ville.syrjala@linux.intel.com>
X-Mailer: git-send-email 2.43.2
In-Reply-To: <20240320160424.700-1-ville.syrjala@linux.intel.com>
References: <20240320160424.700-1-ville.syrjala@linux.intel.com>
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
index 76d77d5a0409..769010d0ebc4 100644
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
index d366a103a707..dbcda79cf53c 100644
--- a/drivers/gpu/drm/i915/display/intel_display.c
+++ b/drivers/gpu/drm/i915/display/intel_display.c
@@ -6061,6 +6061,13 @@ static int intel_async_flip_check_hw(struct intel_atomic_state *state, struct in
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
2.43.2

