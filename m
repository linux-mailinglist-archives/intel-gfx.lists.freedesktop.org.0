Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id B29D6748EC2
	for <lists+intel-gfx@lfdr.de>; Wed,  5 Jul 2023 22:21:36 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 7E02F10E3C5;
	Wed,  5 Jul 2023 20:21:33 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
 by gabe.freedesktop.org (Postfix) with ESMTPS id C283E10E3C4
 for <intel-gfx@lists.freedesktop.org>; Wed,  5 Jul 2023 20:21:31 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1688588491; x=1720124491;
 h=from:to:subject:date:message-id:in-reply-to:references:
 mime-version:content-transfer-encoding;
 bh=8KpoaPnLpI28kQAaEeqc3qKxN7yJfaT160V9S5tt9Hc=;
 b=IhpT66p57WZ2Z2CuCzoO9v3XH2sEEOcNapCWZYrHB6hsERPsxE/Bi07l
 fKidHiwvDTEBqj/7F94jNdDGj90LBMofAMW4AOyh0ulU3tsbvK/JaEUwo
 3NRXKiW4rDw5Lxo5Wo9uoeQBtowa9xlLdVCwgRJWuKlXSWYhUbl08kYrB
 Sno7TqObp+lWUoLqvthJH7lRPAdQGobTFeu+B/1Kk8rdwelleZQX/lCiM
 +s5+rYaFZ4PNTm+3zNvj0RxgZPLg9YssyMW9W4lUstUlS8GtKxF4EgvkB
 eSVpxLcX/GbiFl2AoCUDfjq73VIkX49I2MGStWh71WHfkIdjezXttLSkC w==;
X-IronPort-AV: E=McAfee;i="6600,9927,10762"; a="353269019"
X-IronPort-AV: E=Sophos;i="6.01,184,1684825200"; d="scan'208";a="353269019"
Received: from orsmga001.jf.intel.com ([10.7.209.18])
 by orsmga101.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 05 Jul 2023 13:21:31 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10762"; a="754491085"
X-IronPort-AV: E=Sophos;i="6.01,184,1684825200"; d="scan'208";a="754491085"
Received: from stinkpipe.fi.intel.com (HELO stinkbox) ([10.237.72.70])
 by orsmga001.jf.intel.com with SMTP; 05 Jul 2023 13:21:29 -0700
Received: by stinkbox (sSMTP sendmail emulation);
 Wed, 05 Jul 2023 23:21:28 +0300
From: Ville Syrjala <ville.syrjala@linux.intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Wed,  5 Jul 2023 23:21:11 +0300
Message-Id: <20230705202122.17915-3-ville.syrjala@linux.intel.com>
X-Mailer: git-send-email 2.39.3
In-Reply-To: <20230705202122.17915-1-ville.syrjala@linux.intel.com>
References: <20230705202122.17915-1-ville.syrjala@linux.intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH 02/13] drm/i915/sdvo: Protect macro args
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

Put parens around macro argument evaluation for safety.

Signed-off-by: Ville Syrjälä <ville.syrjala@linux.intel.com>
---
 drivers/gpu/drm/i915/display/intel_sdvo.c | 13 ++++++-------
 1 file changed, 6 insertions(+), 7 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_sdvo.c b/drivers/gpu/drm/i915/display/intel_sdvo.c
index 9ac4c0b6055b..ec94da6cb7bb 100644
--- a/drivers/gpu/drm/i915/display/intel_sdvo.c
+++ b/drivers/gpu/drm/i915/display/intel_sdvo.c
@@ -57,14 +57,13 @@
 #define SDVO_LVDS_MASK (SDVO_OUTPUT_LVDS0 | SDVO_OUTPUT_LVDS1)
 #define SDVO_TV_MASK   (SDVO_OUTPUT_CVBS0 | SDVO_OUTPUT_SVID0 | SDVO_OUTPUT_YPRPB0)
 
-#define SDVO_OUTPUT_MASK (SDVO_TMDS_MASK | SDVO_RGB_MASK | SDVO_LVDS_MASK |\
-			SDVO_TV_MASK)
+#define SDVO_OUTPUT_MASK (SDVO_TMDS_MASK | SDVO_RGB_MASK | SDVO_LVDS_MASK | SDVO_TV_MASK)
 
-#define IS_TV(c)	(c->output_flag & SDVO_TV_MASK)
-#define IS_TMDS(c)	(c->output_flag & SDVO_TMDS_MASK)
-#define IS_LVDS(c)	(c->output_flag & SDVO_LVDS_MASK)
-#define IS_TV_OR_LVDS(c) (c->output_flag & (SDVO_TV_MASK | SDVO_LVDS_MASK))
-#define IS_DIGITAL(c) (c->output_flag & (SDVO_TMDS_MASK | SDVO_LVDS_MASK))
+#define IS_TV(c)		((c)->output_flag & SDVO_TV_MASK)
+#define IS_TMDS(c)		((c)->output_flag & SDVO_TMDS_MASK)
+#define IS_LVDS(c)		((c)->output_flag & SDVO_LVDS_MASK)
+#define IS_TV_OR_LVDS(c)	((c)->output_flag & (SDVO_TV_MASK | SDVO_LVDS_MASK))
+#define IS_DIGITAL(c)		((c)->output_flag & (SDVO_TMDS_MASK | SDVO_LVDS_MASK))
 
 
 static const char * const tv_format_names[] = {
-- 
2.39.3

