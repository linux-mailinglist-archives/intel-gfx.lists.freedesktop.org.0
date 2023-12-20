Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id C8057819CE6
	for <lists+intel-gfx@lfdr.de>; Wed, 20 Dec 2023 11:36:44 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 17CC910E55A;
	Wed, 20 Dec 2023 10:36:43 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.11])
 by gabe.freedesktop.org (Postfix) with ESMTPS id D35A910E558
 for <intel-gfx@lists.freedesktop.org>; Wed, 20 Dec 2023 10:36:40 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1703068601; x=1734604601;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=9d6zWKkYlw9rzXE1bG+PP3i2WHKe8cYZ0dg7W1kRzY0=;
 b=h1709Xar4CKQk9CVE7B2AT4Pm/MmVbWVwHCpl8bAOpP3jO/8DdeWz48R
 fi6FnNHn+Vf+GFQs7jUq+CDpmCzDZ3xEAF2A90XqlrcpZvF5EMQ5u2CWq
 ZwkJflkxSGjCHy3LmLhzCljvMcb4jFycxHJ8CM15+/82iVugP77PrwZrG
 6RWjjYiu61htt992sd2nGMWWJu8fiOOcAEZHhKTbK7qcRn4F7YoHyldej
 HpiTDgy7hT2q/wLN2GW9LA333Wjpmp8P7U5mRgpBC2eBQgut+QBejq3zS
 bP3t60DqG32GgpqT6qnIeOTDpc+AfUZSRRw2x9IlEEEioVtndc+1r9PPV w==;
X-IronPort-AV: E=McAfee;i="6600,9927,10929"; a="2631994"
X-IronPort-AV: E=Sophos;i="6.04,291,1695711600"; 
   d="scan'208";a="2631994"
Received: from fmsmga005.fm.intel.com ([10.253.24.32])
 by orvoesa103.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 20 Dec 2023 02:36:41 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10929"; a="1107686326"
X-IronPort-AV: E=Sophos;i="6.04,291,1695711600"; d="scan'208";a="1107686326"
Received: from sparrish-mobl1.amr.corp.intel.com (HELO
 jhogande-mobl1.intel.com) ([10.252.34.221])
 by fmsmga005-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 20 Dec 2023 02:36:39 -0800
From: =?UTF-8?q?Jouni=20H=C3=B6gander?= <jouni.hogander@intel.com>
To: intel-gfx@lists.freedesktop.org
Subject: [PATCH v2 6/7] drm/i915/display: Read PSR configuration before VSC SDP
Date: Wed, 20 Dec 2023 12:36:08 +0200
Message-Id: <20231220103609.1384523-7-jouni.hogander@intel.com>
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

VSC SDP sending is taken care by PSR HW and it's not enabled in
VIDEO_DIP_CTL when PSR is enabled. Readback of VSC SDP is depending on
VSC_SDP being set in intel_crtc_state->infoframes.enabled. In case of PSR
setting this flag is taken care by PSR code -> read back PSR configuration
before reading VSC SDP otherwise we get pipeconfig mismatch error.

Signed-off-by: Jouni Högander <jouni.hogander@intel.com>
Reviewed-by: Rodrigo Vivi <rodrigo.vivi@intel.com>
Tested-by: Shawn Lee <shawn.c.lee@intel.com>
---
 drivers/gpu/drm/i915/display/intel_ddi.c | 4 ++--
 1 file changed, 2 insertions(+), 2 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_ddi.c b/drivers/gpu/drm/i915/display/intel_ddi.c
index 12a29363e5df..2746655bcb26 100644
--- a/drivers/gpu/drm/i915/display/intel_ddi.c
+++ b/drivers/gpu/drm/i915/display/intel_ddi.c
@@ -3941,11 +3941,11 @@ static void intel_ddi_get_config(struct intel_encoder *encoder,
 	if (DISPLAY_VER(dev_priv) >= 8)
 		bdw_get_trans_port_sync_config(pipe_config);
 
+	intel_psr_get_config(encoder, pipe_config);
+
 	intel_read_dp_sdp(encoder, pipe_config, HDMI_PACKET_TYPE_GAMUT_METADATA);
 	intel_read_dp_sdp(encoder, pipe_config, DP_SDP_VSC);
 
-	intel_psr_get_config(encoder, pipe_config);
-
 	intel_audio_codec_get_config(encoder, pipe_config);
 }
 
-- 
2.34.1

