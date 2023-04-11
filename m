Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 5D1C76DE48D
	for <lists+intel-gfx@lfdr.de>; Tue, 11 Apr 2023 21:14:56 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id E765710E62A;
	Tue, 11 Apr 2023 19:14:54 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
 by gabe.freedesktop.org (Postfix) with ESMTPS id BC73810E632
 for <intel-gfx@lists.freedesktop.org>; Tue, 11 Apr 2023 19:14:52 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1681240492; x=1712776492;
 h=from:to:subject:date:message-id:in-reply-to:references:
 mime-version:content-transfer-encoding;
 bh=Jyoyc2fxXeDrEAwt1nAsdli75/K0tbIpMflov+b65os=;
 b=POv5a8g7oycNeRcTl6czqEYcUzhihxDZ/xxVm3T3STb039qBagUxP92H
 r608q/7dBDCQRekszoG3ylh5BcQtqkgNEwxg9NS+youxpqIYkoUNt1rRq
 /9cIunwzO+YsdzxukYFwmEjlfJmhxpT2vQzj3INiodnI44nqO7jcAlB1n
 2E/d1i+Jzc8I2DeFk24Xm1tjyPX3Xzlq8HCJrlKXF4ox/88RdhRHej2iZ
 mrglEJtV9rLs0xiPQyE6zuMY4LkY2k4MJUpDHsELIV6mgDNAb1RY8YnoG
 kmbQqPThKvfwH3IK84um2cAO5L51IhQD2y1uiwGhjj+T44V5nxx/7Ejpg g==;
X-IronPort-AV: E=McAfee;i="6600,9927,10677"; a="341202067"
X-IronPort-AV: E=Sophos;i="5.98,336,1673942400"; d="scan'208";a="341202067"
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
 by fmsmga102.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 11 Apr 2023 12:14:52 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10677"; a="832446574"
X-IronPort-AV: E=Sophos;i="5.98,336,1673942400"; d="scan'208";a="832446574"
Received: from stinkpipe.fi.intel.com (HELO stinkbox) ([10.237.72.70])
 by fmsmga001.fm.intel.com with SMTP; 11 Apr 2023 12:14:50 -0700
Received: by stinkbox (sSMTP sendmail emulation);
 Tue, 11 Apr 2023 22:14:49 +0300
From: Ville Syrjala <ville.syrjala@linux.intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Tue, 11 Apr 2023 22:14:28 +0300
Message-Id: <20230411191429.29895-8-ville.syrjala@linux.intel.com>
X-Mailer: git-send-email 2.39.2
In-Reply-To: <20230411191429.29895-1-ville.syrjala@linux.intel.com>
References: <20230411191429.29895-1-ville.syrjala@linux.intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH v2 7/8] drm/i915/psr: Include PSR_PERF_CNT in
 debugfs output on all platforms
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

The fact that DC states reset the PSR perofrmance counter
is no reason not to include it in the debug output.
But let's keep the comment there to remind people about
that caveat.

Signed-off-by: Ville Syrjälä <ville.syrjala@linux.intel.com>
---
 drivers/gpu/drm/i915/display/intel_psr.c | 10 ++++------
 1 file changed, 4 insertions(+), 6 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_psr.c b/drivers/gpu/drm/i915/display/intel_psr.c
index 28817f7bd8c3..843fec3651e0 100644
--- a/drivers/gpu/drm/i915/display/intel_psr.c
+++ b/drivers/gpu/drm/i915/display/intel_psr.c
@@ -2872,12 +2872,10 @@ static int intel_psr_status(struct seq_file *m, struct intel_dp *intel_dp)
 	/*
 	 * SKL+ Perf counter is reset to 0 everytime DC state is entered
 	 */
-	if (IS_HASWELL(dev_priv) || IS_BROADWELL(dev_priv)) {
-		val = intel_de_read(dev_priv,
-				    EDP_PSR_PERF_CNT(intel_dp->psr.transcoder));
-		seq_printf(m, "Performance counter: %u\n",
-			   REG_FIELD_GET(EDP_PSR_PERF_CNT_MASK, val));
-	}
+	val = intel_de_read(dev_priv,
+			    EDP_PSR_PERF_CNT(intel_dp->psr.transcoder));
+	seq_printf(m, "Performance counter: %u\n",
+		   REG_FIELD_GET(EDP_PSR_PERF_CNT_MASK, val));
 
 	if (psr->debug & I915_PSR_DEBUG_IRQ) {
 		seq_printf(m, "Last attempted entry at: %lld\n",
-- 
2.39.2

