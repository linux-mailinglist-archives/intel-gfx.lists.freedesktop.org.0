Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 0159C6F463B
	for <lists+intel-gfx@lfdr.de>; Tue,  2 May 2023 16:39:51 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 075F810E593;
	Tue,  2 May 2023 14:39:48 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga03.intel.com (mga03.intel.com [134.134.136.65])
 by gabe.freedesktop.org (Postfix) with ESMTPS id B19C510E586;
 Tue,  2 May 2023 14:39:45 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1683038385; x=1714574385;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=mhfLm0axb6dS/Ei/OR9/qpF7w++RhVcK6xXwcw90yd4=;
 b=PgzNpPY9H2bewZz0xNcoCjKYs32Dyd3ri1hd8YtXO+PJAaQoyMFHkf+s
 9viHEO2KEZk2cukAGmY28tTBUM0oo90sB2e1n68dPMq9TQy0HoH4HvFVs
 DzrP/ZVJnBmZdMuk0aJb+7eDIMhqq2HMi0SYO+cFo+UcySt660vQVl2K/
 BUwFA9R5kcuJScyAVJwyEcrpvUSGKTmyPLMr92fsdYsAKGb7M3kr7HjNm
 r7k6TPmvfHI0IuqsL7YOxhCPfT4YSlzSkx+1ky4RTwfda8JO6csS6GTso
 /ZK7HmUtpKWg4K1BM3Z9wPqjpiPkOKTfnHyEnb11+uYvV1pRVFne+r0Tu Q==;
X-IronPort-AV: E=McAfee;i="6600,9927,10698"; a="351396952"
X-IronPort-AV: E=Sophos;i="5.99,244,1677571200"; d="scan'208";a="351396952"
Received: from fmsmga007.fm.intel.com ([10.253.24.52])
 by orsmga103.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 02 May 2023 07:39:45 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10698"; a="698991807"
X-IronPort-AV: E=Sophos;i="5.99,244,1677571200"; d="scan'208";a="698991807"
Received: from stinkpipe.fi.intel.com (HELO stinkbox) ([10.237.72.70])
 by fmsmga007.fm.intel.com with SMTP; 02 May 2023 07:39:35 -0700
Received: by stinkbox (sSMTP sendmail emulation);
 Tue, 02 May 2023 17:39:34 +0300
From: Ville Syrjala <ville.syrjala@linux.intel.com>
To: dri-devel@lists.freedesktop.org
Date: Tue,  2 May 2023 17:39:02 +0300
Message-Id: <20230502143906.2401-8-ville.syrjala@linux.intel.com>
X-Mailer: git-send-email 2.39.2
In-Reply-To: <20230502143906.2401-1-ville.syrjala@linux.intel.com>
References: <20230502143906.2401-1-ville.syrjala@linux.intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH 07/11] drm/i915: Split some long lines
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
Cc: intel-gfx@lists.freedesktop.org
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

From: Ville Syrjälä <ville.syrjala@linux.intel.com>

Split some overly long lines.

Signed-off-by: Ville Syrjälä <ville.syrjala@linux.intel.com>
---
 drivers/gpu/drm/i915/display/intel_fdi.c | 9 +++++++--
 1 file changed, 7 insertions(+), 2 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_fdi.c b/drivers/gpu/drm/i915/display/intel_fdi.c
index 55283677c45a..19ee78ba3936 100644
--- a/drivers/gpu/drm/i915/display/intel_fdi.c
+++ b/drivers/gpu/drm/i915/display/intel_fdi.c
@@ -765,7 +765,10 @@ void hsw_fdi_link_train(struct intel_encoder *encoder,
 	 * WaFDIAutoLinkSetTimingOverrride:hsw
 	 */
 	intel_de_write(dev_priv, FDI_RX_MISC(PIPE_A),
-		       FDI_RX_PWRDN_LANE1_VAL(2) | FDI_RX_PWRDN_LANE0_VAL(2) | FDI_RX_TP1_TO_TP2_48 | FDI_RX_FDI_DELAY_90);
+		       FDI_RX_PWRDN_LANE1_VAL(2) |
+		       FDI_RX_PWRDN_LANE0_VAL(2) |
+		       FDI_RX_TP1_TO_TP2_48 |
+		       FDI_RX_FDI_DELAY_90);
 
 	/* Enable the PCH Receiver FDI PLL */
 	rx_ctl_val = dev_priv->display.fdi.rx_config | FDI_RX_ENHANCE_FRAME_ENABLE |
@@ -798,7 +801,9 @@ void hsw_fdi_link_train(struct intel_encoder *encoder,
 		 * achieved on the PCH side in FDI_RX_CTL, so no need to set the
 		 * port reversal bit */
 		intel_de_write(dev_priv, DDI_BUF_CTL(PORT_E),
-			       DDI_BUF_CTL_ENABLE | ((crtc_state->fdi_lanes - 1) << 1) | DDI_BUF_TRANS_SELECT(i / 2));
+			       DDI_BUF_CTL_ENABLE |
+			       ((crtc_state->fdi_lanes - 1) << 1) |
+			       DDI_BUF_TRANS_SELECT(i / 2));
 		intel_de_posting_read(dev_priv, DDI_BUF_CTL(PORT_E));
 
 		udelay(600);
-- 
2.39.2

