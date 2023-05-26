Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 80EE9712AC6
	for <lists+intel-gfx@lfdr.de>; Fri, 26 May 2023 18:38:32 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id EA77210E818;
	Fri, 26 May 2023 16:38:30 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga04.intel.com (mga04.intel.com [192.55.52.120])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 9742710E818
 for <intel-gfx@lists.freedesktop.org>; Fri, 26 May 2023 16:38:29 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1685119109; x=1716655109;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=S0gwvdUWOA9TqC1NEJy87b8Y/Q0vz1HKWIg0IaT9Oxs=;
 b=kglLoFWb1MBmj93qhxDIIAO1TU8FEUCi7+crfMcc1dw6jykeB+hXFlxH
 DFlRda8nBcQOJxDHia6pt+WiDXxL1tCWfIETtEf2lYG+aFlNNYCLrV80o
 mh7HxFbQBBMjEB0qjPV0K1s8d+j4xPCeewLrDXrZ2UL2NMSjIu5mRzAav
 sLP0gjQ2f5vtLvw8/kQ2tE2Xup75I4Dqa8uR4fTZGijFW6ymbV4b6WBEc
 CvlHE0UfmRsBwLozQ3M8v+bUjFXkA6+5m7w3kCsMq58fkLU2hyVa3G2WJ
 3jcsgcur68GJsHnK8uRUNuew8E6tqujjWVMPqC/6hXizTuR8Ww9j2eZZ0 g==;
X-IronPort-AV: E=McAfee;i="6600,9927,10722"; a="353087508"
X-IronPort-AV: E=Sophos;i="6.00,194,1681196400"; d="scan'208";a="353087508"
Received: from orsmga008.jf.intel.com ([10.7.209.65])
 by fmsmga104.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 26 May 2023 09:38:28 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10722"; a="736056495"
X-IronPort-AV: E=Sophos;i="6.00,194,1681196400"; d="scan'208";a="736056495"
Received: from akervine-mobl1.ger.corp.intel.com (HELO localhost)
 ([10.252.55.216])
 by orsmga008-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 26 May 2023 09:38:27 -0700
From: Jani Nikula <jani.nikula@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Fri, 26 May 2023 19:37:57 +0300
Message-Id: <27efd245aa75226adcac01eff7b21781970f2736.1685119007.git.jani.nikula@intel.com>
X-Mailer: git-send-email 2.39.2
In-Reply-To: <cover.1685119006.git.jani.nikula@intel.com>
References: <cover.1685119006.git.jani.nikula@intel.com>
MIME-Version: 1.0
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH 04/15] drm/i915/dsi: drop unused but set
 variable vbp
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
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

Prepare for re-enabling -Wunused-but-set-variable.

The vbp is not used for anything in the readout, as we get
e.g. crtc_vtotal from BXT_MIPI_TRANS_VTOTAL.

Signed-off-by: Jani Nikula <jani.nikula@intel.com>
---
 drivers/gpu/drm/i915/display/vlv_dsi.c | 3 +--
 1 file changed, 1 insertion(+), 2 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/vlv_dsi.c b/drivers/gpu/drm/i915/display/vlv_dsi.c
index aecd0142ce40..ae2f3ab3e73d 100644
--- a/drivers/gpu/drm/i915/display/vlv_dsi.c
+++ b/drivers/gpu/drm/i915/display/vlv_dsi.c
@@ -1039,7 +1039,7 @@ static void bxt_dsi_get_pipe_config(struct intel_encoder *encoder,
 	unsigned int lane_count = intel_dsi->lane_count;
 	unsigned int bpp, fmt;
 	enum port port;
-	u16 hactive, hfp, hsync, hbp, vfp, vsync, vbp;
+	u16 hactive, hfp, hsync, hbp, vfp, vsync;
 	u16 hfp_sw, hsync_sw, hbp_sw;
 	u16 crtc_htotal_sw, crtc_hsync_start_sw, crtc_hsync_end_sw,
 				crtc_hblank_start_sw, crtc_hblank_end_sw;
@@ -1104,7 +1104,6 @@ static void bxt_dsi_get_pipe_config(struct intel_encoder *encoder,
 	/* vertical values are in terms of lines */
 	vfp = intel_de_read(dev_priv, MIPI_VFP_COUNT(port));
 	vsync = intel_de_read(dev_priv, MIPI_VSYNC_PADDING_COUNT(port));
-	vbp = intel_de_read(dev_priv, MIPI_VBP_COUNT(port));
 
 	adjusted_mode->crtc_htotal = hactive + hfp + hsync + hbp;
 	adjusted_mode->crtc_hsync_start = hfp + adjusted_mode->crtc_hdisplay;
-- 
2.39.2

