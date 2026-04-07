Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id uNUSKMjW1GnuxwcAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Tue, 07 Apr 2026 12:04:56 +0200
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 377193AC7F2
	for <lists+intel-gfx@lfdr.de>; Tue, 07 Apr 2026 12:04:56 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id ADFA310E3B0;
	Tue,  7 Apr 2026 10:04:54 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="kZy8QmR8";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.17])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 6A80D10E3AF;
 Tue,  7 Apr 2026 10:04:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1775556294; x=1807092294;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=rwGavcf0Oc4ubIN6s+oZ5Ou98bYr3Kz2pD+W+YsPR38=;
 b=kZy8QmR8dInLkdsqvOYob91Lxu1lIq7dNGdAMdtc1/dlCCo8nPtw3iBQ
 ++okU8xPuktpFoKSi7o0baqJjosewjOw547vfjc2oDJN2KZHf5aOgnA0P
 kmeeRqAYDBcmDmoKSa9VP4h/wqDuXeihVE0KbgDiWr2xzXwVlBnVSRRrm
 DY1erUEjHa1FDirjjYoYJKp3cLtx4asx/FRuPv4nF4xwkmu2EFzHtVuC/
 mWzyqvARecHdHA/Qbn8/uz1LZ2pNwuFLIDcTleBsZ3lROvRm9yhSPs9wR
 nPEgcllM+tZKQi+fUfbPY6AD+6PHTDqW8katu92lyT17M/cVab3zluq63 w==;
X-CSE-ConnectionGUID: yiPMvwd/QVSW7BNsiT7rOg==
X-CSE-MsgGUID: G79gB3TCS/e9Qj53QHLdaw==
X-IronPort-AV: E=McAfee;i="6800,10657,11751"; a="76410761"
X-IronPort-AV: E=Sophos;i="6.23,165,1770624000"; d="scan'208";a="76410761"
Received: from fmviesa009.fm.intel.com ([10.60.135.149])
 by fmvoesa111.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 07 Apr 2026 03:04:53 -0700
X-CSE-ConnectionGUID: Aq6YrPaaRGir7+cxissukg==
X-CSE-MsgGUID: yw6uonzRTYizRwEgoqn0QA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.23,165,1770624000"; d="scan'208";a="221555409"
Received: from mjarzebo-mobl1.ger.corp.intel.com (HELO localhost)
 ([10.245.246.244])
 by fmviesa009-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 07 Apr 2026 03:04:51 -0700
From: Jani Nikula <jani.nikula@intel.com>
To: intel-gfx@lists.freedesktop.org,
	intel-xe@lists.freedesktop.org
Cc: jani.nikula@intel.com,
	ville.syrjala@linux.intel.com
Subject: [PATCH 2/3] drm/i915/pin: s/dev_priv/i915/ and drop struct drm_device
 usage
Date: Tue,  7 Apr 2026 13:04:36 +0300
Message-ID: <3a4ac0a732a561a487e46838bde6327cff5ccb38.1775556190.git.jani.nikula@intel.com>
X-Mailer: git-send-email 2.47.3
In-Reply-To: <cover.1775556190.git.jani.nikula@intel.com>
References: <cover.1775556190.git.jani.nikula@intel.com>
MIME-Version: 1.0
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
X-Spamd-Result: default: False [0.19 / 15.00];
	MID_CONTAINS_FROM(1.00)[];
	R_MISSING_CHARSET(0.50)[];
	DMARC_POLICY_ALLOW(-0.50)[intel.com,none];
	MAILLIST(-0.20)[mailman];
	R_SPF_ALLOW(-0.20)[+ip4:131.252.210.177:c];
	R_DKIM_ALLOW(-0.20)[intel.com:s=Intel];
	RWL_MAILSPIKE_GOOD(-0.10)[131.252.210.177:from];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	DKIM_TRACE(0.00)[intel.com:+];
	RCVD_TLS_LAST(0.00)[];
	RCVD_COUNT_THREE(0.00)[4];
	ARC_NA(0.00)[];
	HAS_ORG_HEADER(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	MIME_TRACE(0.00)[0:+];
	TO_DN_NONE(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[jani.nikula@intel.com,intel-gfx-bounces@lists.freedesktop.org];
	FROM_HAS_DN(0.00)[];
	RCPT_COUNT_THREE(0.00)[4];
	NEURAL_HAM(-0.00)[-0.999];
	FORGED_SENDER_MAILLIST(0.00)[];
	TAGGED_RCPT(0.00)[intel-gfx];
	ASN(0.00)[asn:6366, ipnet:131.252.0.0/16, country:US];
	DBL_BLOCKED_OPENRESOLVER(0.00)[intel.com:dkim,intel.com:email,intel.com:mid,gabe.freedesktop.org:helo,gabe.freedesktop.org:rdns]
X-Rspamd-Queue-Id: 377193AC7F2
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

Improve consistency within i915_fb_pin.c by replacing dev_priv naming
with i915, and dropping struct drm_device usage.

Signed-off-by: Jani Nikula <jani.nikula@intel.com>
---
 drivers/gpu/drm/i915/i915_fb_pin.c | 24 +++++++++++-------------
 1 file changed, 11 insertions(+), 13 deletions(-)

diff --git a/drivers/gpu/drm/i915/i915_fb_pin.c b/drivers/gpu/drm/i915/i915_fb_pin.c
index 580acbb14ada..9ef10cb3e3aa 100644
--- a/drivers/gpu/drm/i915/i915_fb_pin.c
+++ b/drivers/gpu/drm/i915/i915_fb_pin.c
@@ -30,9 +30,8 @@ intel_fb_pin_to_dpt(const struct drm_framebuffer *fb,
 		    unsigned long *out_flags,
 		    struct intel_dpt *dpt)
 {
-	struct drm_device *dev = fb->dev;
-	struct intel_display *display = to_intel_display(dev);
-	struct drm_i915_private *dev_priv = to_i915(dev);
+	struct intel_display *display = to_intel_display(fb->dev);
+	struct drm_i915_private *i915 = to_i915(fb->dev);
 	struct drm_gem_object *_obj = intel_fb_bo(fb);
 	struct drm_i915_gem_object *obj = to_intel_bo(_obj);
 	struct i915_address_space *vm = i915_dpt_to_vm(dpt);
@@ -44,7 +43,7 @@ intel_fb_pin_to_dpt(const struct drm_framebuffer *fb,
 	 * We are not syncing against the binding (and potential migrations)
 	 * below, so this vm must never be async.
 	 */
-	if (drm_WARN_ON(&dev_priv->drm, vm->bind_async_flags))
+	if (drm_WARN_ON(&i915->drm, vm->bind_async_flags))
 		return ERR_PTR(-EINVAL);
 
 	if (WARN_ON(!i915_gem_object_is_framebuffer(obj)))
@@ -57,7 +56,7 @@ intel_fb_pin_to_dpt(const struct drm_framebuffer *fb,
 		if (ret)
 			continue;
 
-		if (HAS_LMEM(dev_priv)) {
+		if (HAS_LMEM(i915)) {
 			unsigned int flags = obj->flags;
 
 			/*
@@ -119,9 +118,8 @@ intel_fb_pin_to_ggtt(const struct drm_framebuffer *fb,
 		     bool uses_fence,
 		     unsigned long *out_flags)
 {
-	struct drm_device *dev = fb->dev;
-	struct intel_display *display = to_intel_display(dev);
-	struct drm_i915_private *dev_priv = to_i915(dev);
+	struct intel_display *display = to_intel_display(fb->dev);
+	struct drm_i915_private *i915 = to_i915(fb->dev);
 	struct drm_gem_object *_obj = intel_fb_bo(fb);
 	struct drm_i915_gem_object *obj = to_intel_bo(_obj);
 	struct ref_tracker *wakeref;
@@ -130,10 +128,10 @@ intel_fb_pin_to_ggtt(const struct drm_framebuffer *fb,
 	unsigned int pinctl;
 	int ret;
 
-	if (drm_WARN_ON(dev, !i915_gem_object_is_framebuffer(obj)))
+	if (drm_WARN_ON(&i915->drm, !i915_gem_object_is_framebuffer(obj)))
 		return ERR_PTR(-EINVAL);
 
-	if (drm_WARN_ON(dev, alignment && !is_power_of_2(alignment)))
+	if (drm_WARN_ON(&i915->drm, alignment && !is_power_of_2(alignment)))
 		return ERR_PTR(-EINVAL);
 
 	/*
@@ -164,7 +162,7 @@ intel_fb_pin_to_ggtt(const struct drm_framebuffer *fb,
 	ret = i915_gem_object_lock(obj, &ww);
 	if (!ret && phys_alignment)
 		ret = i915_gem_object_attach_phys(obj, phys_alignment);
-	else if (!ret && HAS_LMEM(dev_priv))
+	else if (!ret && HAS_LMEM(i915))
 		ret = i915_gem_object_migrate(obj, &ww, INTEL_REGION_LMEM_0);
 	if (!ret)
 		ret = i915_gem_object_pin_pages(obj);
@@ -265,7 +263,7 @@ intel_plane_fb_vtd_guard(const struct intel_plane_state *plane_state)
 int intel_plane_pin_fb(struct intel_plane_state *plane_state,
 		       const struct intel_plane_state *old_plane_state)
 {
-	struct intel_display *display = to_intel_display(plane_state);
+	struct drm_i915_private *i915 = to_i915(plane_state->uapi.plane->dev);
 	struct intel_plane *plane = to_intel_plane(plane_state->uapi.plane);
 	const struct intel_framebuffer *fb =
 		to_intel_framebuffer(plane_state->hw.fb);
@@ -309,7 +307,7 @@ int intel_plane_pin_fb(struct intel_plane_state *plane_state,
 		 * The DPT object contains only one vma, and there is no VT-d
 		 * guard, so the VMA's offset within the DPT is always 0.
 		 */
-		drm_WARN_ON(display->drm, i915_dpt_offset(plane_state->dpt_vma));
+		drm_WARN_ON(&i915->drm, i915_dpt_offset(plane_state->dpt_vma));
 	}
 
 	/*
-- 
2.47.3

