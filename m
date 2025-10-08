Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id E0752BC649E
	for <lists+intel-gfx@lfdr.de>; Wed, 08 Oct 2025 20:26:45 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 739BC10E8BC;
	Wed,  8 Oct 2025 18:26:44 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="CGlZ/r+1";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.9])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 354C210E8B5;
 Wed,  8 Oct 2025 18:26:43 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1759948003; x=1791484003;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=EqHm2iHu+DWOmlRzGcVm8twGoIH1YXmT5WHXGRLkv0Q=;
 b=CGlZ/r+16YPnXfPbn8Vlz+ailRLdo2u89HdLhh0iu5OUNZcuf9YKwTai
 RXzXbx//Mx0vvAUHJHGUn7bucjza6nRAQTSr8HIFUeryHHHPkIbAb850k
 8F5RWU1Oy/ZAJA9VsAMgevSr8h1yg1r5t/WeQ2ZGmn6Iobih7QJEbMCX8
 pYQmAzvsxOhs0BhjoTeQVqwu96/nHuFypfVtgV/fvpIp6PqI+PaU1Jjf+
 uVCe2rnwShdmXSCHZGiVD2q/LUL7MJ19RBSrO63Ns0be+7atLz2yftXnn
 TLfsU+6eQLBGXEmQTdV1+m3mF6Fp6IeFGJUp1i49tPwBN0WYr5PiOq5N2 A==;
X-CSE-ConnectionGUID: g5gDVuuJT7iVYCIVUVgcuQ==
X-CSE-MsgGUID: nutkouL6QSSOjJFwzYI8Kw==
X-IronPort-AV: E=McAfee;i="6800,10657,11576"; a="84769997"
X-IronPort-AV: E=Sophos;i="6.19,214,1754982000"; d="scan'208";a="84769997"
Received: from fmviesa006.fm.intel.com ([10.60.135.146])
 by orvoesa101.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 08 Oct 2025 11:26:43 -0700
X-CSE-ConnectionGUID: /Cqt9pe0RUSFNmsP9JpCDw==
X-CSE-MsgGUID: D4XRHsLdTDGpXtoV+801uQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.19,214,1754982000"; d="scan'208";a="180436926"
Received: from pgcooper-mobl3.ger.corp.intel.com (HELO localhost)
 ([10.245.244.175])
 by fmviesa006-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 08 Oct 2025 11:26:42 -0700
From: Ville Syrjala <ville.syrjala@linux.intel.com>
To: intel-gfx@lists.freedesktop.org
Cc: intel-xe@lists.freedesktop.org
Subject: [RFC][PATCH 11/11] drm/i915/prefill: Also print out the worst case
 estimates
Date: Wed,  8 Oct 2025 21:25:58 +0300
Message-ID: <20251008182559.20615-12-ville.syrjala@linux.intel.com>
X-Mailer: git-send-email 2.49.1
In-Reply-To: <20251008182559.20615-1-ville.syrjala@linux.intel.com>
References: <20251008182559.20615-1-ville.syrjala@linux.intel.com>
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

From: Ville Syrjälä <ville.syrjala@linux.intel.com>

We don't use the worst case prefill estimates yet for anything.
Print them out alongside the actual prefill details to help
conmfirm they are at leat getting computed somewhat sanely.

Signed-off-by: Ville Syrjälä <ville.syrjala@linux.intel.com>
---
 drivers/gpu/drm/i915/display/skl_watermark.c | 11 +++++++++++
 1 file changed, 11 insertions(+)

diff --git a/drivers/gpu/drm/i915/display/skl_watermark.c b/drivers/gpu/drm/i915/display/skl_watermark.c
index b3e9e2a0dab3..7bfd61cb41ca 100644
--- a/drivers/gpu/drm/i915/display/skl_watermark.c
+++ b/drivers/gpu/drm/i915/display/skl_watermark.c
@@ -2322,6 +2322,17 @@ static int skl_wm_check_vblank(struct intel_atomic_state *state,
 		}
 	}
 
+	/* hack to dump the worst case as well */
+	memset(&ctx, 0, sizeof(ctx));
+	intel_prefill_init_worst(&ctx, crtc_state);
+
+	level = skl_max_wm_level_for_vblank(crtc_state, &ctx);
+
+	if (DISPLAY_VER(display) >= 12 &&
+	    display->sagv.block_time_us)
+		intel_prefill_vblank_too_short(&ctx, crtc_state,
+					       display->sagv.block_time_us);
+
 	return 0;
 }
 
-- 
2.49.1

