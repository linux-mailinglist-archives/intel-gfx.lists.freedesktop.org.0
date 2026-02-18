Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id OJ2hEJvalWn3VQIAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Wed, 18 Feb 2026 16:28:27 +0100
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id B8FAF157643
	for <lists+intel-gfx@lfdr.de>; Wed, 18 Feb 2026 16:28:26 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 5424110E5D3;
	Wed, 18 Feb 2026 15:28:25 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="JOfOtDoI";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.17])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 426E610E0F8;
 Wed, 18 Feb 2026 15:28:24 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1771428504; x=1802964504;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=oiUrQAHt10XtQB5bPV2KvIe2UvOHJSjGDYqs3ew8AJo=;
 b=JOfOtDoIJvlG2FoHplzNPOdOS5G4+eRAphLWPiA2r+/jGMGEiKMiN/JQ
 k8koKOKJC9EhM+QMzZFfKEwaxpxwUDqxxED0oZQt91gDw+lKEE5B6LhiD
 TMVteNvu1KOxvXDTMOF8423jM3sumPHnLV+GwtBoX7MDXP5CCuCrOXLRX
 6E1/G7NICQA3YGcAM6gqXzsY2IAQlbwBLdgDo5EI8p93Htp9WWffnQduP
 u4Cp5bvwO8/t2qewlVFYtbs8ixPTkLBtxQvsHKD3eTgldBqoIMiGxRqZI
 QeC7/HKg9DGCsRd7HRywvWIVW/y8qasKm+7rEcW7oHrLwcJMd9piC9hbA g==;
X-CSE-ConnectionGUID: 21+Jlf20SYaYQW5rw3D/nw==
X-CSE-MsgGUID: bbTRW9PCQ6Gs+ezSVoocVg==
X-IronPort-AV: E=McAfee;i="6800,10657,11705"; a="72420157"
X-IronPort-AV: E=Sophos;i="6.21,298,1763452800"; d="scan'208";a="72420157"
Received: from orviesa007.jf.intel.com ([10.64.159.147])
 by fmvoesa111.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 18 Feb 2026 07:28:24 -0800
X-CSE-ConnectionGUID: GRe3pACqQ4abi/qMrNhQvQ==
X-CSE-MsgGUID: ySZSMNr1SVSXj4Ja++BGnw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.21,298,1763452800"; d="scan'208";a="214335104"
Received: from vpanait-mobl.ger.corp.intel.com (HELO localhost)
 ([10.245.244.66])
 by orviesa007-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 18 Feb 2026 07:28:23 -0800
From: Ville Syrjala <ville.syrjala@linux.intel.com>
To: intel-gfx@lists.freedesktop.org
Cc: intel-xe@lists.freedesktop.org
Subject: [PATCH 03/19] drm/i915/overlay: Extract i915_overlay_is_active()
Date: Wed, 18 Feb 2026 17:27:50 +0200
Message-ID: <20260218152806.18885-4-ville.syrjala@linux.intel.com>
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
X-Rspamd-Queue-Id: B8FAF157643
X-Rspamd-Action: no action

From: Ville Syrjälä <ville.syrjala@linux.intel.com>

Pull the "is the overlay active?" check to a helper
(i915_overlay_is_active()). This will have to move to the
i915 side of the parent vs. display driver split.

Signed-off-by: Ville Syrjälä <ville.syrjala@linux.intel.com>
---
 drivers/gpu/drm/i915/display/intel_overlay.c | 22 +++++++++++++-------
 1 file changed, 15 insertions(+), 7 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_overlay.c b/drivers/gpu/drm/i915/display/intel_overlay.c
index dd04e75fe3a7..32b45e9bc18a 100644
--- a/drivers/gpu/drm/i915/display/intel_overlay.c
+++ b/drivers/gpu/drm/i915/display/intel_overlay.c
@@ -255,6 +255,14 @@ alloc_request(struct intel_overlay *overlay, void (*fn)(struct intel_overlay *))
 	return rq;
 }
 
+static bool i915_overlay_is_active(struct drm_device *drm)
+{
+	struct intel_display *display = to_intel_display(drm);
+	struct intel_overlay *overlay = display->overlay;
+
+	return overlay->active;
+}
+
 /* overlay needs to be disable in OCMD reg */
 static int intel_overlay_on(struct intel_overlay *overlay,
 			    u32 frontbuffer_bits)
@@ -263,7 +271,7 @@ static int intel_overlay_on(struct intel_overlay *overlay,
 	struct i915_request *rq;
 	u32 *cs;
 
-	drm_WARN_ON(display->drm, overlay->active);
+	drm_WARN_ON(display->drm, i915_overlay_is_active(display->drm));
 
 	rq = alloc_request(overlay, NULL);
 	if (IS_ERR(rq))
@@ -327,7 +335,7 @@ static int intel_overlay_continue(struct intel_overlay *overlay,
 	u32 flip_addr = overlay->flip_addr;
 	u32 tmp, *cs;
 
-	drm_WARN_ON(display->drm, !overlay->active);
+	drm_WARN_ON(display->drm, !i915_overlay_is_active(display->drm));
 
 	if (load_polyphase_filter)
 		flip_addr |= OFC_UPDATE;
@@ -407,7 +415,7 @@ static int intel_overlay_off(struct intel_overlay *overlay)
 	struct i915_request *rq;
 	u32 *cs, flip_addr = overlay->flip_addr;
 
-	drm_WARN_ON(display->drm, !overlay->active);
+	drm_WARN_ON(display->drm, !i915_overlay_is_active(display->drm));
 
 	/*
 	 * According to intel docs the overlay hw may hang (when switching
@@ -822,7 +830,7 @@ static int intel_overlay_do_put_image(struct intel_overlay *overlay,
 		goto out_pin_section;
 	}
 
-	if (!overlay->active) {
+	if (!i915_overlay_is_active(display->drm)) {
 		const struct intel_crtc_state *crtc_state =
 			overlay->crtc->config;
 		u32 oconfig = 0;
@@ -917,7 +925,7 @@ int intel_overlay_switch_off(struct intel_overlay *overlay)
 	if (ret != 0)
 		return ret;
 
-	if (!overlay->active)
+	if (!i915_overlay_is_active(display->drm))
 		return 0;
 
 	ret = intel_overlay_release_old_vid(overlay);
@@ -1333,7 +1341,7 @@ int intel_overlay_attrs_ioctl(struct drm_device *dev, void *data,
 			if (DISPLAY_VER(display) == 2)
 				goto out_unlock;
 
-			if (overlay->active) {
+			if (i915_overlay_is_active(display->drm)) {
 				ret = -EBUSY;
 				goto out_unlock;
 			}
@@ -1462,7 +1470,7 @@ void intel_overlay_cleanup(struct intel_display *display)
 	 * Furthermore modesetting teardown happens beforehand so the
 	 * hardware should be off already.
 	 */
-	drm_WARN_ON(display->drm, overlay->active);
+	drm_WARN_ON(display->drm, i915_overlay_is_active(display->drm));
 
 	i915_gem_object_put(overlay->reg_bo);
 	i915_active_fini(&overlay->last_flip);
-- 
2.52.0

