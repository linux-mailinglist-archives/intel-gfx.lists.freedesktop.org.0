Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 8A25E812F5D
	for <lists+intel-gfx@lfdr.de>; Thu, 14 Dec 2023 12:49:15 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 06DF810E92A;
	Thu, 14 Dec 2023 11:49:14 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.7])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 502E810E2C0
 for <intel-gfx@lists.freedesktop.org>; Thu, 14 Dec 2023 11:48:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1702554539; x=1734090539;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=Z/UdPs2F2puss32WMjfMSyyMytvqmU/7oxmEJ2DK7jU=;
 b=naeYMeAsBZsf1BmytdyTahxzcIW8VNKGSre3PlPUb+YOQJY+4wrrX0fg
 ozFj/uk3Qf97FTb3JPt/PBt2gaD2wRqxt5zdci28o2KLqbhJIWu2Fk9CS
 5AWVEm9/4n1TW+YUvnSt/tn70xcLuhWHuVACDzoUsryiCJCYvo14fxPsh
 XY01IDri1W4w9Ez4COXWiE+GHGigTc6H4O3xAyQ3WBL5LUYg6UUxzcrop
 0I2bjxyV7sNpxDVYe8HZM/o5KYmP0CaH1hrRjJZxRrb1xm/WWpcHrDyqS
 GsrUMR8h+H4psCo8CEvfhoQpOIVs9agBIEp6/OYOlJxmzcwtZpICiViQc w==;
X-IronPort-AV: E=McAfee;i="6600,9927,10923"; a="16658691"
X-IronPort-AV: E=Sophos;i="6.04,275,1695711600"; d="scan'208";a="16658691"
Received: from fmsmga004.fm.intel.com ([10.253.24.48])
 by fmvoesa101.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 14 Dec 2023 03:48:59 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10923"; a="844678881"
X-IronPort-AV: E=Sophos;i="6.04,275,1695711600"; d="scan'208";a="844678881"
Received: from unknown (HELO jhogande-mobl1.fi.intel.com) ([10.237.66.43])
 by fmsmga004-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 14 Dec 2023 03:48:57 -0800
From: =?UTF-8?q?Jouni=20H=C3=B6gander?= <jouni.hogander@intel.com>
To: intel-gfx@lists.freedesktop.org
Subject: [PATCH 5/7] drm/i915/display: Ignore only psr specific part of vsc sdp
Date: Thu, 14 Dec 2023 13:48:36 +0200
Message-Id: <20231214114838.1113648-6-jouni.hogander@intel.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20231214114838.1113648-1-jouni.hogander@intel.com>
References: <20231214114838.1113648-1-jouni.hogander@intel.com>
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
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

Pipe config check is currently ignoring vsc sdp changes completely
if psr is enabled. We want to ignore only PSR part of it as there
might be changes in colorimetry data. Also read back vsc_sdp when psr is
used.

Signed-off-by: Jouni Högander <jouni.hogander@intel.com>
---
 drivers/gpu/drm/i915/display/intel_display.c | 9 ++++++---
 drivers/gpu/drm/i915/display/intel_dp.c      | 4 ----
 2 files changed, 6 insertions(+), 7 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_display.c b/drivers/gpu/drm/i915/display/intel_display.c
index f1e58163277d..0faf84d3680a 100644
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
index 635790ec2fb7..b7e9b6eb6f66 100644
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

