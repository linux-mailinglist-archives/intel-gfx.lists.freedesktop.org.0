Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id 6DHrHcDalWn3VQIAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Wed, 18 Feb 2026 16:29:04 +0100
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id F3D0F157683
	for <lists+intel-gfx@lfdr.de>; Wed, 18 Feb 2026 16:29:03 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 8DD6010E5EC;
	Wed, 18 Feb 2026 15:29:02 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="gbbJ7u37";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.16])
 by gabe.freedesktop.org (Postfix) with ESMTPS id B50A010E5EC;
 Wed, 18 Feb 2026 15:29:01 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1771428541; x=1802964541;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=J52/Dx1SWC2gGY37yIUD6f3Sm31b7e5fGCbA+oa4XJ8=;
 b=gbbJ7u3745P5wV7oYJVtgo8tYUWTz+YJwY5prEd8Np25Ofphai9D1oHm
 WmLqZve/wtHmD8OM29Ox9aTi93QQhWlz1w5WLjYyofPCtcjLP4PSS7XH4
 U0e70wpjWKLPWV8qXCS/6dQVEb6AnbbEb4ZiP79C5KIUl4I5SuyAcfQrf
 ywrLcvEZ3Zs1uS28/+ez4uWTRFIuSfrNWdQg3yr6b2ULgs7zyz0DuqDSB
 1vkwkWf7KoLnMxv1N1sJV3gUKz37oj1wODx44tBLUTbWZ5WxQM/EsHRFD
 XrMTVU0ONyYPblNCOLMAf7JxWHD6DLKhtdFZDHgE7b+0d4/6XdpZE6LoP Q==;
X-CSE-ConnectionGUID: 2jDB4j8oRYidwreAer7ncA==
X-CSE-MsgGUID: uxBEApNaRXWnqctkupa+qw==
X-IronPort-AV: E=McAfee;i="6800,10657,11705"; a="60084486"
X-IronPort-AV: E=Sophos;i="6.21,298,1763452800"; d="scan'208";a="60084486"
Received: from fmviesa005.fm.intel.com ([10.60.135.145])
 by fmvoesa110.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 18 Feb 2026 07:29:01 -0800
X-CSE-ConnectionGUID: LWy0P5kQQZSiT6exkkzv4w==
X-CSE-MsgGUID: pEcgMKCHQQy6ihBEygYnsA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.21,298,1763452800"; d="scan'208";a="218756665"
Received: from vpanait-mobl.ger.corp.intel.com (HELO localhost)
 ([10.245.244.66])
 by fmviesa005-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 18 Feb 2026 07:29:00 -0800
From: Ville Syrjala <ville.syrjala@linux.intel.com>
To: intel-gfx@lists.freedesktop.org
Cc: intel-xe@lists.freedesktop.org
Subject: [PATCH 12/19] drm/i915/overlay: Rename low level i915 specific
 functions
Date: Wed, 18 Feb 2026 17:27:59 +0200
Message-ID: <20260218152806.18885-13-ville.syrjala@linux.intel.com>
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
	DBL_BLOCKED_OPENRESOLVER(0.00)[intel.com:email,intel.com:dkim,linux.intel.com:mid,gabe.freedesktop.org:helo,gabe.freedesktop.org:rdns];
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
X-Rspamd-Queue-Id: F3D0F157683
X-Rspamd-Action: no action

From: Ville Syrjälä <ville.syrjala@linux.intel.com>

Some of the lower level functions in the overlay code will
move to the i915 side of the upcoming parent vs. display
driver split. Move all such functions to the "i915_overlay_"
to make it easier to see what belongs where.

Signed-off-by: Ville Syrjälä <ville.syrjala@linux.intel.com>
---
 drivers/gpu/drm/i915/display/intel_overlay.c | 29 ++++++++++----------
 1 file changed, 14 insertions(+), 15 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_overlay.c b/drivers/gpu/drm/i915/display/intel_overlay.c
index 24579c9a7fec..7b9bb83ed72f 100644
--- a/drivers/gpu/drm/i915/display/intel_overlay.c
+++ b/drivers/gpu/drm/i915/display/intel_overlay.c
@@ -298,8 +298,8 @@ static int intel_overlay_on(struct intel_overlay *overlay,
 	return i915_active_wait(&overlay->last_flip);
 }
 
-static void intel_overlay_flip_prepare(struct intel_overlay *overlay,
-				       struct i915_vma *vma)
+static void i915_overlay_flip_prepare(struct intel_overlay *overlay,
+				      struct i915_vma *vma)
 {
 	struct intel_display *display = overlay->display;
 	struct intel_frontbuffer *frontbuffer = NULL;
@@ -352,13 +352,13 @@ static int intel_overlay_continue(struct intel_overlay *overlay,
 	*cs++ = flip_addr;
 	intel_ring_advance(rq, cs);
 
-	intel_overlay_flip_prepare(overlay, vma);
+	i915_overlay_flip_prepare(overlay, vma);
 	i915_request_add(rq);
 
 	return 0;
 }
 
-static void intel_overlay_release_old_vma(struct intel_overlay *overlay)
+static void i915_overlay_release_old_vma(struct intel_overlay *overlay)
 {
 	struct intel_display *display = overlay->display;
 	struct i915_vma *vma;
@@ -373,17 +373,16 @@ static void intel_overlay_release_old_vma(struct intel_overlay *overlay)
 	i915_vma_put(vma);
 }
 
-static void
-intel_overlay_release_old_vid_tail(struct intel_overlay *overlay)
+static void i915_overlay_release_old_vid_tail(struct intel_overlay *overlay)
 {
-	intel_overlay_release_old_vma(overlay);
+	i915_overlay_release_old_vma(overlay);
 }
 
-static void intel_overlay_off_tail(struct intel_overlay *overlay)
+static void i915_overlay_off_tail(struct intel_overlay *overlay)
 {
 	struct intel_display *display = overlay->display;
 
-	intel_overlay_release_old_vma(overlay);
+	i915_overlay_release_old_vma(overlay);
 
 	overlay->frontbuffer_bits = 0;
 
@@ -391,7 +390,7 @@ static void intel_overlay_off_tail(struct intel_overlay *overlay)
 		i830_overlay_clock_gating(display, true);
 }
 
-static void intel_overlay_last_flip_retire(struct i915_active *active)
+static void i915_overlay_last_flip_retire(struct i915_active *active)
 {
 	struct intel_overlay *overlay =
 		container_of(active, typeof(*overlay), last_flip);
@@ -417,7 +416,7 @@ static int intel_overlay_off(struct intel_overlay *overlay)
 	 */
 	flip_addr |= OFC_UPDATE;
 
-	rq = alloc_request(overlay, intel_overlay_off_tail);
+	rq = alloc_request(overlay, i915_overlay_off_tail);
 	if (IS_ERR(rq))
 		return PTR_ERR(rq);
 
@@ -439,7 +438,7 @@ static int intel_overlay_off(struct intel_overlay *overlay)
 
 	intel_ring_advance(rq, cs);
 
-	intel_overlay_flip_prepare(overlay, NULL);
+	i915_overlay_flip_prepare(overlay, NULL);
 	i915_request_add(rq);
 
 	return i915_active_wait(&overlay->last_flip);
@@ -473,11 +472,11 @@ static int intel_overlay_release_old_vid(struct intel_overlay *overlay)
 		return 0;
 
 	if (!(intel_de_read(display, GEN2_ISR) & I915_OVERLAY_PLANE_FLIP_PENDING_INTERRUPT)) {
-		intel_overlay_release_old_vid_tail(overlay);
+		i915_overlay_release_old_vid_tail(overlay);
 		return 0;
 	}
 
-	rq = alloc_request(overlay, intel_overlay_release_old_vid_tail);
+	rq = alloc_request(overlay, i915_overlay_release_old_vid_tail);
 	if (IS_ERR(rq))
 		return PTR_ERR(rq);
 
@@ -1454,7 +1453,7 @@ static int i915_overlay_setup(struct drm_device *drm,
 	overlay->context = engine->kernel_context;
 
 	i915_active_init(&overlay->last_flip,
-			 NULL, intel_overlay_last_flip_retire, 0);
+			 NULL, i915_overlay_last_flip_retire, 0);
 
 	return get_registers(overlay, needs_physical);
 }
-- 
2.52.0

