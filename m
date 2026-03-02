Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id qBmaEmnUpWmvHAAAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Mon, 02 Mar 2026 19:18:17 +0100
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id DF5361DE58D
	for <lists+intel-gfx@lfdr.de>; Mon, 02 Mar 2026 19:18:16 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 3C36610E585;
	Mon,  2 Mar 2026 18:18:15 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="ehROxxll";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.19])
 by gabe.freedesktop.org (Postfix) with ESMTPS id C415810E58B;
 Mon,  2 Mar 2026 18:18:13 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1772475494; x=1804011494;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=lNui6aExhvK6I3pLbZ3+p9kAK1HRrrMEH0JVhzfu3NA=;
 b=ehROxxll8YP+Cn/EsgLHZhOFfUggfknr/tiDwktAmVsvg7ZT/Fte5llk
 1BcNyBcSSBZSLVDdEgIXt4U162LkXtLOWtaBZ+7xIxNeDXR1vPg/aroc5
 nEIT4Wrj7r/tsq1vz8Jwu6R4Rp4KcM1iDuhmDF9YothG/PSlc/sBJHie7
 3gJScm8mP9BY1+jvx+eRMJxw8XtyRrztNS2DpUn9fl1JGQHhoz4a9JalR
 92w3JwfKsCcpRL5PZ/NLhkWG0tdgpYc7tGZqpEf11vKqezqMqXsXcZfCH
 Uc+u+1EnNfIyfrXYZSyTQoTEQse6VCwv3uQmhRy9xHz1Q4NXmFsRgO5x3 Q==;
X-CSE-ConnectionGUID: yY3cvbLiSs6c3BK8wx0AHw==
X-CSE-MsgGUID: xR+g9s6ZRYqPMRTQBXW4uA==
X-IronPort-AV: E=McAfee;i="6800,10657,11717"; a="73400635"
X-IronPort-AV: E=Sophos;i="6.21,320,1763452800"; d="scan'208";a="73400635"
Received: from fmviesa009.fm.intel.com ([10.60.135.149])
 by orvoesa111.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 02 Mar 2026 10:18:14 -0800
X-CSE-ConnectionGUID: oLah4WteQFW2ZFSU9mg3AQ==
X-CSE-MsgGUID: ttYdMRwFRDK7DIlFrF/wBw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.21,320,1763452800"; d="scan'208";a="214165516"
Received: from mjarzebo-mobl1.ger.corp.intel.com (HELO localhost)
 ([10.245.246.238])
 by fmviesa009-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 02 Mar 2026 10:18:12 -0800
From: Jani Nikula <jani.nikula@intel.com>
To: intel-gfx@lists.freedesktop.org,
	intel-xe@lists.freedesktop.org
Cc: jani.nikula@intel.com
Subject: [PATCH 6/7] drm/i915/frontbuffer: call parent interface directly
Date: Mon,  2 Mar 2026 20:17:38 +0200
Message-ID: <7451574d6840fe9a4af16d2d6b81ffb7739b5b76.1772475391.git.jani.nikula@intel.com>
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
X-Rspamd-Queue-Id: DF5361DE58D
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

Do away with the redundant intel_frontbuffer_get(),
intel_frontbuffer_put(), and intel_frontbuffer_ref() functions, and call
the parent interface functions directly.

Signed-off-by: Jani Nikula <jani.nikula@intel.com>
---
 drivers/gpu/drm/i915/display/intel_fb.c       |  8 +++----
 .../gpu/drm/i915/display/intel_frontbuffer.c  | 23 +++----------------
 .../gpu/drm/i915/display/intel_frontbuffer.h  |  5 ----
 3 files changed, 7 insertions(+), 29 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_fb.c b/drivers/gpu/drm/i915/display/intel_fb.c
index 6be07d8a7e81..49c6ca9d94c6 100644
--- a/drivers/gpu/drm/i915/display/intel_fb.c
+++ b/drivers/gpu/drm/i915/display/intel_fb.c
@@ -2113,7 +2113,7 @@ static void intel_user_framebuffer_destroy(struct drm_framebuffer *fb)
 
 	intel_fb_bo_framebuffer_fini(intel_fb_bo(fb));
 
-	intel_frontbuffer_put(intel_fb->frontbuffer);
+	intel_parent_frontbuffer_put(display, intel_fb->frontbuffer);
 
 	kfree(intel_fb->panic);
 	kfree(intel_fb);
@@ -2221,10 +2221,10 @@ int intel_framebuffer_init(struct intel_framebuffer *intel_fb,
 		return -ENOMEM;
 
 	/*
-	 * intel_frontbuffer_get() must be done before
+	 * intel_parent_frontbuffer_get() must be done before
 	 * intel_fb_bo_framebuffer_init() to avoid set_tiling vs. addfb race.
 	 */
-	intel_fb->frontbuffer = intel_frontbuffer_get(obj);
+	intel_fb->frontbuffer = intel_parent_frontbuffer_get(display, obj);
 	if (!intel_fb->frontbuffer) {
 		ret = -ENOMEM;
 		goto err_free_panic;
@@ -2335,7 +2335,7 @@ int intel_framebuffer_init(struct intel_framebuffer *intel_fb,
 err_bo_framebuffer_fini:
 	intel_fb_bo_framebuffer_fini(obj);
 err_frontbuffer_put:
-	intel_frontbuffer_put(intel_fb->frontbuffer);
+	intel_parent_frontbuffer_put(display, intel_fb->frontbuffer);
 err_free_panic:
 	kfree(intel_fb->panic);
 
diff --git a/drivers/gpu/drm/i915/display/intel_frontbuffer.c b/drivers/gpu/drm/i915/display/intel_frontbuffer.c
index a355dc064528..61ce82f85dad 100644
--- a/drivers/gpu/drm/i915/display/intel_frontbuffer.c
+++ b/drivers/gpu/drm/i915/display/intel_frontbuffer.c
@@ -164,18 +164,13 @@ void __intel_fb_flush(struct intel_frontbuffer *front,
 		frontbuffer_flush(display, frontbuffer_bits, origin);
 }
 
-static void intel_frontbuffer_ref(struct intel_frontbuffer *front)
-{
-	intel_parent_frontbuffer_ref(front->display, front);
-}
-
 static void intel_frontbuffer_flush_work(struct work_struct *work)
 {
 	struct intel_frontbuffer *front =
 		container_of(work, struct intel_frontbuffer, flush_work);
 
 	intel_frontbuffer_flush(front, ORIGIN_DIRTYFB);
-	intel_frontbuffer_put(front);
+	intel_parent_frontbuffer_put(front->display, front);
 }
 
 /**
@@ -190,9 +185,9 @@ void intel_frontbuffer_queue_flush(struct intel_frontbuffer *front)
 	if (!front)
 		return;
 
-	intel_frontbuffer_ref(front);
+	intel_parent_frontbuffer_ref(front->display, front);
 	if (!schedule_work(&front->flush_work))
-		intel_frontbuffer_put(front);
+		intel_parent_frontbuffer_put(front->display, front);
 }
 
 void intel_frontbuffer_init(struct intel_frontbuffer *front, struct drm_device *drm)
@@ -207,18 +202,6 @@ void intel_frontbuffer_fini(struct intel_frontbuffer *front)
 	drm_WARN_ON(front->display->drm, atomic_read(&front->bits));
 }
 
-struct intel_frontbuffer *intel_frontbuffer_get(struct drm_gem_object *obj)
-{
-	struct intel_display *display = to_intel_display(obj->dev);
-
-	return intel_parent_frontbuffer_get(display, obj);
-}
-
-void intel_frontbuffer_put(struct intel_frontbuffer *front)
-{
-	intel_parent_frontbuffer_put(front->display, front);
-}
-
 /**
  * intel_frontbuffer_track - update frontbuffer tracking
  * @old: current buffer for the frontbuffer slots
diff --git a/drivers/gpu/drm/i915/display/intel_frontbuffer.h b/drivers/gpu/drm/i915/display/intel_frontbuffer.h
index 22677acb4c06..c9a22b6ccfd6 100644
--- a/drivers/gpu/drm/i915/display/intel_frontbuffer.h
+++ b/drivers/gpu/drm/i915/display/intel_frontbuffer.h
@@ -66,11 +66,6 @@ struct intel_frontbuffer {
 void intel_frontbuffer_flip(struct intel_display *display,
 			    unsigned frontbuffer_bits);
 
-void intel_frontbuffer_put(struct intel_frontbuffer *front);
-
-struct intel_frontbuffer *
-intel_frontbuffer_get(struct drm_gem_object *obj);
-
 void __intel_fb_invalidate(struct intel_frontbuffer *front,
 			   enum fb_op_origin origin,
 			   unsigned int frontbuffer_bits);
-- 
2.47.3

