Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id ADE9480DE15
	for <lists+intel-gfx@lfdr.de>; Mon, 11 Dec 2023 23:18:06 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 3C08410E50C;
	Mon, 11 Dec 2023 22:18:05 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [134.134.136.24])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 4588510E50A
 for <intel-gfx@lists.freedesktop.org>; Mon, 11 Dec 2023 22:18:03 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1702333083; x=1733869083;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=AmqyuhUZoBTpmo+paVpGGzeh611D2blm/ahaE3PC1MM=;
 b=MBLAjILtcbAgwTQdvZyKK3UXiHaUZA4XxKzPwep3UeEzmDXCLEDYm/3L
 T+4MYrtG6LR6N8szECSb386Zg5z7tQ0ya5NtMwbhGb71+LmnCJbwwpCTE
 vh1hedEw7WZyq3LlTHJNTnk/qfQdEjnlIINQy/8N06bv1VU8OAkQNeZdK
 36vYGV0hAqaHmxaXsk7RSfEAcskSNlSsvOHuBxBUOnzoAM/6+/Py7kUKc
 TuQeT70MlwuMMLYa12IExAjyNr2xOhoac2SwR4uuW8eew6h3NsOxqlS3l
 y5HYn+E+TOOHF9uoGlhO3mKlF/xzG3SRIVFwPuoHe+T3cugXgulfpMiLA g==;
X-IronPort-AV: E=McAfee;i="6600,9927,10921"; a="397504237"
X-IronPort-AV: E=Sophos;i="6.04,268,1695711600"; d="scan'208";a="397504237"
Received: from orsmga007.jf.intel.com ([10.7.209.58])
 by orsmga102.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 11 Dec 2023 14:18:02 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10921"; a="766555240"
X-IronPort-AV: E=Sophos;i="6.04,268,1695711600"; d="scan'208";a="766555240"
Received: from stinkpipe.fi.intel.com (HELO stinkbox) ([10.237.72.74])
 by orsmga007.jf.intel.com with SMTP; 11 Dec 2023 14:18:00 -0800
Received: by stinkbox (sSMTP sendmail emulation);
 Tue, 12 Dec 2023 00:17:59 +0200
From: Ville Syrjala <ville.syrjala@linux.intel.com>
To: intel-gfx@lists.freedesktop.org
Subject: [PATCH v2 4/8] drm/i915/cdclk: Rewrite cdclk->voltage_level selection
 to use tables
Date: Tue, 12 Dec 2023 00:17:59 +0200
Message-ID: <20231211221759.29725-1-ville.syrjala@linux.intel.com>
X-Mailer: git-send-email 2.41.0
In-Reply-To: <20231128115138.13238-5-ville.syrjala@linux.intel.com>
References: <20231128115138.13238-5-ville.syrjala@linux.intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
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

The cdclk->voltage_level if ladders are hard to read, especially as
they're written the other way around compared to how bspec lists
the limits. Let's rewrite them to use simple arrays that gives us
the max cdclk for each voltage level.

v2: Bump the jsl/ehl max cdclk in the table to 652.8 MHz to
    accomodate JSL machines in CI that boot with high cdclk

Reviewed-by: Gustavo Sousa <gustavo.sousa@intel.com>
Signed-off-by: Ville Syrjälä <ville.syrjala@linux.intel.com>
---
 drivers/gpu/drm/i915/display/intel_cdclk.c | 87 ++++++++++++++--------
 1 file changed, 57 insertions(+), 30 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_cdclk.c b/drivers/gpu/drm/i915/display/intel_cdclk.c
index 5161c30af558..c34172adcb3a 100644
--- a/drivers/gpu/drm/i915/display/intel_cdclk.c
+++ b/drivers/gpu/drm/i915/display/intel_cdclk.c
@@ -1446,50 +1446,77 @@ static u8 bxt_calc_voltage_level(int cdclk)
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
+		/*
+		 * Bspec lists the limit as 556.8 MHz, but some JSL
+		 * development boards (at least) boot with 652.8 MHz
+		 */
+		[3] = 652800,
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

