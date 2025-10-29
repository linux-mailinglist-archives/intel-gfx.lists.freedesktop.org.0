Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 0F41CC1925C
	for <lists+intel-gfx@lfdr.de>; Wed, 29 Oct 2025 09:46:18 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 8453810E746;
	Wed, 29 Oct 2025 08:46:16 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="BTER6bnb";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.20])
 by gabe.freedesktop.org (Postfix) with ESMTPS id ED06F10E742;
 Wed, 29 Oct 2025 08:46:14 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1761727576; x=1793263576;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=siOyM31RXVvtECOgc/oHpT4AvY7tftdN4D25GhrtVn0=;
 b=BTER6bnbOimRnxAG2EZ4bKKCjgCLaNVGV2w7E03dozGwA9jKF1KrDlpk
 6bq+L2eD0S4vFmllF1++F3oDa7p5uho4fhZwk/hJRawstV0mY2R3Cf1pm
 FljbRrRHhx53y542DyKDRI8QVOOo41C/g/Q9BviFeg5cnJ7470+vQTWh8
 EWGyyt7SdfBFCc3TQsrqzHHwXV4P4RWdfIlHgo6299LJm185J+cjg7x+r
 iLDoSaJt2c4h4/wMb90fEsDiHPzHcLOX9z8jtfGZ8DqKOopOTLXq0S8Pv
 9rq8PT3a6xnOX5+HgSsM7DcLvbAXXYn1jIWWF5vFrgx2qSXWsBfcigAZB g==;
X-CSE-ConnectionGUID: tOkqy+P7S26UH8L68SrUcA==
X-CSE-MsgGUID: RAQCcfa/S7GV4fLvGogDsA==
X-IronPort-AV: E=McAfee;i="6800,10657,11586"; a="63543612"
X-IronPort-AV: E=Sophos;i="6.19,263,1754982000"; d="scan'208";a="63543612"
Received: from orviesa009.jf.intel.com ([10.64.159.149])
 by orvoesa112.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 29 Oct 2025 01:46:10 -0700
X-CSE-ConnectionGUID: 3HtEK2kdR8q85Nv5ThEjkA==
X-CSE-MsgGUID: 5dhxQq2fTge+11n/54W/1A==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.19,263,1754982000"; d="scan'208";a="185230246"
Received: from ettammin-desk.ger.corp.intel.com (HELO localhost)
 ([10.245.246.160])
 by orviesa009-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 29 Oct 2025 01:46:07 -0700
From: Jani Nikula <jani.nikula@intel.com>
To: intel-gfx@lists.freedesktop.org,
	intel-xe@lists.freedesktop.org
Cc: jani.nikula@intel.com,
	ville.syrjala@linux.intel.com
Subject: [PATCH v2 1/2] drm/i915/dsi: log send packet sequence errors
Date: Wed, 29 Oct 2025 10:46:02 +0200
Message-ID: <20251029084603.2254982-1-jani.nikula@intel.com>
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

We might be getting send packet sequence errors and never know. Log them
as errors. Also upgrade the not supported read commands to errors.

v2: Also error log -EOPNOTSUPP (Ville)

Signed-off-by: Jani Nikula <jani.nikula@intel.com>
---
 drivers/gpu/drm/i915/display/intel_dsi_vbt.c | 22 ++++++++++++--------
 1 file changed, 13 insertions(+), 9 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_dsi_vbt.c b/drivers/gpu/drm/i915/display/intel_dsi_vbt.c
index 23402408e172..63837406d99b 100644
--- a/drivers/gpu/drm/i915/display/intel_dsi_vbt.c
+++ b/drivers/gpu/drm/i915/display/intel_dsi_vbt.c
@@ -106,6 +106,7 @@ static const u8 *mipi_exec_send_packet(struct intel_dsi *intel_dsi,
 	u8 type, flags, seq_port;
 	u16 len;
 	enum port port;
+	ssize_t ret;
 
 	drm_dbg_kms(display->drm, "\n");
 
@@ -138,36 +139,39 @@ static const u8 *mipi_exec_send_packet(struct intel_dsi *intel_dsi,
 
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
 
+	if (ret < 0)
+		drm_err(display->drm, "DSI send packet failed with %pe\n", ERR_PTR(ret));
+
 	if (DISPLAY_VER(display) < 11)
 		vlv_dsi_wait_for_fifo_empty(intel_dsi, port);
 
-- 
2.47.3

