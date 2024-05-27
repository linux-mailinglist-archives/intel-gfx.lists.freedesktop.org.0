Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 982E78CF9FB
	for <lists+intel-gfx@lfdr.de>; Mon, 27 May 2024 09:23:57 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id AE25510F3C7;
	Mon, 27 May 2024 07:23:55 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="dcyGfQpW";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.12])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 7C76D10EE5B
 for <intel-gfx@lists.freedesktop.org>; Mon, 27 May 2024 07:23:06 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1716794586; x=1748330586;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=FrYbC7SqScy2GfGD6wj+P4eZNwmTUFn7zfjhyOAX0u8=;
 b=dcyGfQpWxIcy/JFHkrsHwaQ8w+spZpi5N0hcmfR5kSdpuf+Att5SWSFs
 ebtZR/LiTPW/EQBYoGPjHTB2fn548oMFdDjuDxeZ73aggeeYF54ijChoy
 4IymB+gvjNGnT/kBQm3xa6lEENaodWB8rbCxfhc/wgXpx1d+dnuDmn2/b
 aoBU9k8Jz2IhgK4Ila4oZh76mVJgyRHZ+rtoUjTEeMVd9iS5+3a8KQbtF
 Xmt6kaxpt1JG1eM0BdsWfsCfpFEo4QNLfoumIdyWl89Yuz/b5I2L15Lyw
 nQ7kPC5GpQHmZs03B4/tK2e1sIvDQPCfqbyaGqhSQaVNXd+GKHIqnr5Kd w==;
X-CSE-ConnectionGUID: FCxM+kcmQzGoUbB87ILPPA==
X-CSE-MsgGUID: XF+JWAdRRIiUKydh9kcMKQ==
X-IronPort-AV: E=McAfee;i="6600,9927,11084"; a="16930482"
X-IronPort-AV: E=Sophos;i="6.08,192,1712646000"; d="scan'208";a="16930482"
Received: from orviesa009.jf.intel.com ([10.64.159.149])
 by fmvoesa106.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 27 May 2024 00:23:06 -0700
X-CSE-ConnectionGUID: I7DR6LMjQaK9c7JR7nQRZg==
X-CSE-MsgGUID: ZVDtuBR7TbG+g58yXhOaZQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.08,192,1712646000"; d="scan'208";a="34753509"
Received: from gcusmai-mobl.ger.corp.intel.com (HELO jhogande-mobl1.intel.com)
 ([10.249.36.101])
 by orviesa009-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 27 May 2024 00:23:05 -0700
From: =?UTF-8?q?Jouni=20H=C3=B6gander?= <jouni.hogander@intel.com>
To: intel-gfx@lists.freedesktop.org
Cc: animesh.manna@intel.com, mika.kahola@intel.com,
 =?UTF-8?q?Jouni=20H=C3=B6gander?= <jouni.hogander@intel.com>
Subject: [PATCH v3 17/20] drm/i915/psr: Check Early Transport for Panel Replay
 as well
Date: Mon, 27 May 2024 10:22:17 +0300
Message-Id: <20240527072220.3294769-18-jouni.hogander@intel.com>
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

Move Early Transport validity check to be performed for Panel Replay as
well and use Early Transport for eDP Panel Replay always.

Signed-off-by: Jouni Högander <jouni.hogander@intel.com>
---
 drivers/gpu/drm/i915/display/intel_psr.c | 6 +++---
 1 file changed, 3 insertions(+), 3 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_psr.c b/drivers/gpu/drm/i915/display/intel_psr.c
index 455ad13d9903..50021e797120 100644
--- a/drivers/gpu/drm/i915/display/intel_psr.c
+++ b/drivers/gpu/drm/i915/display/intel_psr.c
@@ -1605,9 +1605,6 @@ static bool intel_psr2_config_valid(struct intel_dp *intel_dp,
 
 	tgl_dc3co_exitline_compute_config(intel_dp, crtc_state);
 
-	if (psr2_su_region_et_valid(intel_dp, false))
-		crtc_state->enable_psr2_su_region_et = true;
-
 	return true;
 }
 
@@ -1672,6 +1669,9 @@ static bool intel_sel_update_config_valid(struct intel_dp *intel_dp,
 		goto unsupported;
 	}
 
+	if (psr2_su_region_et_valid(intel_dp, crtc_state->has_panel_replay))
+		crtc_state->enable_psr2_su_region_et = true;
+
 	return true;
 
 unsupported:
-- 
2.34.1

