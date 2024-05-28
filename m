Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id C0C8D8D162B
	for <lists+intel-gfx@lfdr.de>; Tue, 28 May 2024 10:24:04 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 082A110E1B0;
	Tue, 28 May 2024 08:24:03 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="V6bFiq3E";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.9])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 4E5DB10E1B0
 for <intel-gfx@lists.freedesktop.org>; Tue, 28 May 2024 08:24:01 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1716884642; x=1748420642;
 h=from:to:subject:date:message-id:in-reply-to:references:
 mime-version:content-transfer-encoding;
 bh=Je0uZrx088h8BTLbeiX4MlVLRs6ywA4TH0BP1CiTsuI=;
 b=V6bFiq3EPNjNM5V56cfK4Jwl99ZjbIOTVskKypk6TR1sveLgJ1u4dnUO
 1QV8ikHiAmZChpkElS85YmKa8EfrBiWxloKI+eXPsAtYyA7EdDxyzQGmK
 caZfyXWmd3pRsS8CFVk2VQwZySbHRukyHoM0qzmrvR4EKnqMsMaWFrOT6
 Ga02kxlmVEiYa120zcoOHLAiJhYVWcEwipf+9hsWf6G4LT/VUQyipZEk9
 g6cyXaAtef1IrV2DmYaegxQVP9PQ+7A4w5ZOqt+Ek/ui9eEfkfa8hVEwa
 IbF6U9ZEEj6tYtIfbb7Cuu7QxLj83XJvYIQiXCU25WadOtG3Egz7Bvhyz A==;
X-CSE-ConnectionGUID: L1dgPRziSKeUtZF3BRG4tA==
X-CSE-MsgGUID: TYYwKcfzTwaxPrThavGLfA==
X-IronPort-AV: E=McAfee;i="6600,9927,11085"; a="35729777"
X-IronPort-AV: E=Sophos;i="6.08,194,1712646000"; d="scan'208";a="35729777"
Received: from fmviesa008.fm.intel.com ([10.60.135.148])
 by orvoesa101.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 28 May 2024 01:24:00 -0700
X-CSE-ConnectionGUID: WvR7F/3JQ3yq79gYQDZ+Mw==
X-CSE-MsgGUID: OdrOkgn7QMa8nfRBTHcgjA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.08,194,1712646000"; d="scan'208";a="34978389"
Received: from mgolanimitul-x299-ud4-pro.iind.intel.com ([10.190.239.114])
 by fmviesa008.fm.intel.com with ESMTP; 28 May 2024 01:23:59 -0700
From: Mitul Golani <mitulkumar.ajitkumar.golani@intel.com>
To: intel-gfx@lists.freedesktop.org
Subject: [PATCH v1 1/1] drm/i915/display: WA for Re-initialize dispcnlunitt1
 xosc clock
Date: Tue, 28 May 2024 13:48:21 +0530
Message-Id: <20240528081821.2809508-2-mitulkumar.ajitkumar.golani@intel.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20240528081821.2809508-1-mitulkumar.ajitkumar.golani@intel.com>
References: <20240528081821.2809508-1-mitulkumar.ajitkumar.golani@intel.com>
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
index a860d88a65da..af2960c7e5b8 100644
--- a/drivers/gpu/drm/i915/display/intel_display_power.c
+++ b/drivers/gpu/drm/i915/display/intel_display_power.c
@@ -1704,6 +1704,14 @@ static void icl_display_core_init(struct drm_i915_private *dev_priv,
 	/* Wa_14011503030:xelpd */
 	if (DISPLAY_VER(dev_priv) == 13)
 		intel_de_write(dev_priv, XELPD_DISPLAY_ERR_FATAL_MASK, ~0);
+
+	/* Wa_14020225554 */
+	if (DISPLAY_VER(dev_priv) == 20) {
+		intel_de_write(dev_priv, SOUTH_DSPCLK_GATE_D,
+			       PCH_GMBUSUNIT_CLOCK_GATE_DISABLE);
+		intel_de_rmw(dev_priv, SOUTH_DSPCLK_GATE_D,
+			     PCH_GMBUSUNIT_CLOCK_GATE_DISABLE, 0);
+	}
 }
 
 static void icl_display_core_uninit(struct drm_i915_private *dev_priv)
-- 
2.25.1

