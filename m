Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 4E72684B2EC
	for <lists+intel-gfx@lfdr.de>; Tue,  6 Feb 2024 11:58:25 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id EE1DB10EB7B;
	Tue,  6 Feb 2024 10:58:22 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="Rgit2D0P";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.7])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 9000E10EB7B
 for <intel-gfx@lists.freedesktop.org>; Tue,  6 Feb 2024 10:58:21 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1707217101; x=1738753101;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=164wl8nwNwQbrZvws7AMuX730t9qKE7wCiTH0sU8FY0=;
 b=Rgit2D0Py25Mn0cuQDfgFWMJnIC82fF5VZv+co05hwR3AriXSm3X+ix/
 ddJ1ZD0c/fGXwwhPCjM5XHN1VRjAZBay5+h2TUATbSatk+j4fucZN3F8N
 3BRrlxA9PiedunnY9t9FJJbi9eey4orjafb6QW62H4+acYXtAHw4iGdp5
 CHy/I+daEU9MoeClB8AgQ6WnFy8ySQly5Z+qCq3eU9aaP7pYSxNub0wHJ
 s8Na74bK9XqpjDHSuCr3fky3FpgGl3/Im2V9oV65sVjWYVe2xfy5bVAro
 StICbVWpaUe3RyHF0wR47BoTgoneoeo5OtEljh3Vq8hqOtuvEV1x/bxl+ g==;
X-IronPort-AV: E=McAfee;i="6600,9927,10975"; a="26164531"
X-IronPort-AV: E=Sophos;i="6.05,247,1701158400"; d="scan'208";a="26164531"
Received: from orviesa010.jf.intel.com ([10.64.159.150])
 by fmvoesa101.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 06 Feb 2024 02:58:21 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.05,247,1701158400"; 
   d="scan'208";a="1019177"
Received: from srr4-3-linux-106-armuthy.iind.intel.com ([10.190.238.56])
 by orviesa010.jf.intel.com with ESMTP; 06 Feb 2024 02:58:20 -0800
From: Arun R Murthy <arun.r.murthy@intel.com>
To: intel-gfx@lists.freedesktop.org
Cc: jani.nikula@intel.com, imre.deak@intel.com, ville.syrjala@intel.com,
 uma.shankar@intel.com, Arun R Murthy <arun.r.murthy@intel.com>
Subject: [RFC 2/4] drm/i915/display/dp: Dont send hotplug event on LT failure
Date: Tue,  6 Feb 2024 16:17:57 +0530
Message-Id: <20240206104759.2079133-3-arun.r.murthy@intel.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20240206104759.2079133-1-arun.r.murthy@intel.com>
References: <20240206104759.2079133-1-arun.r.murthy@intel.com>
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

On link training failure fallback sequence a hotpplu event was sent to
the user, but this is not requried as we are not changing the mode and
instead only changing the link rate and lane count. User has no
dependency with these parameters.

Signed-off-by: Arun R Murthy <arun.r.murthy@intel.com>
---
 drivers/gpu/drm/i915/display/intel_dp_link_training.c | 5 +----
 1 file changed, 1 insertion(+), 4 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_dp_link_training.c b/drivers/gpu/drm/i915/display/intel_dp_link_training.c
index 1abfafbbfa75..242cb08e9fc4 100644
--- a/drivers/gpu/drm/i915/display/intel_dp_link_training.c
+++ b/drivers/gpu/drm/i915/display/intel_dp_link_training.c
@@ -1074,8 +1074,6 @@ intel_dp_link_train_phy(struct intel_dp *intel_dp,
 static void intel_dp_schedule_fallback_link_training(struct intel_dp *intel_dp,
 						     const struct intel_crtc_state *crtc_state)
 {
-	struct intel_connector *intel_connector = intel_dp->attached_connector;
-	struct drm_i915_private *i915 = dp_to_i915(intel_dp);
 
 	if (!intel_digital_port_connected(&dp_to_dig_port(intel_dp)->base)) {
 		lt_dbg(intel_dp, DP_PHY_DPRX, "Link Training failed on disconnected sink.\n");
@@ -1092,8 +1090,7 @@ static void intel_dp_schedule_fallback_link_training(struct intel_dp *intel_dp,
 		return;
 	}
 
-	/* Schedule a Hotplug Uevent to userspace to start modeset */
-	queue_work(i915->unordered_wq, &intel_connector->modeset_retry_work);
+	/* TODO: Re-visit, sending hotplug is not required. No need to notify user as we are not changing the mode */
 }
 
 /* Perform the link training on all LTTPRs and the DPRX on a link. */
-- 
2.25.1

