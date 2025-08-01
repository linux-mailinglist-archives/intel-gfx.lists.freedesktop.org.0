Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 9D4AFB17CED
	for <lists+intel-gfx@lfdr.de>; Fri,  1 Aug 2025 08:29:28 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 36CBA10E7FB;
	Fri,  1 Aug 2025 06:29:27 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="kIgKPckS";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.19])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 34BAA10E3BE;
 Fri,  1 Aug 2025 06:29:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1754029765; x=1785565765;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=Fuyt19A7er1UoIFCfDJKsoVQCGqhNFEYlOOc1U7xarw=;
 b=kIgKPckSQ/jUXbgboEQatDwDJ0sewMFSBSs3qJqdMu3lUwpWW4AaMMGT
 cEz6HXKNRhsyv+7eyVN+c5/7ZbLrx6SJCUf+HMHA8RTR8eEC8Th0DhDCN
 R1YPXXsvPwpc5DaoJW9gvhsyHc7oauHtGj/BcaHgF8F6mKOYAODanbTnN
 0Sy7mrigw4Q7Kbd5AORRqDuPilfl2YlVz3b+XxDiLaiJts4q9VZ3U0xPw
 CaMMs4CWyvfAY1DNErBWQdggHn/KZETvEvmSrj044Q5DQVN92Y1lw7JAT
 jlR2XzKnyVPdiSC8V0mhrR7utwwNyeqJU1N8FpexjKrvPqHyK1jn6Ro72 A==;
X-CSE-ConnectionGUID: 60e3nbWfQW2yXbNH9PHP2Q==
X-CSE-MsgGUID: V/WlSeaLSUOAZGBqFU7ILg==
X-IronPort-AV: E=McAfee;i="6800,10657,11508"; a="55430341"
X-IronPort-AV: E=Sophos;i="6.17,255,1747724400"; d="scan'208";a="55430341"
Received: from fmviesa002.fm.intel.com ([10.60.135.142])
 by fmvoesa113.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 31 Jul 2025 23:29:25 -0700
X-CSE-ConnectionGUID: bGUp/9kES9O0S6aPOzw5Og==
X-CSE-MsgGUID: 42k2heFMRYSmhwO2prLOTA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.17,255,1747724400"; d="scan'208";a="187153479"
Received: from sschumil-mobl2.ger.corp.intel.com (HELO jhogande-mobl1..)
 ([10.245.244.99])
 by fmviesa002-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 31 Jul 2025 23:29:23 -0700
From: =?UTF-8?q?Jouni=20H=C3=B6gander?= <jouni.hogander@intel.com>
To: intel-gfx@lists.freedesktop.org,
	intel-xe@lists.freedesktop.org
Cc: =?UTF-8?q?Jouni=20H=C3=B6gander?= <jouni.hogander@intel.com>,
 Janna Martl <janna.martl109@gmail.com>
Subject: [PATCH] drm/i915/psr: Do not trigger Frame Change events from
 frontbuffer flush
Date: Fri,  1 Aug 2025 09:29:05 +0300
Message-ID: <20250801062905.564453-1-jouni.hogander@intel.com>
X-Mailer: git-send-email 2.43.0
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

We want to get rid of triggering "Frame Change" events from
frontbuffer flush calls. We are about to move using TRANS_PUSH
register for this on LunarLake and onwards. Touching TRANS_PUSH
register from fronbuffer flush would be problematic as it's written by
DSB as well.

Fix this by using intel_psr_exit when flush or invalidate is done on
LunarLake and onwards. This is not possible on AlderLake and
MeteorLake due to HW bug in PSR2 disable.

This patch is also fixing problems with cursor plane where cursor is
disappearing or duplicate cursor is seen on the screen.

v2: Commit message updated

Reported-by: Janna Martl <janna.martl109@gmail.com>
Closes: https://gitlab.freedesktop.org/drm/xe/kernel/-/issues/5522
Fixes: 411ad63877bb ("drm/i915/psr: Use SFF_CTL on invalidate/flush for LunarLake onwards")
Tested-by: Janna Martl <janna.martl109@gmail.com>
Signed-off-by: Jouni Högander <jouni.hogander@intel.com>
---
 drivers/gpu/drm/i915/display/intel_psr.c | 14 +++++++++-----
 1 file changed, 9 insertions(+), 5 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_psr.c b/drivers/gpu/drm/i915/display/intel_psr.c
index 6bd3454bb00e..4279c28ae27c 100644
--- a/drivers/gpu/drm/i915/display/intel_psr.c
+++ b/drivers/gpu/drm/i915/display/intel_psr.c
@@ -3254,7 +3254,9 @@ static void intel_psr_configure_full_frame_update(struct intel_dp *intel_dp)
 
 static void _psr_invalidate_handle(struct intel_dp *intel_dp)
 {
-	if (intel_dp->psr.psr2_sel_fetch_enabled) {
+	struct intel_display *display = to_intel_display(intel_dp);
+
+	if (DISPLAY_VER(display) < 20 && intel_dp->psr.psr2_sel_fetch_enabled) {
 		if (!intel_dp->psr.psr2_sel_fetch_cff_enabled) {
 			intel_dp->psr.psr2_sel_fetch_cff_enabled = true;
 			intel_psr_configure_full_frame_update(intel_dp);
@@ -3340,7 +3342,7 @@ static void _psr_flush_handle(struct intel_dp *intel_dp)
 {
 	struct intel_display *display = to_intel_display(intel_dp);
 
-	if (intel_dp->psr.psr2_sel_fetch_enabled) {
+	if (DISPLAY_VER(display) < 20 && intel_dp->psr.psr2_sel_fetch_enabled) {
 		if (intel_dp->psr.psr2_sel_fetch_cff_enabled) {
 			/* can we turn CFF off? */
 			if (intel_dp->psr.busy_frontbuffer_bits == 0)
@@ -3357,11 +3359,13 @@ static void _psr_flush_handle(struct intel_dp *intel_dp)
 		 * existing SU configuration
 		 */
 		intel_psr_configure_full_frame_update(intel_dp);
-	}
 
-	intel_psr_force_update(intel_dp);
+		intel_psr_force_update(intel_dp);
+	} else {
+		intel_psr_exit(intel_dp);
+	}
 
-	if (!intel_dp->psr.psr2_sel_fetch_enabled && !intel_dp->psr.active &&
+	if ((!intel_dp->psr.psr2_sel_fetch_enabled || DISPLAY_VER(display) >= 20) &&
 	    !intel_dp->psr.busy_frontbuffer_bits)
 		queue_work(display->wq.unordered, &intel_dp->psr.work);
 }
-- 
2.43.0

