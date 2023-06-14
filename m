Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 0BACD72F368
	for <lists+intel-gfx@lfdr.de>; Wed, 14 Jun 2023 06:12:03 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 76AA910E099;
	Wed, 14 Jun 2023 04:11:59 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga03.intel.com (mga03.intel.com [134.134.136.65])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 4B56410E099
 for <intel-gfx@lists.freedesktop.org>; Wed, 14 Jun 2023 04:11:57 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1686715917; x=1718251917;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=MCefUJvTzSPLijygbDvxcSsfbMtxuWiQhzI+17e846o=;
 b=FSv646sNnKo6accDxUAMqV8N/XFwJQ21+oA8Y0Bcr8SOIzPdL1Abp2wZ
 VIxiBI46X20eN1g27bpZFS7V2GD0gpJGMTOM6WH9v5LImBWTWNXw6Vz9d
 AYWaXAIQJrqluFdyLgtuEUmsZatQiMLKDtKkX/nVuxpTgiet1SMzryxXF
 6z7cL9uTTnyuGEjgutBXKxyRRw8hDVLHZjmaIQGvt9EzioDhsYu/EA+Vs
 /E62kOSl2ojy/JUSUb5yJU1R8RnxzJ26fI4sOqvI/59wP8x/igguXdFY5
 cnJ2EqzSwW8LeKqaTKhuSm62hrjeBWjuiXSLDnH0c9mbtTcYY2U69E8Ci Q==;
X-IronPort-AV: E=McAfee;i="6600,9927,10740"; a="361886205"
X-IronPort-AV: E=Sophos;i="6.00,241,1681196400"; d="scan'208";a="361886205"
Received: from fmsmga003.fm.intel.com ([10.253.24.29])
 by orsmga103.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 13 Jun 2023 21:11:55 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10740"; a="801757440"
X-IronPort-AV: E=Sophos;i="6.00,241,1681196400"; d="scan'208";a="801757440"
Received: from srr4-3-linux-103-aknautiy.iind.intel.com ([10.223.34.160])
 by fmsmga003-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 13 Jun 2023 21:11:53 -0700
From: Ankit Nautiyal <ankit.k.nautiyal@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Wed, 14 Jun 2023 09:37:49 +0530
Message-Id: <20230614040749.1702127-1-ankit.k.nautiyal@intel.com>
X-Mailer: git-send-email 2.40.1
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH] drm/i915/display : Remove support for interlace
 mode
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

There are multiple panels with which Interlace mode is seen to cause
flickering (interlacing artifacts) with different platforms.

The issue is seen with both HDMI, DP with CML, CFL, ICL, EHL with
different display models from Acer, Benq, Dell etc.
There are some models where the issue is not seen with same setup.

Due to this, cases where multiple display are configured in clone mode,
sometimes interlaced mode gets picked up in one of the displays
and flickers are seen.

Since its difficult to pin point if issue is due to the HW or due to
panels, removing interlace mode for DP and HDMI till this is
root caused.

Closes: https://gitlab.freedesktop.org/drm/intel/-/issues/8395

Signed-off-by: Ankit Nautiyal <ankit.k.nautiyal@intel.com>
---
 drivers/gpu/drm/i915/display/intel_dp.c   | 3 ---
 drivers/gpu/drm/i915/display/intel_hdmi.c | 3 ---
 2 files changed, 6 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_dp.c b/drivers/gpu/drm/i915/display/intel_dp.c
index f4192fda1a76..78d8ceb590a3 100644
--- a/drivers/gpu/drm/i915/display/intel_dp.c
+++ b/drivers/gpu/drm/i915/display/intel_dp.c
@@ -5665,9 +5665,6 @@ intel_dp_init_connector(struct intel_digital_port *dig_port,
 	drm_connector_init(dev, connector, &intel_dp_connector_funcs, type);
 	drm_connector_helper_add(connector, &intel_dp_connector_helper_funcs);
 
-	if (!HAS_GMCH(dev_priv) && DISPLAY_VER(dev_priv) < 12)
-		connector->interlace_allowed = true;
-
 	intel_connector->polled = DRM_CONNECTOR_POLL_HPD;
 
 	intel_dp_aux_init(intel_dp);
diff --git a/drivers/gpu/drm/i915/display/intel_hdmi.c b/drivers/gpu/drm/i915/display/intel_hdmi.c
index 7ac5e6c5e00d..9b3ea307ef40 100644
--- a/drivers/gpu/drm/i915/display/intel_hdmi.c
+++ b/drivers/gpu/drm/i915/display/intel_hdmi.c
@@ -2998,9 +2998,6 @@ void intel_hdmi_init_connector(struct intel_digital_port *dig_port,
 				    ddc);
 	drm_connector_helper_add(connector, &intel_hdmi_connector_helper_funcs);
 
-	if (DISPLAY_VER(dev_priv) < 12)
-		connector->interlace_allowed = true;
-
 	connector->stereo_allowed = true;
 
 	if (DISPLAY_VER(dev_priv) >= 10)
-- 
2.40.1

