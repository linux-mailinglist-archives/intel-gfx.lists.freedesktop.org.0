Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id ECD20269671
	for <lists+intel-gfx@lfdr.de>; Mon, 14 Sep 2020 22:25:14 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 4CBDC6E591;
	Mon, 14 Sep 2020 20:25:13 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga07.intel.com (mga07.intel.com [134.134.136.100])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 34D206E58B
 for <intel-gfx@lists.freedesktop.org>; Mon, 14 Sep 2020 20:25:11 +0000 (UTC)
IronPort-SDR: b5AUq56UQ1W5bAlLphGKwTZlCQzYrGeMMYt99OORah2H0lRgfwSvV6Noo1+k7l0BclDDnITU4E
 1QaaZHUrFirA==
X-IronPort-AV: E=McAfee;i="6000,8403,9744"; a="223340803"
X-IronPort-AV: E=Sophos;i="5.76,427,1592895600"; d="scan'208";a="223340803"
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga006.jf.intel.com ([10.7.209.51])
 by orsmga105.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 14 Sep 2020 13:25:11 -0700
IronPort-SDR: rsLxfOalqpMnI0s5+gNanZ6WkNOeOdOr5dFV6IhUgNcgeKDMs1v2T11ELzHJ63mWyqD1L1IdLI
 x9yS0U6F2TAQ==
X-IronPort-AV: E=Sophos;i="5.76,427,1592895600"; d="scan'208";a="306307156"
Received: from unknown (HELO linux-desktop.iind.intel.com) ([10.223.34.173])
 by orsmga006-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 14 Sep 2020 13:25:09 -0700
From: Uma Shankar <uma.shankar@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Tue, 15 Sep 2020 02:30:43 +0530
Message-Id: <20200914210047.11972-8-uma.shankar@intel.com>
X-Mailer: git-send-email 2.26.2
In-Reply-To: <20200914210047.11972-1-uma.shankar@intel.com>
References: <20200914210047.11972-1-uma.shankar@intel.com>
MIME-Version: 1.0
Subject: [Intel-gfx] [v6 07/11] drm/i915/display: Implement DRM infoframe
 read for LSPCON
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

Implement Read back of HDR metadata infoframes i.e Dynamic Range
and Mastering Infoframe for LSPCON devices.

v2: Added proper bitmask of enabled infoframes as per Ville's
recommendation.

Signed-off-by: Uma Shankar <uma.shankar@intel.com>
---
 drivers/gpu/drm/i915/display/intel_hdmi.c   | 10 ++++++++++
 drivers/gpu/drm/i915/display/intel_lspcon.c |  6 +++++-
 drivers/gpu/drm/i915/display/intel_lspcon.h |  4 ++++
 3 files changed, 19 insertions(+), 1 deletion(-)

diff --git a/drivers/gpu/drm/i915/display/intel_hdmi.c b/drivers/gpu/drm/i915/display/intel_hdmi.c
index 1e40ed473fb9..02b0b5921bed 100644
--- a/drivers/gpu/drm/i915/display/intel_hdmi.c
+++ b/drivers/gpu/drm/i915/display/intel_hdmi.c
@@ -600,6 +600,16 @@ void lspcon_drm_write_infoframe(struct intel_encoder *encoder,
 	hsw_write_infoframe(encoder, crtc_state, type, frame, len);
 }
 
+void lspcon_drm_read_infoframe(struct intel_encoder *encoder,
+			       const struct intel_crtc_state *crtc_state,
+			       unsigned int type,
+			       void *frame, ssize_t len)
+{
+	drm_dbg_kms(encoder->base.dev, "Read HDR metadata for lspcon\n");
+	/* It uses the legacy hsw implementation for the same */
+	hsw_read_infoframe(encoder, crtc_state, type, frame, len);
+}
+
 static const u8 infoframe_type_to_idx[] = {
 	HDMI_PACKET_TYPE_GENERAL_CONTROL,
 	HDMI_PACKET_TYPE_GAMUT_METADATA,
diff --git a/drivers/gpu/drm/i915/display/intel_lspcon.c b/drivers/gpu/drm/i915/display/intel_lspcon.c
index 565913b8e656..ee77a5381cb5 100644
--- a/drivers/gpu/drm/i915/display/intel_lspcon.c
+++ b/drivers/gpu/drm/i915/display/intel_lspcon.c
@@ -501,7 +501,11 @@ void lspcon_read_infoframe(struct intel_encoder *encoder,
 			   unsigned int type,
 			   void *frame, ssize_t len)
 {
-	/* FIXME implement this */
+	/* FIXME implement for AVI Infoframe as well */
+	if (type == HDMI_PACKET_TYPE_GAMUT_METADATA)
+		lspcon_drm_read_infoframe(encoder, crtc_state,
+					  HDMI_PACKET_TYPE_GAMUT_METADATA,
+					  frame, VIDEO_DIP_DATA_SIZE);
 }
 
 /* HDMI HDR Colorspace Spec Definitions */
diff --git a/drivers/gpu/drm/i915/display/intel_lspcon.h b/drivers/gpu/drm/i915/display/intel_lspcon.h
index 3fac05535731..1b9fb531128e 100644
--- a/drivers/gpu/drm/i915/display/intel_lspcon.h
+++ b/drivers/gpu/drm/i915/display/intel_lspcon.h
@@ -38,4 +38,8 @@ void lspcon_drm_write_infoframe(struct intel_encoder *encoder,
 				const struct intel_crtc_state *crtc_state,
 				unsigned int type,
 				const void *frame, ssize_t len);
+void lspcon_drm_read_infoframe(struct intel_encoder *encoder,
+			       const struct intel_crtc_state *crtc_state,
+			       unsigned int type,
+			       void *frame, ssize_t len);
 #endif /* __INTEL_LSPCON_H__ */
-- 
2.26.2

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
