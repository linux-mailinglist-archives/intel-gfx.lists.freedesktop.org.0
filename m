Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id A05B612F8A9
	for <lists+intel-gfx@lfdr.de>; Fri,  3 Jan 2020 14:09:27 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id A3DA96E30C;
	Fri,  3 Jan 2020 13:09:24 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga18.intel.com (mga18.intel.com [134.134.136.126])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 01FDB6E301
 for <intel-gfx@lists.freedesktop.org>; Fri,  3 Jan 2020 13:09:21 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga007.jf.intel.com ([10.7.209.58])
 by orsmga106.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 03 Jan 2020 05:09:21 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.69,390,1571727600"; d="scan'208";a="210085233"
Received: from unknown (HELO genxfsim-desktop.iind.intel.com) ([10.223.74.178])
 by orsmga007.jf.intel.com with ESMTP; 03 Jan 2020 05:09:20 -0800
From: Anshuman Gupta <anshuman.gupta@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Fri,  3 Jan 2020 18:30:21 +0530
Message-Id: <20200103130021.15992-2-anshuman.gupta@intel.com>
X-Mailer: git-send-email 2.24.0
In-Reply-To: <20200103130021.15992-1-anshuman.gupta@intel.com>
References: <20200103130021.15992-1-anshuman.gupta@intel.com>
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH 1/1] drm/i915/hdcp: restore hdcp state same as
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

CC: Ramalingam C <ramalingam.c@intel.com>
Signed-off-by: Anshuman Gupta <anshuman.gupta@intel.com>
---
 drivers/gpu/drm/i915/display/intel_ddi.c | 9 ++++++++-
 1 file changed, 8 insertions(+), 1 deletion(-)

diff --git a/drivers/gpu/drm/i915/display/intel_ddi.c b/drivers/gpu/drm/i915/display/intel_ddi.c
index 07acd0daca25..b1b79073e3f9 100644
--- a/drivers/gpu/drm/i915/display/intel_ddi.c
+++ b/drivers/gpu/drm/i915/display/intel_ddi.c
@@ -4137,7 +4137,14 @@ static void intel_disable_ddi(struct intel_encoder *encoder,
 			      const struct intel_crtc_state *old_crtc_state,
 			      const struct drm_connector_state *old_conn_state)
 {
-	intel_hdcp_disable(to_intel_connector(old_conn_state->connector));
+	int ret;
+
+	ret = intel_hdcp_disable(to_intel_connector(old_conn_state->connector));
+
+	if (old_conn_state->content_protection ==
+	    DRM_MODE_CONTENT_PROTECTION_ENABLED && !ret)
+		drm_hdcp_update_content_protection(old_conn_state->connector,
+						   DRM_MODE_CONTENT_PROTECTION_DESIRED);
 
 	if (intel_crtc_has_type(old_crtc_state, INTEL_OUTPUT_HDMI))
 		intel_disable_ddi_hdmi(encoder, old_crtc_state, old_conn_state);
-- 
2.24.0

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
