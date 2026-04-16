Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id UFCZAkUg4WmapQAAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Thu, 16 Apr 2026 19:45:41 +0200
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id AC69A413346
	for <lists+intel-gfx@lfdr.de>; Thu, 16 Apr 2026 19:45:40 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 3FBDC10E926;
	Thu, 16 Apr 2026 17:45:39 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="IFHyY8KH";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.19])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 1072B10E92B;
 Thu, 16 Apr 2026 17:45:38 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1776361538; x=1807897538;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=20yqELnQH1PoLEuwnMTXh9estpB+kNnZF0rdFm8mZcI=;
 b=IFHyY8KHsbisvecOahSo4oHmwAAKVSfhCWkEiP+1p6auGwWUHNK+cyWd
 D6CvNOmzRFDd4cFs6wsdNH4sGpy9jRKo6HRJO+7iVgRfOaFKuIgkTZ9TI
 /0ilyBkF5Iu6jPU5NoZa1P8fgvwB+Sni7MznBr3+XYTlZLDgYmRmwsW92
 dF7p95KEcN/Y3E1JL5Bgx2/wvAo8jEPh/M38MkKc0lScEykiyPShBgzU7
 sUYdE0IDNT5G43zgb0n7rAMuTVvs2c4dG6J4jGQPonKBzMhvvGyxp4+sY
 7vT0fK80Gs89E+zJFwOUiM4iQWaybDwh5v5DdTOD42t8rXLpg3v2cgMIV A==;
X-CSE-ConnectionGUID: IXYwPa51TYKG7z2gVfzfEg==
X-CSE-MsgGUID: 4Rvm2eQhQVmA0G29d5o0qg==
X-IronPort-AV: E=McAfee;i="6800,10657,11761"; a="77279722"
X-IronPort-AV: E=Sophos;i="6.23,181,1770624000"; d="scan'208";a="77279722"
Received: from orviesa010.jf.intel.com ([10.64.159.150])
 by orvoesa111.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 16 Apr 2026 10:45:37 -0700
X-CSE-ConnectionGUID: L32HqTv9SN+PJCFDknDPEg==
X-CSE-MsgGUID: W7Y+wMuUS/apn7zF+ZFmFg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.23,181,1770624000"; d="scan'208";a="229960416"
Received: from abityuts-desk.ger.corp.intel.com (HELO localhost)
 ([10.245.244.241])
 by orviesa010-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 16 Apr 2026 10:45:33 -0700
From: Ville Syrjala <ville.syrjala@linux.intel.com>
To: intel-gfx@lists.freedesktop.org
Cc: intel-xe@lists.freedesktop.org
Subject: [PATCH 09/11] drm/i915: Introduce pin_params.needs_fence
Date: Thu, 16 Apr 2026 20:44:45 +0300
Message-ID: <20260416174448.28264-10-ville.syrjala@linux.intel.com>
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
	DBL_BLOCKED_OPENRESOLVER(0.00)[gabe.freedesktop.org:helo,gabe.freedesktop.org:rdns,linux.intel.com:mid,intel.com:dkim,intel.com:email]
X-Rspamd-Queue-Id: AC69A413346
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

From: Ville Syrjälä <ville.syrjala@linux.intel.com>

Add a new flag pin_params.needs_fencel to inform the pinning
code that the display needs a fence for tiled scanout.

The goal is to eliminate all display specific stuff from
the low level pinning code.

Signed-off-by: Ville Syrjälä <ville.syrjala@linux.intel.com>
---
 drivers/gpu/drm/i915/display/intel_fb_pin.h | 1 +
 drivers/gpu/drm/i915/i915_fb_pin.c          | 4 ++--
 2 files changed, 3 insertions(+), 2 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_fb_pin.h b/drivers/gpu/drm/i915/display/intel_fb_pin.h
index 3e37e9874f50..95f83bf7411f 100644
--- a/drivers/gpu/drm/i915/display/intel_fb_pin.h
+++ b/drivers/gpu/drm/i915/display/intel_fb_pin.h
@@ -22,6 +22,7 @@ struct intel_fb_pin_params {
 	bool needs_cpu_lmem_access;
 	bool needs_low_address;
 	bool needs_physical;
+	bool needs_fence;
 };
 
 struct i915_vma *
diff --git a/drivers/gpu/drm/i915/i915_fb_pin.c b/drivers/gpu/drm/i915/i915_fb_pin.c
index a8ed888183cb..5060ec8c76ca 100644
--- a/drivers/gpu/drm/i915/i915_fb_pin.c
+++ b/drivers/gpu/drm/i915/i915_fb_pin.c
@@ -112,7 +112,6 @@ intel_fb_pin_to_ggtt(const struct drm_framebuffer *fb,
 		     const struct intel_fb_pin_params *pin_params,
 		     int *out_fence_id)
 {
-	struct intel_display *display = to_intel_display(fb->dev);
 	struct drm_i915_private *i915 = to_i915(fb->dev);
 	struct drm_gem_object *_obj = intel_fb_bo(fb);
 	struct drm_i915_gem_object *obj = to_intel_bo(_obj);
@@ -188,7 +187,7 @@ intel_fb_pin_to_ggtt(const struct drm_framebuffer *fb,
 		 * mode that matches the user configuration.
 		 */
 		ret = i915_vma_pin_fence(vma);
-		if (ret != 0 && intel_plane_needs_fence(display)) {
+		if (ret != 0 && pin_params->needs_fence) {
 			i915_vma_unpin(vma);
 			goto err_unpin;
 		}
@@ -272,6 +271,7 @@ int intel_plane_pin_fb(struct intel_plane_state *plane_state,
 			.needs_cpu_lmem_access = intel_fb_needs_cpu_access(&fb->base),
 			.needs_low_address = intel_plane_needs_low_address(display),
 			.needs_physical = intel_plane_needs_physical(plane),
+			.needs_fence = intel_plane_needs_fence(display),
 		};
 		int fence_id = -1;
 
-- 
2.52.0

