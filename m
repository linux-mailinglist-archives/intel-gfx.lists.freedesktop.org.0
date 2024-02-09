Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 8392484FC02
	for <lists+intel-gfx@lfdr.de>; Fri,  9 Feb 2024 19:38:24 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id CF38710F9FF;
	Fri,  9 Feb 2024 18:38:22 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="ORdnU8GP";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.9])
 by gabe.freedesktop.org (Postfix) with ESMTPS id C95F910FA2F
 for <intel-gfx@lists.freedesktop.org>; Fri,  9 Feb 2024 18:38:21 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1707503902; x=1739039902;
 h=from:to:subject:date:message-id:in-reply-to:references:
 mime-version:content-transfer-encoding;
 bh=UWxuslVoNw9bE0/+rzT6pdBaGhiEYNLtzuysbY65eT0=;
 b=ORdnU8GPptVwuXbvY0X4avKEIi/agTUvmfVapco9SONUVFJSFQ+K18WC
 7Agg1y3UwBvuSQAXwqhIZNSnPmZ62D/7PrRWvW6i6fQhyvbkhAOcQGYSz
 2mQxE+qZ5GyaUPFf0TgrpvBuoVfbbQJgeMEz2iKIpYRHBhBxVUt0MYegQ
 A8tXP3hFWEn6mgLNZ4oMzXizhS4gTX2nnVEJbW/XvzESvlAH0m+2kTKLO
 Pd+MARUuI4f+XGHodEJXwvLc8y3oBZ8bESc6F+i89xeKudLHTyHzls0Gk
 p5dQ2CwTMNnojMGgea/xqysbPa1OINCpAniEWJ9YcihqO1pitude+3/9q g==;
X-IronPort-AV: E=McAfee;i="6600,9927,10979"; a="23956507"
X-IronPort-AV: E=Sophos;i="6.05,257,1701158400"; d="scan'208";a="23956507"
Received: from orsmga001.jf.intel.com ([10.7.209.18])
 by orvoesa101.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 09 Feb 2024 10:38:22 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10979"; a="825204152"
X-IronPort-AV: E=Sophos;i="6.05,257,1701158400"; d="scan'208";a="825204152"
Received: from stinkpipe.fi.intel.com (HELO stinkbox) ([10.237.72.74])
 by orsmga001.jf.intel.com with SMTP; 09 Feb 2024 10:38:19 -0800
Received: by stinkbox (sSMTP sendmail emulation);
 Fri, 09 Feb 2024 20:38:19 +0200
From: Ville Syrjala <ville.syrjala@linux.intel.com>
To: intel-gfx@lists.freedesktop.org
Subject: [PATCH 3/5] drm/i915: Reuse ibx_dump_hw_state() for gmch platforms
Date: Fri,  9 Feb 2024 20:38:07 +0200
Message-ID: <20240209183809.16887-4-ville.syrjala@linux.intel.com>
X-Mailer: git-send-email 2.43.0
In-Reply-To: <20240209183809.16887-1-ville.syrjala@linux.intel.com>
References: <20240209183809.16887-1-ville.syrjala@linux.intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
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

From: Ville Syrjälä <ville.syrjala@linux.intel.com>

GMCH platform DPLLs are similar to the IBX+ PCH DPLLs so
we can just use the same state dump function for both.

Signed-off-by: Ville Syrjälä <ville.syrjala@linux.intel.com>
---
 drivers/gpu/drm/i915/display/intel_dpll_mgr.c | 8 +-------
 1 file changed, 1 insertion(+), 7 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_dpll_mgr.c b/drivers/gpu/drm/i915/display/intel_dpll_mgr.c
index e7e0a4cf9f93..c6cc7465b92c 100644
--- a/drivers/gpu/drm/i915/display/intel_dpll_mgr.c
+++ b/drivers/gpu/drm/i915/display/intel_dpll_mgr.c
@@ -4458,13 +4458,7 @@ void intel_dpll_dump_hw_state(struct drm_i915_private *i915,
 		/* fallback for platforms that don't use the shared dpll
 		 * infrastructure
 		 */
-		drm_dbg_kms(&i915->drm,
-			    "dpll_hw_state: dpll: 0x%x, dpll_md: 0x%x, "
-			    "fp0: 0x%x, fp1: 0x%x\n",
-			    hw_state->dpll,
-			    hw_state->dpll_md,
-			    hw_state->fp0,
-			    hw_state->fp1);
+		ibx_dump_hw_state(i915, hw_state);
 	}
 }
 
-- 
2.43.0

