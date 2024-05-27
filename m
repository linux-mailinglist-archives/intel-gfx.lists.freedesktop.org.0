Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 3085D8CF9F6
	for <lists+intel-gfx@lfdr.de>; Mon, 27 May 2024 09:23:38 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id C64B310F8FE;
	Mon, 27 May 2024 07:23:35 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="SU40JnQD";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.12])
 by gabe.freedesktop.org (Postfix) with ESMTPS id AB45310E6ED
 for <intel-gfx@lists.freedesktop.org>; Mon, 27 May 2024 07:23:18 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1716794599; x=1748330599;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=pAq7PcxjUhfRrhpuMNFJYEXbKMY1vdYdp4CUyWE3IlU=;
 b=SU40JnQDOSNemJZnN8Ivk9JIVeoNapedUvI1TALCJ/43rEssn2vPsusN
 u/u/PY74l2oNG7m9uTvu5UpvRayL8l+INKN1tqwTr2Vp5gRRuoj4nCjQd
 NJ2Lg74SGDldRw/pZdbnq/1fDEiEIjehz1cXindInvMvx45iR2A/555a0
 UD9Jx81dzU1uT92X6IZcL15mGeEeT3UPViD0BFWGW/w4VHyWIMN+TGg/k
 7nfyeyqm0kP5BoK2/TtMb2zkyfVBftLvXgb4CUL1RDwADWZfR0HJoIAMP
 t+lC65s5IWjdFJR1PJLrHwxYG4QffGb4BYe5qgEIgBBhB5kxGCbgKRQFs w==;
X-CSE-ConnectionGUID: HV5k1VoOR4O9jmzVeg8+ew==
X-CSE-MsgGUID: dKncb8n+TKeAIoUHQnt8sg==
X-IronPort-AV: E=McAfee;i="6600,9927,11084"; a="16930484"
X-IronPort-AV: E=Sophos;i="6.08,192,1712646000"; d="scan'208";a="16930484"
Received: from orviesa009.jf.intel.com ([10.64.159.149])
 by fmvoesa106.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 27 May 2024 00:23:08 -0700
X-CSE-ConnectionGUID: HloxjfPRST6Rvs7c8I0yrw==
X-CSE-MsgGUID: +OAfaoSmSkWDCepDSCHxKQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.08,192,1712646000"; d="scan'208";a="34753517"
Received: from gcusmai-mobl.ger.corp.intel.com (HELO jhogande-mobl1.intel.com)
 ([10.249.36.101])
 by orviesa009-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 27 May 2024 00:23:07 -0700
From: =?UTF-8?q?Jouni=20H=C3=B6gander?= <jouni.hogander@intel.com>
To: intel-gfx@lists.freedesktop.org
Cc: animesh.manna@intel.com, mika.kahola@intel.com,
 =?UTF-8?q?Jouni=20H=C3=B6gander?= <jouni.hogander@intel.com>
Subject: [PATCH v3 18/20] drm/i915/psr: Modify dg2_activate_panel_replay to
 support eDP
Date: Mon, 27 May 2024 10:22:18 +0300
Message-Id: <20240527072220.3294769-19-jouni.hogander@intel.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20240527072220.3294769-1-jouni.hogander@intel.com>
References: <20240527072220.3294769-1-jouni.hogander@intel.com>
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

Signed-off-by: Jouni Högander <jouni.hogander@intel.com>
---
 drivers/gpu/drm/i915/display/intel_psr.c | 12 ++++++++++++
 1 file changed, 12 insertions(+)

diff --git a/drivers/gpu/drm/i915/display/intel_psr.c b/drivers/gpu/drm/i915/display/intel_psr.c
index 50021e797120..38874ca46c16 100644
--- a/drivers/gpu/drm/i915/display/intel_psr.c
+++ b/drivers/gpu/drm/i915/display/intel_psr.c
@@ -929,6 +929,18 @@ static u8 frames_before_su_entry(struct intel_dp *intel_dp)
 static void dg2_activate_panel_replay(struct intel_dp *intel_dp)
 {
 	struct drm_i915_private *dev_priv = dp_to_i915(intel_dp);
+	struct intel_psr *psr = &intel_dp->psr;
+	enum transcoder cpu_transcoder = intel_dp->psr.transcoder;
+
+	if (intel_dp_is_edp(intel_dp) && psr->sel_update_enabled) {
+		u32 val = LNL_EDP_PSR2_SU_REGION_ET_ENABLE;
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

