Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id EF26329BE13
	for <lists+intel-gfx@lfdr.de>; Tue, 27 Oct 2020 17:56:14 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id BD2AA6EB9D;
	Tue, 27 Oct 2020 16:56:06 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga17.intel.com (mga17.intel.com [192.55.52.151])
 by gabe.freedesktop.org (Postfix) with ESMTPS id E82956EB9A;
 Tue, 27 Oct 2020 16:56:04 +0000 (UTC)
IronPort-SDR: 5J5X0ciNHDByAXKFQL4ZrDg+9IHheidjhkQohwUA9bv31m2JDqK1iS+Oeg3gtMeK+KUWkMMtJV
 ECgkYVUCDTNQ==
X-IronPort-AV: E=McAfee;i="6000,8403,9787"; a="147975759"
X-IronPort-AV: E=Sophos;i="5.77,424,1596524400"; d="scan'208";a="147975759"
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
 by fmsmga107.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 27 Oct 2020 09:56:04 -0700
IronPort-SDR: jkab5v2DzJ6twsb3/dNsmmy3Cj3W2RgX8Qvr3kGb32H59koffyQTQy3Xy47Q9xTC3/tMm1lmYG
 dwURkDs56bgw==
X-IronPort-AV: E=Sophos;i="5.77,424,1596524400"; d="scan'208";a="355613033"
Received: from genxfsim-desktop.iind.intel.com ([10.223.74.178])
 by fmsmga002-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 27 Oct 2020 09:56:02 -0700
From: Anshuman Gupta <anshuman.gupta@intel.com>
To: intel-gfx@lists.freedesktop.org,
	dri-devel@lists.freedesktop.org
Date: Tue, 27 Oct 2020 22:11:54 +0530
Message-Id: <20201027164208.10026-3-anshuman.gupta@intel.com>
X-Mailer: git-send-email 2.26.2
In-Reply-To: <20201027164208.10026-1-anshuman.gupta@intel.com>
References: <20201027164208.10026-1-anshuman.gupta@intel.com>
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH v4 02/16] drm/i915/hdcp: Get conn while
 content_type changed
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

Get DRM connector reference count while scheduling a prop work
to avoid any possible destroy of DRM connector when it is in
DRM_CONNECTOR_REGISTERED state.

Fixes: a6597faa2d59 ("drm/i915: Protect workers against disappearing connectors")
Cc: Sean Paul <seanpaul@chromium.org>
Cc: Ramalingam C <ramalingam.c@intel.com>
Signed-off-by: Anshuman Gupta <anshuman.gupta@intel.com>
---
 drivers/gpu/drm/i915/display/intel_hdcp.c | 1 +
 1 file changed, 1 insertion(+)

diff --git a/drivers/gpu/drm/i915/display/intel_hdcp.c b/drivers/gpu/drm/i915/display/intel_hdcp.c
index eee8263405b9..b9d8825e2bb1 100644
--- a/drivers/gpu/drm/i915/display/intel_hdcp.c
+++ b/drivers/gpu/drm/i915/display/intel_hdcp.c
@@ -2210,6 +2210,7 @@ void intel_hdcp_update_pipe(struct intel_atomic_state *state,
 	if (content_protection_type_changed) {
 		mutex_lock(&hdcp->mutex);
 		hdcp->value = DRM_MODE_CONTENT_PROTECTION_DESIRED;
+		drm_connector_get(&connector->base);
 		schedule_work(&hdcp->prop_work);
 		mutex_unlock(&hdcp->mutex);
 	}
-- 
2.26.2

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
