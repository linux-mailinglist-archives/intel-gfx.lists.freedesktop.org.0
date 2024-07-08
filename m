Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 9762A929B68
	for <lists+intel-gfx@lfdr.de>; Mon,  8 Jul 2024 07:04:58 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 6A54710E0A5;
	Mon,  8 Jul 2024 05:04:56 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="g0hYg3XH";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.11])
 by gabe.freedesktop.org (Postfix) with ESMTPS id DFE1B10E0A5
 for <intel-gfx@lists.freedesktop.org>; Mon,  8 Jul 2024 05:04:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1720415095; x=1751951095;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=zVc2bLqUUZAYfiT6zNIbtR66wz2m2gNL51abD+hdo1Q=;
 b=g0hYg3XHp959RT32QMYp9YAyopcHR+NjwKiEB5t2ECfO0b2rwo//QKYI
 L/VX13wBiSPhEOEeZMCUqdZtzlcy2unV3reL8ybWeL5uAwRDzrJt2JA5k
 PxZF29K2jP4JIyjWZPI62KGgjNdIxYv7G3qQJ4OKhkD0v09kg60mxLdag
 Xplc7ZUzIlhWFrRQcZUypzZW9NwpMrVTXPeGGORbAh44/gHeH131Zd+c/
 uPy/hgcmne3z7Bfe4TliL0cYW9edlYz7xXlJrJaBiELUO/H5xthZToka1
 enx6awZXisHTBD/O06nZb/YFv2bpShQENX8Nn3pa7cBfPvkYWKw5E3oJ8 Q==;
X-CSE-ConnectionGUID: Wo7cbY8LQFmkyeF4rR2eaw==
X-CSE-MsgGUID: EcSxVavySKWtSY4o4EQU9g==
X-IronPort-AV: E=McAfee;i="6700,10204,11126"; a="28202807"
X-IronPort-AV: E=Sophos;i="6.09,191,1716274800"; d="scan'208";a="28202807"
Received: from fmviesa004.fm.intel.com ([10.60.135.144])
 by orvoesa103.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 07 Jul 2024 22:04:54 -0700
X-CSE-ConnectionGUID: iLBStgllTjGIPHnCUyLxgw==
X-CSE-MsgGUID: 4zgPlLGdSLeTHNTCWijIDw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.09,191,1716274800"; d="scan'208";a="51997991"
Received: from mgolanimitul-x299-ud4-pro.iind.intel.com ([10.190.239.114])
 by fmviesa004.fm.intel.com with ESMTP; 07 Jul 2024 22:04:52 -0700
From: Mitul Golani <mitulkumar.ajitkumar.golani@intel.com>
To: intel-gfx@lists.freedesktop.org
Cc: suraj.kandpal@intel.com,
	nemesa.garg@intel.com,
	jani.nikula@intel.com
Subject: [PATCH v4] drm/i915/display: WA to Re-initialize dispcnlunitt1 xosc
 clock
Date: Mon,  8 Jul 2024 10:35:22 +0530
Message-ID: <20240708050522.2538474-1-mitulkumar.ajitkumar.golani@intel.com>
X-Mailer: git-send-email 2.45.2
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

The dispcnlunit1_cp_xosc_clk should be de-asserted in display off
and only asserted in display on. As part of this workaround, Display
driver shall execute set-reset sequence at the end of the initialize
sequence to ensure clk does not remain active in display OFF.

HSD: 15013987218

--v2:
- Rebase.
--v3:
- Correct HSD number in commit message.
--v4:
- Reformat commit message.
- Use intel_de_rmw instead of intel_de_write

Signed-off-by: Mitul Golani <mitulkumar.ajitkumar.golani@intel.com>
Reviewed-by: Nemesa Garg <nemesa.garg@intel.com>
---
 drivers/gpu/drm/i915/display/intel_display_power.c | 8 ++++++++
 1 file changed, 8 insertions(+)

diff --git a/drivers/gpu/drm/i915/display/intel_display_power.c b/drivers/gpu/drm/i915/display/intel_display_power.c
index e288a1b21d7e..8d009f488601 100644
--- a/drivers/gpu/drm/i915/display/intel_display_power.c
+++ b/drivers/gpu/drm/i915/display/intel_display_power.c
@@ -1704,6 +1704,14 @@ static void icl_display_core_init(struct drm_i915_private *dev_priv,
 	/* Wa_14011503030:xelpd */
 	if (DISPLAY_VER(dev_priv) == 13)
 		intel_de_write(dev_priv, XELPD_DISPLAY_ERR_FATAL_MASK, ~0);
+
+	/* Wa_15013987218 */
+	if (DISPLAY_VER(dev_priv) == 20) {
+		intel_de_rmw(dev_priv, SOUTH_DSPCLK_GATE_D,
+			     PCH_GMBUSUNIT_CLOCK_GATE_DISABLE);
+		intel_de_rmw(dev_priv, SOUTH_DSPCLK_GATE_D,
+			     PCH_GMBUSUNIT_CLOCK_GATE_DISABLE, 0);
+	}
 }
 
 static void icl_display_core_uninit(struct drm_i915_private *dev_priv)
-- 
2.45.2

