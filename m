Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 8142B8D5ED5
	for <lists+intel-gfx@lfdr.de>; Fri, 31 May 2024 11:50:49 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 9B19210E3D8;
	Fri, 31 May 2024 09:50:46 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="ALyvmkbt";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.18])
 by gabe.freedesktop.org (Postfix) with ESMTPS id D37C710E4E3
 for <intel-gfx@lists.freedesktop.org>; Fri, 31 May 2024 09:50:39 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1717149040; x=1748685040;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=6Z27CrxdT/c29nun3inCNGsQfus1n5BS5B3Cf3odnOw=;
 b=ALyvmkbtVWQsFP703HVeIpWhuU8XrZ9beAk1tcXQO1IDV5r08SanfySF
 c6edrIYlGT8ne+uEEdQm12qusvFC8TP2Rb7j82tTnMGlKQV1ojuRYO+hV
 xEA7IHLXWxCzW6CojSPxJM+OTUvpfS651Q9lM2l7ytzJvnyMupYPFv/0s
 P0jXstaFLisSJN8iSMFjd1CFVjvd6ugcxFCIylJPKY+IQLkyu9ctVFX2u
 s8Gb0GEQH/4AA4HsN0FaRZ/3sKHb+62Mn6Y/W2EIxxyasFW+W6+gykKed
 fG26HEXTFKaMGZ0pqzueHLqzaESjMFxtqZGr2X7OEHzNn3sCZjpiK3RAO Q==;
X-CSE-ConnectionGUID: A5EZxt1jQymNwXGT/phu9g==
X-CSE-MsgGUID: Mgjr7wY+SEKE3pRz70bKiw==
X-IronPort-AV: E=McAfee;i="6600,9927,11088"; a="13446583"
X-IronPort-AV: E=Sophos;i="6.08,203,1712646000"; d="scan'208";a="13446583"
Received: from orviesa004.jf.intel.com ([10.64.159.144])
 by fmvoesa112.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 31 May 2024 02:50:40 -0700
X-CSE-ConnectionGUID: 3DQhKlLkSZ+6Z4+KwTQYjg==
X-CSE-MsgGUID: WJjnx7UZRVuZP8W31BQ7Og==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.08,203,1712646000"; d="scan'208";a="41189267"
Received: from romanove-mobl.ger.corp.intel.com (HELO
 jhogande-mobl1.intel.com) ([10.249.36.204])
 by orviesa004-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 31 May 2024 02:50:38 -0700
From: =?UTF-8?q?Jouni=20H=C3=B6gander?= <jouni.hogander@intel.com>
To: intel-gfx@lists.freedesktop.org
Cc: animesh.manna@intel.com, mika.kahola@intel.com,
 =?UTF-8?q?Jouni=20H=C3=B6gander?= <jouni.hogander@intel.com>
Subject: [PATCH v4 14/19] drm/i915/psr: 128b/132b Panel Replay is not
 supported on eDP
Date: Fri, 31 May 2024 12:49:48 +0300
Message-Id: <20240531094953.1797508-15-jouni.hogander@intel.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20240531094953.1797508-1-jouni.hogander@intel.com>
References: <20240531094953.1797508-1-jouni.hogander@intel.com>
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

Take into account that 128b/132b Panel Replay is not supported on eDP.

Bspec: 68920

Signed-off-by: Jouni Högander <jouni.hogander@intel.com>
---
 drivers/gpu/drm/i915/display/intel_psr.c | 16 ++++++++++++++--
 1 file changed, 14 insertions(+), 2 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_psr.c b/drivers/gpu/drm/i915/display/intel_psr.c
index 1e958d9851d6..6f69bd6d4461 100644
--- a/drivers/gpu/drm/i915/display/intel_psr.c
+++ b/drivers/gpu/drm/i915/display/intel_psr.c
@@ -1472,11 +1472,22 @@ static bool _psr_compute_config(struct intel_dp *intel_dp,
 	return true;
 }
 
-static bool _panel_replay_compute_config(struct intel_dp *intel_dp)
+static bool
+_panel_replay_compute_config(struct intel_dp *intel_dp,
+			     const struct intel_crtc_state *crtc_state)
 {
 	if (!CAN_PANEL_REPLAY(intel_dp))
 		return false;
 
+	if (!intel_dp_is_edp(intel_dp))
+		return true;
+
+	/* Remaining checks are for eDP only */
+
+	/* 128b/132b Panel Replay is not supported on eDP */
+	if (intel_dp_is_uhbr(crtc_state))
+		return false;
+
 	return true;
 }
 
@@ -1515,7 +1526,8 @@ void intel_psr_compute_config(struct intel_dp *intel_dp,
 		return;
 	}
 
-	crtc_state->has_panel_replay = _panel_replay_compute_config(intel_dp);
+	crtc_state->has_panel_replay = _panel_replay_compute_config(intel_dp,
+								    crtc_state);
 
 	crtc_state->has_psr = crtc_state->has_panel_replay ? true :
 		_psr_compute_config(intel_dp, crtc_state);
-- 
2.34.1

