Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id yIaYDiYg4WmapQAAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Thu, 16 Apr 2026 19:45:10 +0200
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id B6C594132FC
	for <lists+intel-gfx@lfdr.de>; Thu, 16 Apr 2026 19:45:09 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 3E24510E8D5;
	Thu, 16 Apr 2026 17:45:08 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="Cr81Bpqd";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.19])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 3E93B10E8D5;
 Thu, 16 Apr 2026 17:45:07 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1776361507; x=1807897507;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=6cKC8Ad2tkQ0VsEjmup2YTSH6dTpt3ZXwGmQX4P71Is=;
 b=Cr81BpqdtNMCqGJSEOlBGXkXVpfMq3EUwa84lRQvyIG49EAkfIs3MDXV
 MTW4xCquI5Fe0+hq7klye4HrNDdqVS7uC4wnkxkpG7UXDQEMrLsRkKAdg
 jJ4L+h/hfgqJYKnPbrSLIn122J2uk79N0+ZyQALT87PJSYuUjP0xDYMzB
 wtRwQHcBtJcz0lsm+QLty86e2SmIMiRUHflxF91G9dQkFq0nOgQpRE+gx
 UDvYFhDRJjbKyYOD3DF9wgy047tDgNJM8fjhStaxm750NA9t20wTYzuR7
 CEj2LoXvvqGp0f7Hm72J8ewNFSYoT7DOBgvy3RBgxpYnj/YF+S77kUTpn w==;
X-CSE-ConnectionGUID: HAbG0pR3SH2iZxdaUGEaBw==
X-CSE-MsgGUID: CS/1fVsVTKypy1pVyaq3sw==
X-IronPort-AV: E=McAfee;i="6800,10657,11761"; a="77279616"
X-IronPort-AV: E=Sophos;i="6.23,181,1770624000"; d="scan'208";a="77279616"
Received: from orviesa010.jf.intel.com ([10.64.159.150])
 by orvoesa111.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 16 Apr 2026 10:45:06 -0700
X-CSE-ConnectionGUID: miEwPb3HQjaQ8RGiQGRBFg==
X-CSE-MsgGUID: fD9rr5YcTXK+1nSBKWKywA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.23,181,1770624000"; d="scan'208";a="229960287"
Received: from abityuts-desk.ger.corp.intel.com (HELO localhost)
 ([10.245.244.241])
 by orviesa010-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 16 Apr 2026 10:45:05 -0700
From: Ville Syrjala <ville.syrjala@linux.intel.com>
To: intel-gfx@lists.freedesktop.org
Cc: intel-xe@lists.freedesktop.org
Subject: [PATCH 03/11] drm/i915: Extract intel_fb_needs_cpu_access()
Date: Thu, 16 Apr 2026 20:44:39 +0300
Message-ID: <20260416174448.28264-4-ville.syrjala@linux.intel.com>
X-Mailer: git-send-email 2.52.0
In-Reply-To: <20260416174448.28264-1-ville.syrjala@linux.intel.com>
References: <20260416174448.28264-1-ville.syrjala@linux.intel.com>
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
X-Spamd-Result: default: False [-0.31 / 15.00];
	MID_CONTAINS_FROM(1.00)[];
	DMARC_POLICY_ALLOW(-0.50)[intel.com,none];
	MAILLIST(-0.20)[mailman];
	R_DKIM_ALLOW(-0.20)[intel.com:s=Intel];
	R_SPF_ALLOW(-0.20)[+ip4:131.252.210.177:c];
	RWL_MAILSPIKE_GOOD(-0.10)[131.252.210.177:from];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_COUNT_THREE(0.00)[4];
	RCPT_COUNT_TWO(0.00)[2];
	FROM_HAS_DN(0.00)[];
	ARC_NA(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	HAS_ORG_HEADER(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	DKIM_TRACE(0.00)[intel.com:+];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	TO_DN_NONE(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[ville.syrjala@linux.intel.com,intel-gfx-bounces@lists.freedesktop.org];
	MIME_TRACE(0.00)[0:+];
	NEURAL_HAM(-0.00)[-1.000];
	ASN(0.00)[asn:6366, ipnet:131.252.0.0/16, country:US];
	TAGGED_RCPT(0.00)[intel-gfx];
	DBL_BLOCKED_OPENRESOLVER(0.00)[gabe.freedesktop.org:helo,gabe.freedesktop.org:rdns,intel.com:dkim,intel.com:email,linux.intel.com:mid]
X-Rspamd-Queue-Id: B6C594132FC
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

From: Ville Syrjälä <ville.syrjala@linux.intel.com>

Replace the naked "does the framebuffer have a clear color
plane?" checks with a more abstract helper that simply tells
us whether we require CPU access to the framebuffer's memory.

Signed-off-by: Ville Syrjälä <ville.syrjala@linux.intel.com>
---
 drivers/gpu/drm/i915/display/intel_fb.c | 5 +++++
 drivers/gpu/drm/i915/display/intel_fb.h | 1 +
 drivers/gpu/drm/i915/i915_fb_pin.c      | 2 +-
 drivers/gpu/drm/xe/display/xe_fb_pin.c  | 2 +-
 4 files changed, 8 insertions(+), 2 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_fb.c b/drivers/gpu/drm/i915/display/intel_fb.c
index c4af368deffd..cbeb39ebdb73 100644
--- a/drivers/gpu/drm/i915/display/intel_fb.c
+++ b/drivers/gpu/drm/i915/display/intel_fb.c
@@ -521,6 +521,11 @@ bool intel_fb_needs_64k_phys(u64 modifier)
 				      INTEL_PLANE_CAP_NEED64K_PHYS);
 }
 
+bool intel_fb_needs_cpu_access(const struct drm_framebuffer *fb)
+{
+	return intel_fb_rc_ccs_cc_plane(fb) >= 0;
+}
+
 /**
  * intel_fb_is_tile4_modifier: Check if a modifier is a tile4 modifier type
  * @modifier: Modifier to check
diff --git a/drivers/gpu/drm/i915/display/intel_fb.h b/drivers/gpu/drm/i915/display/intel_fb.h
index fc2c4d59bf06..0a027e2595b2 100644
--- a/drivers/gpu/drm/i915/display/intel_fb.h
+++ b/drivers/gpu/drm/i915/display/intel_fb.h
@@ -38,6 +38,7 @@ bool intel_fb_is_rc_ccs_cc_modifier(u64 modifier);
 bool intel_fb_is_mc_ccs_modifier(u64 modifier);
 bool intel_fb_needs_64k_phys(u64 modifier);
 bool intel_fb_is_tile4_modifier(u64 modifier);
+bool intel_fb_needs_cpu_access(const struct drm_framebuffer *fb);
 
 bool intel_fb_is_ccs_aux_plane(const struct drm_framebuffer *fb, int color_plane);
 int intel_fb_rc_ccs_cc_plane(const struct drm_framebuffer *fb);
diff --git a/drivers/gpu/drm/i915/i915_fb_pin.c b/drivers/gpu/drm/i915/i915_fb_pin.c
index 4fe6b9859b3f..780be25ad43b 100644
--- a/drivers/gpu/drm/i915/i915_fb_pin.c
+++ b/drivers/gpu/drm/i915/i915_fb_pin.c
@@ -61,7 +61,7 @@ intel_fb_pin_to_dpt(const struct drm_framebuffer *fb,
 			 * ensure it is always in the mappable part of lmem, if this is
 			 * a small-bar device.
 			 */
-			if (intel_fb_rc_ccs_cc_plane(fb) >= 0)
+			if (intel_fb_needs_cpu_access(fb))
 				flags &= ~I915_BO_ALLOC_GPU_ONLY;
 			ret = __i915_gem_object_migrate(obj, &ww, INTEL_REGION_LMEM_0,
 							flags);
diff --git a/drivers/gpu/drm/xe/display/xe_fb_pin.c b/drivers/gpu/drm/xe/display/xe_fb_pin.c
index 58cd527e1fde..205492639dba 100644
--- a/drivers/gpu/drm/xe/display/xe_fb_pin.c
+++ b/drivers/gpu/drm/xe/display/xe_fb_pin.c
@@ -335,7 +335,7 @@ static struct i915_vma *__xe_pin_fb_vma(const struct intel_framebuffer *fb,
 
 	refcount_set(&vma->ref, 1);
 	if (IS_DGFX(to_xe_device(bo->ttm.base.dev)) &&
-	    intel_fb_rc_ccs_cc_plane(&fb->base) >= 0 &&
+	    intel_fb_needs_cpu_access(&fb->base) &&
 	    !(bo->flags & XE_BO_FLAG_NEEDS_CPU_ACCESS)) {
 		struct xe_vram_region *vram = xe_device_get_root_tile(xe)->mem.vram;
 
-- 
2.52.0

