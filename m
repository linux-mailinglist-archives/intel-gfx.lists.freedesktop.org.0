Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 90ADF819CE5
	for <lists+intel-gfx@lfdr.de>; Wed, 20 Dec 2023 11:36:43 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 03D1310E558;
	Wed, 20 Dec 2023 10:36:42 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.11])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 346BB10E553
 for <intel-gfx@lists.freedesktop.org>; Wed, 20 Dec 2023 10:36:39 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1703068599; x=1734604599;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=kHRzPpHAO00GLe4wyjgdvPKf8n3iMQQJlvzs74f84cI=;
 b=E0HIP1RIsc/iVv12vAE0NYeZUp95K047Odh8Y1PNk1zf782RByebib47
 omsM699eKpRsz69OjlJGVTGsse4SX3y2s9crJ06fuwYIZyzazJkc0uVJa
 21hyQF310imtDADdqw6h2kNXOjxbWmTHbvHvFC5LnUeErIJOsjnhendbI
 0foHHasVTrpxK14Y3OvdKSkhENB04G9Jzb2WYsWhKiHRS61lZVmGHunbm
 zAalq1X/SS1K/QfTK0N6Srjy5474dXy07LWbUaRbJj+UGCMKrwztk+cpx
 CHbFYzRPjCt0VDpnbdKKhPNry0yTEuIQH8pRow8peXz50k2Rl6jS/RkA/ g==;
X-IronPort-AV: E=McAfee;i="6600,9927,10929"; a="2631992"
X-IronPort-AV: E=Sophos;i="6.04,291,1695711600"; 
   d="scan'208";a="2631992"
Received: from fmsmga005.fm.intel.com ([10.253.24.32])
 by orvoesa103.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 20 Dec 2023 02:36:39 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10929"; a="1107686306"
X-IronPort-AV: E=Sophos;i="6.04,291,1695711600"; d="scan'208";a="1107686306"
Received: from sparrish-mobl1.amr.corp.intel.com (HELO
 jhogande-mobl1.intel.com) ([10.252.34.221])
 by fmsmga005-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 20 Dec 2023 02:36:38 -0800
From: =?UTF-8?q?Jouni=20H=C3=B6gander?= <jouni.hogander@intel.com>
To: intel-gfx@lists.freedesktop.org
Subject: [PATCH v2 5/7] drm/i915/display: Ignore only psr specific part of vsc
 sdp
Date: Wed, 20 Dec 2023 12:36:07 +0200
Message-Id: <20231220103609.1384523-6-jouni.hogander@intel.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20231220103609.1384523-1-jouni.hogander@intel.com>
References: <20231220103609.1384523-1-jouni.hogander@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
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
Cc: Rodrigo Vivi <rodrigo.vivi@intel.com>
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

Pipe config check is currently ignoring vsc sdp changes completely
if psr is enabled. We want to ignore only PSR part of it as there
might be changes in colorimetry data. Also read back vsc_sdp when psr is
used.

Signed-off-by: Jouni Högander <jouni.hogander@intel.com>
Reviewed-by: Rodrigo Vivi <rodrigo.vivi@intel.com>
Tested-by: Shawn Lee <shawn.c.lee@intel.com>
---
 drivers/gpu/drm/i915/display/intel_display.c | 9 ++++++---
 drivers/gpu/drm/i915/display/intel_dp.c      | 4 ----
 2 files changed, 6 insertions(+), 7 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_display.c b/drivers/gpu/drm/i915/display/intel_display.c
index b10aad15a63d..927d124457b6 100644
--- a/drivers/gpu/drm/i915/display/intel_display.c
+++ b/drivers/gpu/drm/i915/display/intel_display.c
@@ -4764,7 +4764,11 @@ static bool
 intel_compare_dp_vsc_sdp(const struct drm_dp_vsc_sdp *a,
 			 const struct drm_dp_vsc_sdp *b)
 {
-	return memcmp(a, b, sizeof(*a)) == 0;
+	return a->pixelformat == b->pixelformat &&
+		a->colorimetry == b->colorimetry &&
+		a->bpc == b->bpc &&
+		a->dynamic_range == b->dynamic_range &&
+		a->content_type == b->content_type;
 }
 
 static bool
@@ -5045,8 +5049,7 @@ intel_pipe_config_compare(const struct intel_crtc_state *current_config,
 } while (0)
 
 #define PIPE_CONF_CHECK_DP_VSC_SDP(name) do { \
-	if (!current_config->has_psr && !pipe_config->has_psr && \
-	    !intel_compare_dp_vsc_sdp(&current_config->infoframes.name, \
+	if (!intel_compare_dp_vsc_sdp(&current_config->infoframes.name, \
 				      &pipe_config->infoframes.name)) { \
 		pipe_config_dp_vsc_sdp_mismatch(dev_priv, fastset, __stringify(name), \
 						&current_config->infoframes.name, \
diff --git a/drivers/gpu/drm/i915/display/intel_dp.c b/drivers/gpu/drm/i915/display/intel_dp.c
index 7fea61e410f2..9ff0cbd9c0df 100644
--- a/drivers/gpu/drm/i915/display/intel_dp.c
+++ b/drivers/gpu/drm/i915/display/intel_dp.c
@@ -4425,10 +4425,6 @@ static void intel_read_dp_vsc_sdp(struct intel_encoder *encoder,
 	struct dp_sdp sdp = {};
 	int ret;
 
-	/* When PSR is enabled, VSC SDP is handled by PSR routine */
-	if (crtc_state->has_psr)
-		return;
-
 	if ((crtc_state->infoframes.enable &
 	     intel_hdmi_infoframe_enable(type)) == 0)
 		return;
-- 
2.34.1

