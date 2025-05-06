Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 4C6ADAAB9AC
	for <lists+intel-gfx@lfdr.de>; Tue,  6 May 2025 09:01:51 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 2403D10E5BB;
	Tue,  6 May 2025 07:01:47 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="LVzalVi6";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.17])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 64CC810E5AF;
 Tue,  6 May 2025 07:01:46 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1746514906; x=1778050906;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=6xDRQFM3+lBkcbKJtbxojIAWG3CR40GH964FwJ7+KrY=;
 b=LVzalVi6EyGfaWWrkIMryP4SC7witujeHipR1MTvobQbLufa6H3EOPq1
 evcFeFRHjYN7Igll7bqdhvcH/DJRLd1MfkFcg2FLw72EkCIvL9My4E6FB
 B14HYB7H4uct5NyjX6KjJUWgBTqYMBVo+VAUOHCpFtiDd9MA+v7Y9opoZ
 flSBWG/EQZzqyI9DUJgoBSqQKhd5DTpDu40vGviMqKDskiSo5KuFAlMwx
 ZXh+IU6q8JUzsIKAc1CY/sAh7gF3o1BvcuecMXElpXTD34Idb2MaXNDV4
 Eyq6p43bGpYc+PUdHvyPGWnLhv5Naji4efzVxfrn2BzZi25SD6X5pS5DW w==;
X-CSE-ConnectionGUID: RWysYp9BQASTT4CwZpcxHQ==
X-CSE-MsgGUID: vz2zeaHgSPWEU7Nlhb14hg==
X-IronPort-AV: E=McAfee;i="6700,10204,11424"; a="48067999"
X-IronPort-AV: E=Sophos;i="6.15,265,1739865600"; d="scan'208";a="48067999"
Received: from orviesa003.jf.intel.com ([10.64.159.143])
 by fmvoesa111.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 06 May 2025 00:01:16 -0700
X-CSE-ConnectionGUID: zx/uChpxRKW4Tf+BsqgDCQ==
X-CSE-MsgGUID: BpwKmXpeRJGE+2lphw7lEQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.15,265,1739865600"; d="scan'208";a="140273138"
Received: from dhhellew-desk2.ger.corp.intel.com (HELO jhogande-mobl1..)
 ([10.245.245.171])
 by ORVIESA003-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 06 May 2025 00:01:15 -0700
From: =?UTF-8?q?Jouni=20H=C3=B6gander?= <jouni.hogander@intel.com>
To: intel-gfx@lists.freedesktop.org,
	intel-xe@lists.freedesktop.org
Cc: animesh.manna@intel.com,
 =?UTF-8?q?Jouni=20H=C3=B6gander?= <jouni.hogander@intel.com>
Subject: [PATCH 4/4] drm/i915/alpm: Stop writing ALPM registers when PSR is
 enabled
Date: Tue,  6 May 2025 10:00:29 +0300
Message-ID: <20250506070029.1326368-5-jouni.hogander@intel.com>
X-Mailer: git-send-email 2.43.0
In-Reply-To: <20250506070029.1326368-1-jouni.hogander@intel.com>
References: <20250506070029.1326368-1-jouni.hogander@intel.com>
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

Currently we are seeing these on PTL:

xe 0000:00:02.0: [drm] *ERROR* Timeout waiting for DDI BUF A to get active

These seem to be caused by writing ALPM registers while Panel Replay is
enabled.

Fix this by writing ALPM registers only when Panel Replay is about to be
enabled.

Fixes: 172757acd6f6 ("drm/i915/lobf: Add lobf enablement in post plane update")
Signed-off-by: Jouni Högander <jouni.hogander@intel.com>
---
 drivers/gpu/drm/i915/display/intel_alpm.c | 8 ++++----
 1 file changed, 4 insertions(+), 4 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_alpm.c b/drivers/gpu/drm/i915/display/intel_alpm.c
index 6431f7ee82d5..a10115398db6 100644
--- a/drivers/gpu/drm/i915/display/intel_alpm.c
+++ b/drivers/gpu/drm/i915/display/intel_alpm.c
@@ -467,10 +467,6 @@ void intel_alpm_post_plane_update(struct intel_atomic_state *state,
 		intel_atomic_get_old_crtc_state(state, crtc);
 	struct intel_encoder *encoder;
 
-	if ((!crtc_state->has_lobf ||
-	     crtc_state->has_lobf == old_crtc_state->has_lobf) && !crtc_state->has_psr)
-		return;
-
 	for_each_intel_encoder_mask(display->drm, encoder,
 				    crtc_state->uapi.encoder_mask) {
 		struct intel_dp *intel_dp;
@@ -480,6 +476,10 @@ void intel_alpm_post_plane_update(struct intel_atomic_state *state,
 
 		intel_dp = enc_to_intel_dp(encoder);
 
+		if ((!crtc_state->has_lobf && !intel_psr_needs_alpm(intel_dp, crtc_state)) ||
+		    (old_crtc_state->has_lobf || intel_psr_needs_alpm(intel_dp, old_crtc_state)))
+			continue;
+
 		if (intel_dp_is_edp(intel_dp)) {
 			intel_alpm_enable_sink(intel_dp, crtc_state);
 			intel_alpm_configure(intel_dp, crtc_state);
-- 
2.43.0

