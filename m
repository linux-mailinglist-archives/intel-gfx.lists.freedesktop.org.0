Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id eFtCJoAboGmzfgQAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Thu, 26 Feb 2026 11:08:00 +0100
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 12B021A3FBC
	for <lists+intel-gfx@lfdr.de>; Thu, 26 Feb 2026 11:08:00 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 83F1810E8B8;
	Thu, 26 Feb 2026 10:07:58 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="nrM3DJrO";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.9])
 by gabe.freedesktop.org (Postfix) with ESMTPS id A5D0810E8C0;
 Thu, 26 Feb 2026 10:07:56 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1772100477; x=1803636477;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=6iCrwkgmJ5VJwb5GsmN9wts8CSCWWcqlx+uFQjwmxl4=;
 b=nrM3DJrOJD/MkrGX0a1gTyYdR1DF24R1vDzFP29McbfD191o60eIBqnN
 IQ1f/tZ4dBGssj4pPWEjtKrHjHZudKc8YldPPS7dC6rmWYOK0XyF61sz1
 Nae4CzVCI6oFnUO8xBvWPHemEZdwCkqHUsGU6wR8L1aTaqqPd2bCmfTlv
 6UFOgdRJrF+XAL7yKZmrY/F7WX03N5FpDst6MT1z7D/BYczGirPd1T42i
 tVResDov6YR7bkmFf//mxr5vG/F7U4ZiTjNWd3CTxEC4ps/ojCUScoowF
 8U9XWBTgUo/5Y/xuqnmvk72cD4LtqiBzMLxBlv2Vw7ToYaHzcMK61Bac/ g==;
X-CSE-ConnectionGUID: eOk/OgAOQK+C1N4mEnRLfw==
X-CSE-MsgGUID: 50jBuwc5T/mu/nnXjVWDow==
X-IronPort-AV: E=McAfee;i="6800,10657,11712"; a="83866874"
X-IronPort-AV: E=Sophos;i="6.21,312,1763452800"; d="scan'208";a="83866874"
Received: from orviesa005.jf.intel.com ([10.64.159.145])
 by fmvoesa103.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 26 Feb 2026 02:07:57 -0800
X-CSE-ConnectionGUID: 2sO+evQ2T1+8+AeWaPZMcw==
X-CSE-MsgGUID: vW71uldlT1ath5iAR4o2pQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.21,312,1763452800"; d="scan'208";a="221512736"
Received: from egrumbac-mobl6.ger.corp.intel.com (HELO localhost)
 ([10.245.244.224])
 by orviesa005-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 26 Feb 2026 02:07:55 -0800
From: Ville Syrjala <ville.syrjala@linux.intel.com>
To: intel-gfx@lists.freedesktop.org
Cc: intel-xe@lists.freedesktop.org,
	Jani Nikula <jani.nikula@intel.com>
Subject: [PATCH v2 03/19] drm/i915/overlay: Extract i915_overlay_is_active()
Date: Thu, 26 Feb 2026 12:07:22 +0200
Message-ID: <20260226100738.29997-4-ville.syrjala@linux.intel.com>
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
X-Rspamd-Queue-Id: 12B021A3FBC
X-Rspamd-Action: no action

From: Ville Syrjälä <ville.syrjala@linux.intel.com>

Pull the "is the overlay active?" check to a helper
(i915_overlay_is_active()). This will have to move to the
i915 side of the parent vs. display driver split.

Reviewed-by: Jani Nikula <jani.nikula@intel.com>
Signed-off-by: Ville Syrjälä <ville.syrjala@linux.intel.com>
---
 drivers/gpu/drm/i915/display/intel_overlay.c | 22 +++++++++++++-------
 1 file changed, 15 insertions(+), 7 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_overlay.c b/drivers/gpu/drm/i915/display/intel_overlay.c
index 8bb1dcff35ea..5831af146b14 100644
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

