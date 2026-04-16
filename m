Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id sAqULikg4WmapQAAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Thu, 16 Apr 2026 19:45:13 +0200
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 6DC8441330B
	for <lists+intel-gfx@lfdr.de>; Thu, 16 Apr 2026 19:45:13 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id EA58910E91F;
	Thu, 16 Apr 2026 17:45:11 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="KmTzQmZZ";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.19])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 459FA10E922;
 Thu, 16 Apr 2026 17:45:11 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1776361511; x=1807897511;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=L+KizgliHsWegnU3FScyDUT3G3eWrzAyvJflPtdRjRo=;
 b=KmTzQmZZVaqdRB3J3+FjMRyzegbPhCWXfUQhB81A+JrP3KYmheMp1k1U
 njL48lKTZSWydi9XRYnMuxqElIFf9RW5Skj1NaLEDJtsCkn/mBTl7BUKp
 f2Krex2pop9YuucAAW1k05FW1QX2e75/FMLALMmo8A0aoBI43Csi2n59q
 wkFQY5cwmJS8UHkH+2z835SteUMAsHaQv4dqYpojiwK9IEc3nf2ICDXvN
 +tcHz88MrfpOar9jHZ/8xyZHHhmcbncUROqm5RZ4XoTuAoGdWah06w+Pv
 mKZ4RGpjVu8lEk3xI9fQYI+16GOiZrm7C+P2SCmSMQzHHC10CwQXsCbw6 g==;
X-CSE-ConnectionGUID: agYvpJ45TI+oIXu5dRNhXw==
X-CSE-MsgGUID: Mc6ZCTSzRIiFH+t0H8T2+A==
X-IronPort-AV: E=McAfee;i="6800,10657,11761"; a="77279625"
X-IronPort-AV: E=Sophos;i="6.23,181,1770624000"; d="scan'208";a="77279625"
Received: from orviesa010.jf.intel.com ([10.64.159.150])
 by orvoesa111.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 16 Apr 2026 10:45:11 -0700
X-CSE-ConnectionGUID: mkfroX1FRWWvO5qkwLRvOw==
X-CSE-MsgGUID: uNX/DD50QTSmr7JppGGPZQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.23,181,1770624000"; d="scan'208";a="229960319"
Received: from abityuts-desk.ger.corp.intel.com (HELO localhost)
 ([10.245.244.241])
 by orviesa010-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 16 Apr 2026 10:45:10 -0700
From: Ville Syrjala <ville.syrjala@linux.intel.com>
To: intel-gfx@lists.freedesktop.org
Cc: intel-xe@lists.freedesktop.org
Subject: [PATCH 04/11] drm/i915: Introduce pin_params.needs_cpu_lmem_access
Date: Thu, 16 Apr 2026 20:44:40 +0300
Message-ID: <20260416174448.28264-5-ville.syrjala@linux.intel.com>
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
	DBL_BLOCKED_OPENRESOLVER(0.00)[intel.com:dkim,intel.com:email,linux.intel.com:mid,gabe.freedesktop.org:helo,gabe.freedesktop.org:rdns]
X-Rspamd-Queue-Id: 6DC8441330B
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

From: Ville Syrjälä <ville.syrjala@linux.intel.com>

Add a new flag pin_params.neeeds_cpu_lmem_access so that the
low level pinning code doesn't need to peek into the display
driver's framebuffer structure.

Signed-off-by: Ville Syrjälä <ville.syrjala@linux.intel.com>
---
 drivers/gpu/drm/i915/display/intel_fb_pin.h | 1 +
 drivers/gpu/drm/i915/i915_fb_pin.c          | 4 +++-
 drivers/gpu/drm/xe/display/xe_fb_pin.c      | 3 ++-
 3 files changed, 6 insertions(+), 2 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_fb_pin.h b/drivers/gpu/drm/i915/display/intel_fb_pin.h
index e6271437459d..bcf5a1f46092 100644
--- a/drivers/gpu/drm/i915/display/intel_fb_pin.h
+++ b/drivers/gpu/drm/i915/display/intel_fb_pin.h
@@ -19,6 +19,7 @@ struct intel_fb_pin_params {
 	unsigned int alignment;
 	unsigned int phys_alignment;
 	unsigned int vtd_guard;
+	bool needs_cpu_lmem_access;
 };
 
 struct i915_vma *
diff --git a/drivers/gpu/drm/i915/i915_fb_pin.c b/drivers/gpu/drm/i915/i915_fb_pin.c
index 780be25ad43b..96ffc4b0d809 100644
--- a/drivers/gpu/drm/i915/i915_fb_pin.c
+++ b/drivers/gpu/drm/i915/i915_fb_pin.c
@@ -61,7 +61,7 @@ intel_fb_pin_to_dpt(const struct drm_framebuffer *fb,
 			 * ensure it is always in the mappable part of lmem, if this is
 			 * a small-bar device.
 			 */
-			if (intel_fb_needs_cpu_access(fb))
+			if (pin_params->needs_cpu_lmem_access)
 				flags &= ~I915_BO_ALLOC_GPU_ONLY;
 			ret = __i915_gem_object_migrate(obj, &ww, INTEL_REGION_LMEM_0,
 							flags);
@@ -275,6 +275,7 @@ int intel_plane_pin_fb(struct intel_plane_state *plane_state,
 			.alignment = intel_plane_fb_min_alignment(plane_state),
 			.phys_alignment = intel_plane_fb_min_phys_alignment(plane_state),
 			.vtd_guard = intel_plane_fb_vtd_guard(plane_state),
+			.needs_cpu_lmem_access = intel_fb_needs_cpu_access(&fb->base),
 		};
 		int fence_id = -1;
 
@@ -289,6 +290,7 @@ int intel_plane_pin_fb(struct intel_plane_state *plane_state,
 		struct intel_fb_pin_params pin_params = {
 			.view = &plane_state->view.gtt,
 			.alignment = intel_plane_fb_min_alignment(plane_state),
+			.needs_cpu_lmem_access = intel_fb_needs_cpu_access(&fb->base),
 		};
 
 		vma = i915_dpt_pin_to_ggtt(fb->dpt, pin_params.alignment / 512);
diff --git a/drivers/gpu/drm/xe/display/xe_fb_pin.c b/drivers/gpu/drm/xe/display/xe_fb_pin.c
index 205492639dba..a4eb06cfa769 100644
--- a/drivers/gpu/drm/xe/display/xe_fb_pin.c
+++ b/drivers/gpu/drm/xe/display/xe_fb_pin.c
@@ -335,7 +335,7 @@ static struct i915_vma *__xe_pin_fb_vma(const struct intel_framebuffer *fb,
 
 	refcount_set(&vma->ref, 1);
 	if (IS_DGFX(to_xe_device(bo->ttm.base.dev)) &&
-	    intel_fb_needs_cpu_access(&fb->base) &&
+	    pin_params->needs_cpu_lmem_access &&
 	    !(bo->flags & XE_BO_FLAG_NEEDS_CPU_ACCESS)) {
 		struct xe_vram_region *vram = xe_device_get_root_tile(xe)->mem.vram;
 
@@ -474,6 +474,7 @@ int intel_plane_pin_fb(struct intel_plane_state *new_plane_state,
 	struct intel_fb_pin_params pin_params = {
 		.view = &new_plane_state->view.gtt,
 		.alignment = plane->min_alignment(plane, fb, 0),
+		.needs_cpu_lmem_access = intel_fb_needs_cpu_access(fb),
 	};
 
 	if (reuse_vma(new_plane_state, old_plane_state))
-- 
2.52.0

