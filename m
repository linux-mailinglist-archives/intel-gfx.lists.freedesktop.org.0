Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 40FA872897A
	for <lists+intel-gfx@lfdr.de>; Thu,  8 Jun 2023 22:31:38 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 97C6610E617;
	Thu,  8 Jun 2023 20:31:36 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga06.intel.com (mga06b.intel.com [134.134.136.31])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 5735B10E616
 for <intel-gfx@lists.freedesktop.org>; Thu,  8 Jun 2023 20:31:34 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1686256294; x=1717792294;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=HmQqQbqmpuHL5jDoPWSmTLEp/5UIIwiam2ixlej//fw=;
 b=K89SLxIbNF7mODm8Vk+9OUegiR9LecTQBYblqn+yGHwnwL0vd0J6F6Tu
 hsASCl0bkCD47zt3Uj+RABwIUCnTV52Uw4HwBMGQRX7u2mUEcWsx15KA+
 8JqpNYzfmP9gBt8Fs/7FDVQ0pL/PjCxOdPJdfglwC07E64EHWkEOW5azL
 HfFrhXwZDSYrkoO+ed0UhG3wFrEbgseB9Alx0a5kXuUt/lDBvAIEUFFe5
 ZJqJm96KNgfm3LAdAZWuON8++PfoKf5EsAV12vfcjRlYStXQja9aHWqr9
 AA829fbCBq1JzloJebDHq/vMjsjpEyS+iYZXnaKFuRNIdTCNB5Fxdxbqd Q==;
X-IronPort-AV: E=McAfee;i="6600,9927,10735"; a="421012660"
X-IronPort-AV: E=Sophos;i="6.00,227,1681196400"; d="scan'208";a="421012660"
Received: from orsmga002.jf.intel.com ([10.7.209.21])
 by orsmga104.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 08 Jun 2023 13:31:16 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10735"; a="710100719"
X-IronPort-AV: E=Sophos;i="6.00,227,1681196400"; d="scan'208";a="710100719"
Received: from stinkpipe.fi.intel.com (HELO stinkbox) ([10.237.72.70])
 by orsmga002.jf.intel.com with SMTP; 08 Jun 2023 13:31:13 -0700
Received: by stinkbox (sSMTP sendmail emulation);
 Thu, 08 Jun 2023 23:31:13 +0300
From: Ville Syrjala <ville.syrjala@linux.intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Thu,  8 Jun 2023 23:30:49 +0300
Message-Id: <20230608203057.23759-6-ville.syrjala@linux.intel.com>
X-Mailer: git-send-email 2.39.3
In-Reply-To: <20230608203057.23759-1-ville.syrjala@linux.intel.com>
References: <20230608203057.23759-1-ville.syrjala@linux.intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH v2 05/13] drm/i915/dsi: Gate DSI clocks earlier
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
Cc: Jani Nikula <jani.nikula@intel.com>
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

From: Ville Syrjälä <ville.syrjala@linux.intel.com>

The clock gating step is in the wrong spot compared to the
TGL+ bspec sequence. Move it the right place. Windows also
seems to use the TGL+ order here always.

Reviewed-by: Jani Nikula <jani.nikula@intel.com>
Signed-off-by: Ville Syrjälä <ville.syrjala@linux.intel.com>
---
 drivers/gpu/drm/i915/display/icl_dsi.c | 5 ++---
 1 file changed, 2 insertions(+), 3 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/icl_dsi.c b/drivers/gpu/drm/i915/display/icl_dsi.c
index 6d60197cc9f1..973215bec3c1 100644
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
2.39.3

