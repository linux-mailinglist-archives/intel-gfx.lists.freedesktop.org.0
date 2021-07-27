Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 512673D7038
	for <lists+intel-gfx@lfdr.de>; Tue, 27 Jul 2021 09:19:22 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id DABEC6E94C;
	Tue, 27 Jul 2021 07:19:16 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga12.intel.com (mga12.intel.com [192.55.52.136])
 by gabe.freedesktop.org (Postfix) with ESMTPS id CF9A56EB22
 for <intel-gfx@lists.freedesktop.org>; Tue, 27 Jul 2021 07:19:03 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6200,9189,10057"; a="191982335"
X-IronPort-AV: E=Sophos;i="5.84,272,1620716400"; d="scan'208";a="191982335"
Received: from fmsmga003.fm.intel.com ([10.253.24.29])
 by fmsmga106.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 27 Jul 2021 00:19:02 -0700
X-IronPort-AV: E=Sophos;i="5.84,272,1620716400"; d="scan'208";a="505378871"
Received: from lucas-s2600cw.jf.intel.com ([10.165.21.202])
 by fmsmga003-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 27 Jul 2021 00:19:02 -0700
From: Lucas De Marchi <lucas.demarchi@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Tue, 27 Jul 2021 00:18:26 -0700
Message-Id: <20210727071845.841554-9-lucas.demarchi@intel.com>
X-Mailer: git-send-email 2.31.1
In-Reply-To: <20210727071845.841554-1-lucas.demarchi@intel.com>
References: <20210727071845.841554-1-lucas.demarchi@intel.com>
MIME-Version: 1.0
Subject: [Intel-gfx] [CI 09/28] drm/i915/display: remove explicit CNL
 handling from intel_dp.c
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

The only real platform with DISPLAY_VER == 10 is GLK. We don't need to
handle CNL explicitly in intel_dp.c.

Remove code and rename functions/macros accordingly to use ICL prefix.

Signed-off-by: Lucas De Marchi <lucas.demarchi@intel.com>
Reviewed-by: Rodrigo Vivi <rodrigo.vivi@intel.com>
---
 drivers/gpu/drm/i915/display/intel_dp.c | 35 ++++---------------------
 1 file changed, 5 insertions(+), 30 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_dp.c b/drivers/gpu/drm/i915/display/intel_dp.c
index c386ef8eb200..db701ec5a221 100644
--- a/drivers/gpu/drm/i915/display/intel_dp.c
+++ b/drivers/gpu/drm/i915/display/intel_dp.c
@@ -222,29 +222,6 @@ bool intel_dp_can_bigjoiner(struct intel_dp *intel_dp)
 		 encoder->port != PORT_A);
 }
 
-static int cnl_max_source_rate(struct intel_dp *intel_dp)
-{
-	struct intel_digital_port *dig_port = dp_to_dig_port(intel_dp);
-	struct drm_i915_private *dev_priv = to_i915(dig_port->base.base.dev);
-	enum port port = dig_port->base.port;
-
-	u32 voltage = intel_de_read(dev_priv, CNL_PORT_COMP_DW3) & VOLTAGE_INFO_MASK;
-
-	/* Low voltage SKUs are limited to max of 5.4G */
-	if (voltage == VOLTAGE_INFO_0_85V)
-		return 540000;
-
-	/* For this SKU 8.1G is supported in all ports */
-	if (IS_CNL_WITH_PORT_F(dev_priv))
-		return 810000;
-
-	/* For other SKUs, max rate on ports A and D is 5.4G */
-	if (port == PORT_A || port == PORT_D)
-		return 540000;
-
-	return 810000;
-}
-
 static int icl_max_source_rate(struct intel_dp *intel_dp)
 {
 	struct intel_digital_port *dig_port = dp_to_dig_port(intel_dp);
@@ -270,7 +247,7 @@ static void
 intel_dp_set_source_rates(struct intel_dp *intel_dp)
 {
 	/* The values must be in increasing order */
-	static const int cnl_rates[] = {
+	static const int icl_rates[] = {
 		162000, 216000, 270000, 324000, 432000, 540000, 648000, 810000
 	};
 	static const int bxt_rates[] = {
@@ -295,12 +272,10 @@ intel_dp_set_source_rates(struct intel_dp *intel_dp)
 	drm_WARN_ON(&dev_priv->drm,
 		    intel_dp->source_rates || intel_dp->num_source_rates);
 
-	if (DISPLAY_VER(dev_priv) >= 11 || IS_CANNONLAKE(dev_priv)) {
-		source_rates = cnl_rates;
-		size = ARRAY_SIZE(cnl_rates);
-		if (DISPLAY_VER(dev_priv) == 10)
-			max_rate = cnl_max_source_rate(intel_dp);
-		else if (IS_JSL_EHL(dev_priv))
+	if (DISPLAY_VER(dev_priv) >= 11) {
+		source_rates = icl_rates;
+		size = ARRAY_SIZE(icl_rates);
+		if (IS_JSL_EHL(dev_priv))
 			max_rate = ehl_max_source_rate(intel_dp);
 		else
 			max_rate = icl_max_source_rate(intel_dp);
-- 
2.31.1

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
