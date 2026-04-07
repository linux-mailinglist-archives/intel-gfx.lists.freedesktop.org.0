Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id 8DwHA83W1GnuxwcAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Tue, 07 Apr 2026 12:05:01 +0200
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id B9F293AC7FA
	for <lists+intel-gfx@lfdr.de>; Tue, 07 Apr 2026 12:05:00 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 4DF7910E3B4;
	Tue,  7 Apr 2026 10:04:59 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="IHdPrDU1";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.17])
 by gabe.freedesktop.org (Postfix) with ESMTPS id DE2E510E3B3;
 Tue,  7 Apr 2026 10:04:57 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1775556298; x=1807092298;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=divk9TjRw4BL+Pb10mYe5XOWgbZEfixiGhnVY5x/HXo=;
 b=IHdPrDU1CH02zTaG3AZyFat7iE1tvpfQceZ8jVTXbCy6y3YLPVSwCKCg
 RnAAT11WD83nw6gW+jlK4YndpK8/9VBQST8qj6QGwCvW6FnQ+vi9iOseO
 yulWW2tx0AY4cX3CWzZtpeyVDMTNCbFvIJ4ycQclRrNRVqk+OmMMK75gU
 b8HJERTOCTyuZ+Df1d5lsuHrnOJ9USvMhhFSClDOe1IqueLLIpNXHoBLp
 UvfzrJ8JlcCIGaIOgGrOOSJL5kU9M1cJHbmKDdau0tC3Vo81RSO/746QE
 G5dS/kPBz+55BEx+7uvb3eJLIL4Jw1pc5mkpk4SQQTGOnOBWqJJaedj7T A==;
X-CSE-ConnectionGUID: 6DE/2dg/TEaEWt1CNe/TIA==
X-CSE-MsgGUID: FIlFGrN/Q9OWXixx5e9CsQ==
X-IronPort-AV: E=McAfee;i="6800,10657,11751"; a="76410768"
X-IronPort-AV: E=Sophos;i="6.23,165,1770624000"; d="scan'208";a="76410768"
Received: from fmviesa009.fm.intel.com ([10.60.135.149])
 by fmvoesa111.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 07 Apr 2026 03:04:58 -0700
X-CSE-ConnectionGUID: KB4tTDIYShGiBicWWVM44Q==
X-CSE-MsgGUID: W+TdfX6yRLqZ2k+tqzVY0A==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.23,165,1770624000"; d="scan'208";a="221555431"
Received: from mjarzebo-mobl1.ger.corp.intel.com (HELO localhost)
 ([10.245.246.244])
 by fmviesa009-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 07 Apr 2026 03:04:56 -0700
From: Jani Nikula <jani.nikula@intel.com>
To: intel-gfx@lists.freedesktop.org,
	intel-xe@lists.freedesktop.org
Cc: jani.nikula@intel.com,
	ville.syrjala@linux.intel.com
Subject: [PATCH 3/3] drm/i915/pin: switch to i915 core runtime pm
Date: Tue,  7 Apr 2026 13:04:37 +0300
Message-ID: <c06366c1c6f9202be5d0b6ea649c20aba414e5bc.1775556190.git.jani.nikula@intel.com>
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
X-Rspamd-Queue-Id: B9F293AC7FA
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

Remove a dependency on struct intel_display from i915 core code.

Signed-off-by: Jani Nikula <jani.nikula@intel.com>
---
 drivers/gpu/drm/i915/i915_fb_pin.c | 7 +++----
 1 file changed, 3 insertions(+), 4 deletions(-)

diff --git a/drivers/gpu/drm/i915/i915_fb_pin.c b/drivers/gpu/drm/i915/i915_fb_pin.c
index 9ef10cb3e3aa..1018f4b7bc2c 100644
--- a/drivers/gpu/drm/i915/i915_fb_pin.c
+++ b/drivers/gpu/drm/i915/i915_fb_pin.c
@@ -10,7 +10,6 @@
 #include <drm/drm_print.h>
 
 #include "display/intel_display_core.h"
-#include "display/intel_display_rpm.h"
 #include "display/intel_display_types.h"
 #include "display/intel_fb.h"
 #include "display/intel_fb_pin.h"
@@ -122,7 +121,7 @@ intel_fb_pin_to_ggtt(const struct drm_framebuffer *fb,
 	struct drm_i915_private *i915 = to_i915(fb->dev);
 	struct drm_gem_object *_obj = intel_fb_bo(fb);
 	struct drm_i915_gem_object *obj = to_intel_bo(_obj);
-	struct ref_tracker *wakeref;
+	intel_wakeref_t wakeref;
 	struct i915_gem_ww_ctx ww;
 	struct i915_vma *vma;
 	unsigned int pinctl;
@@ -141,7 +140,7 @@ intel_fb_pin_to_ggtt(const struct drm_framebuffer *fb,
 	 * intel_runtime_pm_put(), so it is correct to wrap only the
 	 * pin/unpin/fence and not more.
 	 */
-	wakeref = intel_display_rpm_get(display);
+	wakeref = intel_runtime_pm_get(&i915->runtime_pm);
 
 	atomic_inc(&display->restore.pending_fb_pin);
 
@@ -220,7 +219,7 @@ intel_fb_pin_to_ggtt(const struct drm_framebuffer *fb,
 		vma = ERR_PTR(ret);
 
 	atomic_dec(&display->restore.pending_fb_pin);
-	intel_display_rpm_put(display, wakeref);
+	intel_runtime_pm_put(&i915->runtime_pm, wakeref);
 	return vma;
 }
 
-- 
2.47.3

