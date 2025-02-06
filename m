Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 04C8BA29FD1
	for <lists+intel-gfx@lfdr.de>; Thu,  6 Feb 2025 05:54:44 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 0BA4F10E062;
	Thu,  6 Feb 2025 04:54:40 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="GTxuDyob";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.14])
 by gabe.freedesktop.org (Postfix) with ESMTPS id CF39F10E062;
 Thu,  6 Feb 2025 04:53:01 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1738817582; x=1770353582;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=OhpMWIWKDhuhEvJ6AOosYdvUWuAEtmJTtbhnUbSVkR0=;
 b=GTxuDyobpZDVmi83HjMmNTYAOEmgdWDAUK5eUJ5F+2yDWbHXtvk4BR0D
 8G0rtdg2lbotzvmieDjKoOUFDzsqB4mHJaYDkmiqbIJ4mD+saRn+g3jnj
 yCKxGgEJ9HtwtKoxwW6FV4x9BtXFMcccfCyeThoVFAtiq1/tiLx/JXZu0
 6/xT7Zzh4AkDUWu2TY/mVFCbvufNbGnp3aBxV/bIgKOPCtVDW7G0Kouie
 yDJTXg4eOM/sBITg26IR3V8unDnmeTLw0pkhC7hKdQjPL3zhqgQM7GGcm
 vc/OkEYpReInnfHegeCyRsMo8FTOfyH7RSvgDZ96z+e/7py96Libebh5L Q==;
X-CSE-ConnectionGUID: SxkqkoqkSMuo3aFL8cwWMQ==
X-CSE-MsgGUID: N4YoIpfHSPys5ba4QXvBRA==
X-IronPort-AV: E=McAfee;i="6700,10204,11336"; a="39677255"
X-IronPort-AV: E=Sophos;i="6.13,263,1732608000"; d="scan'208";a="39677255"
Received: from orviesa004.jf.intel.com ([10.64.159.144])
 by fmvoesa108.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 05 Feb 2025 20:53:01 -0800
X-CSE-ConnectionGUID: MZA8IJCzSW25BwqfAJnHRw==
X-CSE-MsgGUID: QX3ODvBaRSmYG1U2p6If6Q==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.13,263,1732608000"; d="scan'208";a="116091787"
Received: from mgolanimitul-x299-ud4-pro.iind.intel.com ([10.190.239.114])
 by orviesa004.jf.intel.com with ESMTP; 05 Feb 2025 20:53:00 -0800
From: Mitul Golani <mitulkumar.ajitkumar.golani@intel.com>
To: intel-xe@lists.freedesktop.org,
	intel-gfx@lists.freedesktop.org
Cc: jouni.hogander@intel.com,
	ankit.k.nautiyal@intel.com
Subject: [PATCH v3 1/2] drm/i915/display: Skip state checker for AS SDP
 infoframe enable
Date: Thu,  6 Feb 2025 10:20:00 +0530
Message-ID: <20250206045001.2919360-2-mitulkumar.ajitkumar.golani@intel.com>
X-Mailer: git-send-email 2.48.1
In-Reply-To: <20250206045001.2919360-1-mitulkumar.ajitkumar.golani@intel.com>
References: <20250206045001.2919360-1-mitulkumar.ajitkumar.golani@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
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

--v3:
- Optimise PIPE_CONF_CHECK for infoframes.enable. [Ankit]

Signed-off-by: Mitul Golani <mitulkumar.ajitkumar.golani@intel.com>
Reviewed-by: Jouni Högander <jouni.hogander@intel.com>
Reviewed-by: Ankit Nautiyal <ankit.k.nautiyal@intel.com>
---
 drivers/gpu/drm/i915/display/intel_display.c | 10 ++++++----
 1 file changed, 6 insertions(+), 4 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_display.c b/drivers/gpu/drm/i915/display/intel_display.c
index a6383ddde871..a50b0a008231 100644
--- a/drivers/gpu/drm/i915/display/intel_display.c
+++ b/drivers/gpu/drm/i915/display/intel_display.c
@@ -5388,6 +5388,7 @@ intel_pipe_config_compare(const struct intel_crtc_state *current_config,
 	struct drm_i915_private *dev_priv = to_i915(current_config->uapi.crtc->dev);
 	struct intel_crtc *crtc = to_intel_crtc(pipe_config->uapi.crtc);
 	struct drm_printer p;
+	u32 exclude_infoframes = 0;
 	bool ret = true;
 
 	if (fastset)
@@ -5743,11 +5744,12 @@ intel_pipe_config_compare(const struct intel_crtc_state *current_config,
 	PIPE_CONF_CHECK_I(min_voltage_level);
 
 	if (current_config->has_psr || pipe_config->has_psr)
-		PIPE_CONF_CHECK_X_WITH_MASK(infoframes.enable,
-					    ~intel_hdmi_infoframe_enable(DP_SDP_VSC));
-	else
-		PIPE_CONF_CHECK_X(infoframes.enable);
+		exclude_infoframes |= intel_hdmi_infoframe_enable(DP_SDP_VSC);
+
+	if (current_config->vrr.enable || pipe_config->vrr.enable)
+		exclude_infoframes |= intel_hdmi_infoframe_enable(DP_SDP_ADAPTIVE_SYNC);
 
+	PIPE_CONF_CHECK_X_WITH_MASK(infoframes.enable, ~exclude_infoframes);
 	PIPE_CONF_CHECK_X(infoframes.gcp);
 	PIPE_CONF_CHECK_INFOFRAME(avi);
 	PIPE_CONF_CHECK_INFOFRAME(spd);
-- 
2.48.1

