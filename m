Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 078329068D4
	for <lists+intel-gfx@lfdr.de>; Thu, 13 Jun 2024 11:33:22 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id B99A110E9DF;
	Thu, 13 Jun 2024 09:33:19 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="WXni7Ee2";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.18])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 3B66A10E9DE
 for <intel-gfx@lists.freedesktop.org>; Thu, 13 Jun 2024 09:33:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1718271188; x=1749807188;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=/VwnN7KD3MOiETjcc0TrPAMQVyzXyfocDoT/HMwDta0=;
 b=WXni7Ee2dcCpzw514wqCBhx7AlnDHZf1L7SEEN/gyW3mevAn9CFFf0fH
 h+E+0uMWGz5NNm0DXSi7WFoJM2qmatYg6TUY3H+WIT6Opjgrizm+c/8y/
 On4uNF/JHAa7lhH33niEQlE0APvlA2wuRQ/noXmYDzVU/BAO5sJsBPcgU
 YVDn63TL0a8g/uPbOZMXkAMPnrskb6SAxiZimnfL0xFdAe7dBL9+2yyeF
 k5OR4BdpOR5byW7A3jyXe7Lb/lws2B7gK9Q5gqC5BQqEeU5Pl08GBDEee
 dPEiBFcr/Z00BGawygFup/px6zG5OnuMLg4bcmv23C9N74z42l2bFKKwY g==;
X-CSE-ConnectionGUID: W3nC62RKSOSCfxNMRHE0kw==
X-CSE-MsgGUID: gqgsYG8IS8eFOnyIapYe9A==
X-IronPort-AV: E=McAfee;i="6700,10204,11101"; a="14802504"
X-IronPort-AV: E=Sophos;i="6.08,234,1712646000"; d="scan'208";a="14802504"
Received: from fmviesa005.fm.intel.com ([10.60.135.145])
 by fmvoesa112.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 13 Jun 2024 02:33:08 -0700
X-CSE-ConnectionGUID: tlqVeqv9S/Gf7UimGCtnPg==
X-CSE-MsgGUID: JAfEJqrXRkWy1d+4LpI1rA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.08,234,1712646000"; d="scan'208";a="44523394"
Received: from pgcooper-mobl3.ger.corp.intel.com (HELO jhogande-mobl1..)
 ([10.245.244.31])
 by fmviesa005-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 13 Jun 2024 02:33:06 -0700
From: =?UTF-8?q?Jouni=20H=C3=B6gander?= <jouni.hogander@intel.com>
To: intel-gfx@lists.freedesktop.org
Cc: animesh.manna@intel.com, mika.kahola@intel.com,
 =?UTF-8?q?Jouni=20H=C3=B6gander?= <jouni.hogander@intel.com>
Subject: [PATCH v8 10/20] drm/i915/psr: Check panel ALPM capability for eDP
 Panel Replay
Date: Thu, 13 Jun 2024 12:32:29 +0300
Message-Id: <20240613093239.1293629-11-jouni.hogander@intel.com>
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

Our HW doesn't support Panel Replay without AUX_LESS ALPM on eDP. Check
panel support for this and prevent eDP panel replay if it doesn't exits.

Bspec: 68920

v2: use intel_alpm_aux_less_wake_supported

Signed-off-by: Jouni Högander <jouni.hogander@intel.com>
---
 drivers/gpu/drm/i915/display/intel_psr.c | 7 +++++++
 1 file changed, 7 insertions(+)

diff --git a/drivers/gpu/drm/i915/display/intel_psr.c b/drivers/gpu/drm/i915/display/intel_psr.c
index db5f98e3a0db..6f1aa6d440fb 100644
--- a/drivers/gpu/drm/i915/display/intel_psr.c
+++ b/drivers/gpu/drm/i915/display/intel_psr.c
@@ -571,6 +571,13 @@ static void _panel_replay_init_dpcd(struct intel_dp *intel_dp)
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

