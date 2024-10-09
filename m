Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 83CF99975DA
	for <lists+intel-gfx@lfdr.de>; Wed,  9 Oct 2024 21:43:37 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 044A610E7E9;
	Wed,  9 Oct 2024 19:43:35 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="KZhee7R2";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.17])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 2FF9510E7FE;
 Wed,  9 Oct 2024 19:43:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1728503013; x=1760039013;
 h=from:to:subject:date:message-id:in-reply-to:references:
 mime-version:content-transfer-encoding;
 bh=HZc9bcSvtyymE9c9otzAxVRTUQenE+6s2ZFh85Q92kI=;
 b=KZhee7R2lQ/6oFz8i9KOAPAa+oFs6BQzVlumkE0c5PUVJcZBNW7JeFK/
 N+7YTbAtnCi3HtuitXTlPp5AfHw2u6CNqpoa1TjLzdpcqfUM6+QrQI93g
 ZImMB+hckgploWoq/e/lq8ay6nKhuIciZdu/bkRgc0wIR250w2J6xjd0G
 NO5zDJH2MVjZAQpYQrUIC0y1QO+YADT/cbmO8yV9mcrp6OAKUSjqU9MWv
 aS3qI6EV2+24xpcsC0DCtdhCZeU7auxMxma9wuF5svCofqhCJDbZvNx1G
 yDwwWpt0EbKb9Y8L6e+UFtvtB8R9xBYPYmijJrLhAegxAgQ3C79YdRzME Q==;
X-CSE-ConnectionGUID: wscvBKZzS6OmXopuJm+UDA==
X-CSE-MsgGUID: f6C0pPNCSzKukVvd5yEmwA==
X-IronPort-AV: E=McAfee;i="6700,10204,11220"; a="27947098"
X-IronPort-AV: E=Sophos;i="6.11,190,1725346800"; d="scan'208";a="27947098"
Received: from orviesa004.jf.intel.com ([10.64.159.144])
 by orvoesa109.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 09 Oct 2024 12:43:33 -0700
X-CSE-ConnectionGUID: zlZ1/eq+SAO2PXLvUikZoA==
X-CSE-MsgGUID: 2vy4LKXpRbO5IwXMeQ3lhg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.11,190,1725346800"; d="scan'208";a="81371470"
Received: from ideak-desk.fi.intel.com ([10.237.72.78])
 by orviesa004-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 09 Oct 2024 12:43:32 -0700
From: Imre Deak <imre.deak@intel.com>
To: intel-xe@lists.freedesktop.org,
	intel-gfx@lists.freedesktop.org
Subject: [PATCH v2 2/4] drm/i915/dp: Disable unnecessary HPD polling for eDP
Date: Wed,  9 Oct 2024 22:43:56 +0300
Message-ID: <20241009194358.1321200-3-imre.deak@intel.com>
X-Mailer: git-send-email 2.44.2
In-Reply-To: <20241009194358.1321200-1-imre.deak@intel.com>
References: <20241009194358.1321200-1-imre.deak@intel.com>
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

A registered eDP connector is considered to be always connected, so it's
unnecessary to poll it for a connect/disconnect event. Polling it
involves AUX accesses toggling the panel power, which in turn can
generate a spurious short HPD pulse and possibly a new poll cycle via
the short HPD handler runtime resuming the device. Avoid this by
disabling the polling for eDP connectors.

This avoids IGT tests timing out while waiting for the device to runtime
suspend, the timeout caused by the above runtime resume->poll->suspend->
resume cycle keeping the device in the resumed state.

Testcase: igt/kms_pm_rpm/unverisal-planes
Signed-off-by: Imre Deak <imre.deak@intel.com>
---
 drivers/gpu/drm/i915/display/intel_dp.c | 3 ++-
 1 file changed, 2 insertions(+), 1 deletion(-)

diff --git a/drivers/gpu/drm/i915/display/intel_dp.c b/drivers/gpu/drm/i915/display/intel_dp.c
index 3eff35dd59b8a..6b27fabd61c37 100644
--- a/drivers/gpu/drm/i915/display/intel_dp.c
+++ b/drivers/gpu/drm/i915/display/intel_dp.c
@@ -6476,7 +6476,8 @@ intel_dp_init_connector(struct intel_digital_port *dig_port,
 	if (!HAS_GMCH(dev_priv) && DISPLAY_VER(dev_priv) < 12)
 		connector->interlace_allowed = true;
 
-	intel_connector->polled = DRM_CONNECTOR_POLL_HPD;
+	if (type != DRM_MODE_CONNECTOR_eDP)
+		intel_connector->polled = DRM_CONNECTOR_POLL_HPD;
 	intel_connector->base.polled = intel_connector->polled;
 
 	intel_connector_attach_encoder(intel_connector, intel_encoder);
-- 
2.44.2

