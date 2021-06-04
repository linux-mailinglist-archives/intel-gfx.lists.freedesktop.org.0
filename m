Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 38D8239B758
	for <lists+intel-gfx@lfdr.de>; Fri,  4 Jun 2021 12:46:44 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 3E17B6F5FB;
	Fri,  4 Jun 2021 10:46:42 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga05.intel.com (mga05.intel.com [192.55.52.43])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 0F0986F5FB
 for <intel-gfx@lists.freedesktop.org>; Fri,  4 Jun 2021 10:46:41 +0000 (UTC)
IronPort-SDR: 9mdzTF99gFzTYZ8EBiHrq8RHVrh5y3INvyV59Ar4Q+g4dVcZns3fbJD+/Rru+hkp4sg7Bd4rzX
 ImvBhmmvStdg==
X-IronPort-AV: E=McAfee;i="6200,9189,10004"; a="289898010"
X-IronPort-AV: E=Sophos;i="5.83,248,1616482800"; d="scan'208";a="289898010"
Received: from fmsmga004.fm.intel.com ([10.253.24.48])
 by fmsmga105.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 04 Jun 2021 03:46:40 -0700
IronPort-SDR: Ai1YxeU7oX4/8FkZi15ds/Wu6acrVgbBEcZsLoiSaanVynRkll97t+lZd2YFQ5xHigtKR7yxll
 w9QhnSBbYY6w==
X-IronPort-AV: E=Sophos;i="5.83,248,1616482800"; d="scan'208";a="468281919"
Received: from vandita-desktop.iind.intel.com ([10.223.74.52])
 by fmsmga004-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-SHA;
 04 Jun 2021 03:46:38 -0700
From: Vandita Kulkarni <vandita.kulkarni@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Fri,  4 Jun 2021 15:59:12 +0530
Message-Id: <20210604102912.15185-1-vandita.kulkarni@intel.com>
X-Mailer: git-send-email 2.21.0.5.gaeb582a
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH] drm/i915/dsc: Fix bigjoiner check in dsc_disable
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

Suggested-by: Jani Nikula <jani.nikula@intel.com>
Fixes: d961eb20adb6 (drm/i915/bigjoiner: atomic commit changes for uncompressed joiner)
Closes: https://gitlab.freedesktop.org/drm/intel/-/issues/3537
Signed-off-by: Vandita Kulkarni <vandita.kulkarni@intel.com>
---
 drivers/gpu/drm/i915/display/intel_vdsc.c | 12 ++++++------
 1 file changed, 6 insertions(+), 6 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_vdsc.c b/drivers/gpu/drm/i915/display/intel_vdsc.c
index 19cd9531c115..8888514e6267 100644
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
+	if (old_crtc_state->dsc.compression_enable
+	    || old_crtc_state->dsc.compression_enable) {
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
