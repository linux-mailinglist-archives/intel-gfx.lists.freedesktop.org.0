Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 0BC75C15A06
	for <lists+intel-gfx@lfdr.de>; Tue, 28 Oct 2025 16:57:22 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 130D510E603;
	Tue, 28 Oct 2025 15:57:20 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="KcPePxbD";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.17])
 by gabe.freedesktop.org (Postfix) with ESMTPS id AE05410E609;
 Tue, 28 Oct 2025 15:57:18 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1761667039; x=1793203039;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=yGwKOSRGdVXWI1G5dWXfuZ2JKJv4+q4AMmZS5izP+sg=;
 b=KcPePxbD4DOPasrUPA2xkK3XLJM4x5NDFgYW10LS1TR8nrnrh+kxES/D
 JuaRZNViFEjbtzOP6Fra8v/DsKuQgIYIdy8dU8kU0be/e0uSo7JhvWUy3
 6Qewtu57+OvGJgW8Sb7XX98GBZVEosKKl0CoMyxqzZt00KXBvyburStxF
 uX2tEFPYKVtoaH3GZxf6LNLUYwJ9ehMZl/cvR25lb363ZVAmtj5hLFoDG
 HMvSvYER2/DeaZNsSMu/cCAKBys4ge7Kugul06s9GXM9fe2Y7LOpSHlqE
 yabCYo/oIwI72BH6XK3+4Dcd9dskLVlid5kqWnfUUg2ZaCCKYIouESvDA Q==;
X-CSE-ConnectionGUID: pOfM4orESj2EkSf9SHC9nw==
X-CSE-MsgGUID: eFFsT1TzRvuTF5nenaYEwg==
X-IronPort-AV: E=McAfee;i="6800,10657,11586"; a="63678999"
X-IronPort-AV: E=Sophos;i="6.19,261,1754982000"; d="scan'208";a="63678999"
Received: from orviesa003.jf.intel.com ([10.64.159.143])
 by fmvoesa111.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 28 Oct 2025 08:57:18 -0700
X-CSE-ConnectionGUID: p7rFDkGVS02VtbZoTbsKTQ==
X-CSE-MsgGUID: G32J38oFRaimr09GkiXmow==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.19,261,1754982000"; d="scan'208";a="189440367"
Received: from slindbla-desk.ger.corp.intel.com (HELO localhost)
 ([10.245.246.90])
 by ORVIESA003-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 28 Oct 2025 08:57:15 -0700
From: Jani Nikula <jani.nikula@intel.com>
To: intel-gfx@lists.freedesktop.org,
	intel-xe@lists.freedesktop.org
Cc: jani.nikula@intel.com
Subject: [PATCH 1/2] drm/i915/dsi: log send packet sequence errors
Date: Tue, 28 Oct 2025 17:57:11 +0200
Message-ID: <20251028155712.1824565-1-jani.nikula@intel.com>
X-Mailer: git-send-email 2.47.3
MIME-Version: 1.0
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

We might be getting send packet sequence errors and never know. Log
them.

Signed-off-by: Jani Nikula <jani.nikula@intel.com>
---
 drivers/gpu/drm/i915/display/intel_dsi_vbt.c | 24 ++++++++++++--------
 1 file changed, 15 insertions(+), 9 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_dsi_vbt.c b/drivers/gpu/drm/i915/display/intel_dsi_vbt.c
index 23402408e172..748e5462bd95 100644
--- a/drivers/gpu/drm/i915/display/intel_dsi_vbt.c
+++ b/drivers/gpu/drm/i915/display/intel_dsi_vbt.c
@@ -106,6 +106,7 @@ static const u8 *mipi_exec_send_packet(struct intel_dsi *intel_dsi,
 	u8 type, flags, seq_port;
 	u16 len;
 	enum port port;
+	ssize_t ret;
 
 	drm_dbg_kms(display->drm, "\n");
 
@@ -138,36 +139,41 @@ static const u8 *mipi_exec_send_packet(struct intel_dsi *intel_dsi,
 
 	switch (type) {
 	case MIPI_DSI_GENERIC_SHORT_WRITE_0_PARAM:
-		mipi_dsi_generic_write(dsi_device, NULL, 0);
+		ret = mipi_dsi_generic_write(dsi_device, NULL, 0);
 		break;
 	case MIPI_DSI_GENERIC_SHORT_WRITE_1_PARAM:
-		mipi_dsi_generic_write(dsi_device, data, 1);
+		ret = mipi_dsi_generic_write(dsi_device, data, 1);
 		break;
 	case MIPI_DSI_GENERIC_SHORT_WRITE_2_PARAM:
-		mipi_dsi_generic_write(dsi_device, data, 2);
+		ret = mipi_dsi_generic_write(dsi_device, data, 2);
 		break;
 	case MIPI_DSI_GENERIC_READ_REQUEST_0_PARAM:
 	case MIPI_DSI_GENERIC_READ_REQUEST_1_PARAM:
 	case MIPI_DSI_GENERIC_READ_REQUEST_2_PARAM:
-		drm_dbg_kms(display->drm, "Generic Read not yet implemented or used\n");
+		ret = -EOPNOTSUPP;
 		break;
 	case MIPI_DSI_GENERIC_LONG_WRITE:
-		mipi_dsi_generic_write(dsi_device, data, len);
+		ret = mipi_dsi_generic_write(dsi_device, data, len);
 		break;
 	case MIPI_DSI_DCS_SHORT_WRITE:
-		mipi_dsi_dcs_write_buffer(dsi_device, data, 1);
+		ret = mipi_dsi_dcs_write_buffer(dsi_device, data, 1);
 		break;
 	case MIPI_DSI_DCS_SHORT_WRITE_PARAM:
-		mipi_dsi_dcs_write_buffer(dsi_device, data, 2);
+		ret = mipi_dsi_dcs_write_buffer(dsi_device, data, 2);
 		break;
 	case MIPI_DSI_DCS_READ:
-		drm_dbg_kms(display->drm, "DCS Read not yet implemented or used\n");
+		ret = -EOPNOTSUPP;
 		break;
 	case MIPI_DSI_DCS_LONG_WRITE:
-		mipi_dsi_dcs_write_buffer(dsi_device, data, len);
+		ret = mipi_dsi_dcs_write_buffer(dsi_device, data, len);
 		break;
 	}
 
+	if (ret == -EOPNOTSUPP)
+		drm_dbg_kms(display->drm, "DSI read not supported\n");
+	else if (ret < 0)
+		drm_err(display->drm, "DSI write failed with %pe\n", ERR_PTR(ret));
+
 	if (DISPLAY_VER(display) < 11)
 		vlv_dsi_wait_for_fifo_empty(intel_dsi, port);
 
-- 
2.47.3

