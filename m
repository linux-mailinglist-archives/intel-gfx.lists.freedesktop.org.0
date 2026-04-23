Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id eLiPIcVO6mkhxgIAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Thu, 23 Apr 2026 18:54:29 +0200
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 58AC1455280
	for <lists+intel-gfx@lfdr.de>; Thu, 23 Apr 2026 18:54:28 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 8572F10F1BB;
	Thu, 23 Apr 2026 16:54:27 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="GPxd0sRE";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.14])
 by gabe.freedesktop.org (Postfix) with ESMTPS id EC85D10F1BB;
 Thu, 23 Apr 2026 16:54:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1776963266; x=1808499266;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=9WOxajnfcipNuNi1RvjNHIvEZz8vcv01mooioR2+4Yg=;
 b=GPxd0sRE52Tey7fDxATici5wMX8/rh1IRCeXg4LaH1Gx26MSUN/egtQ2
 1bERCY9X2Cb1zr9wub/T1qGMN7C5GnIPXp0uj8N/TX1H1U7xAjtDV8OQ0
 SvToEI4d1LPARMXmDmYRbiB//f1LXR2RgvLo6yWl+RWh1GwNV7mpfPELB
 vytGiCu8nZ8+piVSJJRkVr4FrAp6KhDrY9614JlD5az1OhCG5S6ZM50zG
 aDG7ZgBa7hQc2LscnXRG8SGm+jLQVecKazcZka77ZlN/4TWOyaGn/boN5
 UFJqabt8Lb1NDAaXy5CvnA8scTbkYaX1B12rkPgmySqpgrwDAGDdOK+64 w==;
X-CSE-ConnectionGUID: llEaBYeITnSR2pprV8TB6A==
X-CSE-MsgGUID: RIFgzM4oTqCHWrWxtAuM2Q==
X-IronPort-AV: E=McAfee;i="6800,10657,11765"; a="81799490"
X-IronPort-AV: E=Sophos;i="6.23,195,1770624000"; d="scan'208";a="81799490"
Received: from orviesa009.jf.intel.com ([10.64.159.149])
 by orvoesa106.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 23 Apr 2026 09:54:26 -0700
X-CSE-ConnectionGUID: 4SMr6P4WQmuQu/NWPlLydw==
X-CSE-MsgGUID: 1iFFIluLQsSe077BqB9lxw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.23,195,1770624000"; d="scan'208";a="232560123"
Received: from ijarvine-mobl1.ger.corp.intel.com (HELO localhost)
 ([10.245.244.188])
 by orviesa009-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 23 Apr 2026 09:54:24 -0700
From: Ville Syrjala <ville.syrjala@linux.intel.com>
To: intel-gfx@lists.freedesktop.org
Cc: intel-xe@lists.freedesktop.org
Subject: [PATCH 08/16] drm/xe: Kill the fbdev vma reuse hack
Date: Thu, 23 Apr 2026 19:53:37 +0300
Message-ID: <20260423165346.20884-9-ville.syrjala@linux.intel.com>
X-Mailer: git-send-email 2.52.0
In-Reply-To: <20260423165346.20884-1-ville.syrjala@linux.intel.com>
References: <20260423165346.20884-1-ville.syrjala@linux.intel.com>
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
	DBL_BLOCKED_OPENRESOLVER(0.00)[linux.intel.com:mid,intel.com:dkim,intel.com:email,gabe.freedesktop.org:helo,gabe.freedesktop.org:rdns]
X-Rspamd-Queue-Id: 58AC1455280
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

From: Ville Syrjälä <ville.syrjala@linux.intel.com>

This fbdev vma reuse hacks is a massive layering violation. It
really does not belong in the fb pinning code. And it's in the
way of properly abstracting this stuff, so kill it.

Signed-off-by: Ville Syrjälä <ville.syrjala@linux.intel.com>
---
 drivers/gpu/drm/xe/display/xe_fb_pin.c | 10 ----------
 1 file changed, 10 deletions(-)

diff --git a/drivers/gpu/drm/xe/display/xe_fb_pin.c b/drivers/gpu/drm/xe/display/xe_fb_pin.c
index 487c092cd000..bbeb5c2a6c51 100644
--- a/drivers/gpu/drm/xe/display/xe_fb_pin.c
+++ b/drivers/gpu/drm/xe/display/xe_fb_pin.c
@@ -10,7 +10,6 @@
 #include "intel_display_types.h"
 #include "intel_fb.h"
 #include "intel_fb_pin.h"
-#include "intel_fbdev.h"
 #include "xe_bo.h"
 #include "xe_device.h"
 #include "xe_display_vma.h"
@@ -432,10 +431,7 @@ void intel_fb_unpin_vma(struct i915_vma *vma, int fence_id)
 static bool reuse_vma(struct intel_plane_state *new_plane_state,
 		      const struct intel_plane_state *old_plane_state)
 {
-	struct intel_framebuffer *fb = to_intel_framebuffer(new_plane_state->hw.fb);
 	struct intel_plane *plane = to_intel_plane(new_plane_state->uapi.plane);
-	struct xe_device *xe = to_xe_device(fb->base.dev);
-	struct intel_display *display = xe->display;
 	struct i915_vma *vma;
 
 	if (old_plane_state->hw.fb == new_plane_state->hw.fb &&
@@ -446,12 +442,6 @@ static bool reuse_vma(struct intel_plane_state *new_plane_state,
 		goto found;
 	}
 
-	if (fb == intel_fbdev_framebuffer(display->fbdev.fbdev)) {
-		vma = intel_fbdev_vma_pointer(display->fbdev.fbdev);
-		if (vma)
-			goto found;
-	}
-
 	return false;
 
 found:
-- 
2.52.0

