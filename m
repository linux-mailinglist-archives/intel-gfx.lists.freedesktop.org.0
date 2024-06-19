Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 2F18A90E86E
	for <lists+intel-gfx@lfdr.de>; Wed, 19 Jun 2024 12:37:50 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 8991410E7BF;
	Wed, 19 Jun 2024 10:37:48 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="EHH2/QKg";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.21])
 by gabe.freedesktop.org (Postfix) with ESMTPS id B26CD10E7BF
 for <intel-gfx@lists.freedesktop.org>; Wed, 19 Jun 2024 10:37:47 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1718793468; x=1750329468;
 h=from:to:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=HVQaP/CaTAM6Ex0q04rgcqwn5tiDCj9EpVQMdV+ppwY=;
 b=EHH2/QKgaFUKeNQ63AVV2PS0gd7y3O6XjlTW64iMG4ZpiD7zvs54V9YG
 9Xud1A6vw7gkiDBW81lxN65NbxT1rgMsVvUfYxCEqEKNW+0vEMbfB00ww
 UjwTibExIsLY6XcL9cPYrgo/LkKxHwkM2aCKZgzVGPuNp+Rd2djHRQZPk
 z6azTTrFasbm2lLAJ76AcXwGCAUgBtmFTAlA7chxK79eK5+Mb89tOizgV
 1i5aeVMQhUVtXy0R52EC+Fffp16g4+9JPX1I8TOktuVOriu7qq8FeRoe1
 oFljHBNMYhkc6k/p5LntXbkWiGLuxEImY0KoL49U5QdbAHp10bFNXXt0t A==;
X-CSE-ConnectionGUID: w/ly+ylfRwenk6t/f/QKfA==
X-CSE-MsgGUID: CKtyrqXvTB2w4hB2cmHMCw==
X-IronPort-AV: E=McAfee;i="6700,10204,11107"; a="15691558"
X-IronPort-AV: E=Sophos;i="6.08,250,1712646000"; d="scan'208";a="15691558"
Received: from fmviesa008.fm.intel.com ([10.60.135.148])
 by orvoesa113.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 19 Jun 2024 03:37:47 -0700
X-CSE-ConnectionGUID: FJj4fUBqTQGiLOt+r7YETg==
X-CSE-MsgGUID: UEqPLGWRRciznga9vMgFeQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.08,250,1712646000"; d="scan'208";a="41832675"
Received: from mgolanimitul-x299-ud4-pro.iind.intel.com ([10.190.239.114])
 by fmviesa008.fm.intel.com with ESMTP; 19 Jun 2024 03:37:46 -0700
From: Mitul Golani <mitulkumar.ajitkumar.golani@intel.com>
To: intel-gfx@lists.freedesktop.org
Subject: [PATCH v3] drm/i915/display: WA for Re-initialize dispcnlunitt1 xosc
 clock
Date: Wed, 19 Jun 2024 16:08:03 +0530
Message-ID: <20240619103803.865289-1-mitulkumar.ajitkumar.golani@intel.com>
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
and only asserted in display on. But during observation it found
clk remains active in display OFF. As workaround, Display driver
shall execute set-reset sequence at the end of the Initialize
Sequence.

Wa_15013987218

Signed-off-by: Mitul Golani <mitulkumar.ajitkumar.golani@intel.com>
---
 drivers/gpu/drm/i915/display/intel_display_power.c | 8 ++++++++
 1 file changed, 8 insertions(+)

diff --git a/drivers/gpu/drm/i915/display/intel_display_power.c b/drivers/gpu/drm/i915/display/intel_display_power.c
index e288a1b21d7e..aef54c1a2ba9 100644
--- a/drivers/gpu/drm/i915/display/intel_display_power.c
+++ b/drivers/gpu/drm/i915/display/intel_display_power.c
@@ -1704,6 +1704,14 @@ static void icl_display_core_init(struct drm_i915_private *dev_priv,
 	/* Wa_14011503030:xelpd */
 	if (DISPLAY_VER(dev_priv) == 13)
 		intel_de_write(dev_priv, XELPD_DISPLAY_ERR_FATAL_MASK, ~0);
+
+	/* Wa_15013987218 */
+	if (DISPLAY_VER(dev_priv) == 20) {
+		intel_de_write(dev_priv, SOUTH_DSPCLK_GATE_D,
+			       PCH_GMBUSUNIT_CLOCK_GATE_DISABLE);
+		intel_de_rmw(dev_priv, SOUTH_DSPCLK_GATE_D,
+			     PCH_GMBUSUNIT_CLOCK_GATE_DISABLE, 0);
+	}
 }
 
 static void icl_display_core_uninit(struct drm_i915_private *dev_priv)
-- 
2.45.2

