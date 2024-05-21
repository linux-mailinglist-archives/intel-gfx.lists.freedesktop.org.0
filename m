Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 0B0728CAA2E
	for <lists+intel-gfx@lfdr.de>; Tue, 21 May 2024 10:42:01 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id CC31010E2A9;
	Tue, 21 May 2024 08:41:58 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="UcB2pbGh";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.12])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 2A94910E2A9
 for <intel-gfx@lists.freedesktop.org>; Tue, 21 May 2024 08:41:51 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1716280911; x=1747816911;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=uHitDkRcdtJhfBAHq/iZrWIp9rzUp2gbPdZGXQn2Za0=;
 b=UcB2pbGhpTxEciTC82bSvjJPHpjPsjRTnflAoBQqc5ybL6WN2+UR8RLW
 CkPENuYN6uHw1ueEqB1nYlukKJCDEBKzPyLbQ/mIpVJ5kN2iYb02duIco
 pJYVo0r3nc/GjmtOTYnuSaiq5HNe3voTYDas5tyEsqm2aUgQkbSK9w5Dd
 F9dViHOVzaexoCPtVUEu6bSDdhIw2grY7lLKW1Wa2dHartoubweHWsxyy
 rTXUFvlbDX185fnpBakDcTp8jHDMS4dMXrMyQL8RKVSwmmE8hBVZ7B3Qv
 xSPUiE0hqRJidzy2koNOw/PGJ7raxUsXXsJ7pF0BxVxtY5eWFZMtxQR/l A==;
X-CSE-ConnectionGUID: 20vx9oDDRSqk34wBAPQIhg==
X-CSE-MsgGUID: q1J+UsZdTnyaGD99RQhNNw==
X-IronPort-AV: E=McAfee;i="6600,9927,11078"; a="23860354"
X-IronPort-AV: E=Sophos;i="6.08,177,1712646000"; d="scan'208";a="23860354"
Received: from fmviesa004.fm.intel.com ([10.60.135.144])
 by orvoesa104.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 21 May 2024 01:41:51 -0700
X-CSE-ConnectionGUID: cnfQbsb/SxO22qeJWFiIEA==
X-CSE-MsgGUID: pPNdpjy2Tded6G9E92jmaw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.08,177,1712646000"; d="scan'208";a="37426231"
Received: from mathiasj-mobl.amr.corp.intel.com (HELO
 jhogande-mobl1.intel.com) ([10.251.211.157])
 by fmviesa004-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 21 May 2024 01:41:49 -0700
From: =?UTF-8?q?Jouni=20H=C3=B6gander?= <jouni.hogander@intel.com>
To: intel-gfx@lists.freedesktop.org
Cc: animesh.manna@intel.com, mika.kahola@intel.com,
 =?UTF-8?q?Jouni=20H=C3=B6gander?= <jouni.hogander@intel.com>
Subject: [PATCH v2 4/9] drm/i915/psr: Use enable boolean from intel_crtc_state
 for Early Transport
Date: Tue, 21 May 2024 11:41:18 +0300
Message-Id: <20240521084123.1984075-5-jouni.hogander@intel.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20240521084123.1984075-1-jouni.hogander@intel.com>
References: <20240521084123.1984075-1-jouni.hogander@intel.com>
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
index 6430e6a7ee48..0e081ea21766 100644
--- a/drivers/gpu/drm/i915/display/intel_psr.c
+++ b/drivers/gpu/drm/i915/display/intel_psr.c
@@ -716,7 +716,7 @@ void intel_psr_enable_sink(struct intel_dp *intel_dp,
 					   DP_ALPM_ENABLE |
 					   DP_ALPM_LOCK_ERROR_IRQ_HPD_ENABLE);
 
-			if (psr2_su_region_et_valid(intel_dp))
+			if (crtc_state->enable_psr2_su_region_et)
 				dpcd_val |= DP_PSR_ENABLE_SU_REGION_ET;
 		}
 
-- 
2.34.1

