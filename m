Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id yOGFILBqDWq+xAUAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Wed, 20 May 2026 10:02:56 +0200
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 17792589520
	for <lists+intel-gfx@lfdr.de>; Wed, 20 May 2026 10:02:56 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 1FA2D10EF45;
	Wed, 20 May 2026 08:02:54 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="PMdzZNmE";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.13])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 2EA6210E099;
 Wed, 20 May 2026 08:02:52 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1779264173; x=1810800173;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=r50/5F9LBGLd/U7tlYJikOon1jO7UD+UyJ8GbhBIFXg=;
 b=PMdzZNmEwwzcB1S/y3R/ZmYhU0ztm5CxUm6+g9in6CJ7HZQDOLN3t7Xx
 dAhjNZgKDLbdaG/F0KPbxPZ9TJyewPj8nt9miL+XcrSn471M+bxtNGjT4
 9PM1cUnYLzX/pRv6ce9VlSiCEdBZ2tcJ0asK9WLv1TdbpddUG6RWljsgu
 Sf+5cgKpj3ftUvR6qTlm/+kmta7LSC7Bf3UMxzG8VMR0ojUI0UkV90YWT
 KSsk7bpCRvHrCSQe185pAVwhJWQ5efiC+RtqgolCIbza5pYNuG3Xusvx0
 h6Di4/O/9ZiL8LBWK6LSZejABwoomA8bV/iOp7PvrGf4JoJGyUsykI6wS g==;
X-CSE-ConnectionGUID: YgFIjka+T6OFotq219Qmgg==
X-CSE-MsgGUID: uYlELQUjQxm6VSvTaci9tA==
X-IronPort-AV: E=McAfee;i="6800,10657,11791"; a="91260566"
X-IronPort-AV: E=Sophos;i="6.23,243,1770624000"; d="scan'208";a="91260566"
Received: from fmviesa002.fm.intel.com ([10.60.135.142])
 by orvoesa105.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 20 May 2026 01:02:52 -0700
X-CSE-ConnectionGUID: ikLCq4RST/imsp60NKvqCA==
X-CSE-MsgGUID: SA5NeyTOTs+Kqzx/PgljdA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.23,243,1770624000"; d="scan'208";a="263583914"
Received: from dut-2a59.iind.intel.com ([10.190.239.113])
 by fmviesa002.fm.intel.com with ESMTP; 20 May 2026 01:02:50 -0700
From: Chaitanya Kumar Borah <chaitanya.kumar.borah@intel.com>
To: intel-xe@lists.freedesktop.org,
	intel-gfx@lists.freedesktop.org
Cc: chaitanya.kumar.borah@intel.com
Subject: [CI 1/6] drm/atomic: only add colorop state from active color pipeline
Date: Wed, 20 May 2026 13:08:22 +0530
Message-Id: <20260520073827.3395745-2-chaitanya.kumar.borah@intel.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20260520073827.3395745-1-chaitanya.kumar.borah@intel.com>
References: <20260520073827.3395745-1-chaitanya.kumar.borah@intel.com>
MIME-Version: 1.0
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
	RCVD_COUNT_THREE(0.00)[4];
	FORGED_SENDER_MAILLIST(0.00)[];
	DKIM_TRACE(0.00)[intel.com:+];
	RCVD_TLS_LAST(0.00)[];
	ARC_NA(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	MIME_TRACE(0.00)[0:+];
	FROM_NEQ_ENVFROM(0.00)[chaitanya.kumar.borah@intel.com,intel-gfx-bounces@lists.freedesktop.org];
	FROM_HAS_DN(0.00)[];
	RCPT_COUNT_THREE(0.00)[3];
	TO_DN_NONE(0.00)[];
	TAGGED_RCPT(0.00)[intel-gfx];
	NEURAL_HAM(-0.00)[-1.000];
	ASN(0.00)[asn:6366, ipnet:131.252.0.0/16, country:US];
	DBL_BLOCKED_OPENRESOLVER(0.00)[gabe.freedesktop.org:rdns,gabe.freedesktop.org:helo,intel.com:email,intel.com:mid,intel.com:dkim]
X-Rspamd-Queue-Id: 17792589520
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

From: Melissa Wen <mwen@igalia.com>

Instead of adding colorop state of all colorops of a given plane, only
get those from an active color pipeline of this plane.

Reviewed-by: Chaitanya Kumar Borah <chaitanya.kumar.borah@intel.com>
Signed-off-by: Melissa Wen <mwen@igalia.com>
---
 drivers/gpu/drm/drm_atomic.c        | 40 ++++++++++++++---------------
 drivers/gpu/drm/drm_atomic_helper.c |  9 +++----
 include/drm/drm_atomic.h            |  2 +-
 3 files changed, 24 insertions(+), 27 deletions(-)

diff --git a/drivers/gpu/drm/drm_atomic.c b/drivers/gpu/drm/drm_atomic.c
index 170de30c28ae..28831a548b0c 100644
--- a/drivers/gpu/drm/drm_atomic.c
+++ b/drivers/gpu/drm/drm_atomic.c
@@ -1591,26 +1591,26 @@ drm_atomic_add_affected_planes(struct drm_atomic_commit *state,
 		if (IS_ERR(plane_state))
 			return PTR_ERR(plane_state);
 
-		if (plane_state->color_pipeline) {
-			ret = drm_atomic_add_affected_colorops(state, plane);
-			if (ret)
-				return ret;
-		}
+		ret = drm_atomic_add_affected_colorops(plane_state, plane);
+		if (ret)
+			return ret;
 	}
 	return 0;
 }
 EXPORT_SYMBOL(drm_atomic_add_affected_planes);
 
 /**
- * drm_atomic_add_affected_colorops - add colorops for plane
- * @state: atomic state
+ * drm_atomic_add_affected_colorops - add active colorops for plane
+ * @plane_state: DRM plane state
  * @plane: DRM plane
  *
  * This function walks the current configuration and adds all colorops
- * currently used by @plane to the atomic configuration @state. This is useful
- * when an atomic commit also needs to check all currently enabled colorop on
- * @plane, e.g. when changing the mode. It's also useful when re-enabling a plane
- * to avoid special code to force-enable all colorops.
+ * currently used by a @plane to the atomic plane configuration @plane_state.
+ * It only adds colorops that belong to an active color pipeline, i.e.,
+ * colorops that are in the chain set to the plane's color_pipeline property.
+ * This function is useful when an atomic commit needs to check all currently
+ * enabled colorop on @plane, e.g. when changing the mode; and when re-enabling
+ * a plane to avoid special code to force-enable all colorops.
  *
  * Since acquiring a colorop state will always also acquire the w/w mutex of the
  * current plane for that colorop (if there is any) adding all the colorop states for
@@ -1622,23 +1622,23 @@ EXPORT_SYMBOL(drm_atomic_add_affected_planes);
  * sequence must be restarted. All other errors are fatal.
  */
 int
-drm_atomic_add_affected_colorops(struct drm_atomic_commit *state,
+drm_atomic_add_affected_colorops(struct drm_plane_state *plane_state,
 				 struct drm_plane *plane)
 {
 	struct drm_colorop *colorop;
 	struct drm_colorop_state *colorop_state;
 
-	WARN_ON(!drm_atomic_get_new_plane_state(state, plane));
+	if (!plane_state || !plane_state->color_pipeline)
+		return 0;
 
 	drm_dbg_atomic(plane->dev,
-		       "Adding all current colorops for [PLANE:%d:%s] to %p\n",
-		       plane->base.id, plane->name, state);
-
-	drm_for_each_colorop(colorop, plane->dev) {
-		if (colorop->plane != plane)
-			continue;
+		       "Adding all current active colorops for [PLANE:%d:%s] to %p\n",
+		       plane->base.id, plane->name, plane_state->state);
 
-		colorop_state = drm_atomic_get_colorop_state(state, colorop);
+	for (colorop = plane_state->color_pipeline;
+	     colorop;
+	     colorop = colorop->next) {
+		colorop_state = drm_atomic_get_colorop_state(plane_state->state, colorop);
 		if (IS_ERR(colorop_state))
 			return PTR_ERR(colorop_state);
 	}
diff --git a/drivers/gpu/drm/drm_atomic_helper.c b/drivers/gpu/drm/drm_atomic_helper.c
index 51f39edc31ed..f1638087cdec 100644
--- a/drivers/gpu/drm/drm_atomic_helper.c
+++ b/drivers/gpu/drm/drm_atomic_helper.c
@@ -3752,12 +3752,9 @@ drm_atomic_helper_duplicate_state(struct drm_device *dev,
 			goto free;
 		}
 
-		if (plane_state->color_pipeline) {
-			err = drm_atomic_add_affected_colorops(state, plane);
-			if (err)
-				goto free;
-		}
-
+		err = drm_atomic_add_affected_colorops(plane_state, plane);
+		if (err)
+			goto free;
 	}
 
 	drm_connector_list_iter_begin(dev, &conn_iter);
diff --git a/include/drm/drm_atomic.h b/include/drm/drm_atomic.h
index 1a80a8cdf269..7bba193cd973 100644
--- a/include/drm/drm_atomic.h
+++ b/include/drm/drm_atomic.h
@@ -919,7 +919,7 @@ int __must_check
 drm_atomic_add_affected_planes(struct drm_atomic_commit *state,
 			       struct drm_crtc *crtc);
 int __must_check
-drm_atomic_add_affected_colorops(struct drm_atomic_commit *state,
+drm_atomic_add_affected_colorops(struct drm_plane_state *plane_state,
 				 struct drm_plane *plane);
 
 int __must_check drm_atomic_check_only(struct drm_atomic_commit *state);
-- 
2.25.1

