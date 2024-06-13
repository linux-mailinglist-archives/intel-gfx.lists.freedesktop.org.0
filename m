Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 0B5B09068CC
	for <lists+intel-gfx@lfdr.de>; Thu, 13 Jun 2024 11:33:06 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 1882610E9D6;
	Thu, 13 Jun 2024 09:33:04 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="iAd9VUu3";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.18])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 3DF1410E9D3
 for <intel-gfx@lists.freedesktop.org>; Thu, 13 Jun 2024 09:32:58 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1718271178; x=1749807178;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=NOzSO5HImc7NtpCpEZgnbBaQoE9onIgwf+8AeKg/zhM=;
 b=iAd9VUu3pK2k3r0vxYFbBOyytinuBA88zlaO8NaAbW+mKCv2/S0cJTKO
 /G+cl1aah1Dwr5ayoQ3Uzz2e7i+oBBKQIcgtSYy+89scF9Od+1kmPrAEq
 2Rk2NI7mDhM72gDM3fSIDFUQiZORFlhoH3QATJOMU773v1+21eM2396Kk
 /IL2hTNs0ebhc423QyyI4wsi56RWy6CEYcf/5vSSPPefH+hkBh0lodFg8
 28WvfgdJBHRf6WnUER9nyyNJgtSanNmPg1LARWJmQ2a63zKPNJegIhJLQ
 0lj81iHT20e5YG4EKLq/w7SXcjx3iQlIUh8p7kXnq8Gv6wx83AkxqHt1S w==;
X-CSE-ConnectionGUID: Py6XcVERSB+wDD4EnODU+Q==
X-CSE-MsgGUID: BZMwBfwbS0Kie6AcYwnucQ==
X-IronPort-AV: E=McAfee;i="6700,10204,11101"; a="14802478"
X-IronPort-AV: E=Sophos;i="6.08,234,1712646000"; d="scan'208";a="14802478"
Received: from fmviesa005.fm.intel.com ([10.60.135.145])
 by fmvoesa112.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 13 Jun 2024 02:32:58 -0700
X-CSE-ConnectionGUID: MxV/YJDhQAG4a0CNK4ezVw==
X-CSE-MsgGUID: J1+Rge+QRKOko8Izbi3weg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.08,234,1712646000"; d="scan'208";a="44523348"
Received: from pgcooper-mobl3.ger.corp.intel.com (HELO jhogande-mobl1..)
 ([10.245.244.31])
 by fmviesa005-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 13 Jun 2024 02:32:56 -0700
From: =?UTF-8?q?Jouni=20H=C3=B6gander?= <jouni.hogander@intel.com>
To: intel-gfx@lists.freedesktop.org
Cc: animesh.manna@intel.com, mika.kahola@intel.com,
 =?UTF-8?q?Jouni=20H=C3=B6gander?= <jouni.hogander@intel.com>
Subject: [PATCH v8 04/20] drm/i915/psr: Add Panel Replay compute_config helper
Date: Thu, 13 Jun 2024 12:32:23 +0300
Message-Id: <20240613093239.1293629-5-jouni.hogander@intel.com>
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

We are about to add more checks for Panel Replay. Due to that it makes
sense to add now Panel Replay compute config helper.

Signed-off-by: Jouni Högander <jouni.hogander@intel.com>
---
 drivers/gpu/drm/i915/display/intel_psr.c | 11 +++++++++--
 1 file changed, 9 insertions(+), 2 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_psr.c b/drivers/gpu/drm/i915/display/intel_psr.c
index 44144dcfb1a3..f8e746e476e9 100644
--- a/drivers/gpu/drm/i915/display/intel_psr.c
+++ b/drivers/gpu/drm/i915/display/intel_psr.c
@@ -1455,6 +1455,14 @@ static bool _psr_compute_config(struct intel_dp *intel_dp,
 	return true;
 }
 
+static bool _panel_replay_compute_config(struct intel_dp *intel_dp)
+{
+	if (!CAN_PANEL_REPLAY(intel_dp))
+		return false;
+
+	return true;
+}
+
 void intel_psr_compute_config(struct intel_dp *intel_dp,
 			      struct intel_crtc_state *crtc_state,
 			      struct drm_connector_state *conn_state)
@@ -1490,8 +1498,7 @@ void intel_psr_compute_config(struct intel_dp *intel_dp,
 		return;
 	}
 
-	if (CAN_PANEL_REPLAY(intel_dp))
-		crtc_state->has_panel_replay = true;
+	crtc_state->has_panel_replay = _panel_replay_compute_config(intel_dp);
 
 	crtc_state->has_psr = crtc_state->has_panel_replay ? true :
 		_psr_compute_config(intel_dp, crtc_state);
-- 
2.34.1

