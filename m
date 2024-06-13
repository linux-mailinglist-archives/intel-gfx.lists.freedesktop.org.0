Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id A8D649068E1
	for <lists+intel-gfx@lfdr.de>; Thu, 13 Jun 2024 11:33:38 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id F392D10E9F1;
	Thu, 13 Jun 2024 09:33:36 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="gr+oztsz";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.18])
 by gabe.freedesktop.org (Postfix) with ESMTPS id D5E2A10E9E9
 for <intel-gfx@lists.freedesktop.org>; Thu, 13 Jun 2024 09:33:24 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1718271205; x=1749807205;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=B11d/dFCjcGI6igxBCkfdHr4OVEz+lU6cT9BLthFEwg=;
 b=gr+oztszTS36nN13r06tOErql9Git85NtA444F4mWl/1YVq4dRFxpPiq
 9IkJ429fwNGRJcOaUiBrAcsJiPHvCUy7boZYXWuIVM/3u2ZLS9BCgQQ5r
 Z8Fq9cJJZpf2EYNkXXz8Weq8HSY4fKRX7HrwRaOY7dlScTJAN4gj/t51e
 4cWwBotP2tdTa8mnq3nB7IArEbKeXMnTYEi5KYVLwJYU9v3TJL2i1VV49
 VIp2XF67bfbKSdCvwR2wbK3YLZZqNqhinsxAS89CHV80E3rLoHfgCGePw
 y+E3ChkVPVClMV/X9Ymos0OFF3hmxSbwI0gdZ5p0mAn4DamiOMuGLRr6h Q==;
X-CSE-ConnectionGUID: o/3wfGN3QaKtqtBZxnSM4Q==
X-CSE-MsgGUID: DUmk4DbjQLuqgRKk0d51/A==
X-IronPort-AV: E=McAfee;i="6700,10204,11101"; a="14802527"
X-IronPort-AV: E=Sophos;i="6.08,234,1712646000"; d="scan'208";a="14802527"
Received: from fmviesa005.fm.intel.com ([10.60.135.145])
 by fmvoesa112.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 13 Jun 2024 02:33:25 -0700
X-CSE-ConnectionGUID: X0lvMGCrQ4WItMwARGWToA==
X-CSE-MsgGUID: 6c88Ak36Td2CCpQ6YMXbQA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.08,234,1712646000"; d="scan'208";a="44523492"
Received: from pgcooper-mobl3.ger.corp.intel.com (HELO jhogande-mobl1..)
 ([10.245.244.31])
 by fmviesa005-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 13 Jun 2024 02:33:23 -0700
From: =?UTF-8?q?Jouni=20H=C3=B6gander?= <jouni.hogander@intel.com>
To: intel-gfx@lists.freedesktop.org
Cc: animesh.manna@intel.com, mika.kahola@intel.com,
 =?UTF-8?q?Jouni=20H=C3=B6gander?= <jouni.hogander@intel.com>
Subject: [PATCH v8 20/20] drm/i915/psr: Modify dg2_activate_panel_replay to
 support eDP
Date: Thu, 13 Jun 2024 12:32:39 +0300
Message-Id: <20240613093239.1293629-21-jouni.hogander@intel.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20240613093239.1293629-1-jouni.hogander@intel.com>
References: <20240613093239.1293629-1-jouni.hogander@intel.com>
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

There are couple of bits in PSR2_CTL which needs to be written in case of
eDP Panel Replay

Bspec: 68920

v2: use boolean instead of assuming eDP Panel Replay mean Early Transport

Signed-off-by: Jouni Högander <jouni.hogander@intel.com>
---
 drivers/gpu/drm/i915/display/intel_psr.c | 13 +++++++++++++
 1 file changed, 13 insertions(+)

diff --git a/drivers/gpu/drm/i915/display/intel_psr.c b/drivers/gpu/drm/i915/display/intel_psr.c
index 050c30e4005e..369a9dd3fe07 100644
--- a/drivers/gpu/drm/i915/display/intel_psr.c
+++ b/drivers/gpu/drm/i915/display/intel_psr.c
@@ -948,6 +948,19 @@ static u8 frames_before_su_entry(struct intel_dp *intel_dp)
 static void dg2_activate_panel_replay(struct intel_dp *intel_dp)
 {
 	struct drm_i915_private *dev_priv = dp_to_i915(intel_dp);
+	struct intel_psr *psr = &intel_dp->psr;
+	enum transcoder cpu_transcoder = intel_dp->psr.transcoder;
+
+	if (intel_dp_is_edp(intel_dp) && psr->sel_update_enabled) {
+		u32 val = psr->su_region_et_enabled ?
+			LNL_EDP_PSR2_SU_REGION_ET_ENABLE : 0;
+
+		if (intel_dp->psr.req_psr2_sdp_prior_scanline)
+			val |= EDP_PSR2_SU_SDP_SCANLINE;
+
+		intel_de_write(dev_priv, EDP_PSR2_CTL(dev_priv, cpu_transcoder),
+			       val);
+	}
 
 	intel_de_rmw(dev_priv,
 		     PSR2_MAN_TRK_CTL(dev_priv, intel_dp->psr.transcoder),
-- 
2.34.1

