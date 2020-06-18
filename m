Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 7D1DD1FDA64
	for <lists+intel-gfx@lfdr.de>; Thu, 18 Jun 2020 02:43:09 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id C5AD86EA15;
	Thu, 18 Jun 2020 00:42:55 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
 by gabe.freedesktop.org (Postfix) with ESMTPS id D52896E150
 for <intel-gfx@lists.freedesktop.org>; Thu, 18 Jun 2020 00:42:51 +0000 (UTC)
IronPort-SDR: 4/RD2PjDJcBi2RuTGp/eJpaXXbVZpHNNab+aMK2anmj0nGuoIS1xmO7QgeJCzVjIGetDAJvPh1
 jJxYJjjlRUTg==
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga006.fm.intel.com ([10.253.24.20])
 by fmsmga101.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 17 Jun 2020 17:42:51 -0700
IronPort-SDR: 7vLprxlX0OFez0PD3Jvede0edwsorDAka0zYo/qTpXtOixtDCrlXjyNr24ORtlyIIuNPbcyj2D
 yLFj16B7ISHQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.73,524,1583222400"; d="scan'208";a="477011865"
Received: from ldmartin1-desk.jf.intel.com ([10.165.21.151])
 by fmsmga006.fm.intel.com with ESMTP; 17 Jun 2020 17:42:51 -0700
From: Lucas De Marchi <lucas.demarchi@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Wed, 17 Jun 2020 17:42:20 -0700
Message-Id: <20200618004240.16263-13-lucas.demarchi@intel.com>
X-Mailer: git-send-email 2.26.2
In-Reply-To: <20200618004240.16263-1-lucas.demarchi@intel.com>
References: <20200618004240.16263-1-lucas.demarchi@intel.com>
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH v2 12/32] drm/i915/dg1: Initialize RAWCLK
 properly
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

From: Matt Roper <matthew.d.roper@intel.com>

DG1 always uses a 38.4 MHz rawclk rather than the 19.2/24 MHz
frequencies on CNP+.  Note that register bits associated with this
frequency confusingly use 37 for the divider field rather than 38 as you
might expect.

For simplicity, let's just assume that this 38.4 MHz frequency will hold
true for other future platforms with "fake" PCH south displays and that
the CNP-style behavior will remain for other platforms with a real PCH.

Bspec: 49950
Bspec: 49309
Cc: Aditya Swarup <aditya.swarup@intel.com>
Cc: Clinton Taylor <Clinton.A.Taylor@intel.com>
Cc: Lucas De Marchi <lucas.demarchi@intel.com>
Signed-off-by: Matt Roper <matthew.d.roper@intel.com>
Signed-off-by: Lucas De Marchi <lucas.demarchi@intel.com>
---
 drivers/gpu/drm/i915/display/intel_cdclk.c | 16 +++++++++++++++-
 1 file changed, 15 insertions(+), 1 deletion(-)

diff --git a/drivers/gpu/drm/i915/display/intel_cdclk.c b/drivers/gpu/drm/i915/display/intel_cdclk.c
index 45f7f33d11447..3aea30ba9f743 100644
--- a/drivers/gpu/drm/i915/display/intel_cdclk.c
+++ b/drivers/gpu/drm/i915/display/intel_cdclk.c
@@ -2673,6 +2673,18 @@ void intel_update_cdclk(struct drm_i915_private *dev_priv)
 		               DIV_ROUND_UP(dev_priv->cdclk.hw.cdclk, 1000));
 }
 
+static int dg1_rawclk(struct drm_i915_private *dev_priv)
+{
+	/*
+	 * DG1 always uses a 38.4 MHz rawclk.  The bspec tells us
+	 * "Program Numerator=2, Denominator=4, Divider=37 decimal."
+	 */
+	I915_WRITE(PCH_RAWCLK_FREQ,
+		   CNP_RAWCLK_DEN(4) | CNP_RAWCLK_DIV(37) | ICP_RAWCLK_NUM(2));
+
+	return 38400;
+}
+
 static int cnp_rawclk(struct drm_i915_private *dev_priv)
 {
 	u32 rawclk;
@@ -2781,7 +2793,9 @@ u32 intel_read_rawclk(struct drm_i915_private *dev_priv)
 {
 	u32 freq;
 
-	if (INTEL_PCH_TYPE(dev_priv) >= PCH_CNP)
+	if (INTEL_PCH_TYPE(dev_priv) >= PCH_DG1)
+		freq = dg1_rawclk(dev_priv);
+	else if (INTEL_PCH_TYPE(dev_priv) >= PCH_CNP)
 		freq = cnp_rawclk(dev_priv);
 	else if (HAS_PCH_SPLIT(dev_priv))
 		freq = pch_rawclk(dev_priv);
-- 
2.26.2

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
