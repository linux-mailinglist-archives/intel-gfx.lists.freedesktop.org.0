Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 2FD22C1E6AE
	for <lists+intel-gfx@lfdr.de>; Thu, 30 Oct 2025 06:30:56 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id B009110E88A;
	Thu, 30 Oct 2025 05:30:54 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="j1dXtAyi";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.17])
 by gabe.freedesktop.org (Postfix) with ESMTPS id D5FA210E889;
 Thu, 30 Oct 2025 05:30:51 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1761802252; x=1793338252;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=K1Btmkyan/jkbV8X8KGLslxRS7gBx845DF16nMeBgcQ=;
 b=j1dXtAyiEe3aNBW3nyeo3ga+S/6nQMf0rV6gbpoPJTFhiRL05YpBk5Jh
 a2boJ6ak/EC6nv0QjCbnJzn37mkqIZVZ63hz+6D/+TvttEGeg7jR1YCCy
 857dHaawjTXf26tB/y37bjFZNHSXjMaVcCY98f4J5CdMF0P5JNK0bC8oG
 IBipC/GwfpM/W454lL1Wda1ol0TEGkZhsWR6S0RFfRlts6OJNVHrPkeTs
 dSFaNi9eZw6Q6X088D/gojOWmBTmXICmottsitf097IGC532IgZMLDG0z
 GD7+bgjYK0oQJ6p6kNiD0O3/ejpDyck8zNXwOerGnT2XQcCoCvkkYPcet w==;
X-CSE-ConnectionGUID: W8Iy/A3fQQOVG429rtAKZw==
X-CSE-MsgGUID: qcSDG1d1ShS695FU7ITyqQ==
X-IronPort-AV: E=McAfee;i="6800,10657,11597"; a="63845064"
X-IronPort-AV: E=Sophos;i="6.19,265,1754982000"; d="scan'208";a="63845064"
Received: from fmviesa008.fm.intel.com ([10.60.135.148])
 by fmvoesa111.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 29 Oct 2025 22:30:52 -0700
X-CSE-ConnectionGUID: d9lqAautSIO5OoyODYkq/Q==
X-CSE-MsgGUID: 4N64r6DEQou3u8Nx6b8fpg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.19,265,1754982000"; d="scan'208";a="186206828"
Received: from srr4-3-linux-103-aknautiy.iind.intel.com ([10.223.34.160])
 by fmviesa008-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 29 Oct 2025 22:30:50 -0700
From: Ankit Nautiyal <ankit.k.nautiyal@intel.com>
To: intel-gfx@lists.freedesktop.org,
	intel-xe@lists.freedesktop.org
Cc: jouni.hogander@intel.com, ville.syrjala@linux.intel.com,
 Ankit Nautiyal <ankit.k.nautiyal@intel.com>,
 Mitul Golani <mitulkumar.ajitkumar.golani@intel.com>
Subject: [PATCH 1/5] drm/i915/dp: Fix readback for target_rr in Adaptive Sync
 SDP
Date: Thu, 30 Oct 2025 10:47:51 +0530
Message-ID: <20251030051755.3071648-2-ankit.k.nautiyal@intel.com>
X-Mailer: git-send-email 2.45.2
In-Reply-To: <20251030051755.3071648-1-ankit.k.nautiyal@intel.com>
References: <20251030051755.3071648-1-ankit.k.nautiyal@intel.com>
MIME-Version: 1.0
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

Correct the bit-shift logic to properly readback the 10 bit target_rr from
DB3 and DB4.

Fixes: 12ea89291603 ("drm/i915/dp: Add Read/Write support for Adaptive Sync SDP")
Cc: Mitul Golani <mitulkumar.ajitkumar.golani@intel.com>
Cc: Ankit Nautiyal <ankit.k.nautiyal@intel.com>
Signed-off-by: Ankit Nautiyal <ankit.k.nautiyal@intel.com>
---
 drivers/gpu/drm/i915/display/intel_dp.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/gpu/drm/i915/display/intel_dp.c b/drivers/gpu/drm/i915/display/intel_dp.c
index 475518b4048b..c013eb2e18a1 100644
--- a/drivers/gpu/drm/i915/display/intel_dp.c
+++ b/drivers/gpu/drm/i915/display/intel_dp.c
@@ -4996,7 +4996,7 @@ int intel_dp_as_sdp_unpack(struct drm_dp_as_sdp *as_sdp,
 	as_sdp->length = sdp->sdp_header.HB3 & DP_ADAPTIVE_SYNC_SDP_LENGTH;
 	as_sdp->mode = sdp->db[0] & DP_ADAPTIVE_SYNC_SDP_OPERATION_MODE;
 	as_sdp->vtotal = (sdp->db[2] << 8) | sdp->db[1];
-	as_sdp->target_rr = (u64)sdp->db[3] | ((u64)sdp->db[4] & 0x3);
+	as_sdp->target_rr = (u64)sdp->db[3] | ((u64)(sdp->db[4] & 0x3) << 8);
 	as_sdp->target_rr_divider = sdp->db[4] & 0x20 ? true : false;
 
 	return 0;
-- 
2.45.2

