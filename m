Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 4B12F21B463
	for <lists+intel-gfx@lfdr.de>; Fri, 10 Jul 2020 13:59:18 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id C8CF86EBE7;
	Fri, 10 Jul 2020 11:59:16 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
 by gabe.freedesktop.org (Postfix) with ESMTPS id E97026EBE8
 for <intel-gfx@lists.freedesktop.org>; Fri, 10 Jul 2020 11:59:14 +0000 (UTC)
IronPort-SDR: wNSfzpcXsh82Qny7i9YW7ispTKxSX8mb19qg0hDjwxfVgnn0a2xL+oj+FTS8wsZveGZqozKibM
 ya8fvOed1njg==
X-IronPort-AV: E=McAfee;i="6000,8403,9677"; a="149653645"
X-IronPort-AV: E=Sophos;i="5.75,335,1589266800"; d="scan'208";a="149653645"
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga005.jf.intel.com ([10.7.209.41])
 by orsmga102.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 10 Jul 2020 04:59:14 -0700
IronPort-SDR: VSr1v6EKxZBmO+pf2AiuSrEDML2aFGFb3Sornca95+8XIDFRHuLYx+WWb+ByX7mDmpeM4zCGqO
 9P0yR3WH9/kA==
X-IronPort-AV: E=Sophos;i="5.75,335,1589266800"; d="scan'208";a="458257351"
Received: from nmartino-mobl1.ger.corp.intel.com (HELO
 mwahaha-bdw.ger.corp.intel.com) ([10.255.207.224])
 by orsmga005-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 10 Jul 2020 04:59:11 -0700
From: Matthew Auld <matthew.auld@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Fri, 10 Jul 2020 12:57:04 +0100
Message-Id: <20200710115757.290984-8-matthew.auld@intel.com>
X-Mailer: git-send-email 2.26.2
In-Reply-To: <20200710115757.290984-1-matthew.auld@intel.com>
References: <20200710115757.290984-1-matthew.auld@intel.com>
MIME-Version: 1.0
Subject: [Intel-gfx] [RFC 07/60] drm/i915/dg1: Initialize RAWCLK properly
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
Cc: Lucas De Marchi <lucas.demarchi@intel.com>
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
index bb91dace304a..a779da701ad5 100644
--- a/drivers/gpu/drm/i915/display/intel_cdclk.c
+++ b/drivers/gpu/drm/i915/display/intel_cdclk.c
@@ -2680,6 +2680,18 @@ void intel_update_cdclk(struct drm_i915_private *dev_priv)
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
@@ -2788,7 +2800,9 @@ u32 intel_read_rawclk(struct drm_i915_private *dev_priv)
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
