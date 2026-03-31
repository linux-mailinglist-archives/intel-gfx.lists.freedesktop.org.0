Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id QIipFZ70y2lwMwYAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Tue, 31 Mar 2026 18:21:50 +0200
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 0900236C846
	for <lists+intel-gfx@lfdr.de>; Tue, 31 Mar 2026 18:21:50 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 8567110E8D8;
	Tue, 31 Mar 2026 16:21:48 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="DbVbIoLg";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.17])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 29E0B10E8D8;
 Tue, 31 Mar 2026 16:21:47 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1774974107; x=1806510107;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=Tlt70bS+rkQ2uEEF3vEGvSECEYYhB++EKHEVeObt8Ng=;
 b=DbVbIoLgAhRtHxFvfADArasQUOwmV4lp9vbbeQ1CStomWC0bpFKCSJnA
 2+vCCTw0xg+3Zj+mN8DCKS4Zw93jOnWf27+ZoeApaEegE62kbA09Y45S5
 PWVVbErEt3xsVAic6b4doNSToWxbctJxVty/Ivj0fPDlnBPvjqoi0s/UY
 wSIeOTV9Z1e1CMdy0EAGlG9aKQURS+QnfFQyo/EAlUD0eziBXs+NfzsaG
 7kO98YbECst7zma4xJY0tBs56iZ933gr/JNKp40f9+vtNKJWptJOPpk9K
 hJcZEF9MWWoEn4WvMhT4y3ZZwY/ZXvmiifRUYu31p6zPcIAfNj5bv+zsP A==;
X-CSE-ConnectionGUID: +ATyVxTgTYqF/X0Srw0u/w==
X-CSE-MsgGUID: q5y0y4PlRaeffHVHbiOKIw==
X-IronPort-AV: E=McAfee;i="6800,10657,11745"; a="75887986"
X-IronPort-AV: E=Sophos;i="6.23,152,1770624000"; d="scan'208";a="75887986"
Received: from fmviesa004.fm.intel.com ([10.60.135.144])
 by fmvoesa111.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 31 Mar 2026 09:21:47 -0700
X-CSE-ConnectionGUID: 6NlG3PbZSBKwukj6XTUhRw==
X-CSE-MsgGUID: omUuQTTbRGuDo56uP1GQ5g==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.23,152,1770624000"; d="scan'208";a="228014439"
Received: from rvuia-mobl.ger.corp.intel.com (HELO localhost) ([10.245.244.24])
 by fmviesa004-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 31 Mar 2026 09:21:45 -0700
From: Ville Syrjala <ville.syrjala@linux.intel.com>
To: intel-gfx@lists.freedesktop.org
Cc: intel-xe@lists.freedesktop.org
Subject: [PATCH 2/2] drm/i915: Remove the vma parent interface
Date: Tue, 31 Mar 2026 19:21:38 +0300
Message-ID: <20260331162138.19258-2-ville.syrjala@linux.intel.com>
X-Mailer: git-send-email 2.52.0
In-Reply-To: <20260331162138.19258-1-ville.syrjala@linux.intel.com>
References: <20260331162138.19258-1-ville.syrjala@linux.intel.com>
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
X-Rspamd-Queue-Id: 0900236C846
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

From: Ville Syrjälä <ville.syrjala@linux.intel.com>

With the fb pinning stuff directly returning the fence_id
there is no longer any need for the vma parent interface.
Get rid of it.

Signed-off-by: Ville Syrjälä <ville.syrjala@linux.intel.com>
---
 drivers/gpu/drm/i915/display/intel_parent.c  |  9 ---------
 drivers/gpu/drm/i915/display/intel_parent.h  |  3 ---
 drivers/gpu/drm/i915/i915_driver.c           |  1 -
 drivers/gpu/drm/i915/i915_vma.c              | 10 ----------
 drivers/gpu/drm/i915/i915_vma.h              |  2 --
 include/drm/intel/display_parent_interface.h |  7 -------
 6 files changed, 32 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_parent.c b/drivers/gpu/drm/i915/display/intel_parent.c
index 2e3bad2b3e6b..4142fe3eed7c 100644
--- a/drivers/gpu/drm/i915/display/intel_parent.c
+++ b/drivers/gpu/drm/i915/display/intel_parent.c
@@ -338,15 +338,6 @@ void intel_parent_stolen_node_free(struct intel_display *display, const struct i
 	display->parent->stolen->node_free(node);
 }
 
-/* vma */
-int intel_parent_vma_fence_id(struct intel_display *display, const struct i915_vma *vma)
-{
-	if (!display->parent->vma)
-		return -1;
-
-	return display->parent->vma->fence_id(vma);
-}
-
 /* generic */
 void intel_parent_fence_priority_display(struct intel_display *display, struct dma_fence *fence)
 {
diff --git a/drivers/gpu/drm/i915/display/intel_parent.h b/drivers/gpu/drm/i915/display/intel_parent.h
index 2013e5ed5aa9..c1214d3329a8 100644
--- a/drivers/gpu/drm/i915/display/intel_parent.h
+++ b/drivers/gpu/drm/i915/display/intel_parent.h
@@ -109,9 +109,6 @@ u64 intel_parent_stolen_node_size(struct intel_display *display, const struct in
 struct intel_stolen_node *intel_parent_stolen_node_alloc(struct intel_display *display);
 void intel_parent_stolen_node_free(struct intel_display *display, const struct intel_stolen_node *node);
 
-/* vma */
-int intel_parent_vma_fence_id(struct intel_display *display, const struct i915_vma *vma);
-
 /* generic */
 bool intel_parent_has_auxccs(struct intel_display *display);
 bool intel_parent_has_fenced_regions(struct intel_display *display);
diff --git a/drivers/gpu/drm/i915/i915_driver.c b/drivers/gpu/drm/i915/i915_driver.c
index 385a634c3ed0..6dde714d4646 100644
--- a/drivers/gpu/drm/i915/i915_driver.c
+++ b/drivers/gpu/drm/i915/i915_driver.c
@@ -780,7 +780,6 @@ static const struct intel_display_parent_interface parent = {
 	.rpm = &i915_display_rpm_interface,
 	.rps = &i915_display_rps_interface,
 	.stolen = &i915_display_stolen_interface,
-	.vma = &i915_display_vma_interface,
 
 	.fence_priority_display = fence_priority_display,
 	.has_auxccs = has_auxccs,
diff --git a/drivers/gpu/drm/i915/i915_vma.c b/drivers/gpu/drm/i915/i915_vma.c
index 6a3a4d4244dc..afc192d9931b 100644
--- a/drivers/gpu/drm/i915/i915_vma.c
+++ b/drivers/gpu/drm/i915/i915_vma.c
@@ -27,7 +27,6 @@
 
 #include <drm/drm_gem.h>
 #include <drm/drm_print.h>
-#include <drm/intel/display_parent_interface.h>
 
 #include "display/intel_fb.h"
 #include "display/intel_frontbuffer.h"
@@ -2333,12 +2332,3 @@ int __init i915_vma_module_init(void)
 
 	return 0;
 }
-
-static int i915_vma_fence_id(const struct i915_vma *vma)
-{
-	return vma->fence ? vma->fence->id : -1;
-}
-
-const struct intel_display_vma_interface i915_display_vma_interface = {
-	.fence_id = i915_vma_fence_id,
-};
diff --git a/drivers/gpu/drm/i915/i915_vma.h b/drivers/gpu/drm/i915/i915_vma.h
index fa2d9b429db6..892306ab935d 100644
--- a/drivers/gpu/drm/i915/i915_vma.h
+++ b/drivers/gpu/drm/i915/i915_vma.h
@@ -476,6 +476,4 @@ int i915_vma_module_init(void);
 I915_SELFTEST_DECLARE(int i915_vma_get_pages(struct i915_vma *vma));
 I915_SELFTEST_DECLARE(void i915_vma_put_pages(struct i915_vma *vma));
 
-extern const struct intel_display_vma_interface i915_display_vma_interface;
-
 #endif
diff --git a/include/drm/intel/display_parent_interface.h b/include/drm/intel/display_parent_interface.h
index 97ec94a2e749..aef6a16efd90 100644
--- a/include/drm/intel/display_parent_interface.h
+++ b/include/drm/intel/display_parent_interface.h
@@ -176,10 +176,6 @@ struct intel_display_stolen_interface {
 	void (*node_free)(const struct intel_stolen_node *node);
 };
 
-struct intel_display_vma_interface {
-	int (*fence_id)(const struct i915_vma *vma);
-};
-
 /**
  * struct intel_display_parent_interface - services parent driver provides to display
  *
@@ -235,9 +231,6 @@ struct intel_display_parent_interface {
 	/** @stolen: Stolen memory. */
 	const struct intel_display_stolen_interface *stolen;
 
-	/** @vma: VMA interface. Optional. */
-	const struct intel_display_vma_interface *vma;
-
 	/* Generic independent functions */
 	struct {
 		/** @fence_priority_display: Set display priority. Optional. */
-- 
2.52.0

