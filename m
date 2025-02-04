Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id A0EF9A27274
	for <lists+intel-gfx@lfdr.de>; Tue,  4 Feb 2025 14:09:43 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 2C89B10E631;
	Tue,  4 Feb 2025 13:09:42 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="RtidVwp9";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.19])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 642F010E32D;
 Tue,  4 Feb 2025 13:09:40 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1738674581; x=1770210581;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=0TS02hV7M08aXjVrIYf97MOXAGthNftUdDJemyS9Qa4=;
 b=RtidVwp9DVDpi6xyICnja0GIm63IMqv69mltBVDxf4+plGzleNVFhRh0
 X8x+1IThEJto5yl/4REnNZk8CXIDBXzHLu956rsQ96B+jRqFG0L98CzSf
 t4+gz2lxQMK3VUXiBuO7xNccBkZIXXrimLvsF5IPwJw2IiDi6gdjOP8fV
 yORz/Wy8s2hgUgYWkc2wL1h8v8E5/qfA6fFGIJfeA/20xBGPpWg1QU4XW
 ZED5slfv/p8eqPQyYQd3iT0A+I9jh/hClsGRZi8bc2M1OGn3nnOpkuuCr
 bXpk4vT54gLRNsiwLnMItp2NqPPUthKFa2Mh0roVwA88laxOFoG3Iqta7 Q==;
X-CSE-ConnectionGUID: Qyc+ZEa6Qo219stG7Nvj9Q==
X-CSE-MsgGUID: vRCfG1WxRDOotX7qFMTQYw==
X-IronPort-AV: E=McAfee;i="6700,10204,11336"; a="39082332"
X-IronPort-AV: E=Sophos;i="6.13,258,1732608000"; d="scan'208";a="39082332"
Received: from orviesa010.jf.intel.com ([10.64.159.150])
 by orvoesa111.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 04 Feb 2025 05:09:41 -0800
X-CSE-ConnectionGUID: dTXphXu5T7mBgioAvk+JFA==
X-CSE-MsgGUID: zFQ/Ma9xTXCLbGqxzbGd5g==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.12,224,1728975600"; d="scan'208";a="110417866"
Received: from mgolanimitul-x299-ud4-pro.iind.intel.com ([10.190.239.114])
 by orviesa010.jf.intel.com with ESMTP; 04 Feb 2025 05:09:38 -0800
From: Mitul Golani <mitulkumar.ajitkumar.golani@intel.com>
To: intel-xe@lists.freedesktop.org,
	intel-gfx@lists.freedesktop.org
Cc: jouni.hogander@intel.com,
	ankit.k.nautiyal@intel.com
Subject: [PATCH v2 1/2] drm/i915/display: Skip state checker for AS SDP
 infoframe enable
Date: Tue,  4 Feb 2025 18:36:37 +0530
Message-ID: <20250204130638.2800372-2-mitulkumar.ajitkumar.golani@intel.com>
X-Mailer: git-send-email 2.48.1
In-Reply-To: <20250204130638.2800372-1-mitulkumar.ajitkumar.golani@intel.com>
References: <20250204130638.2800372-1-mitulkumar.ajitkumar.golani@intel.com>
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

Avoid full modeset by skipping infoframe.enable check when toggling
AS SDP while enabling VRR, preventing full modeset while pipe
config changes.

--v2:
- Add check for exclude_infoframe. (Ankit)
- Update commit message. (Ankit)

Signed-off-by: Mitul Golani <mitulkumar.ajitkumar.golani@intel.com>
---
 drivers/gpu/drm/i915/display/intel_display.c | 10 ++++++++--
 1 file changed, 8 insertions(+), 2 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_display.c b/drivers/gpu/drm/i915/display/intel_display.c
index a6383ddde871..b35fb6d37640 100644
--- a/drivers/gpu/drm/i915/display/intel_display.c
+++ b/drivers/gpu/drm/i915/display/intel_display.c
@@ -5388,6 +5388,7 @@ intel_pipe_config_compare(const struct intel_crtc_state *current_config,
 	struct drm_i915_private *dev_priv = to_i915(current_config->uapi.crtc->dev);
 	struct intel_crtc *crtc = to_intel_crtc(pipe_config->uapi.crtc);
 	struct drm_printer p;
+	u32 exclude_infoframes = 0;
 	bool ret = true;
 
 	if (fastset)
@@ -5743,8 +5744,13 @@ intel_pipe_config_compare(const struct intel_crtc_state *current_config,
 	PIPE_CONF_CHECK_I(min_voltage_level);
 
 	if (current_config->has_psr || pipe_config->has_psr)
-		PIPE_CONF_CHECK_X_WITH_MASK(infoframes.enable,
-					    ~intel_hdmi_infoframe_enable(DP_SDP_VSC));
+		exclude_infoframes |= intel_hdmi_infoframe_enable(DP_SDP_VSC);
+
+	if (current_config->vrr.enable || pipe_config->vrr.enable)
+		exclude_infoframes |= intel_hdmi_infoframe_enable(DP_SDP_ADAPTIVE_SYNC);
+
+	if (exclude_infoframes)
+		PIPE_CONF_CHECK_X_WITH_MASK(infoframes.enable, ~exclude_infoframes);
 	else
 		PIPE_CONF_CHECK_X(infoframes.enable);
 
-- 
2.48.1

