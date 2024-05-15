Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id AC3B38C64B2
	for <lists+intel-gfx@lfdr.de>; Wed, 15 May 2024 12:04:42 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 15CEF10E674;
	Wed, 15 May 2024 10:04:41 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="lU1IJJ2o";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.17])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 2305310E5CF
 for <intel-gfx@lists.freedesktop.org>; Wed, 15 May 2024 10:04:35 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1715767476; x=1747303476;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=OayvqQA/R0yEmIsT97telra7CQp0y6UrhrdltjALOq4=;
 b=lU1IJJ2o1i+E9C6htJJgccyKajjQMW8KgFHYWH731N1EI5psHRHyKMxx
 hjBOKMnm8SG9coXecPKbg/w7Ge+vl9N9TM7nm4hlYaTmnLnlhpV+PO++Z
 tmLVZiRHXNMuyC3sDXziqjYgbolGrPQn6wTjTcP4EqrsNTXtWY6eStKC3
 vBoelfxnEDPxAulyn5+OaKF1eAA+Ri7dkCu5LjuCI/MB7vCbGEN6g2K9I
 UIR5ZH4rzCFG/VGUDq/n7Fj8OxwnoRU8SP67hUzoknhfCyQYvNXiWASmL
 9U/MTYiRkDCuaznBcAq0pZhIJrmdHbr1LXDGudExTXMdPV1OwqMAbVXfG w==;
X-CSE-ConnectionGUID: RRWmDy97S7mEAPqxRFPdOA==
X-CSE-MsgGUID: okvIyF1sR96RsjinYYpEEA==
X-IronPort-AV: E=McAfee;i="6600,9927,11073"; a="11937011"
X-IronPort-AV: E=Sophos;i="6.08,161,1712646000"; d="scan'208";a="11937011"
Received: from orviesa007.jf.intel.com ([10.64.159.147])
 by orvoesa109.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 15 May 2024 03:04:35 -0700
X-CSE-ConnectionGUID: MkyQiyt5RuqsyDu+BvBojQ==
X-CSE-MsgGUID: G+EKo3MVSPW+fvzMe6uwqw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.08,161,1712646000"; d="scan'208";a="31584241"
Received: from sghitax-mobl1.ger.corp.intel.com (HELO
 jhogande-mobl1.intel.com) ([10.251.210.177])
 by orviesa007-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 15 May 2024 03:04:34 -0700
From: =?UTF-8?q?Jouni=20H=C3=B6gander?= <jouni.hogander@intel.com>
To: intel-gfx@lists.freedesktop.org
Cc: =?UTF-8?q?Jouni=20H=C3=B6gander?= <jouni.hogander@intel.com>
Subject: [PATCH 5/8] drm/i915/psr: Allow setting
 I915_PSR_DEBUG_SU_REGION_ET_DISABLE via debugfs
Date: Wed, 15 May 2024 13:04:08 +0300
Message-Id: <20240515100411.691203-6-jouni.hogander@intel.com>
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

Currently setting I915_PSR_DEBUG_SU_REGION_ET_DISABLE (0x20) via psr_debug
debugfs interface is not allowed. This patch allows it.

Signed-off-by: Jouni Högander <jouni.hogander@intel.com>
---
 drivers/gpu/drm/i915/display/intel_psr.c | 3 ++-
 1 file changed, 2 insertions(+), 1 deletion(-)

diff --git a/drivers/gpu/drm/i915/display/intel_psr.c b/drivers/gpu/drm/i915/display/intel_psr.c
index 4db887edc8db..e8bed1d60fa7 100644
--- a/drivers/gpu/drm/i915/display/intel_psr.c
+++ b/drivers/gpu/drm/i915/display/intel_psr.c
@@ -3020,7 +3020,8 @@ int intel_psr_debug_set(struct intel_dp *intel_dp, u64 val)
 	u32 old_mode;
 	int ret;
 
-	if (val & ~(I915_PSR_DEBUG_IRQ | I915_PSR_DEBUG_MODE_MASK) ||
+	if (val & ~(I915_PSR_DEBUG_IRQ | I915_PSR_DEBUG_SU_REGION_ET_DISABLE |
+		    I915_PSR_DEBUG_MODE_MASK) ||
 	    mode > I915_PSR_DEBUG_ENABLE_SEL_FETCH) {
 		drm_dbg_kms(&dev_priv->drm, "Invalid debug mask %llx\n", val);
 		return -EINVAL;
-- 
2.34.1

