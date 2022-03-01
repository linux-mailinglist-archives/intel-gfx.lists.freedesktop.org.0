Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id F25584C918B
	for <lists+intel-gfx@lfdr.de>; Tue,  1 Mar 2022 18:31:42 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 35BC510E669;
	Tue,  1 Mar 2022 17:31:41 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga17.intel.com (mga17.intel.com [192.55.52.151])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 80FCA10E600
 for <intel-gfx@lists.freedesktop.org>; Tue,  1 Mar 2022 17:31:39 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1646155899; x=1677691899;
 h=from:to:subject:date:message-id:in-reply-to:references:
 mime-version:content-transfer-encoding;
 bh=8otEQLJA5Xcd/S90ZH7DgsAXoMkbidLUXIECBqnOrHY=;
 b=kRO7Jbi5uXDp+a8PA2W9bRkllpvLSe2sm10OoG6G5xj9YCYUPYKeCzJ7
 6gqdXbQoBpupJpDIyyd5gWbT8MJtWf0xm6noxgYqAd8xaMGWbtrwtzHFq
 rZlcB80NgVTDvyn7+HnLEzPOAbo3Q3aS0kV/PS9353xO4ENeKtQ5tG/uV
 oBsp9KEc5R8RcbCeEbdp16jQ8j8V6bFjRzO3f9l4kHpjRqPwIp34akNoO
 XZjTExFBmq/DP+UTwGdVyBqA8mHpRTt0Mki12npJXxH+hgyhTj9Pah4T5
 0uN5Qh2DwtDDq3SLuqG/hJFpdY3eGyj0Ga1D2CIgAhjBOi3zr9U4bfXm5 Q==;
X-IronPort-AV: E=McAfee;i="6200,9189,10273"; a="233810314"
X-IronPort-AV: E=Sophos;i="5.90,146,1643702400"; d="scan'208";a="233810314"
Received: from orsmga006.jf.intel.com ([10.7.209.51])
 by fmsmga107.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 01 Mar 2022 09:31:35 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.90,146,1643702400"; d="scan'208";a="510599597"
Received: from stinkpipe.fi.intel.com (HELO stinkbox) ([10.237.72.151])
 by orsmga006.jf.intel.com with SMTP; 01 Mar 2022 09:31:32 -0800
Received: by stinkbox (sSMTP sendmail emulation);
 Tue, 01 Mar 2022 19:31:32 +0200
From: Ville Syrjala <ville.syrjala@linux.intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Tue,  1 Mar 2022 19:31:18 +0200
Message-Id: <20220301173128.6988-2-ville.syrjala@linux.intel.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20220301173128.6988-1-ville.syrjala@linux.intel.com>
References: <20220301173128.6988-1-ville.syrjala@linux.intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH 01/11] drm/i915: Nuke skl_wrpll_context_init()
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

We can trivially replace skl_wrpll_context_init() with a single
designated initializer.

Signed-off-by: Ville Syrjälä <ville.syrjala@linux.intel.com>
---
 drivers/gpu/drm/i915/display/intel_dpll_mgr.c | 13 +++----------
 1 file changed, 3 insertions(+), 10 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_dpll_mgr.c b/drivers/gpu/drm/i915/display/intel_dpll_mgr.c
index 569903d47aea..1b1b70f0ff93 100644
--- a/drivers/gpu/drm/i915/display/intel_dpll_mgr.c
+++ b/drivers/gpu/drm/i915/display/intel_dpll_mgr.c
@@ -1330,13 +1330,6 @@ struct skl_wrpll_context {
 	unsigned int p;			/* chosen divider */
 };
 
-static void skl_wrpll_context_init(struct skl_wrpll_context *ctx)
-{
-	memset(ctx, 0, sizeof(*ctx));
-
-	ctx->min_deviation = U64_MAX;
-}
-
 /* DCO freq must be within +1%/-6%  of the DCO central freq */
 #define SKL_DCO_MAX_PDEVIATION	100
 #define SKL_DCO_MAX_NDEVIATION	600
@@ -1519,12 +1512,12 @@ skl_ddi_calculate_wrpll(int clock /* in Hz */,
 		{ even_dividers, ARRAY_SIZE(even_dividers) },
 		{ odd_dividers, ARRAY_SIZE(odd_dividers) },
 	};
-	struct skl_wrpll_context ctx;
+	struct skl_wrpll_context ctx = {
+		.min_deviation = U64_MAX,
+	};
 	unsigned int dco, d, i;
 	unsigned int p0, p1, p2;
 
-	skl_wrpll_context_init(&ctx);
-
 	for (d = 0; d < ARRAY_SIZE(dividers); d++) {
 		for (dco = 0; dco < ARRAY_SIZE(dco_central_freq); dco++) {
 			for (i = 0; i < dividers[d].n_dividers; i++) {
-- 
2.34.1

