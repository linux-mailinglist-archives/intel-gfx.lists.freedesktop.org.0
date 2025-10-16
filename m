Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id B43C4BE51F3
	for <lists+intel-gfx@lfdr.de>; Thu, 16 Oct 2025 20:54:27 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 231B410EA59;
	Thu, 16 Oct 2025 18:54:26 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=fail reason="signature verification failed" (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="QiMEl4TH";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.18])
 by gabe.freedesktop.org (Postfix) with ESMTPS id D74DC10EA59;
 Thu, 16 Oct 2025 18:54:24 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1760640865; x=1792176865;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=wJL7xQYdAOFTMPKE072e2z9pOIGEUHlYRTqTFET739E=;
 b=QiMEl4THDiwe0db7ajsO6ULH1UIDytmsakDoFZjB8p1E2p3mjCLZKBD3
 Eh1SkHJ4XyUh6np07QSjwX0L6M13Insak2hgwoxwjRUlN6Zv8tDicDxri
 XBe+gBeEEcMjSGeSYvfbnk7UIIU/fuBHzqvVl2BXRs24DVkvIAMfceFuQ
 b41JhKWxlySQO2npjc1fUlkiP2WyvQ2c2gyYdwHXaSzO3dMAE7o9sA3d9
 8KoAxs0EKpwHpCCm/4VRWA1uv85lKaSvgIylPZaG2v82LpOIIG3xwnGOH
 ZcLywXIQnBss53FV/RrCN3O/4460rOpaxLJgEK9q5Kj7w7zs+7U738P7P w==;
X-CSE-ConnectionGUID: MGcJYkZ4Rau0iBpr/2Hv9Q==
X-CSE-MsgGUID: PS06W4jOS/Wfa+Ba2jsFLA==
X-IronPort-AV: E=McAfee;i="6800,10657,11584"; a="62894809"
X-IronPort-AV: E=Sophos;i="6.19,234,1754982000"; d="scan'208";a="62894809"
Received: from orviesa008.jf.intel.com ([10.64.159.148])
 by orvoesa110.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 16 Oct 2025 11:54:24 -0700
X-CSE-ConnectionGUID: XrBDXfaLR2qFJZcVxn/MtQ==
X-CSE-MsgGUID: jUzd5vzkQOux2dLy2EVZPA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.19,234,1754982000"; d="scan'208";a="182514559"
Received: from kniemiec-mobl1.ger.corp.intel.com (HELO localhost)
 ([10.245.244.12])
 by orviesa008-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 16 Oct 2025 11:54:23 -0700
From: Ville Syrjala <ville.syrjala@linux.intel.com>
To: intel-gfx@lists.freedesktop.org
Cc: intel-xe@lists.freedesktop.org,
	Jani Nikula <jani.nikula@intel.com>
Subject: [PATCH v2 03/10] drm/i915/frontbuffer: Nuke
 intel_frontbuffer_flip_{prepare, complete}()
Date: Thu, 16 Oct 2025 21:54:01 +0300
Message-ID: <20251016185408.22735-4-ville.syrjala@linux.intel.com>
X-Mailer: git-send-email 2.49.1
In-Reply-To: <20251016185408.22735-1-ville.syrjala@linux.intel.com>
References: <20251016185408.22735-1-ville.syrjala@linux.intel.com>
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

Get rid of intel_frontbuffer_flip_{prepare,complete}() (and
the accompanying flip_bits) since they are unused.

I suppose these could technically provide a minor optiimization
over intel_frontbuffer_flip() in that the flush would get
deferred further if new rendering were to sneak in between the
prepare() and complete() calls. But for correctness it should
not make any difference since another flush will anyway follow
once the new rendering finishes.

Acked-by: Jani Nikula <jani.nikula@intel.com>
Signed-off-by: Ville Syrjälä <ville.syrjala@linux.intel.com>
---
 .../gpu/drm/i915/display/intel_display_core.h |  4 +-
 .../drm/i915/display/intel_display_debugfs.c  |  3 --
 .../gpu/drm/i915/display/intel_frontbuffer.c  | 46 -------------------
 .../gpu/drm/i915/display/intel_frontbuffer.h  |  4 --
 4 files changed, 1 insertion(+), 56 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_display_core.h b/drivers/gpu/drm/i915/display/intel_display_core.h
index df4da52cbdb3..fa43636b89fa 100644
--- a/drivers/gpu/drm/i915/display/intel_display_core.h
+++ b/drivers/gpu/drm/i915/display/intel_display_core.h
@@ -144,11 +144,9 @@ struct intel_frontbuffer_tracking {
 	spinlock_t lock;
 
 	/*
-	 * Tracking bits for delayed frontbuffer flushing du to gpu activity or
-	 * scheduled flips.
+	 * Tracking bits for delayed frontbuffer flushing due to gpu activity.
 	 */
 	unsigned busy_bits;
-	unsigned flip_bits;
 };
 
 struct intel_hotplug {
diff --git a/drivers/gpu/drm/i915/display/intel_display_debugfs.c b/drivers/gpu/drm/i915/display/intel_display_debugfs.c
index 10dddec3796f..4e8397504774 100644
--- a/drivers/gpu/drm/i915/display/intel_display_debugfs.c
+++ b/drivers/gpu/drm/i915/display/intel_display_debugfs.c
@@ -76,9 +76,6 @@ static int i915_frontbuffer_tracking(struct seq_file *m, void *unused)
 	seq_printf(m, "FB tracking busy bits: 0x%08x\n",
 		   display->fb_tracking.busy_bits);
 
-	seq_printf(m, "FB tracking flip bits: 0x%08x\n",
-		   display->fb_tracking.flip_bits);
-
 	spin_unlock(&display->fb_tracking.lock);
 
 	return 0;
diff --git a/drivers/gpu/drm/i915/display/intel_frontbuffer.c b/drivers/gpu/drm/i915/display/intel_frontbuffer.c
index 73ed28ac9573..53e93985c7d4 100644
--- a/drivers/gpu/drm/i915/display/intel_frontbuffer.c
+++ b/drivers/gpu/drm/i915/display/intel_frontbuffer.c
@@ -102,51 +102,6 @@ static void frontbuffer_flush(struct intel_display *display,
 	intel_fbc_flush(display, frontbuffer_bits, origin);
 }
 
-/**
- * intel_frontbuffer_flip_prepare - prepare asynchronous frontbuffer flip
- * @display: display device
- * @frontbuffer_bits: frontbuffer plane tracking bits
- *
- * This function gets called after scheduling a flip on @obj. The actual
- * frontbuffer flushing will be delayed until completion is signalled with
- * intel_frontbuffer_flip_complete. If an invalidate happens in between this
- * flush will be cancelled.
- *
- * Can be called without any locks held.
- */
-void intel_frontbuffer_flip_prepare(struct intel_display *display,
-				    unsigned frontbuffer_bits)
-{
-	spin_lock(&display->fb_tracking.lock);
-	display->fb_tracking.flip_bits |= frontbuffer_bits;
-	/* Remove stale busy bits due to the old buffer. */
-	display->fb_tracking.busy_bits &= ~frontbuffer_bits;
-	spin_unlock(&display->fb_tracking.lock);
-}
-
-/**
- * intel_frontbuffer_flip_complete - complete asynchronous frontbuffer flip
- * @display: display device
- * @frontbuffer_bits: frontbuffer plane tracking bits
- *
- * This function gets called after the flip has been latched and will complete
- * on the next vblank. It will execute the flush if it hasn't been cancelled yet.
- *
- * Can be called without any locks held.
- */
-void intel_frontbuffer_flip_complete(struct intel_display *display,
-				     unsigned frontbuffer_bits)
-{
-	spin_lock(&display->fb_tracking.lock);
-	/* Mask any cancelled flips. */
-	frontbuffer_bits &= display->fb_tracking.flip_bits;
-	display->fb_tracking.flip_bits &= ~frontbuffer_bits;
-	spin_unlock(&display->fb_tracking.lock);
-
-	if (frontbuffer_bits)
-		frontbuffer_flush(display, frontbuffer_bits, ORIGIN_FLIP);
-}
-
 /**
  * intel_frontbuffer_flip - synchronous frontbuffer flip
  * @display: display device
@@ -178,7 +133,6 @@ void __intel_fb_invalidate(struct intel_frontbuffer *front,
 	if (origin == ORIGIN_CS) {
 		spin_lock(&display->fb_tracking.lock);
 		display->fb_tracking.busy_bits |= frontbuffer_bits;
-		display->fb_tracking.flip_bits &= ~frontbuffer_bits;
 		spin_unlock(&display->fb_tracking.lock);
 	}
 
diff --git a/drivers/gpu/drm/i915/display/intel_frontbuffer.h b/drivers/gpu/drm/i915/display/intel_frontbuffer.h
index 2fee12eaf9b6..293c2d0152d6 100644
--- a/drivers/gpu/drm/i915/display/intel_frontbuffer.h
+++ b/drivers/gpu/drm/i915/display/intel_frontbuffer.h
@@ -68,10 +68,6 @@ struct intel_frontbuffer {
 	GENMASK(INTEL_FRONTBUFFER_BITS_PER_PIPE * ((pipe) + 1) - 1,	\
 		INTEL_FRONTBUFFER_BITS_PER_PIPE * (pipe))
 
-void intel_frontbuffer_flip_prepare(struct intel_display *display,
-				    unsigned frontbuffer_bits);
-void intel_frontbuffer_flip_complete(struct intel_display *display,
-				     unsigned frontbuffer_bits);
 void intel_frontbuffer_flip(struct intel_display *display,
 			    unsigned frontbuffer_bits);
 
-- 
2.49.1

