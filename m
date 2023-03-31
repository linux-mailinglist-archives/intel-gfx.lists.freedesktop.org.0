Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 47DCE6D1DC6
	for <lists+intel-gfx@lfdr.de>; Fri, 31 Mar 2023 12:18:37 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 1A18410F1B7;
	Fri, 31 Mar 2023 10:18:34 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga04.intel.com (mga04.intel.com [192.55.52.120])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 7609810F1BB
 for <intel-gfx@lists.freedesktop.org>; Fri, 31 Mar 2023 10:18:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1680257907; x=1711793907;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=TWWjjKNSlpVoHx1qOY5uTjE1KitTMkvCM6yg2N9ujUg=;
 b=SLqU2Uxpf8etIQP4U4n8unl4CKVXB0DTu7bhbXZ4jbG/hVSW7n/vQPnX
 yO2e990++wZY7lMRIIX71/v7bEXDaRxAtQW7FHrfhrDugy5UixFzNbHYV
 Il5VjkFMJbjNtJLk9tbskDebdbHgu4LuRBOrM1JDgEK25qTHpyVSUbrjZ
 GVcgBlN3Crzp4aFh54FX2538NTbVE0OTopyO8rQYTw7960CS8EMqOmhf+
 g+CpYbKc7orQZUdjG5lk3+8HVcCkERmjtcpFDs3rJ0/iY7CoYLEkW/UlP
 IDWDeMwtb0DvOeoKG6EoqbiC/BeTY1eXSZk7vWNGiLD+C+J0GHm9rkG+i g==;
X-IronPort-AV: E=McAfee;i="6600,9927,10665"; a="340141748"
X-IronPort-AV: E=Sophos;i="5.98,307,1673942400"; d="scan'208";a="340141748"
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
 by fmsmga104.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 31 Mar 2023 03:18:27 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10665"; a="796068332"
X-IronPort-AV: E=Sophos;i="5.98,307,1673942400"; d="scan'208";a="796068332"
Received: from srr4-3-linux-103-aknautiy.iind.intel.com ([10.223.34.160])
 by fmsmga002-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 31 Mar 2023 03:18:25 -0700
From: Ankit Nautiyal <ankit.k.nautiyal@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Fri, 31 Mar 2023 15:46:04 +0530
Message-Id: <20230331101613.936776-5-ankit.k.nautiyal@intel.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20230331101613.936776-1-ankit.k.nautiyal@intel.com>
References: <20230331101613.936776-1-ankit.k.nautiyal@intel.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH 04/13] drm/i915/dp: Configure PCON for
 conversion of output_format to YCbCr444
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

Handle the case with DP to HDMI PCON, where sink_format is set to YCbCr444.
In that case PCON is required to be configured to convert from given
output_format to YCbCR444.

Signed-off-by: Ankit Nautiyal <ankit.k.nautiyal@intel.com>
---
 drivers/gpu/drm/i915/display/intel_dp.c | 16 ++++++++++++++++
 1 file changed, 16 insertions(+)

diff --git a/drivers/gpu/drm/i915/display/intel_dp.c b/drivers/gpu/drm/i915/display/intel_dp.c
index 837532952936..c3f3003c52ca 100644
--- a/drivers/gpu/drm/i915/display/intel_dp.c
+++ b/drivers/gpu/drm/i915/display/intel_dp.c
@@ -2862,6 +2862,22 @@ void intel_dp_configure_protocol_converter(struct intel_dp *intel_dp,
 			MISSING_CASE(crtc_state->output_format);
 			break;
 		}
+	} else if (crtc_state->sink_format == INTEL_OUTPUT_FORMAT_YCBCR444) {
+		switch (crtc_state->output_format) {
+		case INTEL_OUTPUT_FORMAT_YCBCR420:
+			drm_WARN(&i915->drm,
+				 crtc_state->output_format == INTEL_OUTPUT_FORMAT_YCBCR420,
+				 "Cannot convert YCbCr420->YCbCr444\n");
+			break;
+		case INTEL_OUTPUT_FORMAT_YCBCR444:
+			break;
+		case INTEL_OUTPUT_FORMAT_RGB:
+			rgb_to_ycbcr = true;
+			break;
+		default:
+			MISSING_CASE(crtc_state->output_format);
+			break;
+		}
 	}
 
 	tmp = ycbcr444_to_420 ? DP_CONVERSION_TO_YCBCR420_ENABLE : 0;
-- 
2.25.1

