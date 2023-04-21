Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 8FB066EA9E4
	for <lists+intel-gfx@lfdr.de>; Fri, 21 Apr 2023 14:03:44 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id E4B1910EE0C;
	Fri, 21 Apr 2023 12:03:42 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 4693410EE0E
 for <intel-gfx@lists.freedesktop.org>; Fri, 21 Apr 2023 12:03:38 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1682078618; x=1713614618;
 h=from:to:subject:date:message-id:in-reply-to:references:
 mime-version:content-transfer-encoding;
 bh=TMoHOl3M1kp5lZzgvVhEgWzDwdgCpCuRx2DPLWW9fBw=;
 b=OgoKhqLB8KQU5pMAxAadefRa66qs5+xZ4CLNMnnheDPZMw4jfQv7druC
 X0E1b87yDKXag1t6wWqxaZua9ABcPTK1H+hcDgWMkECNa08z+ZxU5ZmyD
 kEf6K3OgExYNihcjAy1y30KueOa8XnoXPT/elkxp+pTvGvNgJ93scI7LM
 39jvzEGV/foSOU6IWP51mRPkCvFFRypKAMNsDJfqRUwGJR2airfFhived
 tJPkhlVDKrR9+8ZgBLy73eIJX6KSDeAKmKRSsfUupMlGSsnBWT3bYRVvA
 Ngq5jBVoILzXu7xahQ0dnXeKRjXydFYnTlqaSQOdjrTbjvqwz4IieDJWI Q==;
X-IronPort-AV: E=McAfee;i="6600,9927,10686"; a="373900135"
X-IronPort-AV: E=Sophos;i="5.99,214,1677571200"; d="scan'208";a="373900135"
Received: from orsmga008.jf.intel.com ([10.7.209.65])
 by fmsmga101.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 21 Apr 2023 05:03:37 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10686"; a="722725463"
X-IronPort-AV: E=Sophos;i="5.99,214,1677571200"; d="scan'208";a="722725463"
Received: from stinkpipe.fi.intel.com (HELO stinkbox) ([10.237.72.70])
 by orsmga008.jf.intel.com with SMTP; 21 Apr 2023 05:03:35 -0700
Received: by stinkbox (sSMTP sendmail emulation);
 Fri, 21 Apr 2023 15:03:35 +0300
From: Ville Syrjala <ville.syrjala@linux.intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Fri, 21 Apr 2023 15:03:03 +0300
Message-Id: <20230421120307.24793-10-ville.syrjala@linux.intel.com>
X-Mailer: git-send-email 2.39.2
In-Reply-To: <20230421120307.24793-1-ville.syrjala@linux.intel.com>
References: <20230421120307.24793-1-ville.syrjala@linux.intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH 09/13] drm/i915/psr: Implement
 WaPsrDPRSUnmaskVBlankInSRD:hsw
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

Bspec asks us to unmask "vblank to registers" in the DPRS unit.

Note that I was unable to observe any change in hardware
behviour due to this bit on HSW. But let's do this anyway
in case it matters in some cases, and the correspoding bit
on BDW is abolutely critical as without it the hardware
won't generate any vblanks whatsoever after PSR exit.

Signed-off-by: Ville Syrjälä <ville.syrjala@linux.intel.com>
---
 drivers/gpu/drm/i915/intel_clock_gating.c | 8 ++++++++
 1 file changed, 8 insertions(+)

diff --git a/drivers/gpu/drm/i915/intel_clock_gating.c b/drivers/gpu/drm/i915/intel_clock_gating.c
index 9682323510cd..d9600cd1ab06 100644
--- a/drivers/gpu/drm/i915/intel_clock_gating.c
+++ b/drivers/gpu/drm/i915/intel_clock_gating.c
@@ -559,12 +559,20 @@ static void bdw_init_clock_gating(struct drm_i915_private *i915)
 
 static void hsw_init_clock_gating(struct drm_i915_private *i915)
 {
+	enum pipe pipe;
+
 	/* WaFbcAsynchFlipDisableFbcQueue:hsw,bdw */
 	intel_uncore_rmw(&i915->uncore, CHICKEN_PIPESL_1(PIPE_A), 0, HSW_FBCQ_DIS);
 
 	/* WaPsrDPAMaskVBlankInSRD:hsw */
 	intel_uncore_rmw(&i915->uncore, CHICKEN_PAR1_1, 0, HSW_MASK_VBL_TO_PIPE_IN_SRD);
 
+	for_each_pipe(i915, pipe) {
+		/* WaPsrDPRSUnmaskVBlankInSRD:hsw */
+		intel_uncore_rmw(&i915->uncore, CHICKEN_PIPESL_1(pipe),
+				 0, HSW_UNMASK_VBL_TO_REGS_IN_SRD);
+	}
+
 	/* This is required by WaCatErrorRejectionIssue:hsw */
 	intel_uncore_rmw(&i915->uncore, GEN7_SQ_CHICKEN_MBCUNIT_CONFIG,
 			 0, GEN7_SQ_CHICKEN_MBCUNIT_SQINTMOB);
-- 
2.39.2

