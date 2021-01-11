Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 70CDC2F0DFC
	for <lists+intel-gfx@lfdr.de>; Mon, 11 Jan 2021 09:26:21 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id A6BC789DBC;
	Mon, 11 Jan 2021 08:26:17 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga14.intel.com (mga14.intel.com [192.55.52.115])
 by gabe.freedesktop.org (Postfix) with ESMTPS id E4A7489DBC;
 Mon, 11 Jan 2021 08:26:15 +0000 (UTC)
IronPort-SDR: bGImmOSlBH8/lwgoG4G4W2siSkd4+QhGqWKvqpx3JkAu5T/6SfPkYRg59wicAG0QydZAfzNNoj
 6dClGnPixiNw==
X-IronPort-AV: E=McAfee;i="6000,8403,9860"; a="177046065"
X-IronPort-AV: E=Sophos;i="5.79,338,1602572400"; d="scan'208";a="177046065"
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
 by fmsmga103.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 11 Jan 2021 00:26:15 -0800
IronPort-SDR: Cdb4G/570bnRxyfVI+P+hBpRbAs/1kYyykSEGtyegxNfC/utqQncJwU4aPOsIMZjJtWaJkgmC0
 As4MpK3rfZSQ==
X-IronPort-AV: E=Sophos;i="5.79,338,1602572400"; d="scan'208";a="464093955"
Received: from unknown (HELO genxfsim-desktop.iind.intel.com) ([10.223.74.179])
 by fmsmga001-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 11 Jan 2021 00:26:12 -0800
From: Anshuman Gupta <anshuman.gupta@intel.com>
To: intel-gfx@lists.freedesktop.org,
	dri-devel@lists.freedesktop.org
Date: Mon, 11 Jan 2021 13:41:02 +0530
Message-Id: <20210111081120.28417-2-anshuman.gupta@intel.com>
X-Mailer: git-send-email 2.26.2
In-Reply-To: <20210111081120.28417-1-anshuman.gupta@intel.com>
References: <20210111081120.28417-1-anshuman.gupta@intel.com>
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH v9 01/19] drm/i915/hdcp: Update CP property in
 update_pipe
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
Cc: jani.nikula@intel.com, seanpaul@chromium.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

When crtc state need_modeset is true it is not necessary
it is going to be a real modeset, it can turns to be a
fastset instead of modeset.
This turns content protection property to be DESIRED and hdcp
update_pipe left with property to be in DESIRED state but
actual hdcp->value was ENABLED.

This issue is caught with DP MST setup, where we have multiple
connector in same DP_MST topology. When disabling HDCP on one of
DP MST connector leads to set the crtc state need_modeset to true
for all other crtc driving the other DP-MST topology connectors.
This turns up other DP MST connectors CP property to be DESIRED
despite the actual hdcp->value is ENABLED.
Above scenario fails the DP MST HDCP IGT test, disabling HDCP on
one MST stream should not cause to disable HDCP on another MST
stream on same DP MST topology.

v2:
- Fixed connector->base.registration_state == DRM_CONNECTOR_REGISTERED
  WARN_ON.

v3:
- Commit log improvement. [Uma]
- Added a comment before scheduling prop_work. [Uma]

Fixes: 33f9a623bfc6 ("drm/i915/hdcp: Update CP as per the kernel internal state")
Cc: Ramalingam C <ramalingam.c@intel.com>
Reviewed-by: Uma Shankar <uma.shankar@intel.com>
Reviewed-by: Ramalingam C <ramalingam.c@intel.com>
Tested-by: Karthik B S <karthik.b.s@intel.com>
Signed-off-by: Anshuman Gupta <anshuman.gupta@intel.com>
---
 drivers/gpu/drm/i915/display/intel_hdcp.c | 8 ++++++++
 1 file changed, 8 insertions(+)

diff --git a/drivers/gpu/drm/i915/display/intel_hdcp.c b/drivers/gpu/drm/i915/display/intel_hdcp.c
index b2a4bbcfdcd2..eee8263405b9 100644
--- a/drivers/gpu/drm/i915/display/intel_hdcp.c
+++ b/drivers/gpu/drm/i915/display/intel_hdcp.c
@@ -2221,6 +2221,14 @@ void intel_hdcp_update_pipe(struct intel_atomic_state *state,
 		desired_and_not_enabled =
 			hdcp->value != DRM_MODE_CONTENT_PROTECTION_ENABLED;
 		mutex_unlock(&hdcp->mutex);
+		/*
+		 * If HDCP already ENABLED and CP property is DESIRED, schedule
+		 * prop_work to update correct CP property to user space.
+		 */
+		if (!desired_and_not_enabled && !content_protection_type_changed) {
+			drm_connector_get(&connector->base);
+			schedule_work(&hdcp->prop_work);
+		}
 	}
 
 	if (desired_and_not_enabled || content_protection_type_changed)
-- 
2.26.2

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
