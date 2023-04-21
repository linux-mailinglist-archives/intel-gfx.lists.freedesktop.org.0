Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id CF1196EA9E3
	for <lists+intel-gfx@lfdr.de>; Fri, 21 Apr 2023 14:03:41 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id BFA7710EE0E;
	Fri, 21 Apr 2023 12:03:38 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 4258310EE12
 for <intel-gfx@lists.freedesktop.org>; Fri, 21 Apr 2023 12:03:35 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1682078615; x=1713614615;
 h=from:to:subject:date:message-id:in-reply-to:references:
 mime-version:content-transfer-encoding;
 bh=zvjgWKuHmb3hjGm/JMwak6h1wEod1toDoU29bqGUl6A=;
 b=AlEI5tp2dMOARUISiXbxL+uP81ci0dCftvFbZEGg6LtRpRIAlR4ThvOi
 /x1mwkoc/jqz7FAjZkEUbeJo/Zna16diVQVsIFJGYYtNlZC1PV6ODSW0W
 XZA00Zs9Yq+trad2l/aHyERjSt0f+EPkYYLf7aICV31YdSmQw+JaA9DxT
 sTMvVhDQdhuANl3H4+d7MqMouKdbzXMl+4KA7T+yOgqLNlCy8YQZ65tH+
 KI+huJuZd4N7BMJtslpveTUKTGKOBWnbTWtFloVubw65uMxTBrtHUYcW4
 nmTxy+AkmZTLz+iDatwnkHmReFFUcqsR2UNLvUd1Z+/A9HCR9Hc+Rka6X A==;
X-IronPort-AV: E=McAfee;i="6600,9927,10686"; a="373900123"
X-IronPort-AV: E=Sophos;i="5.99,214,1677571200"; d="scan'208";a="373900123"
Received: from orsmga008.jf.intel.com ([10.7.209.65])
 by fmsmga101.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 21 Apr 2023 05:03:35 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10686"; a="722725456"
X-IronPort-AV: E=Sophos;i="5.99,214,1677571200"; d="scan'208";a="722725456"
Received: from stinkpipe.fi.intel.com (HELO stinkbox) ([10.237.72.70])
 by orsmga008.jf.intel.com with SMTP; 21 Apr 2023 05:03:32 -0700
Received: by stinkbox (sSMTP sendmail emulation);
 Fri, 21 Apr 2023 15:03:32 +0300
From: Ville Syrjala <ville.syrjala@linux.intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Fri, 21 Apr 2023 15:03:02 +0300
Message-Id: <20230421120307.24793-9-ville.syrjala@linux.intel.com>
X-Mailer: git-send-email 2.39.2
In-Reply-To: <20230421120307.24793-1-ville.syrjala@linux.intel.com>
References: <20230421120307.24793-1-ville.syrjala@linux.intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH 08/13] drm/i915/psr: Implement
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
2.39.2

