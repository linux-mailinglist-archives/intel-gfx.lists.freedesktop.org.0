Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 15C038D5EDB
	for <lists+intel-gfx@lfdr.de>; Fri, 31 May 2024 11:50:59 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id BBC4B10E554;
	Fri, 31 May 2024 09:50:56 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="kaaV709c";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.18])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 66E2C10E3D8
 for <intel-gfx@lists.freedesktop.org>; Fri, 31 May 2024 09:50:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1717149027; x=1748685027;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=WKwhbzQi5hsplwFgH2qsWWBeAppsfVS5UfGKMoq9rG4=;
 b=kaaV709cj5qj2p9sALvip5PIfQsMeQfZZI18VzTewEL1YKkAKbOb9+MJ
 OIknUzhxM5y47PUhxFBSk66n9nxfRnBA1ZZhFZBXO5IijVyBkmKyencA3
 95jcC6fKV2TKaurO0KaWj0LnH3y+6P6cpcJAd9NIqyU41mTerMsyaGTPO
 xScrYkOY8qR3Q1ZQpvgscTForqAWreR4+169IPY6q7MITE2tIeSd6DVkx
 9NE1cGWIXYvtKKuQX7kllR3WQqdjtwZCJ7cO9bujzfP0FMn80GbBGRCj6
 kM5Z4bNIMpyle4GmcZwu21MgKxeyjLF3H9wS2/Uh9ma2R4AImOl990rS5 w==;
X-CSE-ConnectionGUID: st7Coi5fTkyee8tYbeDe6w==
X-CSE-MsgGUID: WZi871ugQmSj9Bpmd6dRtQ==
X-IronPort-AV: E=McAfee;i="6600,9927,11088"; a="13446564"
X-IronPort-AV: E=Sophos;i="6.08,203,1712646000"; d="scan'208";a="13446564"
Received: from orviesa004.jf.intel.com ([10.64.159.144])
 by fmvoesa112.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 31 May 2024 02:50:27 -0700
X-CSE-ConnectionGUID: IoGmTBzmQPuQY9YFBJzPxQ==
X-CSE-MsgGUID: n5qUrOUpQ8KllnXT/7XPeg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.08,203,1712646000"; d="scan'208";a="41189228"
Received: from romanove-mobl.ger.corp.intel.com (HELO
 jhogande-mobl1.intel.com) ([10.249.36.204])
 by orviesa004-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 31 May 2024 02:50:25 -0700
From: =?UTF-8?q?Jouni=20H=C3=B6gander?= <jouni.hogander@intel.com>
To: intel-gfx@lists.freedesktop.org
Cc: animesh.manna@intel.com, mika.kahola@intel.com,
 =?UTF-8?q?Jouni=20H=C3=B6gander?= <jouni.hogander@intel.com>
Subject: [PATCH v4 07/19] drm/i915/psr: Check panel ALPM capability for eDP
 Panel Replay
Date: Fri, 31 May 2024 12:49:41 +0300
Message-Id: <20240531094953.1797508-8-jouni.hogander@intel.com>
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

Our HW doesn't support Panel Replay without AUX_LESS ALPM on eDP. Check
panel support for this and prevent eDP panel replay if it doesn't exits.

Bspec: 68920

v2: use intel_alpm_aux_less_wake_supported

Signed-off-by: Jouni Högander <jouni.hogander@intel.com>
---
 drivers/gpu/drm/i915/display/intel_psr.c | 7 +++++++
 1 file changed, 7 insertions(+)

diff --git a/drivers/gpu/drm/i915/display/intel_psr.c b/drivers/gpu/drm/i915/display/intel_psr.c
index 05aff2adb19e..7fb14d740d31 100644
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

