Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id B285B929E51
	for <lists+intel-gfx@lfdr.de>; Mon,  8 Jul 2024 10:32:21 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 4488D10E2CA;
	Mon,  8 Jul 2024 08:32:20 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="ndJSNXzj";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.15])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 47E7910E2CA
 for <intel-gfx@lists.freedesktop.org>; Mon,  8 Jul 2024 08:32:19 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1720427539; x=1751963539;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=mQufjrgC8v3hsWJtMFfJhbv70iNXfsCez/r4sNRYPXY=;
 b=ndJSNXzjZVVwkXonA/GGCEMWYQA/PaXi0CQtPb/vm6Sn8+pjwmtsUsk7
 Iol3LrNeL2HOwBK1GGwNTsKis90tDy/4wDDMNrS5CgpU55EC5bvt1dCPt
 D6mK7dqfvVd9dBkVZShyvxi3RgypoP3D/egCWnkWNuTEXC+kLOpHonHDF
 /oQDUfCpIqZyJMwzqlkbhBexlubFcXg1QHyS7F7sLRW4e5LlvzEse5SAl
 9pZKYbs+26ote2ZTBTsi7WmYGXNG/EPolpubanSEgCZGutcUkuGRU2azE
 rTih2wzJ0RDSDXC00wQzsxlqREYGJV7nRnqa6ZTcALeQbKUWQIlIL48qx g==;
X-CSE-ConnectionGUID: esK5jsKaSqyh2aCdaNV0zA==
X-CSE-MsgGUID: /YwqG/ZyQ2qoIf+mOM9H8g==
X-IronPort-AV: E=McAfee;i="6700,10204,11126"; a="21384747"
X-IronPort-AV: E=Sophos;i="6.09,191,1716274800"; d="scan'208";a="21384747"
Received: from orviesa005.jf.intel.com ([10.64.159.145])
 by orvoesa107.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 08 Jul 2024 01:32:19 -0700
X-CSE-ConnectionGUID: df5TWN6USFSOwCVnb6NnzA==
X-CSE-MsgGUID: S/vAPZKYSpCnaU3Iat3Vzw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.09,191,1716274800"; d="scan'208";a="52378756"
Received: from mgolanimitul-x299-ud4-pro.iind.intel.com ([10.190.239.114])
 by orviesa005.jf.intel.com with ESMTP; 08 Jul 2024 01:32:18 -0700
From: Mitul Golani <mitulkumar.ajitkumar.golani@intel.com>
To: 
Cc: intel-gfx@lists.freedesktop.org, suraj.kandpal@intel.com,
 nemesa.garg@intel.com, jani.nikula@intel.com
Subject: [PATCH v5] drm/i915/display: WA for Re-initialize dispcnlunitt1 xosc
 clock
Date: Mon,  8 Jul 2024 14:02:46 +0530
Message-ID: <20240708083247.2611258-1-mitulkumar.ajitkumar.golani@intel.com>
X-Mailer: git-send-email 2.45.2
In-Reply-To: <20240708050522.2538474-1-mitulkumar.ajitkumar.golani@intel.com>
References: <20240708050522.2538474-1-mitulkumar.ajitkumar.golani@intel.com>
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
--v5:
- Build Fixes.

Signed-off-by: Mitul Golani <mitulkumar.ajitkumar.golani@intel.com>
Reviewed-by: Nemesa Garg <nemesa.garg@intel.com>
---
 drivers/gpu/drm/i915/display/intel_display_power.c | 8 ++++++++
 1 file changed, 8 insertions(+)

diff --git a/drivers/gpu/drm/i915/display/intel_display_power.c b/drivers/gpu/drm/i915/display/intel_display_power.c
index e288a1b21d7e..0af1e34ef2a7 100644
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
+			     0, PCH_GMBUSUNIT_CLOCK_GATE_DISABLE);
+		intel_de_rmw(dev_priv, SOUTH_DSPCLK_GATE_D,
+			     PCH_GMBUSUNIT_CLOCK_GATE_DISABLE, 0);
+	}
 }
 
 static void icl_display_core_uninit(struct drm_i915_private *dev_priv)
-- 
2.45.2

