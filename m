Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 9E1818D3335
	for <lists+intel-gfx@lfdr.de>; Wed, 29 May 2024 11:39:16 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id D112910E0BB;
	Wed, 29 May 2024 09:39:14 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="GDmFHQCR";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.13])
 by gabe.freedesktop.org (Postfix) with ESMTPS id DD38D10E0BB
 for <intel-gfx@lists.freedesktop.org>; Wed, 29 May 2024 09:39:07 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1716975548; x=1748511548;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=c9kpFuTh+5WUlEneBvfvSugvnrUclTc3/I9G7J4M7uQ=;
 b=GDmFHQCRQmfbwwJyHgXos3azJdOgySRlgYuWXrjXM5/AHf6/R2KUHtAI
 +ZNBHQamT8SP/7zjaZ8wP5sKE+8Wajs4h6w/cEYm63LgWZ4hNudDF3okI
 ckhi570k4P+rs/5Mrf6tPeqHNtJqW1ikIclIKmTxF3LUkEKQ9XboAivon
 RGENyalLRCUTWk0/v9SpOfuKMGbc3O/DBTqZkOr5cQ+D1ROyQA9E5APp3
 0XfhhkjqAKH+dypyb2A+zoS6FjbhN0GuKTlWB0ipQR/DFI+YDJBmGwPO8
 TVh0VfnnUw22Y89wDxxE/7CQV23ohfNMwz0kMgawXQ1uBnR2yqsuPcxS4 A==;
X-CSE-ConnectionGUID: ASjqzPM3RdWKmYPQGwecuw==
X-CSE-MsgGUID: 0vrdPhjzTL+fGgWrr2txXQ==
X-IronPort-AV: E=McAfee;i="6600,9927,11085"; a="16316812"
X-IronPort-AV: E=Sophos;i="6.08,198,1712646000"; d="scan'208";a="16316812"
Received: from orviesa005.jf.intel.com ([10.64.159.145])
 by fmvoesa107.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 29 May 2024 02:39:08 -0700
X-CSE-ConnectionGUID: s9Sfrd/dSRmbrUu9wb42Qw==
X-CSE-MsgGUID: iJadkHkbR8KMgrzTSe2/CA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.08,198,1712646000"; d="scan'208";a="40273887"
Received: from romanove-mobl.ger.corp.intel.com (HELO
 jhogande-mobl1.intel.com) ([10.249.36.185])
 by orviesa005-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 29 May 2024 02:39:06 -0700
From: =?UTF-8?q?Jouni=20H=C3=B6gander?= <jouni.hogander@intel.com>
To: intel-gfx@lists.freedesktop.org
Cc: animesh.manna@intel.com, mika.kahola@intel.com,
 =?UTF-8?q?Jouni=20H=C3=B6gander?= <jouni.hogander@intel.com>
Subject: [PATCH 3/6] drm/i915/psr: Use enable boolean from intel_crtc_state
 for Early Transport
Date: Wed, 29 May 2024 12:38:46 +0300
Message-Id: <20240529093849.1016172-4-jouni.hogander@intel.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20240529093849.1016172-1-jouni.hogander@intel.com>
References: <20240529093849.1016172-1-jouni.hogander@intel.com>
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

When enabling Early Transport use
intel_crtc_state->enable_psr2_su_region_et instead of
psr2_su_region_et_valid.

Fixes: 467e4e061c44 ("drm/i915/psr: Enable psr2 early transport as possible")
Signed-off-by: Jouni Högander <jouni.hogander@intel.com>
---
 drivers/gpu/drm/i915/display/intel_psr.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/gpu/drm/i915/display/intel_psr.c b/drivers/gpu/drm/i915/display/intel_psr.c
index 1e55d447481a..605ca6b6321d 100644
--- a/drivers/gpu/drm/i915/display/intel_psr.c
+++ b/drivers/gpu/drm/i915/display/intel_psr.c
@@ -709,7 +709,7 @@ void intel_psr_enable_sink(struct intel_dp *intel_dp,
 					   DP_ALPM_ENABLE |
 					   DP_ALPM_LOCK_ERROR_IRQ_HPD_ENABLE);
 
-			if (psr2_su_region_et_valid(intel_dp))
+			if (crtc_state->enable_psr2_su_region_et)
 				dpcd_val |= DP_PSR_ENABLE_SU_REGION_ET;
 		}
 
-- 
2.34.1

