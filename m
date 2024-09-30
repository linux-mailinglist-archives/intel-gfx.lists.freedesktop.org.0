Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 78D8898AA95
	for <lists+intel-gfx@lfdr.de>; Mon, 30 Sep 2024 19:04:58 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 155DC10E569;
	Mon, 30 Sep 2024 17:04:57 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="cuA6J5+T";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.10])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 08E0610E564;
 Mon, 30 Sep 2024 17:04:56 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1727715896; x=1759251896;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=E+8Pr/JOIVAh74JA1dVaxTWv80H8zTTH6lAEoHzallo=;
 b=cuA6J5+TfCcx2JOskwROjakAOAc0InLhDHMGjRXfaFGzZP9x50EyVh5o
 +Lkkp+poRqgUYU96zkvEef7VwMev4sq/QH6iWOoKogl5jvXBIYsqM3tkt
 xmlWov4cTbrcbTMsd09bxtuEry2wVxULyoNukJ134mN3WNpWap4A/XkXn
 b23HogU+L/SPjNV5Af2eVzQYPIyjTTgrM4vfs6DWOxd82ARY0O3fqP03B
 TXTJT7FANcBFDvFDDHV7cY1fapmypJcP7s0i32YsrxjYgpZSkSai0XxPi
 PPkMuc9V2O204btDeRix5zJoeqpVickDnQUTiftDDETKmbuGw92eXtoal A==;
X-CSE-ConnectionGUID: JBx3tC0STTG6CEYM9r3KSg==
X-CSE-MsgGUID: ht3s3oZxTlWhb/RqYbml+Q==
X-IronPort-AV: E=McAfee;i="6700,10204,11211"; a="44277032"
X-IronPort-AV: E=Sophos;i="6.11,166,1725346800"; d="scan'208";a="44277032"
Received: from fmviesa008.fm.intel.com ([10.60.135.148])
 by orvoesa102.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 30 Sep 2024 10:04:55 -0700
X-CSE-ConnectionGUID: zFXr/qAoRV6aUi+XjfgOOA==
X-CSE-MsgGUID: VVAovsTPScSvZvQMZV75Ww==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.11,166,1725346800"; d="scan'208";a="73490991"
Received: from stinkpipe.fi.intel.com (HELO stinkbox) ([10.237.72.74])
 by fmviesa008.fm.intel.com with SMTP; 30 Sep 2024 10:04:48 -0700
Received: by stinkbox (sSMTP sendmail emulation);
 Mon, 30 Sep 2024 20:04:47 +0300
From: Ville Syrjala <ville.syrjala@linux.intel.com>
To: intel-gfx@lists.freedesktop.org
Cc: intel-xe@lists.freedesktop.org,
	Animesh Manna <animesh.manna@intel.com>
Subject: [PATCH v2 10/13] drm/i915: Extract intel_crtc_prepare_vblank_event()
Date: Mon, 30 Sep 2024 20:04:12 +0300
Message-ID: <20240930170415.23841-11-ville.syrjala@linux.intel.com>
X-Mailer: git-send-email 2.45.2
In-Reply-To: <20240930170415.23841-1-ville.syrjala@linux.intel.com>
References: <20240930170415.23841-1-ville.syrjala@linux.intel.com>
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

Extract the code for staging the vblank event for the
flip done interrupt handler. We'll reuse this for DSB
stuff later.

Reviewed-by: Animesh Manna <animesh.manna@intel.com>
Signed-off-by: Ville Syrjälä <ville.syrjala@linux.intel.com>
---
 drivers/gpu/drm/i915/display/intel_crtc.c | 21 +++++++++++++++------
 drivers/gpu/drm/i915/display/intel_crtc.h |  3 +++
 2 files changed, 18 insertions(+), 6 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_crtc.c b/drivers/gpu/drm/i915/display/intel_crtc.c
index 8ed8dd5fe458..4c653e9076d5 100644
--- a/drivers/gpu/drm/i915/display/intel_crtc.c
+++ b/drivers/gpu/drm/i915/display/intel_crtc.c
@@ -521,12 +521,8 @@ void intel_pipe_update_start(struct intel_atomic_state *state,
 	intel_psr_lock(new_crtc_state);
 
 	if (new_crtc_state->do_async_flip) {
-		spin_lock_irq(&crtc->base.dev->event_lock);
-		/* arm the event for the flip done irq handler */
-		crtc->flip_done_event = new_crtc_state->uapi.event;
-		spin_unlock_irq(&crtc->base.dev->event_lock);
-
-		new_crtc_state->uapi.event = NULL;
+		intel_crtc_prepare_vblank_event(new_crtc_state,
+						&crtc->flip_done_event);
 		return;
 	}
 
@@ -626,6 +622,19 @@ void intel_crtc_arm_vblank_event(struct intel_crtc_state *crtc_state)
 	crtc_state->uapi.event = NULL;
 }
 
+void intel_crtc_prepare_vblank_event(struct intel_crtc_state *crtc_state,
+				     struct drm_pending_vblank_event **event)
+{
+	struct intel_crtc *crtc = to_intel_crtc(crtc_state->uapi.crtc);
+	unsigned long irqflags;
+
+	spin_lock_irqsave(&crtc->base.dev->event_lock, irqflags);
+	*event = crtc_state->uapi.event;
+	spin_unlock_irqrestore(&crtc->base.dev->event_lock, irqflags);
+
+	crtc_state->uapi.event = NULL;
+}
+
 /**
  * intel_pipe_update_end() - end update of a set of display registers
  * @state: the atomic state
diff --git a/drivers/gpu/drm/i915/display/intel_crtc.h b/drivers/gpu/drm/i915/display/intel_crtc.h
index 34ffbd2ee1b7..de54ae1deedf 100644
--- a/drivers/gpu/drm/i915/display/intel_crtc.h
+++ b/drivers/gpu/drm/i915/display/intel_crtc.h
@@ -14,6 +14,7 @@ struct drm_device;
 struct drm_display_mode;
 struct drm_file;
 struct drm_i915_private;
+struct drm_pending_vblank_event;
 struct intel_atomic_state;
 struct intel_crtc;
 struct intel_crtc_state;
@@ -34,6 +35,8 @@ int intel_usecs_to_scanlines(const struct drm_display_mode *adjusted_mode,
 int intel_scanlines_to_usecs(const struct drm_display_mode *adjusted_mode,
 			     int scanlines);
 void intel_crtc_arm_vblank_event(struct intel_crtc_state *crtc_state);
+void intel_crtc_prepare_vblank_event(struct intel_crtc_state *crtc_state,
+				     struct drm_pending_vblank_event **event);
 u32 intel_crtc_max_vblank_count(const struct intel_crtc_state *crtc_state);
 int intel_crtc_init(struct drm_i915_private *dev_priv, enum pipe pipe);
 int intel_crtc_get_pipe_from_crtc_id_ioctl(struct drm_device *dev, void *data,
-- 
2.45.2

