Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 3E71F84115B
	for <lists+intel-gfx@lfdr.de>; Mon, 29 Jan 2024 18:55:41 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 048A1112A52;
	Mon, 29 Jan 2024 17:55:37 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.12])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 5C0B4112A62
 for <intel-gfx@lists.freedesktop.org>; Mon, 29 Jan 2024 17:55:32 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1706550932; x=1738086932;
 h=from:to:subject:date:message-id:in-reply-to:references:
 mime-version:content-transfer-encoding;
 bh=P/CDwbETja9AvT67wFsZ5rTxa3bYhHCuCTgU4WjZUPE=;
 b=nRqkS3qevCUuTGvCk2WAE+P5sbeH4IymUZVzdK6mhk0NQ94Og4DZAbWa
 rfrOGASIkxOpvHg13LegoI0icF4Unz+3Ryk6mFS39LFFCqAtcQ2ngSsYd
 NN21QAsLKKcM6FNCbOA+UVwJ24QxqNyXuLCqQlgWKNln192WQfDGP/+ym
 HY3JtELoD0oD3aUJdtsshKkXMOCBHYjmNwz1iBSo9xCUQSN62RUX9NMDr
 Sitq+BwD3kXnxihYaTu31JqaFBJbITHyPl6FWnBuqT/IGjoiU2wNp5U1V
 C4eDKNDYt4G8S70uWRpbYSRlqdcVE2MLGs1QjrG8LhhogV2bd2/8CT42J g==;
X-IronPort-AV: E=McAfee;i="6600,9927,10968"; a="10407811"
X-IronPort-AV: E=Sophos;i="6.05,227,1701158400"; d="scan'208";a="10407811"
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
 by orvoesa104.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 29 Jan 2024 09:55:23 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10968"; a="931157894"
X-IronPort-AV: E=Sophos;i="6.05,227,1701158400"; d="scan'208";a="931157894"
Received: from ideak-desk.fi.intel.com ([10.237.72.78])
 by fmsmga001-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 29 Jan 2024 09:55:22 -0800
From: Imre Deak <imre.deak@intel.com>
To: intel-gfx@lists.freedesktop.org
Subject: [PATCH 6/6] drm/i915/mtl: Add DP FEC BS jitter WA
Date: Mon, 29 Jan 2024 19:55:33 +0200
Message-Id: <20240129175533.904590-7-imre.deak@intel.com>
X-Mailer: git-send-email 2.39.2
In-Reply-To: <20240129175533.904590-1-imre.deak@intel.com>
References: <20240129175533.904590-1-imre.deak@intel.com>
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

Add a workaround to fix BS (blank start) to BS jitter fixes on non-UHBR
MST/FEC and UHBR links. Bspec doesn't provide an actual WA ID for this.

Bspec: 65448, 50054

Signed-off-by: Imre Deak <imre.deak@intel.com>
---
 drivers/gpu/drm/i915/display/intel_display.c | 3 +++
 drivers/gpu/drm/i915/i915_reg.h              | 1 +
 2 files changed, 4 insertions(+)

diff --git a/drivers/gpu/drm/i915/display/intel_display.c b/drivers/gpu/drm/i915/display/intel_display.c
index e0b75aa18ae33..72a852cccd3f3 100644
--- a/drivers/gpu/drm/i915/display/intel_display.c
+++ b/drivers/gpu/drm/i915/display/intel_display.c
@@ -432,6 +432,9 @@ void intel_enable_transcoder(const struct intel_crtc_state *new_crtc_state)
 		u32 clear = DP_DSC_INSERT_SF_AT_EOL_WA;
 		u32 set = 0;
 
+		if (DISPLAY_VER(dev_priv) == 14)
+			set |= DP_FEC_BS_JITTER_WA;
+
 		intel_de_rmw(dev_priv,
 			     hsw_chicken_trans_reg(dev_priv, cpu_transcoder),
 			     clear, set);
diff --git a/drivers/gpu/drm/i915/i915_reg.h b/drivers/gpu/drm/i915/i915_reg.h
index 9873daa16c6a1..d86e904ffe893 100644
--- a/drivers/gpu/drm/i915/i915_reg.h
+++ b/drivers/gpu/drm/i915/i915_reg.h
@@ -4619,6 +4619,7 @@
 #define   DDIE_TRAINING_OVERRIDE_ENABLE	REG_BIT(17) /* CHICKEN_TRANS_A only */
 #define   DDIE_TRAINING_OVERRIDE_VALUE	REG_BIT(16) /* CHICKEN_TRANS_A only */
 #define   PSR2_ADD_VERTICAL_LINE_COUNT	REG_BIT(15)
+#define   DP_FEC_BS_JITTER_WA		REG_BIT(15)
 #define   PSR2_VSC_ENABLE_PROG_HEADER	REG_BIT(12)
 #define   DP_DSC_INSERT_SF_AT_EOL_WA	REG_BIT(4)
 
-- 
2.39.2

