Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id C9F66AA6D34
	for <lists+intel-gfx@lfdr.de>; Fri,  2 May 2025 10:59:31 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 1BAA710E8CC;
	Fri,  2 May 2025 08:59:30 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="ntW5Mt5N";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.16])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 3505210E8C9;
 Fri,  2 May 2025 08:59:28 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1746176369; x=1777712369;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=ZHZtGuFliso0YH6vPqhRx1kfyTgxmGGHb8IyC7fmhN4=;
 b=ntW5Mt5NPUlwAnDHqYgRr1t4eKnxBwjtcnycHEGcnT+aVfdiMg60mC/D
 OmcZzWIe0XFLB/cwWFWpUp8JdP/R5m22P73Gt19+ZmNi7Az/M0JD0DuIH
 Rn9DY0MFu6zvQ8Q2iTOi/FFsbu3k7rLFHyMSOK4uuPPp892LxkiPINvec
 y4yN5WXMYbcF8MO4s2T/SabwsPEmCb3QnRAVk4T+G3CAkDqTN+HLVIVAb
 N+OSiNnhn1SWToa5Jn5OZElRYjyH55GHrHrGjPWngWeP+uIN8z1UzOwj8
 dILeyYnZleWbL5I+IZDBT+GoNGy9iAqTMMuZ1H6GdD2BVnCkCiuvOgsvH w==;
X-CSE-ConnectionGUID: JSmbryGiQ6K/Uti4+39e+Q==
X-CSE-MsgGUID: 0a/Lg77gQhq36swDxHRU+Q==
X-IronPort-AV: E=McAfee;i="6700,10204,11420"; a="47943194"
X-IronPort-AV: E=Sophos;i="6.15,256,1739865600"; d="scan'208";a="47943194"
Received: from orviesa009.jf.intel.com ([10.64.159.149])
 by orvoesa108.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 02 May 2025 01:59:29 -0700
X-CSE-ConnectionGUID: YBOG9MW0SlKqrorLGUhWSA==
X-CSE-MsgGUID: 8Ujn38qNR4ibMCPlFk1ftA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.15,256,1739865600"; d="scan'208";a="134346712"
Received: from dhhellew-desk2.ger.corp.intel.com (HELO jhogande-mobl1..)
 ([10.245.244.55])
 by orviesa009-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 02 May 2025 01:59:27 -0700
From: =?UTF-8?q?Jouni=20H=C3=B6gander?= <jouni.hogander@intel.com>
To: intel-gfx@lists.freedesktop.org,
	intel-xe@lists.freedesktop.org
Cc: =?UTF-8?q?Jouni=20H=C3=B6gander?= <jouni.hogander@intel.com>
Subject: [PATCH 04/11] drm/i915/alpm: Write PR_ALPM_CTL register
Date: Fri,  2 May 2025 11:58:55 +0300
Message-ID: <20250502085902.154740-5-jouni.hogander@intel.com>
X-Mailer: git-send-email 2.43.0
In-Reply-To: <20250502085902.154740-1-jouni.hogander@intel.com>
References: <20250502085902.154740-1-jouni.hogander@intel.com>
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

PR_ALPM_CTL register contains configurations related to Adaptive sync
sdp. Configure these if Adaptive Sync SDP is supported.

Bspec: 71014
Signed-off-by: Jouni Högander <jouni.hogander@intel.com>
---
 drivers/gpu/drm/i915/display/intel_alpm.c | 12 ++++++++++++
 1 file changed, 12 insertions(+)

diff --git a/drivers/gpu/drm/i915/display/intel_alpm.c b/drivers/gpu/drm/i915/display/intel_alpm.c
index 1bf08b80c23f9..5e5bc91ca7b76 100644
--- a/drivers/gpu/drm/i915/display/intel_alpm.c
+++ b/drivers/gpu/drm/i915/display/intel_alpm.c
@@ -348,6 +348,18 @@ static void lnl_alpm_configure(struct intel_dp *intel_dp,
 			ALPM_CTL_AUX_LESS_SLEEP_HOLD_TIME_50_SYMBOLS |
 			ALPM_CTL_AUX_LESS_WAKE_TIME(intel_dp->alpm_parameters.aux_less_wake_lines);
 
+		if (intel_dp->as_sdp_supported) {
+			u32 pr_alpm_ctl = PR_ALPM_CTL_ADAPTIVE_SYNC_SDP_POSITION_T1;
+
+			if (intel_dp->pr_dpcd[1] & DP_PANEL_REPLAY_LINK_OFF_SUPPORTED_IN_PR_AFTER_ADAPTIVE_SYNC_SDP)
+				pr_alpm_ctl |= PR_ALPM_CTL_ALLOW_LINK_OFF_BETWEEN_AS_SDP_AND_SU;
+			if (!(intel_dp->pr_dpcd[1] & DP_PANEL_REPLAY_ASYNC_VIDEO_TIMING_NOT_SUPPORTED_IN_PR))
+				pr_alpm_ctl |= PR_ALPM_CTL_AS_SDP_TRANSMISSION_IN_ACTIVE_DISABLE;
+
+			intel_de_write(display, PR_ALPM_CTL(display, cpu_transcoder),
+				       pr_alpm_ctl);
+		}
+
 		intel_de_write(display,
 			       PORT_ALPM_CTL(port),
 			       PORT_ALPM_CTL_ALPM_AUX_LESS_ENABLE |
-- 
2.43.0

