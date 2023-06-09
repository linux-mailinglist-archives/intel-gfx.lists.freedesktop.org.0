Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 630E2729C7D
	for <lists+intel-gfx@lfdr.de>; Fri,  9 Jun 2023 16:14:38 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id DABD010E6BA;
	Fri,  9 Jun 2023 14:14:36 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
 by gabe.freedesktop.org (Postfix) with ESMTPS id B9E8C10E6BD
 for <intel-gfx@lists.freedesktop.org>; Fri,  9 Jun 2023 14:14:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1686320073; x=1717856073;
 h=from:to:subject:date:message-id:in-reply-to:references:
 mime-version:content-transfer-encoding;
 bh=lLbyYbPgpGENw0BHBCLQFqWjpFTnzerNfnE6O25Ln8c=;
 b=HJeoPr2NgDEWCiK4nrtOTnTZBm+LrpuRkzCo77VXTFoPZ5Hug+yb33vf
 TETfgx4ro0Uk38tl4j13KKYDVAs4FSgGu+I7yp+plMF+TLHiCGZJNpCK4
 VAMxHBrV28EQHMxQGbc8HArdsKRLRaEiZkRw3gg2UI0xI5J4f3FT5JVfE
 bsyXgfL4bZWqKGg5+REKLNEik+mHGK4MtZRabiFS9oWMm9EGlyTfPnmwS
 ptXXciH8l1fyMvmXK3vGMSmWJVevCoDSEakY0o4GA3Xl7TVxIdxTOzuKh
 G0cX8sRQ4irL2bjuXMk7niY73q0ee6zuOU4uvjXLQPdyzw3vCpClIZ5n/ g==;
X-IronPort-AV: E=McAfee;i="6600,9927,10736"; a="385966477"
X-IronPort-AV: E=Sophos;i="6.00,229,1681196400"; d="scan'208";a="385966477"
Received: from orsmga008.jf.intel.com ([10.7.209.65])
 by fmsmga101.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 09 Jun 2023 07:14:32 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10736"; a="740183116"
X-IronPort-AV: E=Sophos;i="6.00,229,1681196400"; d="scan'208";a="740183116"
Received: from stinkpipe.fi.intel.com (HELO stinkbox) ([10.237.72.70])
 by orsmga008.jf.intel.com with SMTP; 09 Jun 2023 07:14:30 -0700
Received: by stinkbox (sSMTP sendmail emulation);
 Fri, 09 Jun 2023 17:14:30 +0300
From: Ville Syrjala <ville.syrjala@linux.intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Fri,  9 Jun 2023 17:13:59 +0300
Message-Id: <20230609141404.12729-9-ville.syrjala@linux.intel.com>
X-Mailer: git-send-email 2.39.3
In-Reply-To: <20230609141404.12729-1-ville.syrjala@linux.intel.com>
References: <20230609141404.12729-1-ville.syrjala@linux.intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH v2 08/13] drm/i915/psr: Implement
 WaPsrDPAMaskVBlankInSRD:hsw
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

Implement WaPsrDPAMaskVBlankInSRD:hsw, which makes the hardware
generate the extra vblank between link training and first frame
being transmitted. This is the same thing that's controlled by
TRANS_CHICKEN[21] on skl+ (but due to the funky double buffering
it's effectively always at the rest value after DC5 exit). So
for consistent behaviour we want every platform to generate said
vblank. BDW is already setting this up correctly.

Signed-off-by: Ville Syrjälä <ville.syrjala@linux.intel.com>
---
 drivers/gpu/drm/i915/intel_clock_gating.c | 3 +++
 1 file changed, 3 insertions(+)

diff --git a/drivers/gpu/drm/i915/intel_clock_gating.c b/drivers/gpu/drm/i915/intel_clock_gating.c
index a27600bc5976..9682323510cd 100644
--- a/drivers/gpu/drm/i915/intel_clock_gating.c
+++ b/drivers/gpu/drm/i915/intel_clock_gating.c
@@ -562,6 +562,9 @@ static void hsw_init_clock_gating(struct drm_i915_private *i915)
 	/* WaFbcAsynchFlipDisableFbcQueue:hsw,bdw */
 	intel_uncore_rmw(&i915->uncore, CHICKEN_PIPESL_1(PIPE_A), 0, HSW_FBCQ_DIS);
 
+	/* WaPsrDPAMaskVBlankInSRD:hsw */
+	intel_uncore_rmw(&i915->uncore, CHICKEN_PAR1_1, 0, HSW_MASK_VBL_TO_PIPE_IN_SRD);
+
 	/* This is required by WaCatErrorRejectionIssue:hsw */
 	intel_uncore_rmw(&i915->uncore, GEN7_SQ_CHICKEN_MBCUNIT_CONFIG,
 			 0, GEN7_SQ_CHICKEN_MBCUNIT_SQINTMOB);
-- 
2.39.3

