Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id CD9924C918F
	for <lists+intel-gfx@lfdr.de>; Tue,  1 Mar 2022 18:31:53 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id D01CD10E6DA;
	Tue,  1 Mar 2022 17:31:51 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga05.intel.com (mga05.intel.com [192.55.52.43])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 500E910E6B9
 for <intel-gfx@lists.freedesktop.org>; Tue,  1 Mar 2022 17:31:50 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1646155910; x=1677691910;
 h=from:to:subject:date:message-id:in-reply-to:references:
 mime-version:content-transfer-encoding;
 bh=ooKPArky9AKB3eF+gbcEAdldgzWesN9wBWtxcA3nllU=;
 b=fpKWKOXN4NDazlN5JOizM+8rggs6PE622GtXEU62QM5vvkavsUb+ri+B
 jGlBveiMvsdhOtcsHFbQCvB8Vs2dAdOTc+3CL1grtkiJ+ugm84Mytcv/1
 D4C+GeENAx5vjJKEvdylRoYV02RNC3FYuy+we0dx+ricJf5Lb5J87RtIB
 8+a1AdRoN/SY9QkkJViLWCrcVvjD1EOKpC+4QOSD76Egyndy1seTAVPz8
 zuw3BvA4imyWNFK3uu6AAoP19ItFYp8aswzcJ7Q4HVPLtvCewfjx0aFJh
 xW3udrEpT+TnDbzvBZJxmLyzuoVjsnabdObm1WPMg4ptBcS59SeZUQpS/ A==;
X-IronPort-AV: E=McAfee;i="6200,9189,10273"; a="339627060"
X-IronPort-AV: E=Sophos;i="5.90,146,1643702400"; d="scan'208";a="339627060"
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
 by fmsmga105.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 01 Mar 2022 09:31:49 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.90,146,1643702400"; d="scan'208";a="639448980"
Received: from stinkpipe.fi.intel.com (HELO stinkbox) ([10.237.72.151])
 by fmsmga002.fm.intel.com with SMTP; 01 Mar 2022 09:31:47 -0800
Received: by stinkbox (sSMTP sendmail emulation);
 Tue, 01 Mar 2022 19:31:47 +0200
From: Ville Syrjala <ville.syrjala@linux.intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Tue,  1 Mar 2022 19:31:23 +0200
Message-Id: <20220301173128.6988-7-ville.syrjala@linux.intel.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20220301173128.6988-1-ville.syrjala@linux.intel.com>
References: <20220301173128.6988-1-ville.syrjala@linux.intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH 06/11] drm/i915: Use designated initializers for
 bxt_dp_clk_val[]
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

Use designated initializers to make it clear what is what,
and to decouple us from the specific ordering of the members.

Signed-off-by: Ville Syrjälä <ville.syrjala@linux.intel.com>
---
 drivers/gpu/drm/i915/display/intel_dpll_mgr.c | 14 +++++++-------
 1 file changed, 7 insertions(+), 7 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_dpll_mgr.c b/drivers/gpu/drm/i915/display/intel_dpll_mgr.c
index 8beec5ec72f8..899aa42a858f 100644
--- a/drivers/gpu/drm/i915/display/intel_dpll_mgr.c
+++ b/drivers/gpu/drm/i915/display/intel_dpll_mgr.c
@@ -2094,13 +2094,13 @@ struct bxt_clk_div {
 
 /* pre-calculated values for DP linkrates */
 static const struct bxt_clk_div bxt_dp_clk_val[] = {
-	{ 162000, 4, 2, 32, 1677722, 1 },
-	{ 270000, 4, 1, 27,       0, 1 },
-	{ 540000, 2, 1, 27,       0, 1 },
-	{ 216000, 3, 2, 32, 1677722, 1 },
-	{ 243000, 4, 1, 24, 1258291, 1 },
-	{ 324000, 4, 1, 32, 1677722, 1 },
-	{ 432000, 3, 1, 32, 1677722, 1 }
+	{ .clock = 162000, .p1 = 4, .p2 = 2, .m2_int = 32, .m2_frac = 1677722, .n = 1, },
+	{ .clock = 270000, .p1 = 4, .p2 = 1, .m2_int = 27, .m2_frac =       0, .n = 1, },
+	{ .clock = 540000, .p1 = 2, .p2 = 1, .m2_int = 27, .m2_frac =       0, .n = 1, },
+	{ .clock = 216000, .p1 = 3, .p2 = 2, .m2_int = 32, .m2_frac = 1677722, .n = 1, },
+	{ .clock = 243000, .p1 = 4, .p2 = 1, .m2_int = 24, .m2_frac = 1258291, .n = 1, },
+	{ .clock = 324000, .p1 = 4, .p2 = 1, .m2_int = 32, .m2_frac = 1677722, .n = 1, },
+	{ .clock = 432000, .p1 = 3, .p2 = 1, .m2_int = 32, .m2_frac = 1677722, .n = 1, },
 };
 
 static bool
-- 
2.34.1

