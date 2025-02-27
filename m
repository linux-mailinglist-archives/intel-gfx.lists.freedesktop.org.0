Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id E426EA47C25
	for <lists+intel-gfx@lfdr.de>; Thu, 27 Feb 2025 12:26:57 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 6DA8C10EA9E;
	Thu, 27 Feb 2025 11:26:56 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="MY6Bt0hC";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.13])
 by gabe.freedesktop.org (Postfix) with ESMTPS id A87DB10EA9E;
 Thu, 27 Feb 2025 11:26:55 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1740655616; x=1772191616;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=8+o+KH5SGXJL9pbefqym6H7zNpSc5021IPN/PdKwNsU=;
 b=MY6Bt0hCjt+GFDT82nKYuYZ8t3ShCcp4URQO/YXiWFVIhZbAZpbiMYzZ
 dpzC9aG2zCv1V3KglhDw6BgmJjGcnY/GDf0KD0me4MN1098RLXCbY3Zlo
 g68++M+uiF699gmgAasdx1BWFkcYysaszs8DBcyyFE7zNw7OM9f6Q5dzD
 VPmG6XxflXUYU7Mpij3Wn8vBQ9DPqwXzbPy1Iv5Ojis2Rb5CmpnP82HWK
 SJU6CUlgcuF1b7d0XTyBkYaQ/KjmdRVNsHW8cSMLvpzum54UtY2cmsrM3
 dCeE+isV4RtwPDaWmX1SeEF9F7Y4cL+9vDj4NTM2INZqCfAY+UCM4aKiZ Q==;
X-CSE-ConnectionGUID: gR/d5ikPS82kkQ2JSyF2KA==
X-CSE-MsgGUID: GUC8x5VDRo+UNdtKbxA6/Q==
X-IronPort-AV: E=McAfee;i="6700,10204,11357"; a="52527215"
X-IronPort-AV: E=Sophos;i="6.13,319,1732608000"; d="scan'208";a="52527215"
Received: from orviesa001.jf.intel.com ([10.64.159.141])
 by orvoesa105.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 27 Feb 2025 03:26:56 -0800
X-CSE-ConnectionGUID: mUJY05jTSP2Aj3LHisZ5pw==
X-CSE-MsgGUID: TtB54KpmQjOcHenFYonybQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.12,224,1728975600"; d="scan'208";a="154180517"
Received: from kandpal-x299-ud4-pro.iind.intel.com ([10.190.239.10])
 by orviesa001.jf.intel.com with ESMTP; 27 Feb 2025 03:26:53 -0800
From: Suraj Kandpal <suraj.kandpal@intel.com>
To: intel-xe@lists.freedesktop.org,
	intel-gfx@lists.freedesktop.org
Cc: ankit.k.nautiyal@intel.com, uma.shankar@intel.com, william.tseng@intel.com,
 jani.nikula@intel.com, Suraj Kandpal <suraj.kandpal@intel.com>
Subject: [PATCH] drm/i915/vdsc: Use the DSC config tables for DSI panels
Date: Thu, 27 Feb 2025 16:56:54 +0530
Message-Id: <20250227112654.279160-1-suraj.kandpal@intel.com>
X-Mailer: git-send-email 2.34.1
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

Some DSI panel vendors end up hardcoding PPS params because of which
it does not listen to the params sent from the source. We use the
default config tables for DSI panels when using DSC 1.1 rather than
calculate our own rc parameters.

--v2
-Use intel_crtc_has_type [Jani]

--v3
-Add Signed-off-by from William too [Ankit]

Closes: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/13719
Signed-off-by: Suraj Kandpal <suraj.kandpal@intel.com>
Signed-off-by: William Tseng <william.tseng@intel.com>
---
 drivers/gpu/drm/i915/display/intel_vdsc.c | 4 +++-
 1 file changed, 3 insertions(+), 1 deletion(-)

diff --git a/drivers/gpu/drm/i915/display/intel_vdsc.c b/drivers/gpu/drm/i915/display/intel_vdsc.c
index 6e7151346382..affe9913f1ee 100644
--- a/drivers/gpu/drm/i915/display/intel_vdsc.c
+++ b/drivers/gpu/drm/i915/display/intel_vdsc.c
@@ -320,7 +320,9 @@ int intel_dsc_compute_params(struct intel_crtc_state *pipe_config)
 	 * upto uncompressed bpp-1, hence add calculations for all the rc
 	 * parameters
 	 */
-	if (DISPLAY_VER(dev_priv) >= 13) {
+	if (DISPLAY_VER(dev_priv) >= 13 &&
+	    (vdsc_cfg->dsc_version_minor != 1 ||
+	     intel_crtc_has_type(pipe_config, INTEL_OUTPUT_DSI))) {
 		calculate_rc_params(vdsc_cfg);
 	} else {
 		if ((compressed_bpp == 8 ||
-- 
2.34.1

