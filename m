Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 1E0B2729C7F
	for <lists+intel-gfx@lfdr.de>; Fri,  9 Jun 2023 16:14:40 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 8255410E6BE;
	Fri,  9 Jun 2023 14:14:38 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 1C16910E6BA
 for <intel-gfx@lists.freedesktop.org>; Fri,  9 Jun 2023 14:14:36 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1686320076; x=1717856076;
 h=from:to:subject:date:message-id:in-reply-to:references:
 mime-version:content-transfer-encoding;
 bh=vjl5V7/30XlauK54vo1PdhqUHr8q/SMdw+vkTq7+gCI=;
 b=RXAxGkzawQfxi/kjWuUEdvZfIPnWgKxRAenAEwM/aNeCkH8/DvlWgZRi
 imw2BWd6Y7eg755uovmc8aRT1M8ZXC6UL7z+7IKHH/79at7qv7IdDjaIa
 rP9x5GK9SkPzwMM2r6iuAifYbOiXzi1wIOaWrP0+6brn2uvcRoCQqZAiI
 3vrJj90HK3MRaDeGA1Rsy0Wbfalohs2t825wKwfcyMHFZNI3OoPE5A9Wp
 wJZLrAZtIE2lOEoWwT0WRCZ3O3yYs7JyOTeOuladgnYPV0qoiurb12LET
 /mSM9DyWrgooc7HGmhZhndVcMv4no4BCzsJ3fBZQUUlZz1f1eYsXuUsgo g==;
X-IronPort-AV: E=McAfee;i="6600,9927,10736"; a="385966533"
X-IronPort-AV: E=Sophos;i="6.00,229,1681196400"; d="scan'208";a="385966533"
Received: from orsmga008.jf.intel.com ([10.7.209.65])
 by fmsmga101.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 09 Jun 2023 07:14:35 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10736"; a="740183126"
X-IronPort-AV: E=Sophos;i="6.00,229,1681196400"; d="scan'208";a="740183126"
Received: from stinkpipe.fi.intel.com (HELO stinkbox) ([10.237.72.70])
 by orsmga008.jf.intel.com with SMTP; 09 Jun 2023 07:14:33 -0700
Received: by stinkbox (sSMTP sendmail emulation);
 Fri, 09 Jun 2023 17:14:33 +0300
From: Ville Syrjala <ville.syrjala@linux.intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Fri,  9 Jun 2023 17:14:00 +0300
Message-Id: <20230609141404.12729-10-ville.syrjala@linux.intel.com>
X-Mailer: git-send-email 2.39.3
In-Reply-To: <20230609141404.12729-1-ville.syrjala@linux.intel.com>
References: <20230609141404.12729-1-ville.syrjala@linux.intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH v2 09/13] drm/i915/psr: Implement
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
in case it matters in some cases, and the corresponding bit
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
2.39.3

