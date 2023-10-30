Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id B5CC37DBD27
	for <lists+intel-gfx@lfdr.de>; Mon, 30 Oct 2023 16:58:52 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 1397610E320;
	Mon, 30 Oct 2023 15:58:44 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.10])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 6AF8110E320
 for <intel-gfx@lists.freedesktop.org>; Mon, 30 Oct 2023 15:58:40 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1698681521; x=1730217521;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=520ejcmE3bqruP4sSmlGygnN14PgHqJbRxu0r+WkAz0=;
 b=hwzXlGHpE7ldCF+H741qHm9/ebs5aS3/v/+QRgQywvSDIOfuRHYrbg9D
 D0kLt02jvzvN1s8bVE+MXjZlaxXzBX+n175866ng8vVmOXVD8nhY3yb1/
 d1iST8bRpJvDRxhf8YKdnXqoUpJIy0dNj6Oi4YKVEOt7J42XruUmwPFdJ
 xjVRFFyYTARcunoTfsZ7up70/CZn+9veL4lSOeTz+dinDuI+ljNvJVDKG
 sYcRzxdHar9Iyiz/bTJ1nlruQh5C/dbq/hCeM6qO5zTpPFknBXQppWnYN
 tkL2gvklHfaNCJPuvFhTg+Kh0+ZWaR4UIr28kVuYCrdOEcSdoB+Jf5Rvg A==;
X-IronPort-AV: E=McAfee;i="6600,9927,10879"; a="974479"
X-IronPort-AV: E=Sophos;i="6.03,263,1694761200"; 
   d="scan'208";a="974479"
Received: from orsmga008.jf.intel.com ([10.7.209.65])
 by orvoesa102.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 30 Oct 2023 08:58:41 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10879"; a="789494001"
X-IronPort-AV: E=Sophos;i="6.03,263,1694761200"; d="scan'208";a="789494001"
Received: from ideak-desk.fi.intel.com ([10.237.72.78])
 by orsmga008-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 30 Oct 2023 08:58:38 -0700
From: Imre Deak <imre.deak@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Mon, 30 Oct 2023 17:58:29 +0200
Message-Id: <20231030155843.2251023-17-imre.deak@intel.com>
X-Mailer: git-send-email 2.39.2
In-Reply-To: <20231030155843.2251023-1-imre.deak@intel.com>
References: <20231030155843.2251023-1-imre.deak@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH v4 16/30] drm/i915/dp: Make sure the DSC PPS SDP
 is disabled whenever DSC is disabled
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

Atm the DSC PPS SDP will stay enabled after enabling and disabling DSC.
This leaves an output blank after switching off DSC on it. Make sure the
SDP is disabled for an uncompressed output.

v2:
- Disable the SDP already during output disabling. (Ville)

Cc: Ville Syrjälä <ville.syrjala@linux.intel.com>
Reviewed-by: Stanislav Lisovskiy <stanislav.lisovskiy@intel.com>
Signed-off-by: Imre Deak <imre.deak@intel.com>
---
 drivers/gpu/drm/i915/display/intel_dp.c     | 5 ++++-
 drivers/gpu/drm/i915/display/intel_dp_mst.c | 5 ++---
 2 files changed, 6 insertions(+), 4 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_dp.c b/drivers/gpu/drm/i915/display/intel_dp.c
index 34da403fa512b..e4f674192f3b7 100644
--- a/drivers/gpu/drm/i915/display/intel_dp.c
+++ b/drivers/gpu/drm/i915/display/intel_dp.c
@@ -4069,7 +4069,10 @@ void intel_dp_set_infoframes(struct intel_encoder *encoder,
 			 VIDEO_DIP_ENABLE_SPD_HSW | VIDEO_DIP_ENABLE_DRM_GLK;
 	u32 val = intel_de_read(dev_priv, reg) & ~dip_enable;
 
-	/* TODO: Add DSC case (DIP_ENABLE_PPS) */
+	/* TODO: Sanitize DSC enabling wrt. intel_dsc_dp_pps_write(). */
+	if (!enable && HAS_DSC(dev_priv))
+		val &= ~VDIP_ENABLE_PPS;
+
 	/* When PSR is enabled, this routine doesn't disable VSC DIP */
 	if (!crtc_state->has_psr)
 		val &= ~VIDEO_DIP_ENABLE_VSC_HSW;
diff --git a/drivers/gpu/drm/i915/display/intel_dp_mst.c b/drivers/gpu/drm/i915/display/intel_dp_mst.c
index 2d7ffbc9fe006..cfbe3430e5ace 100644
--- a/drivers/gpu/drm/i915/display/intel_dp_mst.c
+++ b/drivers/gpu/drm/i915/display/intel_dp_mst.c
@@ -729,9 +729,8 @@ static void intel_mst_post_disable_dp(struct intel_atomic_state *state,
 	 * BSpec 4287: disable DIP after the transcoder is disabled and before
 	 * the transcoder clock select is set to none.
 	 */
-	if (last_mst_stream)
-		intel_dp_set_infoframes(&dig_port->base, false,
-					old_crtc_state, NULL);
+	intel_dp_set_infoframes(&dig_port->base, false,
+				old_crtc_state, NULL);
 	/*
 	 * From TGL spec: "If multi-stream slave transcoder: Configure
 	 * Transcoder Clock Select to direct no clock to the transcoder"
-- 
2.39.2

