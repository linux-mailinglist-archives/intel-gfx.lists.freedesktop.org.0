Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id iLRNB6kboGmzfgQAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Thu, 26 Feb 2026 11:08:41 +0100
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id C038F1A402D
	for <lists+intel-gfx@lfdr.de>; Thu, 26 Feb 2026 11:08:40 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 1657C10E0B0;
	Thu, 26 Feb 2026 10:08:39 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="f5LtuMWk";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.8])
 by gabe.freedesktop.org (Postfix) with ESMTPS id B91EC10E8BF;
 Thu, 26 Feb 2026 10:08:37 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1772100518; x=1803636518;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=feJZBlF1PJ1/4S9TB62wt2M/kteREDI+4Z9VF69jBkE=;
 b=f5LtuMWkFN1kgKSY2ncb/TMyW1F7+0jyJeqj8QtpN0NxbCqOGKtjyMzx
 N8RhDC1GChEjn+jAvfKkuvfVihUl0RQmMTzNJoxTuEJpa9fsPomhOFIpf
 R8Yk38UYTowshTfWIhcjbwWHPqch5PPBqrNvCTE7PIu2RR6xILKnWkRgq
 0ooDyjh673jz2AatvoammzRR02p9kcsKDOomNBmkA5uZO2OTg6YbMUhmL
 ZpFE+xkfuNSCISy76sv4IpnwMvnT/qQy/QohZax/vFyasrmFtxf6YXeMr
 VD+W5bB3OIKhybC+HJwKA+3Nlv2GLQdB9qh/GRZxkF4XVkAvCQ9d8XFut w==;
X-CSE-ConnectionGUID: 0BiWn8FnTZaVwR7REqRJgw==
X-CSE-MsgGUID: a3ixngkATp2hl2s3OmtwxQ==
X-IronPort-AV: E=McAfee;i="6800,10657,11712"; a="90738846"
X-IronPort-AV: E=Sophos;i="6.21,312,1763452800"; d="scan'208";a="90738846"
Received: from orviesa002.jf.intel.com ([10.64.159.142])
 by fmvoesa102.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 26 Feb 2026 02:08:37 -0800
X-CSE-ConnectionGUID: m8yj5bPOTGGjoeqj2ZemNw==
X-CSE-MsgGUID: XoyEnBGSSyaPdCMBz0eLwg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.21,312,1763452800"; d="scan'208";a="247057513"
Received: from egrumbac-mobl6.ger.corp.intel.com (HELO localhost)
 ([10.245.244.224])
 by orviesa002-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 26 Feb 2026 02:08:36 -0800
From: Ville Syrjala <ville.syrjala@linux.intel.com>
To: intel-gfx@lists.freedesktop.org
Cc: intel-xe@lists.freedesktop.org,
	Jani Nikula <jani.nikula@intel.com>
Subject: [PATCH v2 13/19] drm/i915/overlay: Adjust i915 specific interfaces
Date: Thu, 26 Feb 2026 12:07:32 +0200
Message-ID: <20260226100738.29997-14-ville.syrjala@linux.intel.com>
X-Mailer: git-send-email 2.52.0
In-Reply-To: <20260226100738.29997-1-ville.syrjala@linux.intel.com>
References: <20260226100738.29997-1-ville.syrjala@linux.intel.com>
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
	R_SPF_ALLOW(-0.20)[+ip4:131.252.210.177:c];
	MAILLIST(-0.20)[mailman];
	R_DKIM_ALLOW(-0.20)[intel.com:s=Intel];
	MIME_GOOD(-0.10)[text/plain];
	RWL_MAILSPIKE_GOOD(-0.10)[131.252.210.177:from];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_COUNT_THREE(0.00)[4];
	ARC_NA(0.00)[];
	HAS_ORG_HEADER(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	MIME_TRACE(0.00)[0:+];
	RCVD_TLS_LAST(0.00)[];
	FROM_HAS_DN(0.00)[];
	TO_DN_SOME(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	FROM_NEQ_ENVFROM(0.00)[ville.syrjala@linux.intel.com,intel-gfx-bounces@lists.freedesktop.org];
	DKIM_TRACE(0.00)[intel.com:+];
	TAGGED_RCPT(0.00)[intel-gfx];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	ASN(0.00)[asn:6366, ipnet:131.252.0.0/16, country:US];
	RCPT_COUNT_THREE(0.00)[3];
	DBL_BLOCKED_OPENRESOLVER(0.00)[intel.com:email,intel.com:dkim,gabe.freedesktop.org:helo,gabe.freedesktop.org:rdns,linux.intel.com:mid]
X-Rspamd-Queue-Id: C038F1A402D
X-Rspamd-Action: no action

From: Ville Syrjälä <ville.syrjala@linux.intel.com>

Adjust the names ("i915_overlay_" prefix) and calling
convention (pass the driver agnostic 'struct drm_device'()
of the functions that will provide the remainder of the
parent driver interface to be used by the overlay display
code.

Reviewed-by: Jani Nikula <jani.nikula@intel.com>
Signed-off-by: Ville Syrjälä <ville.syrjala@linux.intel.com>
---
 drivers/gpu/drm/i915/display/intel_overlay.c | 51 +++++++++++---------
 1 file changed, 29 insertions(+), 22 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_overlay.c b/drivers/gpu/drm/i915/display/intel_overlay.c
index 906948397d21..a516fc28f093 100644
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

