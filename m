Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 4DFB78C64AF
	for <lists+intel-gfx@lfdr.de>; Wed, 15 May 2024 12:04:39 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 9795410E655;
	Wed, 15 May 2024 10:04:37 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="J6EZwH3E";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.17])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 8FBD410E5CF
 for <intel-gfx@lists.freedesktop.org>; Wed, 15 May 2024 10:04:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1715767474; x=1747303474;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=kj2kemTPoORLMeWUaQJBl8LgbHumbYtt8QKGgW1xK5Q=;
 b=J6EZwH3EzhS785NSz4aofg7+gr/dduPVJ89aIQu11l/pMKiQtPhVaHDr
 C3ReqoitUgLZLCHkkJvhT6+TOkr8JadvO8NKDM1io1QpilSkOXfrXsOo9
 nztr+UM3dddR2zuv+FGoRrghy9OXiEmOkdMnSP2ocuhndVoVEOk1xx224
 2m4GT58EvQJwIN6NhpLsxDEad6FpKRbZZuCwBOaUIhkckrrHY2GFe+oCh
 dadv/GA5yv1Nfx7G6TNuvC1YUg5vpUzjsHngmm08BK14SjeJgFEqnSbMi
 rla6/MEbMhBp//PMEAfUDg+jYATQbhZqdCxh4KJbDYX5MWr45Sz0uAoe8 g==;
X-CSE-ConnectionGUID: QUN7uxCWRNaGMjpfrbUz8Q==
X-CSE-MsgGUID: Hoi0IdHpRoWdY8+O1116hQ==
X-IronPort-AV: E=McAfee;i="6600,9927,11073"; a="11937003"
X-IronPort-AV: E=Sophos;i="6.08,161,1712646000"; d="scan'208";a="11937003"
Received: from orviesa007.jf.intel.com ([10.64.159.147])
 by orvoesa109.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 15 May 2024 03:04:34 -0700
X-CSE-ConnectionGUID: A93LVR2bQLChWbThIRu2Ww==
X-CSE-MsgGUID: xzwakOTLQnuFomavuovFWA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.08,161,1712646000"; d="scan'208";a="31584229"
Received: from sghitax-mobl1.ger.corp.intel.com (HELO
 jhogande-mobl1.intel.com) ([10.251.210.177])
 by orviesa007-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 15 May 2024 03:04:33 -0700
From: =?UTF-8?q?Jouni=20H=C3=B6gander?= <jouni.hogander@intel.com>
To: intel-gfx@lists.freedesktop.org
Cc: =?UTF-8?q?Jouni=20H=C3=B6gander?= <jouni.hogander@intel.com>
Subject: [PATCH 4/8] drm/i915/psr: Use enable boolean from intel_crtc_state
 for Early Transport
Date: Wed, 15 May 2024 13:04:07 +0300
Message-Id: <20240515100411.691203-5-jouni.hogander@intel.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20240515100411.691203-1-jouni.hogander@intel.com>
References: <20240515100411.691203-1-jouni.hogander@intel.com>
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
index 71fa3dfd5b71..4db887edc8db 100644
--- a/drivers/gpu/drm/i915/display/intel_psr.c
+++ b/drivers/gpu/drm/i915/display/intel_psr.c
@@ -715,7 +715,7 @@ void intel_psr_enable_sink(struct intel_dp *intel_dp,
 					   DP_ALPM_ENABLE |
 					   DP_ALPM_LOCK_ERROR_IRQ_HPD_ENABLE);
 
-			if (psr2_su_region_et_valid(intel_dp))
+			if (crtc_state->enable_psr2_su_region_et)
 				dpcd_val |= DP_PSR_ENABLE_SU_REGION_ET;
 		}
 
-- 
2.34.1

