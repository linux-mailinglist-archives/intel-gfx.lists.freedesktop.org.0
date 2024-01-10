Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 6D364829AFA
	for <lists+intel-gfx@lfdr.de>; Wed, 10 Jan 2024 14:13:37 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id AD11410E770;
	Wed, 10 Jan 2024 13:13:34 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [134.134.136.100])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 08A6810E5EC
 for <intel-gfx@lists.freedesktop.org>; Wed, 10 Jan 2024 13:13:32 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1704892411; x=1736428411;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=+ZLazaU0iAIz++upstKxUQczZ2VKVZ4EYq7YCHsHyKI=;
 b=YmfAOnYt7HK7d+CWw1sR2B7j/8fAXyyQroojezKkrnmAB3u4ruOzRksw
 VJD8PUktt7FB/FA67NG0DQHq5QEhfDL3kEELRqsJzYklfTeyQ84V7Ypjg
 idVT8Fsevfm0whCpehxSzZAJvUBfP2F6BUkaZjWYj+I6Q6IUmOqfTrU2h
 EGk+4NjeJjjh93kP4fu0pWe/K+xQzya1Ov6df1HG5eDx+uIJXMJvGeozM
 vO2ux2PJUUKFfpXYDEgH8FSiABNK1YeRZbSktMog10IZg+hJC1Lslp6BV
 UlQlkHXF0gimXPHW55tSS57Wds2DyBVy4wNZCWlk1qFHOz1x1jnBDA4tt Q==;
X-IronPort-AV: E=McAfee;i="6600,9927,10948"; a="464914013"
X-IronPort-AV: E=Sophos;i="6.04,184,1695711600"; d="scan'208";a="464914013"
Received: from orsmga001.jf.intel.com ([10.7.209.18])
 by orsmga105.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 10 Jan 2024 05:13:31 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10948"; a="816347045"
X-IronPort-AV: E=Sophos;i="6.04,184,1695711600"; d="scan'208";a="816347045"
Received: from vsovraso-mobl.ccr.corp.intel.com (HELO
 jhogande-mobl1.intel.com) ([10.251.211.202])
 by orsmga001-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 10 Jan 2024 05:13:30 -0800
From: =?UTF-8?q?Jouni=20H=C3=B6gander?= <jouni.hogander@intel.com>
To: intel-gfx@lists.freedesktop.org
Subject: [PATCH v2 03/13] drm/i915/psr: Do not check alpm on DP or capability
 change for panel replay
Date: Wed, 10 Jan 2024 15:12:54 +0200
Message-Id: <20240110131304.2470006-4-jouni.hogander@intel.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20240110131304.2470006-1-jouni.hogander@intel.com>
References: <20240110131304.2470006-1-jouni.hogander@intel.com>
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

Alpm is eDP specific. Do not check if not eDP. Also panel replay doesn't
know about capability changes -> no need to check that.

Signed-off-by: Jouni Högander <jouni.hogander@intel.com>
---
 drivers/gpu/drm/i915/display/intel_psr.c | 7 +++++--
 1 file changed, 5 insertions(+), 2 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_psr.c b/drivers/gpu/drm/i915/display/intel_psr.c
index 3e287a9f0e09..a9421dd092c5 100644
--- a/drivers/gpu/drm/i915/display/intel_psr.c
+++ b/drivers/gpu/drm/i915/display/intel_psr.c
@@ -2989,8 +2989,11 @@ void intel_psr_short_pulse(struct intel_dp *intel_dp)
 	/* clear status register */
 	drm_dp_dpcd_writeb(&intel_dp->aux, DP_PSR_ERROR_STATUS, error_status);
 
-	psr_alpm_check(intel_dp);
-	psr_capability_changed_check(intel_dp);
+	if (intel_dp_is_edp(intel_dp))
+		psr_alpm_check(intel_dp);
+
+	if (!psr->panel_replay_enabled)
+		psr_capability_changed_check(intel_dp);
 
 exit:
 	mutex_unlock(&psr->lock);
-- 
2.34.1

