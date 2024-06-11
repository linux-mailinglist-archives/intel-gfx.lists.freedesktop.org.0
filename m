Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 0B34F903D72
	for <lists+intel-gfx@lfdr.de>; Tue, 11 Jun 2024 15:33:55 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 3801110E0AA;
	Tue, 11 Jun 2024 13:33:53 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="U+uk/wdL";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.16])
 by gabe.freedesktop.org (Postfix) with ESMTPS id DA11889101
 for <intel-gfx@lists.freedesktop.org>; Tue, 11 Jun 2024 13:33:49 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1718112830; x=1749648830;
 h=from:to:subject:date:message-id:in-reply-to:references:
 mime-version:content-transfer-encoding;
 bh=hlwo8U10BrYu9e+MomKRzuaMh0C/RCBHcDE8WZ+xqDc=;
 b=U+uk/wdL8V9KFk/zDZoWACsXYwHYxKB6BfJXK0m7p9JXLq7d+tvKNZLy
 4MgwOyI3xR1m5MRJKhq6WlY5OYt2Ab0AX9ZSg0q4RDdB8NHFv2Oehyq+Z
 lCNfNtHQ+jC54ulmwHZGSq4dCCGXhkbSwUpEzksr2vpaoB8weyOI3usMK
 K/cyiOfEAGM0qhYWuULM7+G++kgojG2jl2GyeX+Ceq/Szj6fhLEdwGZG3
 6jcY2kO8XpfidseG7sO/33Gh+fu8k8jJ9C6l2xYrBXpTTPUeq3K9QMfLS
 SFg36OhjAi3wE419328YFBGPmrWeu8SxVroawxO88OtAsyfyUA0IhFFcb A==;
X-CSE-ConnectionGUID: qJmVywKtRoOIO5JaNwF4Pw==
X-CSE-MsgGUID: 0iM9mGXpT+Wik26WQJ6Gpg==
X-IronPort-AV: E=McAfee;i="6600,9927,11099"; a="12018232"
X-IronPort-AV: E=Sophos;i="6.08,230,1712646000"; d="scan'208";a="12018232"
Received: from fmviesa008.fm.intel.com ([10.60.135.148])
 by fmvoesa110.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 11 Jun 2024 06:33:50 -0700
X-CSE-ConnectionGUID: Sa+ElnW7QsGEmwoidLZY8g==
X-CSE-MsgGUID: T9CpH6waSNqAcs6nZh2FNg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.08,230,1712646000"; d="scan'208";a="39421352"
Received: from stinkpipe.fi.intel.com (HELO stinkbox) ([10.237.72.74])
 by fmviesa008.fm.intel.com with SMTP; 11 Jun 2024 06:33:48 -0700
Received: by stinkbox (sSMTP sendmail emulation);
 Tue, 11 Jun 2024 16:33:47 +0300
From: Ville Syrjala <ville.syrjala@linux.intel.com>
To: intel-gfx@lists.freedesktop.org
Subject: [PATCH 01/11] drm/i915: Extract intel_crtc_arm_vblank_event()
Date: Tue, 11 Jun 2024 16:33:34 +0300
Message-ID: <20240611133344.30673-2-ville.syrjala@linux.intel.com>
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

We'll need to arm the vblank event also from the future
DSB based codepath. Extract the function that does the
whold dance for us.

Signed-off-by: Ville Syrjälä <ville.syrjala@linux.intel.com>
---
 drivers/gpu/drm/i915/display/intel_crtc.c | 29 +++++++++++++++--------
 drivers/gpu/drm/i915/display/intel_crtc.h |  1 +
 2 files changed, 20 insertions(+), 10 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_crtc.c b/drivers/gpu/drm/i915/display/intel_crtc.c
index 54b529bfc935..6831060a792a 100644
--- a/drivers/gpu/drm/i915/display/intel_crtc.c
+++ b/drivers/gpu/drm/i915/display/intel_crtc.c
@@ -560,6 +560,23 @@ static void dbg_vblank_evade(struct intel_crtc *crtc, ktime_t end)
 static void dbg_vblank_evade(struct intel_crtc *crtc, ktime_t end) {}
 #endif
 
+void intel_crtc_arm_vblank_event(struct intel_crtc_state *crtc_state)
+{
+	struct intel_crtc *crtc = to_intel_crtc(crtc_state->uapi.crtc);
+	unsigned long irqflags;
+
+	if (!crtc_state->uapi.event)
+		return;
+
+	drm_WARN_ON(crtc->base.dev, drm_crtc_vblank_get(&crtc->base) != 0);
+
+	spin_lock_irqsave(&crtc->base.dev->event_lock, irqflags);
+	drm_crtc_arm_vblank_event(&crtc->base, crtc_state->uapi.event);
+	spin_unlock_irqrestore(&crtc->base.dev->event_lock, irqflags);
+
+	crtc_state->uapi.event = NULL;
+}
+
 /**
  * intel_pipe_update_end() - end update of a set of display registers
  * @state: the atomic state
@@ -601,16 +618,8 @@ void intel_pipe_update_end(struct intel_atomic_state *state,
 		drm_vblank_work_schedule(&new_crtc_state->vblank_work,
 					 drm_crtc_accurate_vblank_count(&crtc->base) + 1,
 					 false);
-	} else if (new_crtc_state->uapi.event) {
-		drm_WARN_ON(&dev_priv->drm,
-			    drm_crtc_vblank_get(&crtc->base) != 0);
-
-		spin_lock(&crtc->base.dev->event_lock);
-		drm_crtc_arm_vblank_event(&crtc->base,
-					  new_crtc_state->uapi.event);
-		spin_unlock(&crtc->base.dev->event_lock);
-
-		new_crtc_state->uapi.event = NULL;
+	} else {
+		intel_crtc_arm_vblank_event(new_crtc_state);
 	}
 
 	/*
diff --git a/drivers/gpu/drm/i915/display/intel_crtc.h b/drivers/gpu/drm/i915/display/intel_crtc.h
index 22d7993d1f0b..b615b7ab5ccd 100644
--- a/drivers/gpu/drm/i915/display/intel_crtc.h
+++ b/drivers/gpu/drm/i915/display/intel_crtc.h
@@ -28,6 +28,7 @@ struct intel_crtc_state;
 
 int intel_usecs_to_scanlines(const struct drm_display_mode *adjusted_mode,
 			     int usecs);
+void intel_crtc_arm_vblank_event(struct intel_crtc_state *crtc_state);
 u32 intel_crtc_max_vblank_count(const struct intel_crtc_state *crtc_state);
 int intel_crtc_init(struct drm_i915_private *dev_priv, enum pipe pipe);
 struct intel_crtc_state *intel_crtc_state_alloc(struct intel_crtc *crtc);
-- 
2.44.2

