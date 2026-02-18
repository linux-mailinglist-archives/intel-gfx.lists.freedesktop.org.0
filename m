Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id sJ0+GcXalWn3VQIAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Wed, 18 Feb 2026 16:29:09 +0100
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id EEC1615768A
	for <lists+intel-gfx@lfdr.de>; Wed, 18 Feb 2026 16:29:08 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 873AD10E5EF;
	Wed, 18 Feb 2026 15:29:07 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="nfUTBoj5";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.16])
 by gabe.freedesktop.org (Postfix) with ESMTPS id C94C710E5EF;
 Wed, 18 Feb 2026 15:29:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1771428545; x=1802964545;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=YluQxq3tufL66KB3f9YkXX4Motv5KkXs13xjQQne+QY=;
 b=nfUTBoj52svLuvW/ISt1Kd1gRUQYjkPM2qOaEDH+SFWalQz0JZFNZQdZ
 c3AWRykUXT12mrNdNN9msSVRQq28WxqSdzmUWw2lQahaN3vBgWj7PCUd9
 wd7Tm8KAcP0Pmj+f/BGSHVcucm/utRnK1TZaUcTdEpxrf9Bo/3Y+o4HM1
 BN1zrmC7bEXO6+GVE8OnILHkaJA5XVma/FMzAoFi60oTjzuw/Fves8Owb
 MC+twC5vRKvrJAx0jkQqVUe2QsBiJVHkxMNzsG5YhNJhoR9etx/nHihrW
 0M8MrzCB6a+MKtqg5Sqg/L7W+chN6AmB1qhT1VbWzYeT+G7aYxXooZut4 w==;
X-CSE-ConnectionGUID: 4PyTAF1HSN+cpnA6Dp6VNw==
X-CSE-MsgGUID: 1tGG2lJpRR6F3px0kIbinQ==
X-IronPort-AV: E=McAfee;i="6800,10657,11705"; a="60084494"
X-IronPort-AV: E=Sophos;i="6.21,298,1763452800"; d="scan'208";a="60084494"
Received: from fmviesa005.fm.intel.com ([10.60.135.145])
 by fmvoesa110.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 18 Feb 2026 07:29:05 -0800
X-CSE-ConnectionGUID: v+s/lI/AQeCWltjjyHmogg==
X-CSE-MsgGUID: wEwZEmGlS1yLOy39Yom+wg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.21,298,1763452800"; d="scan'208";a="218756673"
Received: from vpanait-mobl.ger.corp.intel.com (HELO localhost)
 ([10.245.244.66])
 by fmviesa005-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 18 Feb 2026 07:29:04 -0800
From: Ville Syrjala <ville.syrjala@linux.intel.com>
To: intel-gfx@lists.freedesktop.org
Cc: intel-xe@lists.freedesktop.org
Subject: [PATCH 13/19] drm/i915/overlay: Adjust i915 specific interfaces
Date: Wed, 18 Feb 2026 17:28:00 +0200
Message-ID: <20260218152806.18885-14-ville.syrjala@linux.intel.com>
X-Mailer: git-send-email 2.52.0
In-Reply-To: <20260218152806.18885-1-ville.syrjala@linux.intel.com>
References: <20260218152806.18885-1-ville.syrjala@linux.intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Organization: Intel Finland Oy - BIC 0357606-4 - c/o Alberga Business Park,
 6 krs Bertel Jungin Aukio 5, 02600 Espoo, Finland
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
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-0.31 / 15.00];
	MID_CONTAINS_FROM(1.00)[];
	DMARC_POLICY_ALLOW(-0.50)[intel.com,none];
	R_DKIM_ALLOW(-0.20)[intel.com:s=Intel];
	MAILLIST(-0.20)[mailman];
	R_SPF_ALLOW(-0.20)[+ip4:131.252.210.177:c];
	RWL_MAILSPIKE_GOOD(-0.10)[131.252.210.177:from];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	ARC_NA(0.00)[];
	ASN(0.00)[asn:6366, ipnet:131.252.0.0/16, country:US];
	MIME_TRACE(0.00)[0:+];
	HAS_ORG_HEADER(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[linux.intel.com:mid,intel.com:email,intel.com:dkim,gabe.freedesktop.org:helo,gabe.freedesktop.org:rdns];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCVD_COUNT_THREE(0.00)[4];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[ville.syrjala@linux.intel.com,intel-gfx-bounces@lists.freedesktop.org];
	FROM_HAS_DN(0.00)[];
	TAGGED_RCPT(0.00)[intel-gfx];
	TO_DN_NONE(0.00)[];
	RCPT_COUNT_TWO(0.00)[2];
	RCVD_TLS_LAST(0.00)[];
	DKIM_TRACE(0.00)[intel.com:+]
X-Rspamd-Queue-Id: EEC1615768A
X-Rspamd-Action: no action

From: Ville Syrjälä <ville.syrjala@linux.intel.com>

Adjust the names ("i915_overlay_" prefix) and calling
convention (pass the driver agnostic 'struct drm_device'()
of the functions that will provide the remainder of the
parent driver interface to be used by the overlay display
code.

Signed-off-by: Ville Syrjälä <ville.syrjala@linux.intel.com>
---
 drivers/gpu/drm/i915/display/intel_overlay.c | 51 +++++++++++---------
 1 file changed, 29 insertions(+), 22 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_overlay.c b/drivers/gpu/drm/i915/display/intel_overlay.c
index 7b9bb83ed72f..f51673cf94de 100644
--- a/drivers/gpu/drm/i915/display/intel_overlay.c
+++ b/drivers/gpu/drm/i915/display/intel_overlay.c
@@ -263,14 +263,15 @@ static bool i915_overlay_is_active(struct drm_device *drm)
 }
 
 /* overlay needs to be disable in OCMD reg */
-static int intel_overlay_on(struct intel_overlay *overlay,
-			    u32 frontbuffer_bits)
+static int i915_overlay_on(struct drm_device *drm,
+			   u32 frontbuffer_bits)
 {
-	struct intel_display *display = overlay->display;
+	struct intel_display *display = to_intel_display(drm);
+	struct intel_overlay *overlay = display->overlay;
 	struct i915_request *rq;
 	u32 *cs;
 
-	drm_WARN_ON(display->drm, i915_overlay_is_active(display->drm));
+	drm_WARN_ON(drm, i915_overlay_is_active(drm));
 
 	rq = alloc_request(overlay, NULL);
 	if (IS_ERR(rq))
@@ -324,16 +325,17 @@ static void i915_overlay_flip_prepare(struct intel_overlay *overlay,
 }
 
 /* overlay needs to be enabled in OCMD reg */
-static int intel_overlay_continue(struct intel_overlay *overlay,
-				  struct i915_vma *vma,
-				  bool load_polyphase_filter)
+static int i915_overlay_continue(struct drm_device *drm,
+				 struct i915_vma *vma,
+				 bool load_polyphase_filter)
 {
-	struct intel_display *display = overlay->display;
+	struct intel_display *display = to_intel_display(drm);
+	struct intel_overlay *overlay = display->overlay;
 	struct i915_request *rq;
 	u32 flip_addr = overlay->flip_addr;
 	u32 *cs;
 
-	drm_WARN_ON(display->drm, !i915_overlay_is_active(display->drm));
+	drm_WARN_ON(drm, !i915_overlay_is_active(drm));
 
 	if (load_polyphase_filter)
 		flip_addr |= OFC_UPDATE;
@@ -400,13 +402,14 @@ static void i915_overlay_last_flip_retire(struct i915_active *active)
 }
 
 /* overlay needs to be disabled in OCMD reg */
-static int intel_overlay_off(struct intel_overlay *overlay)
+static int i915_overlay_off(struct drm_device *drm)
 {
-	struct intel_display *display = overlay->display;
+	struct intel_display *display = to_intel_display(drm);
+	struct intel_overlay *overlay = display->overlay;
 	struct i915_request *rq;
 	u32 *cs, flip_addr = overlay->flip_addr;
 
-	drm_WARN_ON(display->drm, !i915_overlay_is_active(display->drm));
+	drm_WARN_ON(drm, !i915_overlay_is_active(drm));
 
 	/*
 	 * According to intel docs the overlay hw may hang (when switching
@@ -448,8 +451,11 @@ static int intel_overlay_off(struct intel_overlay *overlay)
  * Recover from an interruption due to a signal.
  * We have to be careful not to repeat work forever an make forward progress.
  */
-static int intel_overlay_recover_from_interrupt(struct intel_overlay *overlay)
+static int i915_overlay_recover_from_interrupt(struct drm_device *drm)
 {
+	struct intel_display *display = to_intel_display(drm);
+	struct intel_overlay *overlay = display->overlay;
+
 	return i915_active_wait(&overlay->last_flip);
 }
 
@@ -458,9 +464,10 @@ static int intel_overlay_recover_from_interrupt(struct intel_overlay *overlay)
  * Needs to be called before the overlay register are changed
  * via intel_overlay_(un)map_regs.
  */
-static int intel_overlay_release_old_vid(struct intel_overlay *overlay)
+static int i915_overlay_release_old_vid(struct drm_device *drm)
 {
-	struct intel_display *display = overlay->display;
+	struct intel_display *display = to_intel_display(drm);
+	struct intel_overlay *overlay = display->overlay;
 	struct i915_request *rq;
 	u32 *cs;
 
@@ -832,7 +839,7 @@ static int intel_overlay_do_put_image(struct intel_overlay *overlay,
 	drm_WARN_ON(display->drm,
 		    !drm_modeset_is_locked(&display->drm->mode_config.connection_mutex));
 
-	ret = intel_overlay_release_old_vid(overlay);
+	ret = i915_overlay_release_old_vid(display->drm);
 	if (ret != 0)
 		return ret;
 
@@ -860,7 +867,7 @@ static int intel_overlay_do_put_image(struct intel_overlay *overlay,
 			OCONF_PIPE_A : OCONF_PIPE_B;
 		iowrite32(oconfig, &regs->OCONFIG);
 
-		ret = intel_overlay_on(overlay, INTEL_FRONTBUFFER_OVERLAY(pipe));
+		ret = i915_overlay_on(display->drm, INTEL_FRONTBUFFER_OVERLAY(pipe));
 		if (ret != 0)
 			goto out_unpin;
 	}
@@ -918,7 +925,7 @@ static int intel_overlay_do_put_image(struct intel_overlay *overlay,
 	if (tmp & (1 << 17))
 		drm_dbg(display->drm, "overlay underrun, DOVSTA: %x\n", tmp);
 
-	ret = intel_overlay_continue(overlay, vma, scale_changed);
+	ret = i915_overlay_continue(display->drm, vma, scale_changed);
 	if (ret)
 		goto out_unpin;
 
@@ -940,14 +947,14 @@ int intel_overlay_switch_off(struct intel_overlay *overlay)
 	drm_WARN_ON(display->drm,
 		    !drm_modeset_is_locked(&display->drm->mode_config.connection_mutex));
 
-	ret = intel_overlay_recover_from_interrupt(overlay);
+	ret = i915_overlay_recover_from_interrupt(display->drm);
 	if (ret != 0)
 		return ret;
 
 	if (!i915_overlay_is_active(display->drm))
 		return 0;
 
-	ret = intel_overlay_release_old_vid(overlay);
+	ret = i915_overlay_release_old_vid(display->drm);
 	if (ret != 0)
 		return ret;
 
@@ -956,7 +963,7 @@ int intel_overlay_switch_off(struct intel_overlay *overlay)
 	overlay->crtc->overlay = NULL;
 	overlay->crtc = NULL;
 
-	return intel_overlay_off(overlay);
+	return i915_overlay_off(display->drm);
 }
 
 static int check_overlay_possible_on_crtc(struct intel_overlay *overlay,
@@ -1203,7 +1210,7 @@ int intel_overlay_put_image_ioctl(struct drm_device *dev, void *data,
 
 	drm_modeset_lock_all(dev);
 
-	ret = intel_overlay_recover_from_interrupt(overlay);
+	ret = i915_overlay_recover_from_interrupt(dev);
 	if (ret != 0)
 		goto out_unlock;
 
-- 
2.52.0

