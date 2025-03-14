Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 2E860A60FC4
	for <lists+intel-gfx@lfdr.de>; Fri, 14 Mar 2025 12:19:12 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id A602110E34C;
	Fri, 14 Mar 2025 11:19:10 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="dNvOQn+W";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.7])
 by gabe.freedesktop.org (Postfix) with ESMTPS id B81C210E9DB;
 Fri, 14 Mar 2025 11:19:09 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1741951150; x=1773487150;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=MxWcU7JDPz9E0apgOmghQW+X0vzzfxToQQIj8tCeiO8=;
 b=dNvOQn+W1PuslnDIs4oS6n4ELL4tmxfhmKtCbRS6wd5AJ5/KjNMFDU9z
 valGow5+KoRqYpuHa1Tt63BtCFu/EWvbouKh5zZHpZ1lgFB25VdEd91aZ
 buk1dcLgMF5sgGVUTBf8AaXF3+NAV/izu26aWVBFdFDBZfNdzHUjn56+o
 olqIblwodjyPjlhO1GO584xfksDq+mZJ6hvpgbzoMX57NiqIeZelmWbMN
 nCUCoyujySECbnqcdDmVw16aJv6X+stZInSxHHxabj+2lSPGp/6kqsWP1
 UabsLAq+sCscmslqWzpEa6yCNDDDvgvV71wJAStS9etAuXsjGtYsj0dcA A==;
X-CSE-ConnectionGUID: 3g3nBd89Rhmxdvc4wzrrkw==
X-CSE-MsgGUID: 2LjEABipTWqNT20ZWtWdaQ==
X-IronPort-AV: E=McAfee;i="6700,10204,11372"; a="68467028"
X-IronPort-AV: E=Sophos;i="6.14,246,1736841600"; d="scan'208";a="68467028"
Received: from orviesa004.jf.intel.com ([10.64.159.144])
 by fmvoesa101.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 14 Mar 2025 04:19:09 -0700
X-CSE-ConnectionGUID: qhTXQctdTSSX9ZcJYZIqFQ==
X-CSE-MsgGUID: 0IAn9xnORZWbyFhlVgB1IQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.14,246,1736841600"; d="scan'208";a="126289708"
Received: from pgcooper-mobl3.ger.corp.intel.com (HELO jhogande-mobl1..)
 ([10.245.244.27])
 by orviesa004-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 14 Mar 2025 04:19:08 -0700
From: =?UTF-8?q?Jouni=20H=C3=B6gander?= <jouni.hogander@intel.com>
To: intel-gfx@lists.freedesktop.org,
	intel-xe@lists.freedesktop.org
Cc: =?UTF-8?q?Jouni=20H=C3=B6gander?= <jouni.hogander@intel.com>
Subject: [PATCH 11/11] drm/i915/psr: Check transcoder Selective Update support
 for PR as well
Date: Fri, 14 Mar 2025 13:18:39 +0200
Message-ID: <20250314111839.1051945-12-jouni.hogander@intel.com>
X-Mailer: git-send-email 2.43.0
In-Reply-To: <20250314111839.1051945-1-jouni.hogander@intel.com>
References: <20250314111839.1051945-1-jouni.hogander@intel.com>
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

We need to ensure transcoder is supporting Selective Update in case of
Panel Replay as well.

Signed-off-by: Jouni Högander <jouni.hogander@intel.com>
---
 drivers/gpu/drm/i915/display/intel_psr.c | 14 +++++++-------
 1 file changed, 7 insertions(+), 7 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_psr.c b/drivers/gpu/drm/i915/display/intel_psr.c
index 228996f1f26d2..347acb4048edc 100644
--- a/drivers/gpu/drm/i915/display/intel_psr.c
+++ b/drivers/gpu/drm/i915/display/intel_psr.c
@@ -1491,13 +1491,6 @@ static bool intel_psr2_config_valid(struct intel_dp *intel_dp,
 		return false;
 	}
 
-	if (!transcoder_has_psr2(display, crtc_state->cpu_transcoder)) {
-		drm_dbg_kms(display->drm,
-			    "PSR2 not supported in transcoder %s\n",
-			    transcoder_name(crtc_state->cpu_transcoder));
-		return false;
-	}
-
 	/*
 	 * DSC and PSR2 cannot be enabled simultaneously. If a requested
 	 * resolution requires DSC to be enabled, priority is given to DSC
@@ -1579,6 +1572,13 @@ static bool intel_sel_update_config_valid(struct intel_dp *intel_dp,
 		goto unsupported;
 	}
 
+	if (!transcoder_has_psr2(display, crtc_state->cpu_transcoder)) {
+		drm_dbg_kms(display->drm,
+			    "Selective update not supported in transcoder %s\n",
+			    transcoder_name(crtc_state->cpu_transcoder));
+		goto unsupported;
+	}
+
 	if (!crtc_state->has_panel_replay && !intel_psr2_config_valid(intel_dp, crtc_state))
 		goto unsupported;
 
-- 
2.43.0

