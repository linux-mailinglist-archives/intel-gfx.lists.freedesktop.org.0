Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id cFmTOXoboGmzfgQAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Thu, 26 Feb 2026 11:07:54 +0100
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 997E31A3FB5
	for <lists+intel-gfx@lfdr.de>; Thu, 26 Feb 2026 11:07:54 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 23BEA10E8AE;
	Thu, 26 Feb 2026 10:07:53 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="TtPb0z6S";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.19])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 0367D10E8B0;
 Thu, 26 Feb 2026 10:07:51 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1772100472; x=1803636472;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=Ro0nSIYoa+IlTYjGk73uJwCua1HdzzvJsrADRYcKj4w=;
 b=TtPb0z6SM73vngijBgiXpEaXlXUE7e67dMKCOIT3cL+VwT+xTirEMUWq
 meVHn/53q89xV04WbC8K2qpW/1kRFU9yiqNZG14HpT17IFhaxVfrScf4N
 66mxSTd6IEkk7tzC6DNlznoaJpfRXGzVoK5fDiMfb5td8hMwdH00vnnTN
 tAgBcdo5JodgqhNG8jC35NGq4aUD7f5OlyjpWJoWzQ04EcxQG4PbzCajY
 t9B+r+1nb2GXgnXNv+QQs/4ww/BdN8hU836GmhAdVwWHOET6lnyT05s99
 Rx+6v52mqMEl9L8WfDeGElmqvLbE7DL8jBJnBVcRZ1ww6WL6oVanv2k4a g==;
X-CSE-ConnectionGUID: O7C6V8iKTEqN4zvWIht5eg==
X-CSE-MsgGUID: EGGQBNDoREWpqtuxEulxow==
X-IronPort-AV: E=McAfee;i="6800,10657,11712"; a="73063783"
X-IronPort-AV: E=Sophos;i="6.21,312,1763452800"; d="scan'208";a="73063783"
Received: from orviesa004.jf.intel.com ([10.64.159.144])
 by orvoesa111.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 26 Feb 2026 02:07:52 -0800
X-CSE-ConnectionGUID: X9XLY5s2Q5ev0CFE38jx9w==
X-CSE-MsgGUID: 0C4Xu7LTRFee2yPXesBeXQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.21,312,1763452800"; d="scan'208";a="221026383"
Received: from egrumbac-mobl6.ger.corp.intel.com (HELO localhost)
 ([10.245.244.224])
 by orviesa004-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 26 Feb 2026 02:07:50 -0800
From: Ville Syrjala <ville.syrjala@linux.intel.com>
To: intel-gfx@lists.freedesktop.org
Cc: intel-xe@lists.freedesktop.org,
	Jani Nikula <jani.nikula@intel.com>
Subject: [PATCH v2 02/19] drm/i915/overlay: Track current frontbuffer_bits
Date: Thu, 26 Feb 2026 12:07:21 +0200
Message-ID: <20260226100738.29997-3-ville.syrjala@linux.intel.com>
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
X-Rspamd-Queue-Id: 997E31A3FB5
X-Rspamd-Action: no action

From: Ville Syrjälä <ville.syrjala@linux.intel.com>

Store the current frontbuffer_bits in the overlay data. The
main benefit here is that we get rid of the 'crtc->pipe'
usage from intel_overlay_flip_prepare() which will have to
move to the i915 side of the parent vs. display driver split.

Reviewed-by: Jani Nikula <jani.nikula@intel.com>
Signed-off-by: Ville Syrjälä <ville.syrjala@linux.intel.com>
---
 drivers/gpu/drm/i915/display/intel_overlay.c | 19 ++++++++++++-------
 1 file changed, 12 insertions(+), 7 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_overlay.c b/drivers/gpu/drm/i915/display/intel_overlay.c
index 6cea82ecc3ec..8bb1dcff35ea 100644
--- a/drivers/gpu/drm/i915/display/intel_overlay.c
+++ b/drivers/gpu/drm/i915/display/intel_overlay.c
@@ -205,6 +205,7 @@ struct intel_overlay {
 	struct drm_i915_gem_object *reg_bo;
 	struct overlay_registers __iomem *regs;
 	u32 flip_addr;
+	u32 frontbuffer_bits;
 	/* flip handling */
 	struct i915_active last_flip;
 	void (*flip_complete)(struct intel_overlay *ovl);
@@ -255,7 +256,8 @@ alloc_request(struct intel_overlay *overlay, void (*fn)(struct intel_overlay *))
 }
 
 /* overlay needs to be disable in OCMD reg */
-static int intel_overlay_on(struct intel_overlay *overlay)
+static int intel_overlay_on(struct intel_overlay *overlay,
+			    u32 frontbuffer_bits)
 {
 	struct intel_display *display = overlay->display;
 	struct i915_request *rq;
@@ -274,6 +276,7 @@ static int intel_overlay_on(struct intel_overlay *overlay)
 	}
 
 	overlay->active = true;
+	overlay->frontbuffer_bits = frontbuffer_bits;
 
 	if (display->platform.i830)
 		i830_overlay_clock_gating(display, false);
@@ -293,7 +296,6 @@ static void intel_overlay_flip_prepare(struct intel_overlay *overlay,
 				       struct i915_vma *vma)
 {
 	struct intel_display *display = overlay->display;
-	enum pipe pipe = overlay->crtc->pipe;
 	struct intel_frontbuffer *frontbuffer = NULL;
 
 	drm_WARN_ON(display->drm, overlay->old_vma);
@@ -302,7 +304,7 @@ static void intel_overlay_flip_prepare(struct intel_overlay *overlay,
 		frontbuffer = intel_frontbuffer_get(intel_bo_to_drm_bo(vma->obj));
 
 	intel_frontbuffer_track(overlay->frontbuffer, frontbuffer,
-				INTEL_FRONTBUFFER_OVERLAY(pipe));
+				overlay->frontbuffer_bits);
 
 	if (overlay->frontbuffer)
 		intel_frontbuffer_put(overlay->frontbuffer);
@@ -364,7 +366,7 @@ static void intel_overlay_release_old_vma(struct intel_overlay *overlay)
 	if (drm_WARN_ON(display->drm, !vma))
 		return;
 
-	intel_frontbuffer_flip(display, INTEL_FRONTBUFFER_OVERLAY(overlay->crtc->pipe));
+	intel_frontbuffer_flip(display, overlay->frontbuffer_bits);
 
 	i915_vma_unpin(vma);
 	i915_vma_put(vma);
@@ -382,9 +384,8 @@ static void intel_overlay_off_tail(struct intel_overlay *overlay)
 
 	intel_overlay_release_old_vma(overlay);
 
-	overlay->crtc->overlay = NULL;
-	overlay->crtc = NULL;
 	overlay->active = false;
+	overlay->frontbuffer_bits = 0;
 
 	if (display->platform.i830)
 		i830_overlay_clock_gating(display, true);
@@ -506,6 +507,7 @@ void intel_overlay_reset(struct intel_display *display)
 	overlay->old_yscale = 0;
 	overlay->crtc = NULL;
 	overlay->active = false;
+	overlay->frontbuffer_bits = 0;
 }
 
 static int packed_depth_bytes(u32 format)
@@ -836,7 +838,7 @@ static int intel_overlay_do_put_image(struct intel_overlay *overlay,
 			OCONF_PIPE_A : OCONF_PIPE_B;
 		iowrite32(oconfig, &regs->OCONFIG);
 
-		ret = intel_overlay_on(overlay);
+		ret = intel_overlay_on(overlay, INTEL_FRONTBUFFER_OVERLAY(pipe));
 		if (ret != 0)
 			goto out_unpin;
 	}
@@ -924,6 +926,9 @@ int intel_overlay_switch_off(struct intel_overlay *overlay)
 
 	iowrite32(0, &overlay->regs->OCMD);
 
+	overlay->crtc->overlay = NULL;
+	overlay->crtc = NULL;
+
 	return intel_overlay_off(overlay);
 }
 
-- 
2.52.0

