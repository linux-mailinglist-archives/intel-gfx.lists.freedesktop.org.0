Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id A57788FB75A
	for <lists+intel-gfx@lfdr.de>; Tue,  4 Jun 2024 17:31:44 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id E29BB10E524;
	Tue,  4 Jun 2024 15:31:42 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="KZ6lE3Io";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.9])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 37A4610E523
 for <intel-gfx@lists.freedesktop.org>; Tue,  4 Jun 2024 15:31:39 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1717515099; x=1749051099;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=6/iOc6nWStRKllaCVRoPypnGujfjg1bsYUkANixj3TU=;
 b=KZ6lE3Iom43J+CxhH7SrO3I8oo1KLDG2pzrRVyQvYnWbtRarSFvmtBMR
 mUsq99/zbR8zBD3Df6xRcHyUlC3N8fdsvPyrzH8MlyzTynUwVgwfyQ/up
 iwaH4jeuabCUKTyE8jYJmdOEJZQIqM8iZgpvjlrhKWPRRn3YQ0hm0whtG
 GRl4Z58PnMQnOdoAOqLeQdKBim7NFhqqrTQXxQAOmhhmKr+GBRnIjXTjU
 6ctcCHU5DO+PNXZcn2bVlE53/M775xtvtM7eB1+6UgpBlADXnqPlG9rw7
 WkOgbY/KVUncx34per7nQE1vVJdRmuXO+5hXWXRtQ3oaIfOt0BuBKPblV A==;
X-CSE-ConnectionGUID: 7OG9AWWjTQ26o71C6y5JYQ==
X-CSE-MsgGUID: zaWBzb/9Ty2hipKXg7lyiA==
X-IronPort-AV: E=McAfee;i="6600,9927,11093"; a="24733691"
X-IronPort-AV: E=Sophos;i="6.08,214,1712646000"; d="scan'208";a="24733691"
Received: from fmviesa004.fm.intel.com ([10.60.135.144])
 by fmvoesa103.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 04 Jun 2024 08:31:39 -0700
X-CSE-ConnectionGUID: cGKvOmgwQhW38NIM/H6oLQ==
X-CSE-MsgGUID: ORWjTubHSUyhTK3rPlB1QQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.08,214,1712646000"; d="scan'208";a="41828257"
Received: from mwiniars-desk2.ger.corp.intel.com (HELO localhost)
 ([10.245.246.123])
 by fmviesa004-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 04 Jun 2024 08:31:38 -0700
From: Jani Nikula <jani.nikula@intel.com>
To: intel-gfx@lists.freedesktop.org
Cc: jani.nikula@intel.com
Subject: [PATCH 65/65] drm/i915: pass dev_priv explicitly to
 MTL_CLKGATE_DIS_TRANS
Date: Tue,  4 Jun 2024 18:26:23 +0300
Message-Id: <b330d86c5e3012513daa36dceffd2db45f0d7850.1717514638.git.jani.nikula@intel.com>
X-Mailer: git-send-email 2.39.2
In-Reply-To: <cover.1717514638.git.jani.nikula@intel.com>
References: <cover.1717514638.git.jani.nikula@intel.com>
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

Avoid the implicit dev_priv local variable use, and pass dev_priv
explicitly to the MTL_CLKGATE_DIS_TRANS register macro.

Signed-off-by: Jani Nikula <jani.nikula@intel.com>
---
 drivers/gpu/drm/i915/display/intel_psr.c | 5 +++--
 drivers/gpu/drm/i915/i915_reg.h          | 2 +-
 2 files changed, 4 insertions(+), 3 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_psr.c b/drivers/gpu/drm/i915/display/intel_psr.c
index 4a4124a92a0d..21f6a4fa86a4 100644
--- a/drivers/gpu/drm/i915/display/intel_psr.c
+++ b/drivers/gpu/drm/i915/display/intel_psr.c
@@ -1716,7 +1716,8 @@ static void intel_psr_enable_source(struct intel_dp *intel_dp,
 		if (!intel_dp->psr.panel_replay_enabled &&
 		    IS_DISPLAY_IP_STEP(dev_priv, IP_VER(14, 0), STEP_A0, STEP_B0))
 			intel_de_rmw(dev_priv,
-				     MTL_CLKGATE_DIS_TRANS(cpu_transcoder), 0,
+				     MTL_CLKGATE_DIS_TRANS(dev_priv, cpu_transcoder),
+				     0,
 				     MTL_CLKGATE_DIS_TRANS_DMASC_GATING_DIS);
 		else if (IS_ALDERLAKE_P(dev_priv))
 			intel_de_rmw(dev_priv, CLKGATE_DIS_MISC, 0,
@@ -1897,7 +1898,7 @@ static void intel_psr_disable_locked(struct intel_dp *intel_dp)
 		if (!intel_dp->psr.panel_replay_enabled &&
 		    IS_DISPLAY_IP_STEP(dev_priv, IP_VER(14, 0), STEP_A0, STEP_B0))
 			intel_de_rmw(dev_priv,
-				     MTL_CLKGATE_DIS_TRANS(cpu_transcoder),
+				     MTL_CLKGATE_DIS_TRANS(dev_priv, cpu_transcoder),
 				     MTL_CLKGATE_DIS_TRANS_DMASC_GATING_DIS, 0);
 		else if (IS_ALDERLAKE_P(dev_priv))
 			intel_de_rmw(dev_priv, CLKGATE_DIS_MISC,
diff --git a/drivers/gpu/drm/i915/i915_reg.h b/drivers/gpu/drm/i915/i915_reg.h
index 8a1414ae72cb..7049a5ccefd9 100644
--- a/drivers/gpu/drm/i915/i915_reg.h
+++ b/drivers/gpu/drm/i915/i915_reg.h
@@ -4718,7 +4718,7 @@ enum skl_power_gate {
 
 #define _MTL_CLKGATE_DIS_TRANS_A			0x604E8
 #define _MTL_CLKGATE_DIS_TRANS_B			0x614E8
-#define MTL_CLKGATE_DIS_TRANS(trans)			_MMIO_TRANS2(dev_priv, trans, _MTL_CLKGATE_DIS_TRANS_A)
+#define MTL_CLKGATE_DIS_TRANS(dev_priv, trans)			_MMIO_TRANS2(dev_priv, trans, _MTL_CLKGATE_DIS_TRANS_A)
 #define  MTL_CLKGATE_DIS_TRANS_DMASC_GATING_DIS		REG_BIT(7)
 
 #define MTL_MEM_SS_INFO_GLOBAL			_MMIO(0x45700)
-- 
2.39.2

