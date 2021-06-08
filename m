Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 6689839ED75
	for <lists+intel-gfx@lfdr.de>; Tue,  8 Jun 2021 06:24:41 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 445AC6EA94;
	Tue,  8 Jun 2021 04:24:39 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga03.intel.com (mga03.intel.com [134.134.136.65])
 by gabe.freedesktop.org (Postfix) with ESMTPS id B5C9F6EA94
 for <intel-gfx@lists.freedesktop.org>; Tue,  8 Jun 2021 04:24:38 +0000 (UTC)
IronPort-SDR: AcNSmThTKIE5IoNsHXgxrYPeNYDoG3ofwoxKtDWlKyHRUqH/SGJVuAz5tHBlhIo//5k1YmLNyH
 ERXsx40Upnrw==
X-IronPort-AV: E=McAfee;i="6200,9189,10008"; a="204792095"
X-IronPort-AV: E=Sophos;i="5.83,256,1616482800"; d="scan'208";a="204792095"
Received: from orsmga008.jf.intel.com ([10.7.209.65])
 by orsmga103.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 07 Jun 2021 21:24:37 -0700
IronPort-SDR: M6CEq+mGoI7svY12P3MtQsfn+EGnyip7cgYWd2dS/jYH+lZr4dLtyQX/L3Iqq8oWWoVYss39Fa
 218l8Ut3TJ6w==
X-IronPort-AV: E=Sophos;i="5.83,256,1616482800"; d="scan'208";a="447749100"
Received: from vandita-desktop.iind.intel.com ([10.223.74.52])
 by orsmga008-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-SHA;
 07 Jun 2021 21:24:35 -0700
From: Vandita Kulkarni <vandita.kulkarni@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Tue,  8 Jun 2021 09:36:59 +0530
Message-Id: <20210608040659.14131-1-vandita.kulkarni@intel.com>
X-Mailer: git-send-email 2.21.0.5.gaeb582a
MIME-Version: 1.0
Subject: [Intel-gfx] [v3] drm/i915/dsc: Fix bigjoiner check in dsc_disable
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
Cc: jani.nikula@intel.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

This change takes care of resetting the dss_ctl registers
in case of dsc_disable, bigjoiner disable and also
uncompressed joiner disable.

v2: Fix formatting
v3: Fix the typo (Mansi)

Suggested-by: Jani Nikula <jani.nikula@intel.com>
Fixes: d961eb20adb6 (drm/i915/bigjoiner: atomic commit changes for uncompressed joiner)
Closes: https://gitlab.freedesktop.org/drm/intel/-/issues/3537
Signed-off-by: Vandita Kulkarni <vandita.kulkarni@intel.com>
---
 drivers/gpu/drm/i915/display/intel_vdsc.c | 12 ++++++------
 1 file changed, 6 insertions(+), 6 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_vdsc.c b/drivers/gpu/drm/i915/display/intel_vdsc.c
index 19cd9531c115..7121b66bf96d 100644
--- a/drivers/gpu/drm/i915/display/intel_vdsc.c
+++ b/drivers/gpu/drm/i915/display/intel_vdsc.c
@@ -1161,12 +1161,12 @@ void intel_dsc_disable(const struct intel_crtc_state *old_crtc_state)
 	struct intel_crtc *crtc = to_intel_crtc(old_crtc_state->uapi.crtc);
 	struct drm_i915_private *dev_priv = to_i915(crtc->base.dev);
 
-	if (!(old_crtc_state->dsc.compression_enable &&
-	      old_crtc_state->bigjoiner))
-		return;
-
-	intel_de_write(dev_priv, dss_ctl1_reg(old_crtc_state), 0);
-	intel_de_write(dev_priv, dss_ctl2_reg(old_crtc_state), 0);
+	/* Disable only if either of them is enabled */
+	if (old_crtc_state->dsc.compression_enable ||
+	    old_crtc_state->bigjoiner) {
+		intel_de_write(dev_priv, dss_ctl1_reg(old_crtc_state), 0);
+		intel_de_write(dev_priv, dss_ctl2_reg(old_crtc_state), 0);
+	}
 }
 
 void intel_uncompressed_joiner_get_config(struct intel_crtc_state *crtc_state)
-- 
2.21.0.5.gaeb582a

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
