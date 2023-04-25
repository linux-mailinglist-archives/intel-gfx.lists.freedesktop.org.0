Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 4B7D86EE0AE
	for <lists+intel-gfx@lfdr.de>; Tue, 25 Apr 2023 12:55:21 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 3988510E27B;
	Tue, 25 Apr 2023 10:55:19 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga07.intel.com (mga07.intel.com [134.134.136.100])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 1214810E700
 for <intel-gfx@lists.freedesktop.org>; Tue, 25 Apr 2023 10:55:11 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1682420111; x=1713956111;
 h=from:to:subject:date:message-id:in-reply-to:references:
 mime-version:content-transfer-encoding;
 bh=brK9o6uzuYPU05p+Shn0hnQePXBFZPQ9HrfyfneIBJs=;
 b=gc4/SUuR3+WG2NvXDB7/vRSAsnTdP1wJasIprbMgSZmq+u622OB3eUXL
 wXOJEEAogjpvAWO73laGGCZwQHsvvKi0rsgrCOyuSvaU8TtsXX70NzI8l
 wFreoFiy5wVQKUQsQcOh878AhvycoF/v4OsRtOn0KEIUEFWXzskPrsmGC
 bp7+3zxZ2jpZuHUOaLZTSELuz8lZcUGicuMLE19CqycHD78j97yBqXOyS
 gzAeDJKvzvujjxWWEM/5lQ9JfgkqEPUlq6S2XBo8aA0Q30xwflrqTYVBk
 O4yuicyyloHsRNGlz2KDPvZ2q/nIVE7wgnVkJ2S+9WxY2gbD8DuiUjqjr w==;
X-IronPort-AV: E=McAfee;i="6600,9927,10690"; a="412019626"
X-IronPort-AV: E=Sophos;i="5.99,225,1677571200"; d="scan'208";a="412019626"
Received: from orsmga007.jf.intel.com ([10.7.209.58])
 by orsmga105.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 25 Apr 2023 03:55:10 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10690"; a="687367422"
X-IronPort-AV: E=Sophos;i="5.99,225,1677571200"; d="scan'208";a="687367422"
Received: from stinkpipe.fi.intel.com (HELO stinkbox) ([10.237.72.70])
 by orsmga007.jf.intel.com with SMTP; 25 Apr 2023 03:55:08 -0700
Received: by stinkbox (sSMTP sendmail emulation);
 Tue, 25 Apr 2023 13:55:08 +0300
From: Ville Syrjala <ville.syrjala@linux.intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Tue, 25 Apr 2023 13:54:42 +0300
Message-Id: <20230425105450.18441-7-ville.syrjala@linux.intel.com>
X-Mailer: git-send-email 2.39.2
In-Reply-To: <20230425105450.18441-1-ville.syrjala@linux.intel.com>
References: <20230425105450.18441-1-ville.syrjala@linux.intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH 06/14] drm/i915/dsi: Gate DSI clocks earlier
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

From: Ville Syrjälä <ville.syrjala@linux.intel.com>

The clock gating step is in the wrong spot compared to the
TGL+ bspec sequence. Move it the right place. Windows also
seems to use the TGL+ order here always.

Signed-off-by: Ville Syrjälä <ville.syrjala@linux.intel.com>
---
 drivers/gpu/drm/i915/display/icl_dsi.c | 5 ++---
 1 file changed, 2 insertions(+), 3 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/icl_dsi.c b/drivers/gpu/drm/i915/display/icl_dsi.c
index 89d608747fff..325e381a83fa 100644
--- a/drivers/gpu/drm/i915/display/icl_dsi.c
+++ b/drivers/gpu/drm/i915/display/icl_dsi.c
@@ -1110,6 +1110,8 @@ gen11_dsi_enable_port_and_phy(struct intel_encoder *encoder,
 	/* enable DDI buffer */
 	gen11_dsi_enable_ddi_buffer(encoder);
 
+	gen11_dsi_gate_clocks(encoder);
+
 	gen11_dsi_setup_timings(encoder, crtc_state);
 
 	/* Since transcoder is configured to take events from GPIO */
@@ -1120,9 +1122,6 @@ gen11_dsi_enable_port_and_phy(struct intel_encoder *encoder,
 
 	/* Step (4h, 4i, 4j, 4k): Configure transcoder */
 	gen11_dsi_configure_transcoder(encoder, crtc_state);
-
-	/* Step 4l: Gate DDI clocks */
-	gen11_dsi_gate_clocks(encoder);
 }
 
 static void gen11_dsi_powerup_panel(struct intel_encoder *encoder)
-- 
2.39.2

