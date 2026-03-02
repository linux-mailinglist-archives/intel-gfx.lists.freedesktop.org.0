Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id CPhNNFvUpWmvHAAAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Mon, 02 Mar 2026 19:18:03 +0100
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id E64581DE578
	for <lists+intel-gfx@lfdr.de>; Mon, 02 Mar 2026 19:18:02 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 3A0AE10E586;
	Mon,  2 Mar 2026 18:18:01 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="loRcLZ0N";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.19])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 65FF610E585;
 Mon,  2 Mar 2026 18:17:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1772475480; x=1804011480;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=Xr8kT+0dedF/zkxfw1lQWWqsxH0HNcA5jdhudZOUBrM=;
 b=loRcLZ0N7hRbA8u+zV1CVqPw5fvyAJrEyou/JRldMLE4JD5r+yno9EOI
 wJK4gxQHPj0OWhesSDS9auIS4EOXMPMM9Bgx/9ASXFh7MksIeGSZQxGEX
 qhPCKYI/g2z00CgYs3lFp5zHWJcFZD19KP0OuWcN3d3Ks1NER8VTBRqvN
 bFKx7zmk7rt8vppL/0kGjd4AINKIlu71ICW9Sz2uXuShrh5KRpbAWzK0A
 +ZjVNFwMCAC7ns2RDbxQvNXW8yhyMp87rvey/fojorBb93OeFK5hVTMB6
 GUj+YLN2DaC4NqSg3t1mhB8asZZJTceBfv7g4noBbc2nlQ/mzcV0bPu5h Q==;
X-CSE-ConnectionGUID: viIdbAlXQeGlSHHi/eFk0A==
X-CSE-MsgGUID: 8Im8UlEsTTWo+7Lz2uw1sw==
X-IronPort-AV: E=McAfee;i="6800,10657,11717"; a="73400621"
X-IronPort-AV: E=Sophos;i="6.21,320,1763452800"; d="scan'208";a="73400621"
Received: from fmviesa009.fm.intel.com ([10.60.135.149])
 by orvoesa111.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 02 Mar 2026 10:17:59 -0800
X-CSE-ConnectionGUID: lhTt+2deSRmuoSsRU1BVuA==
X-CSE-MsgGUID: JrrkLHUkQMKEP1Epfra8bA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.21,320,1763452800"; d="scan'208";a="214165509"
Received: from mjarzebo-mobl1.ger.corp.intel.com (HELO localhost)
 ([10.245.246.238])
 by fmviesa009-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 02 Mar 2026 10:17:57 -0800
From: Jani Nikula <jani.nikula@intel.com>
To: intel-gfx@lists.freedesktop.org,
	intel-xe@lists.freedesktop.org
Cc: jani.nikula@intel.com
Subject: [PATCH 3/7] drm/i915/overlay: convert from struct intel_frontbuffer
 to i915_frontbuffer
Date: Mon,  2 Mar 2026 20:17:35 +0200
Message-ID: <829b304a6451e80fbce554bdc7788077245e803a.1772475391.git.jani.nikula@intel.com>
X-Mailer: git-send-email 2.47.3
In-Reply-To: <cover.1772475391.git.jani.nikula@intel.com>
References: <cover.1772475391.git.jani.nikula@intel.com>
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
X-Rspamd-Queue-Id: E64581DE578
X-Rspamd-Server: lfdr
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
	RCPT_COUNT_THREE(0.00)[3];
	NEURAL_HAM(-0.00)[-1.000];
	FORGED_SENDER_MAILLIST(0.00)[];
	TAGGED_RCPT(0.00)[intel-gfx];
	ASN(0.00)[asn:6366, ipnet:131.252.0.0/16, country:US];
	DBL_BLOCKED_OPENRESOLVER(0.00)[intel.com:dkim,intel.com:email,intel.com:mid,gabe.freedesktop.org:rdns,gabe.freedesktop.org:helo]
X-Rspamd-Action: no action

The intel_frontbuffer_get() and intel_frontbuffer_put() calls are routed
through intel_frontbuffer.c to i915_gem_object_frontbuffer.c. We might
as well call the functions directly, instead of going through display
code. This would only get worse with get/put being moved to the parent
interface.

To make this easier, convert overlay code from struct intel_frontbuffer
to struct i915_frontbuffer, and add a
i915_gem_object_frontbuffer_track() wrapper for clarity.

Signed-off-by: Jani Nikula <jani.nikula@intel.com>
---
 .../gpu/drm/i915/gem/i915_gem_object_frontbuffer.h   | 10 ++++++++++
 drivers/gpu/drm/i915/i915_overlay.c                  | 12 ++++++------
 2 files changed, 16 insertions(+), 6 deletions(-)

diff --git a/drivers/gpu/drm/i915/gem/i915_gem_object_frontbuffer.h b/drivers/gpu/drm/i915/gem/i915_gem_object_frontbuffer.h
index 1c250ce4ca66..46124048a59f 100644
--- a/drivers/gpu/drm/i915/gem/i915_gem_object_frontbuffer.h
+++ b/drivers/gpu/drm/i915/gem/i915_gem_object_frontbuffer.h
@@ -45,6 +45,16 @@ struct i915_frontbuffer *i915_gem_object_frontbuffer_get(struct drm_i915_gem_obj
 void i915_gem_object_frontbuffer_ref(struct i915_frontbuffer *front);
 void i915_gem_object_frontbuffer_put(struct i915_frontbuffer *front);
 
+static inline void i915_gem_object_frontbuffer_track(struct i915_frontbuffer *_old,
+						     struct i915_frontbuffer *_new,
+						     unsigned int frontbuffer_bits)
+{
+	struct intel_frontbuffer *old = _old ? &_old->base : NULL;
+	struct intel_frontbuffer *new = _new ? &_new->base : NULL;
+
+	intel_frontbuffer_track(old, new, frontbuffer_bits);
+}
+
 /**
  * i915_gem_object_frontbuffer_lookup - Look up the object's frontbuffer
  * @obj: The object whose frontbuffer to look up.
diff --git a/drivers/gpu/drm/i915/i915_overlay.c b/drivers/gpu/drm/i915/i915_overlay.c
index 28518dbb5b8e..f07a07b90b2a 100644
--- a/drivers/gpu/drm/i915/i915_overlay.c
+++ b/drivers/gpu/drm/i915/i915_overlay.c
@@ -30,7 +30,7 @@ struct i915_overlay {
 	struct intel_context *context;
 	struct i915_vma *vma;
 	struct i915_vma *old_vma;
-	struct intel_frontbuffer *frontbuffer;
+	struct i915_frontbuffer *frontbuffer;
 	/* register access */
 	struct drm_i915_gem_object *reg_bo;
 	void __iomem *regs;
@@ -138,18 +138,18 @@ static void i915_overlay_flip_prepare(struct i915_overlay *overlay,
 				      struct i915_vma *vma)
 {
 	struct drm_i915_private *i915 = overlay->i915;
-	struct intel_frontbuffer *frontbuffer = NULL;
+	struct i915_frontbuffer *frontbuffer = NULL;
 
 	drm_WARN_ON(&i915->drm, overlay->old_vma);
 
 	if (vma)
-		frontbuffer = intel_frontbuffer_get(intel_bo_to_drm_bo(vma->obj));
+		frontbuffer = i915_gem_object_frontbuffer_get(vma->obj);
 
-	intel_frontbuffer_track(overlay->frontbuffer, frontbuffer,
-				overlay->frontbuffer_bits);
+	i915_gem_object_frontbuffer_track(overlay->frontbuffer, frontbuffer,
+					  overlay->frontbuffer_bits);
 
 	if (overlay->frontbuffer)
-		intel_frontbuffer_put(overlay->frontbuffer);
+		i915_gem_object_frontbuffer_put(overlay->frontbuffer);
 	overlay->frontbuffer = frontbuffer;
 
 	overlay->old_vma = overlay->vma;
-- 
2.47.3

