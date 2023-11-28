Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id BF8EE7FB9B1
	for <lists+intel-gfx@lfdr.de>; Tue, 28 Nov 2023 12:51:57 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 5218510E4EA;
	Tue, 28 Nov 2023 11:51:56 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [134.134.136.100])
 by gabe.freedesktop.org (Postfix) with ESMTPS id D262E10E4EA
 for <intel-gfx@lists.freedesktop.org>; Tue, 28 Nov 2023 11:51:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1701172313; x=1732708313;
 h=from:to:subject:date:message-id:in-reply-to:references:
 mime-version:content-transfer-encoding;
 bh=AF1YDEV+Dn6ipMi57sQGq7y7PkB54VLWbUwxk2veq3M=;
 b=O90E71HKp9kRVjJB3BYJrJG9Ee9FP0w0hfO7acAP8Qqa736lvXMTPkvT
 PmQt1d71Dq21irpiuYN6TKGRT49nuI0tQ1H9YfcMMt44Xx/m0khb0SRzA
 3+OgUvXXVc63uNXi3f1e1gnVBHpSC7OcnU95Of//h+EkzPztxDb6+Ybee
 ehytC8hgHjtBMnBKPsuGPkY5/NNg3tDAP2Dl1XJszjcPsZWnc4mw5kFiL
 MVuliyw4Ak/SNd3JYFXt3ZLkxcJxuk4BH773v4j5adcgRsafb25B5PplT
 BUJbLsu5eRYi24uy7MtxFkWrNu48Jo0UbXAXDvt0HRJU7hk4W4gceDxQ/ w==;
X-IronPort-AV: E=McAfee;i="6600,9927,10907"; a="459411599"
X-IronPort-AV: E=Sophos;i="6.04,233,1695711600"; d="scan'208";a="459411599"
Received: from orsmga007.jf.intel.com ([10.7.209.58])
 by orsmga105.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 28 Nov 2023 03:51:53 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10907"; a="761907442"
X-IronPort-AV: E=Sophos;i="6.04,233,1695711600"; d="scan'208";a="761907442"
Received: from stinkpipe.fi.intel.com (HELO stinkbox) ([10.237.72.74])
 by orsmga007.jf.intel.com with SMTP; 28 Nov 2023 03:51:51 -0800
Received: by stinkbox (sSMTP sendmail emulation);
 Tue, 28 Nov 2023 13:51:50 +0200
From: Ville Syrjala <ville.syrjala@linux.intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Tue, 28 Nov 2023 13:51:34 +0200
Message-ID: <20231128115138.13238-5-ville.syrjala@linux.intel.com>
X-Mailer: git-send-email 2.41.0
In-Reply-To: <20231128115138.13238-1-ville.syrjala@linux.intel.com>
References: <20231128115138.13238-1-ville.syrjala@linux.intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH 4/8] drm/i915/cdclk: Rewrite
 cdclk->voltage_level selection to use tables
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

The cdclk->voltage_level if ladders are hard to read, especially as
they're written the other way around compared to how bspec lists
the limits. Let's rewrite them to use simple arrays that gives us
the max cdclk for each voltage level.

Signed-off-by: Ville Syrjälä <ville.syrjala@linux.intel.com>
---
 drivers/gpu/drm/i915/display/intel_cdclk.c | 83 ++++++++++++++--------
 1 file changed, 53 insertions(+), 30 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_cdclk.c b/drivers/gpu/drm/i915/display/intel_cdclk.c
index d45071675629..6f0a050ad663 100644
--- a/drivers/gpu/drm/i915/display/intel_cdclk.c
+++ b/drivers/gpu/drm/i915/display/intel_cdclk.c
@@ -1446,50 +1446,73 @@ static u8 bxt_calc_voltage_level(int cdclk)
 	return DIV_ROUND_UP(cdclk, 25000);
 }
 
+static u8 calc_voltage_level(int cdclk, int num_voltage_levels,
+			     const int voltage_level_max_cdclk[])
+{
+	int voltage_level;
+
+	for (voltage_level = 0; voltage_level < num_voltage_levels; voltage_level++) {
+		if (cdclk <= voltage_level_max_cdclk[voltage_level])
+			return voltage_level;
+	}
+
+	MISSING_CASE(cdclk);
+	return num_voltage_levels - 1;
+}
+
 static u8 icl_calc_voltage_level(int cdclk)
 {
-	if (cdclk > 556800)
-		return 2;
-	else if (cdclk > 312000)
-		return 1;
-	else
-		return 0;
+	static const int icl_voltage_level_max_cdclk[] = {
+		[0] = 312000,
+		[1] = 556800,
+		[2] = 652800,
+	};
+
+	return calc_voltage_level(cdclk,
+				  ARRAY_SIZE(icl_voltage_level_max_cdclk),
+				  icl_voltage_level_max_cdclk);
 }
 
 static u8 ehl_calc_voltage_level(int cdclk)
 {
-	if (cdclk > 326400)
-		return 3;
-	else if (cdclk > 312000)
-		return 2;
-	else if (cdclk > 180000)
-		return 1;
-	else
-		return 0;
+	static const int ehl_voltage_level_max_cdclk[] = {
+		[0] = 180000,
+		[1] = 312000,
+		[2] = 326400,
+		[3] = 556800,
+	};
+
+	return calc_voltage_level(cdclk,
+				  ARRAY_SIZE(ehl_voltage_level_max_cdclk),
+				  ehl_voltage_level_max_cdclk);
 }
 
 static u8 tgl_calc_voltage_level(int cdclk)
 {
-	if (cdclk > 556800)
-		return 3;
-	else if (cdclk > 326400)
-		return 2;
-	else if (cdclk > 312000)
-		return 1;
-	else
-		return 0;
+	static const int tgl_voltage_level_max_cdclk[] = {
+		[0] = 312000,
+		[1] = 326400,
+		[2] = 556800,
+		[3] = 652800,
+	};
+
+	return calc_voltage_level(cdclk,
+				  ARRAY_SIZE(tgl_voltage_level_max_cdclk),
+				  tgl_voltage_level_max_cdclk);
 }
 
 static u8 rplu_calc_voltage_level(int cdclk)
 {
-	if (cdclk > 556800)
-		return 3;
-	else if (cdclk > 480000)
-		return 2;
-	else if (cdclk > 312000)
-		return 1;
-	else
-		return 0;
+	static const int rplu_voltage_level_max_cdclk[] = {
+		[0] = 312000,
+		[1] = 480000,
+		[2] = 556800,
+		[3] = 652800,
+	};
+
+	return calc_voltage_level(cdclk,
+				  ARRAY_SIZE(rplu_voltage_level_max_cdclk),
+				  rplu_voltage_level_max_cdclk);
 }
 
 static void icl_readout_refclk(struct drm_i915_private *dev_priv,
-- 
2.41.0

