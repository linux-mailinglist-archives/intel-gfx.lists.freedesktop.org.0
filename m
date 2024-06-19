Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 3528390E82C
	for <lists+intel-gfx@lfdr.de>; Wed, 19 Jun 2024 12:17:04 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 8268B89C48;
	Wed, 19 Jun 2024 10:17:00 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="SEv9RLbl";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.11])
 by gabe.freedesktop.org (Postfix) with ESMTPS id E1D1F10E119
 for <intel-gfx@lists.freedesktop.org>; Wed, 19 Jun 2024 10:16:56 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1718792217; x=1750328217;
 h=from:to:subject:date:message-id:in-reply-to:references:
 mime-version:content-transfer-encoding;
 bh=Ljcogdjfci8NM4lvG924gCJFSRWZ7PvH41G+eonTXbI=;
 b=SEv9RLbllV8AwpgUJEzyh0VkYYHfxZypU5NgKJ2dJbiFIq06jbyOaSak
 BdHSC/3hl8K08V9KEpjGUb/47IGzvg5j6GRPAljlOFeX28JH1SJdyyxAz
 a6LOy2O7gfQT0fqwLB/QmngG1o416hfqdpc0c+Ul3tmgVhyeD4DaqDooX
 BduEOHCJzcg5ZyzuMxx/stw/+siYAu0VASB2dzqYu+73RuEC+05kTJJib
 c/wuSpodM8h1LgejaTB8cM/Ju5ykYprT/C14mEwU4oio1T2hpHzPmXUCq
 NSKGH+oejSbCbk/eqOPcRD9Q58JL4wBSLoJx/GZVHywIqQ6YiYiVb+N+M Q==;
X-CSE-ConnectionGUID: 72MKQCLaQ/OZRAoKq9vLtQ==
X-CSE-MsgGUID: 5lcwyukOSoWEiYrl9PIV5Q==
X-IronPort-AV: E=McAfee;i="6700,10204,11107"; a="26350562"
X-IronPort-AV: E=Sophos;i="6.08,250,1712646000"; d="scan'208";a="26350562"
Received: from orviesa010.jf.intel.com ([10.64.159.150])
 by fmvoesa105.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 19 Jun 2024 03:16:57 -0700
X-CSE-ConnectionGUID: lbDPjqroSZq8wwf1DmIJDA==
X-CSE-MsgGUID: nm/lK0RzQsGOPdygrFkonA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.08,250,1712646000"; d="scan'208";a="41781097"
Received: from mgolanimitul-x299-ud4-pro.iind.intel.com ([10.190.239.114])
 by orviesa010.jf.intel.com with ESMTP; 19 Jun 2024 03:16:56 -0700
From: Mitul Golani <mitulkumar.ajitkumar.golani@intel.com>
To: intel-gfx@lists.freedesktop.org
Subject: [PATCH v2 1/1] drm/i915/display: WA for Re-initialize dispcnlunitt1
 xosc clock
Date: Wed, 19 Jun 2024 15:47:11 +0530
Message-ID: <20240619101711.860988-2-mitulkumar.ajitkumar.golani@intel.com>
X-Mailer: git-send-email 2.45.2
In-Reply-To: <20240619101711.860988-1-mitulkumar.ajitkumar.golani@intel.com>
References: <20240619101711.860988-1-mitulkumar.ajitkumar.golani@intel.com>
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

Wa_14020225554

--v2:
- Update workaround number in commit message.

Signed-off-by: Mitul Golani <mitulkumar.ajitkumar.golani@intel.com>
---
 drivers/gpu/drm/i915/display/intel_display_power.c | 8 ++++++++
 1 file changed, 8 insertions(+)

diff --git a/drivers/gpu/drm/i915/display/intel_display_power.c b/drivers/gpu/drm/i915/display/intel_display_power.c
index e288a1b21d7e..0d8875fa5ef2 100644
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
2.45.2

