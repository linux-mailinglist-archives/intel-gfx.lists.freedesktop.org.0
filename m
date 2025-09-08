Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id C8A0EB4833E
	for <lists+intel-gfx@lfdr.de>; Mon,  8 Sep 2025 06:22:24 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 9A24A10E458;
	Mon,  8 Sep 2025 04:22:22 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="ciGjp38T";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.21])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 6FB2110E1EB;
 Mon,  8 Sep 2025 04:22:21 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1757305341; x=1788841341;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=mwK4bMDlzsLI7IJ/eW1YgIpdfYRYNKql2ZlU1BhI03U=;
 b=ciGjp38TZ98d35dKR7tGKlPx50z35e5Zr30/2DkbUtW4gmWOtUYwsXyD
 Q9VMEPCf1yVew2V828HL90QuEtV2FtYbJ9UtNvAAThwGsUjoCnl+jH7re
 BDlyZAL6rzpeTIR8UF7YgOsUx/pabF0onk7qs9I7xGVCZMNI8o0pdmD/I
 /v3ncxYz+7Tr6/sWU+is8f2v+ZPeRf/++nYv0AuY7FhskyP862zL6W7Rv
 YsZqghjCaNL3TBLUSutF6FIg0BvpNPh5v8xkwKnojci2fbFqitydo6Zov
 PRbzwgAb/PWfF6QQ5IwH7QVGi4vDBRzervoynVlaJaOsnzWiLYfvN8RJU A==;
X-CSE-ConnectionGUID: 1WwQHHFPROK01q6AsaheFA==
X-CSE-MsgGUID: 8+mjo9dDSjOP4qR6aXSANw==
X-IronPort-AV: E=McAfee;i="6800,10657,11531"; a="59484509"
X-IronPort-AV: E=Sophos;i="6.17,312,1747724400"; d="scan'208";a="59484509"
Received: from orviesa005.jf.intel.com ([10.64.159.145])
 by orvoesa113.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 07 Sep 2025 21:22:21 -0700
X-CSE-ConnectionGUID: BiXTcoXkRUC7ljtWPmDxTQ==
X-CSE-MsgGUID: 4jNbrecfQvGafZz/YNh3QA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.18,247,1751266800"; d="scan'208";a="177918172"
Received: from kandpal-x299-ud4-pro.iind.intel.com ([10.190.239.10])
 by orviesa005.jf.intel.com with ESMTP; 07 Sep 2025 21:22:19 -0700
From: Suraj Kandpal <suraj.kandpal@intel.com>
To: intel-xe@lists.freedesktop.org,
	intel-gfx@lists.freedesktop.org
Cc: jani.nikula@intel.com, ankit.k.nautiyal@intel.com,
 Suraj Kandpal <suraj.kandpal@intel.com>
Subject: [PATCH v2] drm/i915/ddi: Guard reg_val against a INVALID_TRANSCODER
Date: Mon,  8 Sep 2025 09:52:08 +0530
Message-Id: <20250908042208.1011144-1-suraj.kandpal@intel.com>
X-Mailer: git-send-email 2.34.1
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

Currently we check if the encoder is INVALID or -1 and throw a
WARN_ON but we still end up writing the temp value which will
overflow and corrupt the whole programmed value.

--v2
-Assign a bogus transcoder to master in case we get a INVALID
TRANSCODER [Jani]

Fixes: 6671c367a9bea ("drm/i915/tgl: Select master transcoder for MST stream")
Signed-off-by: Suraj Kandpal <suraj.kandpal@intel.com>
---
 drivers/gpu/drm/i915/display/intel_ddi.c | 5 +++--
 1 file changed, 3 insertions(+), 2 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_ddi.c b/drivers/gpu/drm/i915/display/intel_ddi.c
index 46017091bb0b..f67ce35c1c00 100644
--- a/drivers/gpu/drm/i915/display/intel_ddi.c
+++ b/drivers/gpu/drm/i915/display/intel_ddi.c
@@ -596,8 +596,9 @@ intel_ddi_transcoder_func_reg_val_get(struct intel_encoder *encoder,
 			enum transcoder master;
 
 			master = crtc_state->mst_master_transcoder;
-			drm_WARN_ON(display->drm,
-				    master == INVALID_TRANSCODER);
+			if (drm_WARN_ON(display->drm,
+					master == INVALID_TRANSCODER))
+				master = TRANSCODER_A;
 			temp |= TRANS_DDI_MST_TRANSPORT_SELECT(master);
 		}
 	} else {
-- 
2.34.1

