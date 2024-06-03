Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 750288D8331
	for <lists+intel-gfx@lfdr.de>; Mon,  3 Jun 2024 15:01:24 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 4D90E10E39D;
	Mon,  3 Jun 2024 13:01:19 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="O4gvkiF1";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.17])
 by gabe.freedesktop.org (Postfix) with ESMTPS id B0E1B10E35C
 for <intel-gfx@lists.freedesktop.org>; Mon,  3 Jun 2024 13:01:12 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1717419673; x=1748955673;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=lSJojc4aJSTLTEjW1EOJwQx3xfjCRsmi7I8nfsyoDtw=;
 b=O4gvkiF1MWBDwzzbSRg8pwRedKuSIf50zPANMmcaJ4qEyiCPCvvuW2tA
 hZErEKmFnkdcxAUGdD/zCcOzd8vLPKEwHFMQbgTRCx0Ai1IUxCf34GZfF
 tc0ds5w1RfjCX8RStIl7Sz76TQ/0XswPLJ/7PHvyg9BSfLMLJn/OfgSRk
 VCHQEVE8dgDpjz/66w7fZ6Rmjy5lM+8gA0JaMvC4wn8xOejPrMUE53HH0
 JnVLxU6O4QxglmJKZUMBWDxTwB0S5p02xD4OPZEHycmTw161xgaqpmHQH
 aLvavs8I6IF9zPU1DgcOMutgMtvra+p+ykZHrveyxz1JAglHfOuhxiXJH w==;
X-CSE-ConnectionGUID: 2hR5ctMXTkyBryzJhYalXQ==
X-CSE-MsgGUID: EtEredCpTlmpCORhxW46zw==
X-IronPort-AV: E=McAfee;i="6600,9927,11092"; a="13774473"
X-IronPort-AV: E=Sophos;i="6.08,211,1712646000"; d="scan'208";a="13774473"
Received: from fmviesa003.fm.intel.com ([10.60.135.143])
 by fmvoesa111.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 03 Jun 2024 06:01:09 -0700
X-CSE-ConnectionGUID: T3OUgMGfQUaScKXwfS4cVg==
X-CSE-MsgGUID: U3g0L6uyTSiBv9PjoCviAQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.08,211,1712646000"; d="scan'208";a="41291792"
Received: from jgulati-mobl.ger.corp.intel.com (HELO jhogande-mobl1.intel.com)
 ([10.251.212.183])
 by fmviesa003-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 03 Jun 2024 06:01:07 -0700
From: =?UTF-8?q?Jouni=20H=C3=B6gander?= <jouni.hogander@intel.com>
To: intel-gfx@lists.freedesktop.org
Cc: animesh.manna@intel.com, mika.kahola@intel.com,
 =?UTF-8?q?Jouni=20H=C3=B6gander?= <jouni.hogander@intel.com>
Subject: [PATCH v5 07/19] drm/i915/psr: Check panel ALPM capability for eDP
 Panel Replay
Date: Mon,  3 Jun 2024 16:00:31 +0300
Message-Id: <20240603130043.2615716-8-jouni.hogander@intel.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20240603130043.2615716-1-jouni.hogander@intel.com>
References: <20240603130043.2615716-1-jouni.hogander@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
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

Our HW doesn't support Panel Replay without AUX_LESS ALPM on eDP. Check
panel support for this and prevent eDP panel replay if it doesn't exits.

Bspec: 68920

v2: use intel_alpm_aux_less_wake_supported

Signed-off-by: Jouni Högander <jouni.hogander@intel.com>
---
 drivers/gpu/drm/i915/display/intel_psr.c | 7 +++++++
 1 file changed, 7 insertions(+)

diff --git a/drivers/gpu/drm/i915/display/intel_psr.c b/drivers/gpu/drm/i915/display/intel_psr.c
index fd861db96db8..a9d82ef37d27 100644
--- a/drivers/gpu/drm/i915/display/intel_psr.c
+++ b/drivers/gpu/drm/i915/display/intel_psr.c
@@ -561,6 +561,13 @@ static void _panel_replay_init_dpcd(struct intel_dp *intel_dp)
 {
 	struct drm_i915_private *i915 = dp_to_i915(intel_dp);
 
+	if (intel_dp_is_edp(intel_dp) &&
+	    (!intel_alpm_aux_less_wake_supported(intel_dp))) {
+		drm_dbg_kms(&i915->drm,
+			    "Panel doesn't support AUX-less ALPM, eDP Panel Replay not possible\n");
+		return;
+	}
+
 	intel_dp->psr.sink_panel_replay_support = true;
 
 	if (intel_dp->pr_dpcd & DP_PANEL_REPLAY_SU_SUPPORT)
-- 
2.34.1

