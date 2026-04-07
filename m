Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id WNbRE2I61WlY3AcAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Tue, 07 Apr 2026 19:09:54 +0200
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id F33DA3B2340
	for <lists+intel-gfx@lfdr.de>; Tue, 07 Apr 2026 19:09:53 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 6586810E40E;
	Tue,  7 Apr 2026 17:09:52 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="BnNPzjSP";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.11])
 by gabe.freedesktop.org (Postfix) with ESMTPS id BCFA810E3F6;
 Tue,  7 Apr 2026 17:09:51 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1775581791; x=1807117791;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=n1rVhW8NitmtWCnr61kEYwXps96H51n2woLlFY7TudU=;
 b=BnNPzjSPRI4XceqCf4XsR1EPWC1Sss3YURTpG5g5wLSapt/KESxIeMJG
 OP3HK+aMtevxaj1OlrogAmNHiv0rYlTTplWwxEU7Z5JIJpmPkk7KQY/XW
 xc1bmGdMxi3TlQBAdAIIvthyHVwfjQ81vVcR7qt/YrVALiBF1cHLwTRzm
 8vqZAM5s79icRSkdeLT5Me+Iq4Kfnm2GoN8UfT5ToTq9bY80DNQLdtA9Z
 Irf66K7BJMPkQMaEqM9uK1q1HeEEER1sCMTuYxb3Oa7i2WOnzWvBWimMP
 3KvjN/2ZyhrG7XVKmnw9fz29VJq6pXnO4sDra/RuaWHxgJRTIJHYeiUWJ w==;
X-CSE-ConnectionGUID: d3fV1Sh8T0KL8Q4WfXvRwA==
X-CSE-MsgGUID: ZhfbSxbqTNmMoXe+VcNvuA==
X-IronPort-AV: E=McAfee;i="6800,10657,11752"; a="87178778"
X-IronPort-AV: E=Sophos;i="6.23,165,1770624000"; d="scan'208";a="87178778"
Received: from orviesa010.jf.intel.com ([10.64.159.150])
 by fmvoesa105.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 07 Apr 2026 10:09:50 -0700
X-CSE-ConnectionGUID: Lg5zyrvKQCeUxaMj197Asg==
X-CSE-MsgGUID: LBJgyqUdRRmKdATF/Fa1+g==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.23,165,1770624000"; d="scan'208";a="227389324"
Received: from pgcooper-mobl3.ger.corp.intel.com (HELO localhost)
 ([10.245.244.211])
 by orviesa010-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 07 Apr 2026 10:09:49 -0700
From: Ville Syrjala <ville.syrjala@linux.intel.com>
To: intel-gfx@lists.freedesktop.org
Cc: intel-xe@lists.freedesktop.org,
	Jani Nikula <jani.nikula@intel.com>
Subject: [PATCH v2 2/2] drm/i915: Remove the vma parent interface
Date: Tue,  7 Apr 2026 20:09:42 +0300
Message-ID: <20260407170942.16515-2-ville.syrjala@linux.intel.com>
X-Mailer: git-send-email 2.52.0
In-Reply-To: <20260407170942.16515-1-ville.syrjala@linux.intel.com>
References: <20260407170942.16515-1-ville.syrjala@linux.intel.com>
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
	NEURAL_HAM(-0.00)[-0.999];
	FROM_NEQ_ENVFROM(0.00)[ville.syrjala@linux.intel.com,intel-gfx-bounces@lists.freedesktop.org];
	DKIM_TRACE(0.00)[intel.com:+];
	TAGGED_RCPT(0.00)[intel-gfx];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	ASN(0.00)[asn:6366, ipnet:131.252.0.0/16, country:US];
	RCPT_COUNT_THREE(0.00)[3];
	DBL_BLOCKED_OPENRESOLVER(0.00)[intel.com:dkim,intel.com:email,linux.intel.com:mid,gabe.freedesktop.org:helo,gabe.freedesktop.org:rdns]
X-Rspamd-Queue-Id: F33DA3B2340
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

From: Ville Syrjälä <ville.syrjala@linux.intel.com>

With the fb pinning stuff directly returning the fence_id
there is no longer any need for the vma parent interface.
Get rid of it.

Reviewed-by: Jani Nikula <jani.nikula@intel.com>
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
index 47ce3b6fdd5b..67b21a42d354 100644
--- a/drivers/gpu/drm/i915/display/intel_parent.c
+++ b/drivers/gpu/drm/i915/display/intel_parent.c
@@ -372,15 +372,6 @@ int intel_parent_vlv_iosf_write(struct intel_display *display, enum vlv_iosf_sb_
 	return display->parent->vlv_iosf->write(display->drm, unit, addr, val);
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
index 1e89d24163cc..5f0c835b9416 100644
--- a/drivers/gpu/drm/i915/display/intel_parent.h
+++ b/drivers/gpu/drm/i915/display/intel_parent.h
@@ -116,9 +116,6 @@ void intel_parent_vlv_iosf_put(struct intel_display *display, unsigned long unit
 u32 intel_parent_vlv_iosf_read(struct intel_display *display, enum vlv_iosf_sb_unit unit, u32 addr);
 int intel_parent_vlv_iosf_write(struct intel_display *display, enum vlv_iosf_sb_unit unit, u32 addr, u32 val);
 
-/* vma */
-int intel_parent_vma_fence_id(struct intel_display *display, const struct i915_vma *vma);
-
 /* generic */
 bool intel_parent_has_auxccs(struct intel_display *display);
 bool intel_parent_has_fenced_regions(struct intel_display *display);
diff --git a/drivers/gpu/drm/i915/i915_driver.c b/drivers/gpu/drm/i915/i915_driver.c
index c10cab38935a..cb31396ddddd 100644
--- a/drivers/gpu/drm/i915/i915_driver.c
+++ b/drivers/gpu/drm/i915/i915_driver.c
@@ -781,7 +781,6 @@ static const struct intel_display_parent_interface parent = {
 	.rps = &i915_display_rps_interface,
 	.stolen = &i915_display_stolen_interface,
 	.vlv_iosf = &i915_display_vlv_iosf_interface,
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
index 258e6388ef77..8ae7d94f22d2 100644
--- a/include/drm/intel/display_parent_interface.h
+++ b/include/drm/intel/display_parent_interface.h
@@ -191,10 +191,6 @@ struct intel_display_vlv_iosf_interface {
 	int (*write)(struct drm_device *drm, enum vlv_iosf_sb_unit unit, u32 addr, u32 val);
 };
 
-struct intel_display_vma_interface {
-	int (*fence_id)(const struct i915_vma *vma);
-};
-
 /**
  * struct intel_display_parent_interface - services parent driver provides to display
  *
@@ -253,9 +249,6 @@ struct intel_display_parent_interface {
 	/** @vlv_iosf: VLV IOSF sideband. Optional. */
 	const struct intel_display_vlv_iosf_interface *vlv_iosf;
 
-	/** @vma: VMA interface. Optional. */
-	const struct intel_display_vma_interface *vma;
-
 	/* Generic independent functions */
 	struct {
 		/** @fence_priority_display: Set display priority. Optional. */
-- 
2.52.0

