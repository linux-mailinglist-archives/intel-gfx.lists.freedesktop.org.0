Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 5295C7E321A
	for <lists+intel-gfx@lfdr.de>; Tue,  7 Nov 2023 01:15:20 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 63A9B10E488;
	Tue,  7 Nov 2023 00:15:17 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.55.52.151])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 0302D10E485
 for <intel-gfx@lists.freedesktop.org>; Tue,  7 Nov 2023 00:15:12 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1699316113; x=1730852113;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=tIKHfcPLgGtOyRtUGe22LOoyJSSLipI7uOHKwWuxySo=;
 b=CZ+oAfXo2RS4bgtNTw//h410j99wrrvbnxKK30ztbzojbqgLDNTnRYEj
 zIT/Sp8xrfitiOGNQvXRHQ/Y6++2AYGBr3ZUiVPywg8U0rUoY7w6IEgRX
 FG2MseG7W0rQzZF77Du+mtBiNbRa9k4m6onQlZXULFVMSLxxNdrpNiqYE
 XjcLeThnSYLAu5Emjl7yZDeaGfC2bAazVYHaKHQU8BNq0EomrXBscYUWd
 A0Mfv+2mrB7rScLTLRHD73AKJGbyAfQU+yjymkWvxVT7S/L05K6WfZH8l
 sW4LD0sBxUuSwqNziqd0q1RNITt4pKCqMOurA3rjaUzw2uXn5kMiYm48n w==;
X-IronPort-AV: E=McAfee;i="6600,9927,10886"; a="369596200"
X-IronPort-AV: E=Sophos;i="6.03,282,1694761200"; d="scan'208";a="369596200"
Received: from fmsmga003.fm.intel.com ([10.253.24.29])
 by fmsmga107.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 06 Nov 2023 16:15:12 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10886"; a="853177991"
X-IronPort-AV: E=Sophos;i="6.03,282,1694761200"; d="scan'208";a="853177991"
Received: from ideak-desk.fi.intel.com ([10.237.72.78])
 by fmsmga003-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 06 Nov 2023 16:15:11 -0800
From: Imre Deak <imre.deak@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Tue,  7 Nov 2023 02:15:00 +0200
Message-Id: <20231107001505.3370108-3-imre.deak@intel.com>
X-Mailer: git-send-email 2.39.2
In-Reply-To: <20231030155843.2251023-16-imre.deak@intel.com>
References: <20231030155843.2251023-16-imre.deak@intel.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH v5 15/30] drm/i915/dp_mst: Program the DSC PPS
 SDP for each stream
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

Atm the DSC PPS SDP is programmed only if the first stream is compressed
and then it's programmed only for the first stream. This left all other
compressed streams blank. Program the SDP for all streams.

v2:
- Rebase on upstream include "intel_vdsc.h" change.

Reviewed-by: Stanislav Lisovskiy <stanislav.lisovskiy@intel.com>
Signed-off-by: Imre Deak <imre.deak@intel.com>
---
 drivers/gpu/drm/i915/display/intel_ddi.c    | 12 +++++++-----
 drivers/gpu/drm/i915/display/intel_dp_mst.c |  1 +
 2 files changed, 8 insertions(+), 5 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_ddi.c b/drivers/gpu/drm/i915/display/intel_ddi.c
index c75fd00e360ac..87fa7f7369254 100644
--- a/drivers/gpu/drm/i915/display/intel_ddi.c
+++ b/drivers/gpu/drm/i915/display/intel_ddi.c
@@ -2505,7 +2505,8 @@ static void mtl_ddi_pre_enable_dp(struct intel_atomic_state *state,
 	/* 6.o Configure and enable FEC if needed */
 	intel_ddi_enable_fec(encoder, crtc_state);
 
-	intel_dsc_dp_pps_write(encoder, crtc_state);
+	if (!is_mst)
+		intel_dsc_dp_pps_write(encoder, crtc_state);
 }
 
 static void tgl_ddi_pre_enable_dp(struct intel_atomic_state *state,
@@ -2643,7 +2644,8 @@ static void tgl_ddi_pre_enable_dp(struct intel_atomic_state *state,
 	/* 7.l Configure and enable FEC if needed */
 	intel_ddi_enable_fec(encoder, crtc_state);
 
-	intel_dsc_dp_pps_write(encoder, crtc_state);
+	if (!is_mst)
+		intel_dsc_dp_pps_write(encoder, crtc_state);
 }
 
 static void hsw_ddi_pre_enable_dp(struct intel_atomic_state *state,
@@ -2705,10 +2707,10 @@ static void hsw_ddi_pre_enable_dp(struct intel_atomic_state *state,
 
 	intel_ddi_enable_fec(encoder, crtc_state);
 
-	if (!is_mst)
+	if (!is_mst) {
 		intel_ddi_enable_transcoder_clock(encoder, crtc_state);
-
-	intel_dsc_dp_pps_write(encoder, crtc_state);
+		intel_dsc_dp_pps_write(encoder, crtc_state);
+	}
 }
 
 static void intel_ddi_pre_enable_dp(struct intel_atomic_state *state,
diff --git a/drivers/gpu/drm/i915/display/intel_dp_mst.c b/drivers/gpu/drm/i915/display/intel_dp_mst.c
index c9faac174aa2c..5efc3cea73e52 100644
--- a/drivers/gpu/drm/i915/display/intel_dp_mst.c
+++ b/drivers/gpu/drm/i915/display/intel_dp_mst.c
@@ -860,6 +860,7 @@ static void intel_mst_pre_enable_dp(struct intel_atomic_state *state,
 	if (DISPLAY_VER(dev_priv) < 12 || !first_mst_stream)
 		intel_ddi_enable_transcoder_clock(encoder, pipe_config);
 
+	intel_dsc_dp_pps_write(&dig_port->base, pipe_config);
 	intel_ddi_set_dp_msa(pipe_config, conn_state);
 }
 
-- 
2.39.2

