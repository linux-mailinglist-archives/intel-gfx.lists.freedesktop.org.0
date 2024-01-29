Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 6262684115C
	for <lists+intel-gfx@lfdr.de>; Mon, 29 Jan 2024 18:55:42 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 8D177112A66;
	Mon, 29 Jan 2024 17:55:40 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.12])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 4E8C5112A51
 for <intel-gfx@lists.freedesktop.org>; Mon, 29 Jan 2024 17:55:31 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1706550931; x=1738086931;
 h=from:to:subject:date:message-id:in-reply-to:references:
 mime-version:content-transfer-encoding;
 bh=n0++DhuNpJoy/zBYCTAI/EcSjxqDWc9WHs44kb0A8V4=;
 b=YvciegQZFztmUMQEnxgEIWyUwGw6jwaHvMkRvqjoAfbS7uJgB7Hn9e1L
 gn0axuPDXjuxs9pSvlpxCtaIYmBAXnw5cv0hU2aEWstf3LURB6tU0xabO
 X7ZMYLUok5VnVhmuLS0AzTh3oonhXbNlYM+MlxoAvTGFxZv61o+beU60X
 2pektjPLMFcGBRrt4zuBCqtQcMmP8OicOvTtl2eZT07sAjt/qTE8Wjqnd
 ODOgC5O7R89qYUHjAco91vTd3qvgpRUvduSOht/SoKRqvFttIEeExGDrJ
 Tr8/6CbVCfXEYg/3XHnmvUP8FSqGEdgvHIE+7iQP6e7e/SIUFkDk3DphJ Q==;
X-IronPort-AV: E=McAfee;i="6600,9927,10968"; a="10407789"
X-IronPort-AV: E=Sophos;i="6.05,227,1701158400"; d="scan'208";a="10407789"
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
 by orvoesa104.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 29 Jan 2024 09:55:20 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10968"; a="931157883"
X-IronPort-AV: E=Sophos;i="6.05,227,1701158400"; d="scan'208";a="931157883"
Received: from ideak-desk.fi.intel.com ([10.237.72.78])
 by fmsmga001-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 29 Jan 2024 09:55:19 -0800
From: Imre Deak <imre.deak@intel.com>
To: intel-gfx@lists.freedesktop.org
Subject: [PATCH 3/6] drm/i915/adlp: Add DP MST DPT/DPTP alignment WA
 (Wa_14014143976)
Date: Mon, 29 Jan 2024 19:55:30 +0200
Message-Id: <20240129175533.904590-4-imre.deak@intel.com>
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

Add a workaround to fix BS-BS jitter issues on MST links, aligning
DPT/DPTP MTPs.

Bspec: 50050, 55424

Signed-off-by: Imre Deak <imre.deak@intel.com>
---
 drivers/gpu/drm/i915/display/intel_dp_mst.c | 3 +++
 drivers/gpu/drm/i915/i915_reg.h             | 1 +
 2 files changed, 4 insertions(+)

diff --git a/drivers/gpu/drm/i915/display/intel_dp_mst.c b/drivers/gpu/drm/i915/display/intel_dp_mst.c
index 23f3f7fab9d0b..26c838ac9e411 100644
--- a/drivers/gpu/drm/i915/display/intel_dp_mst.c
+++ b/drivers/gpu/drm/i915/display/intel_dp_mst.c
@@ -1128,6 +1128,9 @@ static void enable_bs_jitter_was(const struct intel_crtc_state *crtc_state)
 			set |= DP_MST_SHORT_HBLANK_WA(crtc_state->cpu_transcoder);
 		else if (crtc_state->fec_enable)
 			clear |= DP_MST_SHORT_HBLANK_WA(crtc_state->cpu_transcoder);
+
+		if (crtc_state->fec_enable || intel_dp_is_uhbr(crtc_state))
+			set |= DP_MST_DPT_DPTP_ALIGN_WA(crtc_state->cpu_transcoder);
 	}
 
 	if (!clear && !set)
diff --git a/drivers/gpu/drm/i915/i915_reg.h b/drivers/gpu/drm/i915/i915_reg.h
index 091edc1071e0e..eecbdecb8ed40 100644
--- a/drivers/gpu/drm/i915/i915_reg.h
+++ b/drivers/gpu/drm/i915/i915_reg.h
@@ -4556,6 +4556,7 @@
 #define   GLK_CL0_PWR_DOWN		REG_BIT(10)
 
 #define CHICKEN_MISC_3		_MMIO(0x42088)
+#define   DP_MST_DPT_DPTP_ALIGN_WA(trans)	REG_BIT(9 + (trans) - TRANSCODER_A)
 #define   DP_MST_SHORT_HBLANK_WA(trans)		REG_BIT(5 + (trans) - TRANSCODER_A)
 #define   DP_MST_FEC_BS_JITTER_WA(trans)	REG_BIT(0 + (trans) - TRANSCODER_A)
 
-- 
2.39.2

