Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 3EC5B1359C2
	for <lists+intel-gfx@lfdr.de>; Thu,  9 Jan 2020 14:10:49 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 8CC1F6E416;
	Thu,  9 Jan 2020 13:10:47 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
 by gabe.freedesktop.org (Postfix) with ESMTPS id C813E6E416
 for <intel-gfx@lists.freedesktop.org>; Thu,  9 Jan 2020 13:10:45 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga005.fm.intel.com ([10.253.24.32])
 by orsmga102.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 09 Jan 2020 05:10:45 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.69,413,1571727600"; d="scan'208";a="421776251"
Received: from unknown (HELO genxfsim-desktop.iind.intel.com) ([10.223.74.178])
 by fmsmga005.fm.intel.com with ESMTP; 09 Jan 2020 05:10:43 -0800
From: Anshuman Gupta <anshuman.gupta@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Thu,  9 Jan 2020 18:25:08 +0530
Message-Id: <20200109125508.19601-1-anshuman.gupta@intel.com>
X-Mailer: git-send-email 2.24.0
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH v2] drm/i915/hdcp: restore hdcp state same as
 previous
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

When port is disabled due to modeset or DPMS off actually
it disables the HDCP encryption keeping its state to
CP_ENABLED this doesn't enable HDCP again while port
gets enable again. HDCP state should set accordingly
when port is disabled.

v2: Incorporated the necessary locking and making sure
    when user explicitly set HDCP to UNDESRIED it should
    make HDCP to desired while disabling DDI. (Ram)

CC: Ramalingam C <ramalingam.c@intel.com>
Signed-off-by: Anshuman Gupta <anshuman.gupta@intel.com>
---
 drivers/gpu/drm/i915/display/intel_display_types.h |  1 +
 drivers/gpu/drm/i915/display/intel_hdcp.c          | 12 +++++++++++-
 2 files changed, 12 insertions(+), 1 deletion(-)

diff --git a/drivers/gpu/drm/i915/display/intel_display_types.h b/drivers/gpu/drm/i915/display/intel_display_types.h
index 630a94892b7b..f2552a52f26a 100644
--- a/drivers/gpu/drm/i915/display/intel_display_types.h
+++ b/drivers/gpu/drm/i915/display/intel_display_types.h
@@ -344,6 +344,7 @@ struct intel_hdcp {
 	u64 value;
 	struct delayed_work check_work;
 	struct work_struct prop_work;
+	bool is_hdcp_undesired;
 
 	/* HDCP1.4 Encryption status */
 	bool hdcp_encrypted;
diff --git a/drivers/gpu/drm/i915/display/intel_hdcp.c b/drivers/gpu/drm/i915/display/intel_hdcp.c
index 0fdbd39f6641..507056aab33b 100644
--- a/drivers/gpu/drm/i915/display/intel_hdcp.c
+++ b/drivers/gpu/drm/i915/display/intel_hdcp.c
@@ -2002,11 +2002,17 @@ int intel_hdcp_disable(struct intel_connector *connector)
 	mutex_lock(&hdcp->mutex);
 
 	if (hdcp->value != DRM_MODE_CONTENT_PROTECTION_UNDESIRED) {
-		hdcp->value = DRM_MODE_CONTENT_PROTECTION_UNDESIRED;
 		if (hdcp->hdcp2_encrypted)
 			ret = _intel_hdcp2_disable(connector);
 		else if (hdcp->hdcp_encrypted)
 			ret = _intel_hdcp_disable(connector);
+
+		if (hdcp->is_hdcp_undesired) {
+			hdcp->value = DRM_MODE_CONTENT_PROTECTION_UNDESIRED;
+		} else {
+			hdcp->value = DRM_MODE_CONTENT_PROTECTION_DESIRED;
+			schedule_work(&hdcp->prop_work);
+		}
 	}
 
 	mutex_unlock(&hdcp->mutex);
@@ -2044,6 +2050,7 @@ void intel_hdcp_atomic_check(struct drm_connector *connector,
 {
 	u64 old_cp = old_state->content_protection;
 	u64 new_cp = new_state->content_protection;
+	struct intel_connector *intel_conn = to_intel_connector(connector);
 	struct drm_crtc_state *crtc_state;
 
 	if (!new_state->crtc) {
@@ -2069,6 +2076,9 @@ void intel_hdcp_atomic_check(struct drm_connector *connector,
 			return;
 	}
 
+	if (new_cp == DRM_MODE_CONTENT_PROTECTION_UNDESIRED)
+		intel_conn->hdcp.is_hdcp_undesired  =  true;
+
 	crtc_state = drm_atomic_get_new_crtc_state(new_state->state,
 						   new_state->crtc);
 	crtc_state->mode_changed = true;
-- 
2.24.0

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
