Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 57A8F8A3539
	for <lists+intel-gfx@lfdr.de>; Fri, 12 Apr 2024 19:58:40 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 7EDB910F6CC;
	Fri, 12 Apr 2024 17:58:38 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="Mlf3upkc";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.15])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 1833910F641
 for <intel-gfx@lists.freedesktop.org>; Fri, 12 Apr 2024 17:58:35 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1712944715; x=1744480715;
 h=from:to:subject:date:message-id:in-reply-to:references:
 mime-version:content-transfer-encoding;
 bh=sh5Hycrb4D7FrVoFrtScheQPh56VqkX5b0SN3oX04bw=;
 b=Mlf3upkcCVVLAtM7EkAEj3l6+lg3uv/hTOsUL7ZepA4ANu/klblFo1JM
 kwRJ/h7nfVB7KxzMNgKOTPWS41GUDKb79WStHzL/55O+NpDv8IAAgiJ4Q
 ik/R14HQkI9btGph0TMnRMoLhQnfkNOVmJmZ+Jn7kNU0GMJZ4OewfC2oZ
 uncuKEYcFCbxT0wdWZkrKKg3oZgWUGv+nx6g5PFnZ13FCehwTA2fXZj0j
 EBH/6w+ypyeu8EgSQjuxTD0S1a0/PS7S+lezO14x+ujDiO6U7L2iZZtJe
 RrMpwQjU0+Vtu6CTKcpZSi2ZITg4yRcFQJSioiW9vfRaDPt3ahAGZo/M4 w==;
X-CSE-ConnectionGUID: /FOHbLXMQ1mFKqwhUqyo6w==
X-CSE-MsgGUID: lfmwY1TXSVKtEUXv46/Pzw==
X-IronPort-AV: E=McAfee;i="6600,9927,11042"; a="8586962"
X-IronPort-AV: E=Sophos;i="6.07,196,1708416000"; 
   d="scan'208";a="8586962"
Received: from fmviesa008.fm.intel.com ([10.60.135.148])
 by fmvoesa109.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 12 Apr 2024 10:58:34 -0700
X-CSE-ConnectionGUID: GNNAiXYTT0ycmQWXKDWeFw==
X-CSE-MsgGUID: 3drHgPtsTXSW52ZDQ5PIDQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.07,196,1708416000"; d="scan'208";a="21383049"
Received: from stinkpipe.fi.intel.com (HELO stinkbox) ([10.237.72.74])
 by fmviesa008.fm.intel.com with SMTP; 12 Apr 2024 10:58:33 -0700
Received: by stinkbox (sSMTP sendmail emulation);
 Fri, 12 Apr 2024 20:58:32 +0300
From: Ville Syrjala <ville.syrjala@linux.intel.com>
To: intel-gfx@lists.freedesktop.org
Subject: [PATCH 5/8] drm/i915/dpio: Use intel_de_rmw() for BXT DPIO latency
 optim setup
Date: Fri, 12 Apr 2024 20:58:15 +0300
Message-ID: <20240412175818.29217-6-ville.syrjala@linux.intel.com>
X-Mailer: git-send-email 2.43.2
In-Reply-To: <20240412175818.29217-1-ville.syrjala@linux.intel.com>
References: <20240412175818.29217-1-ville.syrjala@linux.intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
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

From: Ville Syrjälä <ville.syrjala@linux.intel.com>

Replace the hand rolled intel_de_rmw() with the real thing.

Signed-off-by: Ville Syrjälä <ville.syrjala@linux.intel.com>
---
 drivers/gpu/drm/i915/display/intel_dpio_phy.c | 12 +++---------
 1 file changed, 3 insertions(+), 9 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_dpio_phy.c b/drivers/gpu/drm/i915/display/intel_dpio_phy.c
index 3d1295da1106..377963c0ed5f 100644
--- a/drivers/gpu/drm/i915/display/intel_dpio_phy.c
+++ b/drivers/gpu/drm/i915/display/intel_dpio_phy.c
@@ -613,19 +613,13 @@ void bxt_ddi_phy_set_lane_optim_mask(struct intel_encoder *encoder,
 	bxt_port_to_phy_channel(dev_priv, port, &phy, &ch);
 
 	for (lane = 0; lane < 4; lane++) {
-		u32 val = intel_de_read(dev_priv,
-					BXT_PORT_TX_DW14_LN(phy, ch, lane));
-
 		/*
 		 * Note that on CHV this flag is called UPAR, but has
 		 * the same function.
 		 */
-		val &= ~LATENCY_OPTIM;
-		if (lane_lat_optim_mask & BIT(lane))
-			val |= LATENCY_OPTIM;
-
-		intel_de_write(dev_priv, BXT_PORT_TX_DW14_LN(phy, ch, lane),
-			       val);
+		intel_de_rmw(dev_priv, BXT_PORT_TX_DW14_LN(phy, ch, lane),
+			     LATENCY_OPTIM,
+			     lane_lat_optim_mask & BIT(lane) ? LATENCY_OPTIM : 0);
 	}
 }
 
-- 
2.43.2

