Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 4204828FB8F
	for <lists+intel-gfx@lfdr.de>; Fri, 16 Oct 2020 01:15:29 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 1DA4D6E3F0;
	Thu, 15 Oct 2020 23:15:27 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
 by gabe.freedesktop.org (Postfix) with ESMTPS id EB4ED6E3E5
 for <intel-gfx@lists.freedesktop.org>; Thu, 15 Oct 2020 23:15:22 +0000 (UTC)
IronPort-SDR: YdRKnP+0OBKKJ+yJHHM7tHLIT4mtE4rCOjpMXczBy85hLC8qJHpm1sap9QR318A1ZUQvA0Tmtx
 R8cYLGW/1MMA==
X-IronPort-AV: E=McAfee;i="6000,8403,9775"; a="163010322"
X-IronPort-AV: E=Sophos;i="5.77,380,1596524400"; d="scan'208";a="163010322"
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga005.jf.intel.com ([10.7.209.41])
 by fmsmga102.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 15 Oct 2020 16:15:22 -0700
IronPort-SDR: ap70tSJ3eL7KrgkE7YA8fBSnKRUI+WUZCRAzdrYEnvSknBV4QiX1VyvXgVRhyvfmGWkKCOEV++
 UoYX74QALRnw==
X-IronPort-AV: E=Sophos;i="5.77,380,1596524400"; d="scan'208";a="531450452"
Received: from linux-desktop.iind.intel.com ([10.223.34.173])
 by orsmga005-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 15 Oct 2020 16:15:21 -0700
From: Uma Shankar <uma.shankar@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Fri, 16 Oct 2020 05:18:59 +0530
Message-Id: <20201015234902.7134-10-uma.shankar@intel.com>
X-Mailer: git-send-email 2.26.2
In-Reply-To: <20201015234902.7134-1-uma.shankar@intel.com>
References: <20201015234902.7134-1-uma.shankar@intel.com>
MIME-Version: 1.0
Subject: [Intel-gfx] [v8 09/12] drm/i915/display: Implement DRM infoframe
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

v3: Dropped a redundant wrapper as per Ville's comment.

Signed-off-by: Uma Shankar <uma.shankar@intel.com>
---
 drivers/gpu/drm/i915/display/intel_hdmi.c   | 7 +++----
 drivers/gpu/drm/i915/display/intel_lspcon.c | 7 ++++++-
 drivers/gpu/drm/i915/display/intel_lspcon.h | 4 ++++
 3 files changed, 13 insertions(+), 5 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_hdmi.c b/drivers/gpu/drm/i915/display/intel_hdmi.c
index f1a927cdf798..81dabffbb3e6 100644
--- a/drivers/gpu/drm/i915/display/intel_hdmi.c
+++ b/drivers/gpu/drm/i915/display/intel_hdmi.c
@@ -555,10 +555,9 @@ void hsw_write_infoframe(struct intel_encoder *encoder,
 	intel_de_posting_read(dev_priv, ctl_reg);
 }
 
-static void hsw_read_infoframe(struct intel_encoder *encoder,
-			       const struct intel_crtc_state *crtc_state,
-			       unsigned int type,
-			       void *frame, ssize_t len)
+void hsw_read_infoframe(struct intel_encoder *encoder,
+			const struct intel_crtc_state *crtc_state,
+			unsigned int type, void *frame, ssize_t len)
 {
 	struct drm_i915_private *dev_priv = to_i915(encoder->base.dev);
 	enum transcoder cpu_transcoder = crtc_state->cpu_transcoder;
diff --git a/drivers/gpu/drm/i915/display/intel_lspcon.c b/drivers/gpu/drm/i915/display/intel_lspcon.c
index 9685be1991ca..d81a615ff9ac 100644
--- a/drivers/gpu/drm/i915/display/intel_lspcon.c
+++ b/drivers/gpu/drm/i915/display/intel_lspcon.c
@@ -501,7 +501,12 @@ void lspcon_read_infoframe(struct intel_encoder *encoder,
 			   unsigned int type,
 			   void *frame, ssize_t len)
 {
-	/* FIXME implement this */
+	/* FIXME implement for AVI Infoframe as well */
+	if (type == HDMI_PACKET_TYPE_GAMUT_METADATA) {
+		drm_dbg_kms(encoder->base.dev, "Read HDR metadata for lspcon\n");
+		hsw_read_infoframe(encoder, crtc_state, type,
+				   frame, len);
+	}
 }
 
 void lspcon_set_infoframes(struct intel_encoder *encoder,
diff --git a/drivers/gpu/drm/i915/display/intel_lspcon.h b/drivers/gpu/drm/i915/display/intel_lspcon.h
index 972afa3b2168..15965c77b43a 100644
--- a/drivers/gpu/drm/i915/display/intel_lspcon.h
+++ b/drivers/gpu/drm/i915/display/intel_lspcon.h
@@ -39,5 +39,9 @@ void hsw_write_infoframe(struct intel_encoder *encoder,
 			 const struct intel_crtc_state *crtc_state,
 			 unsigned int type,
 			const void *frame, ssize_t len);
+void hsw_read_infoframe(struct intel_encoder *encoder,
+			const struct intel_crtc_state *crtc_state,
+			unsigned int type,
+			void *frame, ssize_t len);
 
 #endif /* __INTEL_LSPCON_H__ */
-- 
2.26.2

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
