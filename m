Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id C78F18CA25F
	for <lists+intel-gfx@lfdr.de>; Mon, 20 May 2024 20:58:39 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 1AC2610E82E;
	Mon, 20 May 2024 18:58:36 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="cwiEWJxD";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.12])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 140A110E6D5
 for <intel-gfx@lists.freedesktop.org>; Mon, 20 May 2024 18:58:31 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1716231511; x=1747767511;
 h=from:to:subject:date:message-id:in-reply-to:references:
 mime-version:content-transfer-encoding;
 bh=YEybBqquevP8MFoaIVaywixy1fnz2MGCGCE29KG2Gwo=;
 b=cwiEWJxD+UL0IbjH7bjQr577g0GqQM3N0qc6EaFjAbNZWHwfk0BtQeeC
 MKNoEUvs5p0ngrJIpXQo0pKXc9NwSft5+ONUUUpvkvgYnhYTFSmPVOMAG
 NCCby1pG3Lt/Vw6tGOIItI9qWku5jr//lBsciv+OmtqlTo36rauNT0ede
 Lt4ghftZRDSUmJN4x4aeT0H0heCtQMtGHoXHeby3yKqrRgoanpcHK16o8
 ejGEyplilr89qEELv84caClFvi7wNLd09GslbLpneiQyOXx0Y1/naNFFx
 Oe+Mf2PMMSMhFQoUlAr+tWAfKSU+/MYS74t5lIhN+EnLfDMLW3XRzeMr5 g==;
X-CSE-ConnectionGUID: 1X84bL1BTISpX0+kzd96EA==
X-CSE-MsgGUID: kmf3FTnwTKW9LtWpORHeVQ==
X-IronPort-AV: E=McAfee;i="6600,9927,11078"; a="16218541"
X-IronPort-AV: E=Sophos;i="6.08,175,1712646000"; d="scan'208";a="16218541"
Received: from fmviesa004.fm.intel.com ([10.60.135.144])
 by fmvoesa106.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 20 May 2024 11:58:31 -0700
X-CSE-ConnectionGUID: WS4SIOqGTpmxGuL2CVdOPg==
X-CSE-MsgGUID: YnY2JmGQRuCwEeYo/5MNrQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.08,175,1712646000"; d="scan'208";a="37213864"
Received: from ideak-desk.fi.intel.com ([10.237.72.78])
 by fmviesa004-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 20 May 2024 11:58:30 -0700
From: Imre Deak <imre.deak@intel.com>
To: intel-gfx@lists.freedesktop.org
Subject: [PATCH v2 12/21] drm/i915/dp: Use check link state work in the detect
 handler
Date: Mon, 20 May 2024 21:58:10 +0300
Message-ID: <20240520185822.3725844-13-imre.deak@intel.com>
X-Mailer: git-send-email 2.43.3
In-Reply-To: <20240520185822.3725844-1-imre.deak@intel.com>
References: <20240520185822.3725844-1-imre.deak@intel.com>
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

Simplify things by retraining a DP link if a bad link is detected in the
connector detect handler from the encoder's check link state work,
similarly to how this is done after a modeset link training failure.

Signed-off-by: Imre Deak <imre.deak@intel.com>
---
 drivers/gpu/drm/i915/display/intel_dp.c | 7 ++-----
 1 file changed, 2 insertions(+), 5 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_dp.c b/drivers/gpu/drm/i915/display/intel_dp.c
index ff4ed6bb520d8..70b00e5ae7ad7 100644
--- a/drivers/gpu/drm/i915/display/intel_dp.c
+++ b/drivers/gpu/drm/i915/display/intel_dp.c
@@ -5863,11 +5863,8 @@ intel_dp_detect(struct drm_connector *connector,
 	 * Some external monitors do not signal loss of link synchronization
 	 * with an IRQ_HPD, so force a link status check.
 	 */
-	if (!intel_dp_is_edp(intel_dp)) {
-		ret = intel_dp_retrain_link(encoder, ctx);
-		if (ret)
-			return ret;
-	}
+	if (!intel_dp_is_edp(intel_dp))
+		intel_dp_check_link_state(intel_dp);
 
 	/*
 	 * Clearing NACK and defer counts to get their exact values
-- 
2.43.3

