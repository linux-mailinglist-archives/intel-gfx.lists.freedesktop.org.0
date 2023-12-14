Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 509B3812F5F
	for <lists+intel-gfx@lfdr.de>; Thu, 14 Dec 2023 12:49:18 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 832CD10E93C;
	Thu, 14 Dec 2023 11:49:16 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.7])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 4A59310E2C0
 for <intel-gfx@lists.freedesktop.org>; Thu, 14 Dec 2023 11:49:00 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1702554540; x=1734090540;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=2BFbTWUmgqFvE3mEkNN+Fm5rXo231UYVUp1QWSkQh7k=;
 b=GUJZ+TlpextxA9bo3V1HA9LTDduV8thZnKfD8YjgShBMnLVLrNczul5W
 Ad1JKoMAmrgITA5ijRBNw6sk8IIdj3JMTBiDL2c2FZPxOVcZmUM4QxiAD
 0O3H6DZ4Ae9bE7z6sDhoRsECieeFOJULfnRfDlcIjAjIBo6SJE9g+6aDW
 aWmk0NINz4ss9f2x+q/qAIw9C+gqNv7rE9Qmem0BGABqdaJI9W8chc8sl
 0PdRwqZ2nO1cHLRDOHnJP2tyyWh1KEFELWYavyRF1c4gz/5y6ebgaid1M
 X6U2PV0ydUJXak1YLoU7bEck2eqgGDQcrhh5dFrxlhAvxvgPIremiS+bp g==;
X-IronPort-AV: E=McAfee;i="6600,9927,10923"; a="16658696"
X-IronPort-AV: E=Sophos;i="6.04,275,1695711600"; d="scan'208";a="16658696"
Received: from fmsmga004.fm.intel.com ([10.253.24.48])
 by fmvoesa101.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 14 Dec 2023 03:49:00 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10923"; a="844678887"
X-IronPort-AV: E=Sophos;i="6.04,275,1695711600"; d="scan'208";a="844678887"
Received: from unknown (HELO jhogande-mobl1.fi.intel.com) ([10.237.66.43])
 by fmsmga004-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 14 Dec 2023 03:48:59 -0800
From: =?UTF-8?q?Jouni=20H=C3=B6gander?= <jouni.hogander@intel.com>
To: intel-gfx@lists.freedesktop.org
Subject: [PATCH 6/7] drm/i915/display: Read PSR configuration before VSC SDP
Date: Thu, 14 Dec 2023 13:48:37 +0200
Message-Id: <20231214114838.1113648-7-jouni.hogander@intel.com>
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

VSC SDP sending is taken care by PSR HW and it's not enabled in
VIDEO_DIP_CTL when PSR is enabled. Readback of VSC SDP is depending on
VSC_SDP being set in intel_crtc_state->infoframes.enabled. In case of PSR
setting this flag is taken care by PSR code -> read back PSR configuration
before reading VSC SDP otherwise we get pipeconfig mismatch error.

Signed-off-by: Jouni Högander <jouni.hogander@intel.com>
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

