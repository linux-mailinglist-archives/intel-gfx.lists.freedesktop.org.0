Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 771FE8D833D
	for <lists+intel-gfx@lfdr.de>; Mon,  3 Jun 2024 15:01:35 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 93C5110E3B3;
	Mon,  3 Jun 2024 13:01:33 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="YWd1Pr6O";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.17])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 0B9FA10E3A4
 for <intel-gfx@lists.freedesktop.org>; Mon,  3 Jun 2024 13:01:26 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1717419686; x=1748955686;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=rbdiKdD3JjIdZ0DUN0doxj5iBJyixzLmQOAp94UiFcs=;
 b=YWd1Pr6OJyqYSM4w93iUMWlCe8Vz2Hsem6uImG2sfExtfDCXZiMUQHuJ
 J2fsOwuWsB0plkI1xuwlqwgBvWorto/DmZVmeSY0Oc5pDAz5j9GiBhcPK
 Og0MRyT7qZ6yO9dSESC9+Cbph+U2l0lign4aMAGKuavPDHo0DsAmnDIVy
 a6ROdlNB41gCUDAbN/4R0EEn1nOqC3sUnExg/8nP1d6xLiCOrcL7EveMj
 u+UHpBiiLi5D5cn2jkm3okZeF1DlfxWolEFlN/d8MpNz/MUszBSx0qj6x
 InEe8vMl4kQO8L02x+27tctGoBeUrrySmvmf/IRrdhdu0ulhj41YZCaKR A==;
X-CSE-ConnectionGUID: NtDMXkG1QOuP/wC1mYbCmg==
X-CSE-MsgGUID: wHJ1Pt1xTweVaJ2gkJcR8A==
X-IronPort-AV: E=McAfee;i="6600,9927,11092"; a="13774505"
X-IronPort-AV: E=Sophos;i="6.08,211,1712646000"; d="scan'208";a="13774505"
Received: from fmviesa003.fm.intel.com ([10.60.135.143])
 by fmvoesa111.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 03 Jun 2024 06:01:26 -0700
X-CSE-ConnectionGUID: Brd9eT5MTFCiyIlSnQ8cNQ==
X-CSE-MsgGUID: xGPZnW4aThG8Bq86XewVMA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.08,211,1712646000"; d="scan'208";a="41291951"
Received: from jgulati-mobl.ger.corp.intel.com (HELO jhogande-mobl1.intel.com)
 ([10.251.212.183])
 by fmviesa003-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 03 Jun 2024 06:01:24 -0700
From: =?UTF-8?q?Jouni=20H=C3=B6gander?= <jouni.hogander@intel.com>
To: intel-gfx@lists.freedesktop.org
Cc: animesh.manna@intel.com, mika.kahola@intel.com,
 =?UTF-8?q?Jouni=20H=C3=B6gander?= <jouni.hogander@intel.com>
Subject: [PATCH v5 17/19] drm/i915/psr: Modify dg2_activate_panel_replay to
 support eDP
Date: Mon,  3 Jun 2024 16:00:41 +0300
Message-Id: <20240603130043.2615716-18-jouni.hogander@intel.com>
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

There are couple of bits in PSR2_CTL which needs to be written in case of
eDP Panel Replay

Bspec: 68920

v2: use boolean instead of assuming eDP Panel Replay mean Early Transport

Signed-off-by: Jouni Högander <jouni.hogander@intel.com>
---
 drivers/gpu/drm/i915/display/intel_psr.c | 13 +++++++++++++
 1 file changed, 13 insertions(+)

diff --git a/drivers/gpu/drm/i915/display/intel_psr.c b/drivers/gpu/drm/i915/display/intel_psr.c
index b918175e9307..e696c760cedb 100644
--- a/drivers/gpu/drm/i915/display/intel_psr.c
+++ b/drivers/gpu/drm/i915/display/intel_psr.c
@@ -930,6 +930,19 @@ static u8 frames_before_su_entry(struct intel_dp *intel_dp)
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

