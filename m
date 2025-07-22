Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id F3135B0D70D
	for <lists+intel-gfx@lfdr.de>; Tue, 22 Jul 2025 12:13:43 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 84A6010E655;
	Tue, 22 Jul 2025 10:13:42 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="MlPgLDax";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.19])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 878DA10E655;
 Tue, 22 Jul 2025 10:13:41 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1753179222; x=1784715222;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=gVvoOb27IJeSQW11GskfOjTHVg/fanYNPINcLpFAh6g=;
 b=MlPgLDax0m+d6feUYqJhhRAOiekqAHfdVzlZbuttbpEjx+bxPi5l7RzG
 htK1AjprY72ZuX34h5dtWvpVuNu/DDeRNchK5y9E4Xcf/RICmEYm5f1dV
 3uwCk8RBT70Pu6UfBSI1A1M0n7YMh5G+sRPiP4wChzfHreJ3uIkFz9P8T
 xGJODPQtKlyCglXgw34aQBz52gLkrzghgcPPwkQG2LHOAv2VRo6jYPzKa
 /5EJRatOz97u/VvBxsg39gtYNyMYGltmIEVYObJldcPtirnV3G++y5KK7
 3a/0KVK3HjgqWid5vRHoV+8n2XsPWoQmcbgJYeCW9tgYZ7Fu+D/FPYiOZ A==;
X-CSE-ConnectionGUID: 1RdKssp9Rcqalv+XcfMWCA==
X-CSE-MsgGUID: xGU1HM04R+qo6I85ZkHFmQ==
X-IronPort-AV: E=McAfee;i="6800,10657,11499"; a="55266654"
X-IronPort-AV: E=Sophos;i="6.16,331,1744095600"; d="scan'208";a="55266654"
Received: from fmviesa009.fm.intel.com ([10.60.135.149])
 by orvoesa111.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 22 Jul 2025 03:13:41 -0700
X-CSE-ConnectionGUID: glQgVG+rS8uloD+/VGdong==
X-CSE-MsgGUID: /0b6QwAgQAiXRIVGSnRXjQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.16,331,1744095600"; d="scan'208";a="159418613"
Received: from klitkey1-mobl1.ger.corp.intel.com (HELO jhogande-mobl1..)
 ([10.245.244.223])
 by fmviesa009-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 22 Jul 2025 03:13:40 -0700
From: =?UTF-8?q?Jouni=20H=C3=B6gander?= <jouni.hogander@intel.com>
To: intel-gfx@lists.freedesktop.org,
	intel-xe@lists.freedesktop.org
Cc: gustavo.sousa@intel.com,
 =?UTF-8?q?Jouni=20H=C3=B6gander?= <jouni.hogander@intel.com>
Subject: [PATCH v2 4/4] drm/i915/display: Set C10_VDR_CTRL_MSGBUS_ACCESS
 before phy reg read
Date: Tue, 22 Jul 2025 13:13:17 +0300
Message-ID: <20250722101317.1728499-5-jouni.hogander@intel.com>
X-Mailer: git-send-email 2.43.0
In-Reply-To: <20250722101317.1728499-1-jouni.hogander@intel.com>
References: <20250722101317.1728499-1-jouni.hogander@intel.com>
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

According to C10 VDR Register programming sequence we need set
C10_VDR_CTRL_MSGBUS_ACCESS before accessing PHY internal registers from
MsgBus.

Fixes: 9dc619680de4 ("drm/i915/display: Add function to configure LFPS sending")
Suggested-by: Gustavo Sousa <gustavo.sousa@intel.com>
Signed-off-by: Jouni Högander <jouni.hogander@intel.com>
---
 drivers/gpu/drm/i915/display/intel_cx0_phy.c | 5 +++++
 1 file changed, 5 insertions(+)

diff --git a/drivers/gpu/drm/i915/display/intel_cx0_phy.c b/drivers/gpu/drm/i915/display/intel_cx0_phy.c
index a203937d66db..886eff874cb7 100644
--- a/drivers/gpu/drm/i915/display/intel_cx0_phy.c
+++ b/drivers/gpu/drm/i915/display/intel_cx0_phy.c
@@ -3258,6 +3258,11 @@ void intel_lnl_mac_transmit_lfps(struct intel_encoder *encoder,
 		if (!(owned_lane_mask & lane_mask))
 			continue;
 
+		if (intel_encoder_is_c10phy(encoder))
+			intel_cx0_rmw(encoder, lane_mask, PHY_C10_VDR_CONTROL(1),
+				      0, C10_VDR_CTRL_MSGBUS_ACCESS,
+				      MB_WRITE_COMMITTED);
+
 		intel_cx0_rmw(encoder, lane_mask, PHY_CMN1_CONTROL(tx, 0),
 			      CONTROL0_MAC_TRANSMIT_LFPS,
 			      CONTROL0_MAC_TRANSMIT_LFPS, MB_WRITE_COMMITTED);
-- 
2.43.0

