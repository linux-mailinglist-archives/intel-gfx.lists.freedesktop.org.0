Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 3F1D78B6EDF
	for <lists+intel-gfx@lfdr.de>; Tue, 30 Apr 2024 11:56:55 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id A44ED10F507;
	Tue, 30 Apr 2024 09:56:53 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="EJoObuLO";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.10])
 by gabe.freedesktop.org (Postfix) with ESMTPS id EF61910F507
 for <intel-gfx@lists.freedesktop.org>; Tue, 30 Apr 2024 09:56:50 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1714471011; x=1746007011;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=98H7LdSTt5MOxG9obkSdwAIGNWN05z7HTdTWtzmfb0M=;
 b=EJoObuLOv5CVQMutHtQdYdNGo69wlT+3x28mtZzdDY2l13a6LvKrvb3n
 YHcANrizDlHWTUuGE5XrDg+SvdF8rouQaHS7EJ0DvXVHzxEeQ7oaoV1W+
 fFK35IREI+64VeT1nqBdBlAWq88i0yWWVQZeygNoTkEeK/8mRn7Ppk4Sb
 Q0WHQ9Cz1lwfY9FlIbaEhZ795CoK8qNQqeXhtbQ5O72H9yBwn7XmDri3u
 Wvg99jBRzmyBDvET0UusSCtqAWLlxTJQtyuxFqOVcxnH9Q+Y5HzUJ6Afi
 rGZAtTbUcQq38LtGmqy8uiK29RUW9ovjYM5MyqadSEmdq3OS4uX4yyeH8 A==;
X-CSE-ConnectionGUID: Rru/8RCCTiynuR659OycDg==
X-CSE-MsgGUID: SoHA0y49QMWWnUXLVcpLqg==
X-IronPort-AV: E=McAfee;i="6600,9927,11059"; a="27617859"
X-IronPort-AV: E=Sophos;i="6.07,241,1708416000"; d="scan'208";a="27617859"
Received: from fmviesa008.fm.intel.com ([10.60.135.148])
 by orvoesa102.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 30 Apr 2024 02:56:51 -0700
X-CSE-ConnectionGUID: cI4LaCYjT3Co/WfW2D+zKA==
X-CSE-MsgGUID: lF+PaB5kSSi25ENPmbvM3w==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.07,241,1708416000"; d="scan'208";a="26419316"
Received: from stinkpipe.fi.intel.com (HELO stinkbox) ([10.237.72.74])
 by fmviesa008.fm.intel.com with SMTP; 30 Apr 2024 02:56:49 -0700
Received: by stinkbox (sSMTP sendmail emulation);
 Tue, 30 Apr 2024 12:56:48 +0300
From: Ville Syrjala <ville.syrjala@linux.intel.com>
To: intel-gfx@lists.freedesktop.org
Cc: Vandita Kulkarni <vandita.kulkarni@intel.com>
Subject: [PATCH v2 3/5] drm/i915: Allow the initial async flip to change
 modifier
Date: Tue, 30 Apr 2024 12:56:37 +0300
Message-ID: <20240430095639.26390-4-ville.syrjala@linux.intel.com>
X-Mailer: git-send-email 2.43.2
In-Reply-To: <20240430095639.26390-1-ville.syrjala@linux.intel.com>
References: <20240430095639.26390-1-ville.syrjala@linux.intel.com>
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

Reviewed-by: Vandita Kulkarni <vandita.kulkarni@intel.com>
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
index f45e5f02096d..fa1ddb558f48 100644
--- a/drivers/gpu/drm/i915/display/intel_display.c
+++ b/drivers/gpu/drm/i915/display/intel_display.c
@@ -6165,6 +6165,13 @@ static int intel_async_flip_check_hw(struct intel_atomic_state *state, struct in
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

