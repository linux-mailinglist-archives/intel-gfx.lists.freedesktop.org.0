Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 28F26A2A0ED
	for <lists+intel-gfx@lfdr.de>; Thu,  6 Feb 2025 07:33:17 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id C3A2A10E42F;
	Thu,  6 Feb 2025 06:33:15 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="QrnP3Dpw";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.16])
 by gabe.freedesktop.org (Postfix) with ESMTPS id B084110E42E;
 Thu,  6 Feb 2025 06:33:14 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1738823594; x=1770359594;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=gtxDKMeP0R4aywy8S4ng84XE21QXblABMqMejDOfZ1A=;
 b=QrnP3Dpw7M+NjEvGDJj0mxlwoYm6Gsj6D/VwGFPGSRVjGGQHtOsjfIMZ
 JO7u1kjfqtLOHrzvYagsdLtBLaKkXbNGOw+PK6MzUCUEty96jSpMzg9Xp
 RLhd8OAgjBtsGa6zg1VUJd01XNlJ8ZHwFif+m1J385KWk7LxtIx2Hwapr
 Armnt3WJ7q86Tzd8UGfGCFdk2iKQnQrhnzXB1aKwBAgYv/1cNZgIgYVkr
 ea1VKwws3ZcKoCfl3uZdMbNrWpO2vBgsfrbf7FCNFERbLU2f+VUzTV890
 AkDsOOzhAxJ5Qb+T9z1AnK26foaMkS5FVrpnXqZYKDi+H8puIE3mbIFgW g==;
X-CSE-ConnectionGUID: gtVHvevtT+KVNCjFEiECjw==
X-CSE-MsgGUID: Pm9Fl+6mQjqF9tZIiwe8LQ==
X-IronPort-AV: E=McAfee;i="6700,10204,11336"; a="27014221"
X-IronPort-AV: E=Sophos;i="6.13,263,1732608000"; d="scan'208";a="27014221"
Received: from orviesa008.jf.intel.com ([10.64.159.148])
 by fmvoesa110.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 05 Feb 2025 22:33:14 -0800
X-CSE-ConnectionGUID: NiUCrVDaTqKOMV+jKNGoZg==
X-CSE-MsgGUID: 0se1rxQTSDi3pjiI75ywgA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.12,224,1728975600"; d="scan'208";a="112013694"
Received: from kandpal-x299-ud4-pro.iind.intel.com ([10.190.239.10])
 by orviesa008.jf.intel.com with ESMTP; 05 Feb 2025 22:33:13 -0800
From: Suraj Kandpal <suraj.kandpal@intel.com>
To: intel-xe@lists.freedesktop.org, intel-gfx@lists.freedesktop.org,
 dri-devel@lists.freedesktop.org
Cc: uma.shankar@intel.com, arun.r.murthy@intel.com, ben.kao@intel.com,
 Suraj Kandpal <suraj.kandpal@intel.com>
Subject: [PATCH 3/8] drm/i915/backlight: Use proper interface based on eDP
 version
Date: Thu,  6 Feb 2025 12:02:48 +0530
Message-Id: <20250206063253.2827017-4-suraj.kandpal@intel.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20250206063253.2827017-1-suraj.kandpal@intel.com>
References: <20250206063253.2827017-1-suraj.kandpal@intel.com>
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

eDP is supposed to use VESA interface when using revision 1.5 and above,
use Intel interface for backlight control otherwise. Add check to
use correct interface.

Signed-off-by: Suraj Kandpal <suraj.kandpal@intel.com>
Tested-by: Ben Kao <ben.kao@intel.com>
---
 drivers/gpu/drm/i915/display/intel_dp_aux_backlight.c | 8 +++++++-
 1 file changed, 7 insertions(+), 1 deletion(-)

diff --git a/drivers/gpu/drm/i915/display/intel_dp_aux_backlight.c b/drivers/gpu/drm/i915/display/intel_dp_aux_backlight.c
index c846ef4acf5b..09e82f24d030 100644
--- a/drivers/gpu/drm/i915/display/intel_dp_aux_backlight.c
+++ b/drivers/gpu/drm/i915/display/intel_dp_aux_backlight.c
@@ -604,6 +604,7 @@ static const struct intel_panel_bl_funcs intel_dp_vesa_bl_funcs = {
 int intel_dp_aux_init_backlight_funcs(struct intel_connector *connector)
 {
 	struct intel_display *display = to_intel_display(connector);
+	struct intel_dp *intel_dp = intel_attached_dp(connector);
 	struct drm_device *dev = connector->base.dev;
 	struct intel_panel *panel = &connector->panel;
 	bool try_intel_interface = false, try_vesa_interface = false;
@@ -640,6 +641,10 @@ int intel_dp_aux_init_backlight_funcs(struct intel_connector *connector)
 		break;
 	}
 
+	/* For eDP 1.5 and above we are supposed to use VESA interface for brightness control */
+	if (intel_dp->edp_dpcd[0] >= DP_EDP_15)
+		try_vesa_interface = true;
+
 	/*
 	 * Since Intel has their own backlight control interface, the majority of machines out there
 	 * using DPCD backlight controls with Intel GPUs will be using this interface as opposed to
@@ -653,7 +658,8 @@ int intel_dp_aux_init_backlight_funcs(struct intel_connector *connector)
 	 * backlight interface at all. This means that the only sensible way for us to detect both
 	 * interfaces is to probe for Intel's first, and VESA's second.
 	 */
-	if (try_intel_interface && intel_dp_aux_supports_hdr_backlight(connector)) {
+	if (try_intel_interface && intel_dp_aux_supports_hdr_backlight(connector) &&
+	    intel_dp->edp_dpcd[0] <= DP_EDP_14b) {
 		drm_dbg_kms(dev, "[CONNECTOR:%d:%s] Using Intel proprietary eDP backlight controls\n",
 			    connector->base.base.id, connector->base.name);
 		panel->backlight.funcs = &intel_dp_hdr_bl_funcs;
-- 
2.34.1

