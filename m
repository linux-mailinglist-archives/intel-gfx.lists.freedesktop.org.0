Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id DD39DB1E3DF
	for <lists+intel-gfx@lfdr.de>; Fri,  8 Aug 2025 09:52:50 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 6E62010E8D6;
	Fri,  8 Aug 2025 07:52:49 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="OacwYMbh";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.10])
 by gabe.freedesktop.org (Postfix) with ESMTPS id E7DAD10E8D4;
 Fri,  8 Aug 2025 07:52:47 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1754639568; x=1786175568;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=1JC2YKN19py/GPsvVtwUXCT+aPTA20M1wTkdUfO0v9I=;
 b=OacwYMbhfLxRsJklqZvGEDYqYPpXmMa2vdNJor7DlO4s9mxrbT/zY2nv
 gEjgivD7UIfo0nsFtw38To9xpTOw1sTOwMjfnG+UsmVEcNc3ERN3BSgw5
 RNqYOrRxQy8kVfNiqv1bhPvbCBbaFGRIjRnuv/Bi0YTpVddDUq/hSxhok
 b6LJ+dPATjlx6kOOzzZpZP/V/p4KJgA3fh+iOohDlOGhntCJsXPyBDuyr
 KZivb86zSARObqm/6+EzBtnIcoRLp9I21J1SFvdAEiaZ/qRumGYrq4bz+
 ecwPW/DcHxxh5E3pJJ9hJMKnXRduxWEwUdwDUHzfm6uC4mRMDFV92jsKu A==;
X-CSE-ConnectionGUID: blftA7w2TLuoBHt9yU+iFw==
X-CSE-MsgGUID: fllgdwgaSoiy6sT6SvAq4w==
X-IronPort-AV: E=McAfee;i="6800,10657,11514"; a="74439104"
X-IronPort-AV: E=Sophos;i="6.17,274,1747724400"; d="scan'208";a="74439104"
Received: from orviesa003.jf.intel.com ([10.64.159.143])
 by orvoesa102.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 08 Aug 2025 00:52:48 -0700
X-CSE-ConnectionGUID: RJ38Vb2HQhCzlp948iKEGw==
X-CSE-MsgGUID: +iM8l3j9SZCLQcn+wBcRtw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.17,274,1747724400"; d="scan'208";a="169481634"
Received: from dibin-nuc7i7bnh.iind.intel.com ([10.190.239.19])
 by ORVIESA003-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 08 Aug 2025 00:52:47 -0700
From: Dibin Moolakadan Subrahmanian <dibin.moolakadan.subrahmanian@intel.com>
To: intel-gfx@lists.freedesktop.org,
	intel-xe@lists.freedesktop.org
Cc: ankit.k.nautiyal@intel.com,
	jani.nikula@intel.com
Subject: [PATCH 3/3] drm/i915/dp: Honor prefer_sink_yuv420 debugfs override
 for DP
Date: Fri,  8 Aug 2025 13:22:43 +0530
Message-ID: <20250808075351.304612-4-dibin.moolakadan.subrahmanian@intel.com>
X-Mailer: git-send-email 2.43.0
In-Reply-To: <20250808075351.304612-1-dibin.moolakadan.subrahmanian@intel.com>
References: <20250808075351.304612-1-dibin.moolakadan.subrahmanian@intel.com>
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

If the `prefer_sink_yuv420` flag is set via debugfs and the sink supports
YCbCr 4:2:0 output for the current mode, prefer YCbCr 4:2:0 over
the default RGB when computing the sink format.

This enables explicit testing and validation of 4:2:0 output handling
via the debugfs interface, particularly useful in IGT tests targeting
scaling and color.

Signed-off-by: Dibin Moolakadan Subrahmanian <dibin.moolakadan.subrahmanian@intel.com>
---
 drivers/gpu/drm/i915/display/intel_dp.c | 9 +++++++++
 1 file changed, 9 insertions(+)

diff --git a/drivers/gpu/drm/i915/display/intel_dp.c b/drivers/gpu/drm/i915/display/intel_dp.c
index 625036c47bdf..8b593a6a0c7c 100644
--- a/drivers/gpu/drm/i915/display/intel_dp.c
+++ b/drivers/gpu/drm/i915/display/intel_dp.c
@@ -3055,6 +3055,15 @@ intel_dp_compute_output_format(struct intel_encoder *encoder,
 		crtc_state->sink_format = intel_dp_sink_format(connector, adjusted_mode);
 	}
 
+	/* Check if prefer_sink_yuv420 is enabled and sink supports it, then override RGB */
+	if (connector->prefer_sink_yuv420 &&
+	    drm_mode_is_420_also(info, adjusted_mode) &&
+	    connector->base.ycbcr_420_allowed) {
+		crtc_state->sink_format = INTEL_OUTPUT_FORMAT_YCBCR420;
+		drm_dbg_kms(display->drm, "prefer_sink_yuv420 enabled, selected format %d\n",
+			    crtc_state->sink_format);
+	}
+
 	crtc_state->output_format = intel_dp_output_format(connector, crtc_state->sink_format);
 
 	ret = intel_dp_compute_link_config(encoder, crtc_state, conn_state,
-- 
2.43.0

