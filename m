Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id D1CFD8AC900
	for <lists+intel-gfx@lfdr.de>; Mon, 22 Apr 2024 11:36:25 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 364FE11293B;
	Mon, 22 Apr 2024 09:36:24 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="iL7F2YJb";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.8])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 07457112939
 for <intel-gfx@lists.freedesktop.org>; Mon, 22 Apr 2024 09:36:21 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1713778582; x=1745314582;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=87wi6gvQRGvHPcMl1ZsKjm+ys4EDzb1M4lP5PlcX8ks=;
 b=iL7F2YJbwLm1OjvDQFIMQVePM5nl0E6zzKtyxyPGgI7dI7+TFA5RNpnc
 dUgiwYfRGJ942jf4yRHrLXNjlkKMPfh9BBSBJh6pdzTrhNCvaUPSiW08e
 AwizpxtrLg1hqiihbfFRkT0ywqpBmeizvwYbtSyK9BrOwYpvupxSS3dNY
 QQ6YVT11d1Sy1CoyKwXe+f0MbSS10TdeWjqPTItXXSPW/RmcJV5LMkDY6
 q9d+nWUmJ8/6j9tqliucB8SRukgI0Ggj7y6SZE0EC6wE9rZLV5bSd6rdO
 qLuYkC3jViVaWhJuY28XIEnJCBwDyOAZt/zKbEHlTWn5MP/4WkYyLr7WR Q==;
X-CSE-ConnectionGUID: ncjsbm5GQS2YrhJHP2LAaQ==
X-CSE-MsgGUID: lac2scV9T+eE86q9kBg11g==
X-IronPort-AV: E=McAfee;i="6600,9927,11051"; a="26827266"
X-IronPort-AV: E=Sophos;i="6.07,220,1708416000"; d="scan'208";a="26827266"
Received: from orviesa009.jf.intel.com ([10.64.159.149])
 by fmvoesa102.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 22 Apr 2024 02:36:21 -0700
X-CSE-ConnectionGUID: Uhm//tsFRj+Yo1cbgEFb8Q==
X-CSE-MsgGUID: 6wNSrJJ1TkO+gXDdQZwtLA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.07,220,1708416000"; d="scan'208";a="23935318"
Received: from gyu3-linux.itwn.intel.com ([10.225.64.197])
 by orviesa009.jf.intel.com with ESMTP; 22 Apr 2024 02:36:20 -0700
From: gareth.yu@intel.com
To: intel-gfx@lists.freedesktop.org
Cc: Gareth Yu <gareth.yu@intel.com>
Subject: [PATCH] drm/i915/display: Fixed HDMI can't show up behind a USB-C
 dock station
Date: Mon, 22 Apr 2024 17:44:51 +0800
Message-Id: <20240422094451.1566990-1-gareth.yu@intel.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20240422063300.1459712-1-gareth.yu@intel.com>
References: <20240422063300.1459712-1-gareth.yu@intel.com>
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

From: Gareth Yu <gareth.yu@intel.com>

Re-train the main link once HPD happens without link status

Closes: https://gitlab.freedesktop.org/drm/intel/-/issues/10902
Cc : Tejas Upadhyay <tejaskumarx.surendrakumar.upadhyay@intel.com>
Cc : Matt Roper <matthew.d.roper@intel.com>
Cc : Ville Syrjälä <ville.syrjala@linux.intel.com>
Signed-off-by: Gareth Yu <gareth.yu@intel.com>
---
 drivers/gpu/drm/i915/display/intel_dp.c | 7 ++++++-
 1 file changed, 6 insertions(+), 1 deletion(-)

diff --git a/drivers/gpu/drm/i915/display/intel_dp.c b/drivers/gpu/drm/i915/display/intel_dp.c
index e05e25cd4a94..52ab549e6d08 100644
--- a/drivers/gpu/drm/i915/display/intel_dp.c
+++ b/drivers/gpu/drm/i915/display/intel_dp.c
@@ -5849,8 +5849,13 @@ intel_dp_detect(struct drm_connector *connector,
 	/* Can't disconnect eDP */
 	if (intel_dp_is_edp(intel_dp))
 		status = edp_detect(intel_dp);
-	else if (intel_digital_port_connected(encoder))
+	else if (intel_digital_port_connected(encoder)) {
 		status = intel_dp_detect_dpcd(intel_dp);
+		if (status == connector_status_connected && intel_dp->is_mst &&
+		    !intel_dp_mst_link_status(intel_dp))
+			if (intel_dp_retrain_link(encoder, ctx))
+				status = connector_status_disconnected;
+	}
 	else
 		status = connector_status_disconnected;
 
-- 
2.25.1

