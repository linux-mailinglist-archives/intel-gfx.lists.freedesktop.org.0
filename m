Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id qMpuCqQboGmzfgQAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Thu, 26 Feb 2026 11:08:36 +0100
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 9BAB81A401E
	for <lists+intel-gfx@lfdr.de>; Thu, 26 Feb 2026 11:08:35 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 2B9DF10E8B6;
	Thu, 26 Feb 2026 10:08:34 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="W4I6zppU";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.21])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 2684F10E8B6;
 Thu, 26 Feb 2026 10:08:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1772100513; x=1803636513;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=fZ4dVqk8R4q3RhYHyFYotMpxqZuW5XCg+cObzIr7t60=;
 b=W4I6zppUIhv60gF/7gSf71Ly++DhrbCSINuXSqFJ8biGUsiC3gUHzccX
 kWZwoKcUh1jxPB36MiF6nVIh6AtGphsEIslYtaFE2W4lx9Jez96+5aLfn
 ON8sdlDYH309T+5BAnByZpKO2xHtnveqSAof7ioZFEuD7LPBfC1oAicji
 x4eShjBijvGt5YpXwI5wYfNOwllUhakMzuambr89B5jV0+KfkAXuHyO/Q
 S9HJ4cSw1SU2bpAwupOfdVYk7TyNkOPc/1T5x/xOmHuwDShLOFaitgcbV
 Q02trNn+2Zjg+1M1J34j2D3KNMPZDLksruC7GSrYiuK50BLivzIJw3zd6 w==;
X-CSE-ConnectionGUID: t2ZaGNUITpqejwQ9khUxIQ==
X-CSE-MsgGUID: 5x67oiJjQEqCycEbIb2aZA==
X-IronPort-AV: E=McAfee;i="6800,10657,11712"; a="73029825"
X-IronPort-AV: E=Sophos;i="6.21,312,1763452800"; d="scan'208";a="73029825"
Received: from fmviesa010.fm.intel.com ([10.60.135.150])
 by orvoesa113.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 26 Feb 2026 02:08:33 -0800
X-CSE-ConnectionGUID: vEYNlvwURyev5vPNFiEgYg==
X-CSE-MsgGUID: 6haKYGvSQWijZmUiuml6Lw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.21,312,1763452800"; d="scan'208";a="214518253"
Received: from egrumbac-mobl6.ger.corp.intel.com (HELO localhost)
 ([10.245.244.224])
 by fmviesa010-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 26 Feb 2026 02:08:32 -0800
From: Ville Syrjala <ville.syrjala@linux.intel.com>
To: intel-gfx@lists.freedesktop.org
Cc: intel-xe@lists.freedesktop.org,
	Jani Nikula <jani.nikula@intel.com>
Subject: [PATCH v2 12/19] drm/i915/overlay: Rename low level i915 specific
 functions
Date: Thu, 26 Feb 2026 12:07:31 +0200
Message-ID: <20260226100738.29997-13-ville.syrjala@linux.intel.com>
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
X-Rspamd-Queue-Id: 9BAB81A401E
X-Rspamd-Action: no action

From: Ville Syrjälä <ville.syrjala@linux.intel.com>

Some of the lower level functions in the overlay code will
move to the i915 side of the upcoming parent vs. display
driver split. Move all such functions to the "i915_overlay_"
namespace to make it easier to see what belongs where.

Reviewed-by: Jani Nikula <jani.nikula@intel.com>
Signed-off-by: Ville Syrjälä <ville.syrjala@linux.intel.com>
---
 drivers/gpu/drm/i915/display/intel_overlay.c | 29 ++++++++++----------
 1 file changed, 14 insertions(+), 15 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_overlay.c b/drivers/gpu/drm/i915/display/intel_overlay.c
index 428d8a1d301f..906948397d21 100644
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

