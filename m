Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id B64D69848B8
	for <lists+intel-gfx@lfdr.de>; Tue, 24 Sep 2024 17:30:47 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 7A9C210E09C;
	Tue, 24 Sep 2024 15:30:31 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="ccYg9uXq";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.15])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 8E33310E09C;
 Tue, 24 Sep 2024 15:30:30 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1727191830; x=1758727830;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=g2jlVVm2KKdyQP7qu5G8AnJ8GI8bsFkMhfe7xGywr+A=;
 b=ccYg9uXqiXpXY1d2KnJWyArzW1d9Unj+X9RKn+azSdGMjW/ArLKMV3qy
 fi7kbW2oBoBwKynYqI0LeJo1DpzjEnfXuZtLEIGx1jr5lBP2AStW8UyH8
 Pz2TBHZKDACD81xgG7q+Ct6JtYjBFZBSv4guqeD+oug+6vTGWr7aIY1wE
 iTGb3Ft647jL2lySLIb+0X8SrTKVPMQ6SnLSg78msUiURWJHXvmcDEqH4
 39Uu1hvu4JwmgT8yckT9Akkshon0uCn1GMQAkkK+47C0JE+FxmGzpJL57
 gsWj3eSIGmGdVOC6EqNtxo/pPMGW+gU4TqRK2G+0ptysosagdSfB8et7p g==;
X-CSE-ConnectionGUID: PKoGkm55Q4K4cLOSP4T4Og==
X-CSE-MsgGUID: fhfuCxgYRcC2H/gtIs28OA==
X-IronPort-AV: E=McAfee;i="6700,10204,11205"; a="26342270"
X-IronPort-AV: E=Sophos;i="6.10,254,1719903600"; d="scan'208";a="26342270"
Received: from orviesa002.jf.intel.com ([10.64.159.142])
 by fmvoesa109.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 24 Sep 2024 08:30:29 -0700
X-CSE-ConnectionGUID: okIg7rJ0SsWykAqkdoK+3A==
X-CSE-MsgGUID: FdwetQDOQU+tTI7AFHXXFQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.10,254,1719903600"; d="scan'208";a="102214715"
Received: from sschumil-mobl2.ger.corp.intel.com (HELO localhost)
 ([10.245.246.183])
 by orviesa002-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 24 Sep 2024 08:30:27 -0700
From: Jani Nikula <jani.nikula@intel.com>
To: intel-gfx@lists.freedesktop.org,
	intel-xe@lists.freedesktop.org
Cc: jani.nikula@intel.com, Sean Paul <seanpaul@chromium.org>,
 Suraj Kandpal <suraj.kandpal@intel.com>,
 =?UTF-8?q?Ville=20Syrj=C3=A4l=C3=A4?= <ville.syrjala@linux.intel.com>,
 stable@vger.kernel.org
Subject: [PATCH] drm/i915/hdcp: fix connector refcounting
Date: Tue, 24 Sep 2024 18:30:22 +0300
Message-Id: <20240924153022.2255299-1-jani.nikula@intel.com>
X-Mailer: git-send-email 2.39.2
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
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

We acquire a connector reference before scheduling an HDCP prop work,
and expect the work function to release the reference.

However, if the work was already queued, it won't be queued multiple
times, and the reference is not dropped.

Release the reference immediately if the work was already queued.

Fixes: a6597faa2d59 ("drm/i915: Protect workers against disappearing connectors")
Cc: Sean Paul <seanpaul@chromium.org>
Cc: Suraj Kandpal <suraj.kandpal@intel.com>
Cc: Ville Syrjälä <ville.syrjala@linux.intel.com>
Cc: <stable@vger.kernel.org> # v5.10+
Signed-off-by: Jani Nikula <jani.nikula@intel.com>

---

I don't know that we have any bugs open about this. Or how it would
manifest itself. Memory leak on driver unload? I just spotted this while
reading the code for other reasons.
---
 drivers/gpu/drm/i915/display/intel_hdcp.c | 10 +++++++---
 1 file changed, 7 insertions(+), 3 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_hdcp.c b/drivers/gpu/drm/i915/display/intel_hdcp.c
index 2afa92321b08..cad309602617 100644
--- a/drivers/gpu/drm/i915/display/intel_hdcp.c
+++ b/drivers/gpu/drm/i915/display/intel_hdcp.c
@@ -1097,7 +1097,8 @@ static void intel_hdcp_update_value(struct intel_connector *connector,
 	hdcp->value = value;
 	if (update_property) {
 		drm_connector_get(&connector->base);
-		queue_work(i915->unordered_wq, &hdcp->prop_work);
+		if (!queue_work(i915->unordered_wq, &hdcp->prop_work))
+			drm_connector_put(&connector->base);
 	}
 }
 
@@ -2531,7 +2532,8 @@ void intel_hdcp_update_pipe(struct intel_atomic_state *state,
 		mutex_lock(&hdcp->mutex);
 		hdcp->value = DRM_MODE_CONTENT_PROTECTION_DESIRED;
 		drm_connector_get(&connector->base);
-		queue_work(i915->unordered_wq, &hdcp->prop_work);
+		if (!queue_work(i915->unordered_wq, &hdcp->prop_work))
+			drm_connector_put(&connector->base);
 		mutex_unlock(&hdcp->mutex);
 	}
 
@@ -2548,7 +2550,9 @@ void intel_hdcp_update_pipe(struct intel_atomic_state *state,
 		 */
 		if (!desired_and_not_enabled && !content_protection_type_changed) {
 			drm_connector_get(&connector->base);
-			queue_work(i915->unordered_wq, &hdcp->prop_work);
+			if (!queue_work(i915->unordered_wq, &hdcp->prop_work))
+				drm_connector_put(&connector->base);
+
 		}
 	}
 
-- 
2.39.2

