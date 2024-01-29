Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 0E1C2841160
	for <lists+intel-gfx@lfdr.de>; Mon, 29 Jan 2024 18:56:08 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id E5EE0112A5B;
	Mon, 29 Jan 2024 17:55:31 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.12])
 by gabe.freedesktop.org (Postfix) with ESMTPS id EBB09112A51
 for <intel-gfx@lists.freedesktop.org>; Mon, 29 Jan 2024 17:55:30 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1706550931; x=1738086931;
 h=from:to:subject:date:message-id:in-reply-to:references:
 mime-version:content-transfer-encoding;
 bh=YPi19jVfe7jo8mwLLgxMxlpxZfcWUXm4qU1Ce2LZKJ8=;
 b=Vi9NHDA8yWZ3Baov67nydCZ+GH4m/6RkzmAeMwGnGL0eWKLYJufxD7KX
 jUNR5HL3Z5Lq8EjSWK4t2a3nir4QUENBbG8wx1Be5SSEGaJYpZ6hLBDfI
 KljnJLAHC3Haoge5CJF2r1SBtVe49t3kL4LZs1PaIlzhF5Ysw3IYocqWm
 nLznfYINZnDQf5bmdziOzSw6KRY6pxzFZDWnNW/nwSRmEG0cctLkF8NTC
 GnghEZML3y4OSmFT1aLay6gRvUKErfVUgW/ww1J7Qc00hsdXbjZzG4RKG
 4lNxOaMCzAht3DCDoWG2qu5I+hHfFmy79z5h+dYMmZVzkoSNaBJuKA46f A==;
X-IronPort-AV: E=McAfee;i="6600,9927,10968"; a="10407778"
X-IronPort-AV: E=Sophos;i="6.05,227,1701158400"; d="scan'208";a="10407778"
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
 by orvoesa104.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 29 Jan 2024 09:55:19 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10968"; a="931157881"
X-IronPort-AV: E=Sophos;i="6.05,227,1701158400"; d="scan'208";a="931157881"
Received: from ideak-desk.fi.intel.com ([10.237.72.78])
 by fmsmga001-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 29 Jan 2024 09:55:18 -0800
From: Imre Deak <imre.deak@intel.com>
To: intel-gfx@lists.freedesktop.org
Subject: [PATCH 2/6] drm/i915/adlp: Add MST short HBlank WA (Wa_14014143976)
Date: Mon, 29 Jan 2024 19:55:29 +0200
Message-Id: <20240129175533.904590-3-imre.deak@intel.com>
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

Add a workaround to fix BS jitter issues on MST links if the HBLANK
period is less than 1 MTP. The WA applies only to UHBR rates while on
non-UHBR the specification requires disabling it explicitly - presumedly
because the register's reset value has the WA enabled.

Bspec: 50050, 55424

Signed-off-by: Imre Deak <imre.deak@intel.com>
---
 drivers/gpu/drm/i915/display/intel_dp_mst.c | 8 ++++++++
 drivers/gpu/drm/i915/i915_reg.h             | 1 +
 2 files changed, 9 insertions(+)

diff --git a/drivers/gpu/drm/i915/display/intel_dp_mst.c b/drivers/gpu/drm/i915/display/intel_dp_mst.c
index 22c1759f912db..23f3f7fab9d0b 100644
--- a/drivers/gpu/drm/i915/display/intel_dp_mst.c
+++ b/drivers/gpu/drm/i915/display/intel_dp_mst.c
@@ -1122,6 +1122,14 @@ static void enable_bs_jitter_was(const struct intel_crtc_state *crtc_state)
 	if (crtc_state->fec_enable || intel_dp_is_uhbr(crtc_state))
 		set |= DP_MST_FEC_BS_JITTER_WA(crtc_state->cpu_transcoder);
 
+	/* Wa_14014143976:adlp */
+	if (IS_DISPLAY_STEP(i915, STEP_E0, STEP_FOREVER)) {
+		if (intel_dp_is_uhbr(crtc_state))
+			set |= DP_MST_SHORT_HBLANK_WA(crtc_state->cpu_transcoder);
+		else if (crtc_state->fec_enable)
+			clear |= DP_MST_SHORT_HBLANK_WA(crtc_state->cpu_transcoder);
+	}
+
 	if (!clear && !set)
 		return;
 
diff --git a/drivers/gpu/drm/i915/i915_reg.h b/drivers/gpu/drm/i915/i915_reg.h
index 67b7d02ea37bf..091edc1071e0e 100644
--- a/drivers/gpu/drm/i915/i915_reg.h
+++ b/drivers/gpu/drm/i915/i915_reg.h
@@ -4556,6 +4556,7 @@
 #define   GLK_CL0_PWR_DOWN		REG_BIT(10)
 
 #define CHICKEN_MISC_3		_MMIO(0x42088)
+#define   DP_MST_SHORT_HBLANK_WA(trans)		REG_BIT(5 + (trans) - TRANSCODER_A)
 #define   DP_MST_FEC_BS_JITTER_WA(trans)	REG_BIT(0 + (trans) - TRANSCODER_A)
 
 #define CHICKEN_MISC_4		_MMIO(0x4208c)
-- 
2.39.2

