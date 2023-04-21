Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 3AA8A6EA9E2
	for <lists+intel-gfx@lfdr.de>; Fri, 21 Apr 2023 14:03:36 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id A536810EE11;
	Fri, 21 Apr 2023 12:03:34 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 2551510EE0E
 for <intel-gfx@lists.freedesktop.org>; Fri, 21 Apr 2023 12:03:32 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1682078612; x=1713614612;
 h=from:to:subject:date:message-id:in-reply-to:references:
 mime-version:content-transfer-encoding;
 bh=f1bt7UAh1SjmLvSQcDXFj4MJVl4KBjzGlz+bVwnbLnc=;
 b=l77pHtDVEN8QrX2zL2Pi2oW7JRD9q3moVsSC4XqqiOEerl52Khava60C
 Bf0QhkZV2HekJPjsqtxrv2xpX/Agh8WXpaPmU+co5BP08rbz6EsgULwLj
 7s6qDECNk8gVHe/nEJfGGHEO5bWt2Qm5NdGgW+WStd94Wz4Tp97WL5GqF
 kGLSCkZQEkR79js7yUNGKZ4bKE/Y1r3aK9aUlejcZc8R0MlFdeLPlsptT
 W0X0datipp7PMxQrXps/wCCvPcAQZkDdF/QBuVcPrKyClUL8oaahgtdmz
 CGIolcREcteAAexmWXaV9FomzsUTKv/e793QPR75Av1mGv1sQwliRGS8q Q==;
X-IronPort-AV: E=McAfee;i="6600,9927,10686"; a="373900112"
X-IronPort-AV: E=Sophos;i="5.99,214,1677571200"; d="scan'208";a="373900112"
Received: from orsmga008.jf.intel.com ([10.7.209.65])
 by fmsmga101.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 21 Apr 2023 05:03:31 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10686"; a="722725450"
X-IronPort-AV: E=Sophos;i="5.99,214,1677571200"; d="scan'208";a="722725450"
Received: from stinkpipe.fi.intel.com (HELO stinkbox) ([10.237.72.70])
 by orsmga008.jf.intel.com with SMTP; 21 Apr 2023 05:03:29 -0700
Received: by stinkbox (sSMTP sendmail emulation);
 Fri, 21 Apr 2023 15:03:29 +0300
From: Ville Syrjala <ville.syrjala@linux.intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Fri, 21 Apr 2023 15:03:01 +0300
Message-Id: <20230421120307.24793-8-ville.syrjala@linux.intel.com>
X-Mailer: git-send-email 2.39.2
In-Reply-To: <20230421120307.24793-1-ville.syrjala@linux.intel.com>
References: <20230421120307.24793-1-ville.syrjala@linux.intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH 07/13] drm/i915/psr: Restore PSR interrupt
 handler for HSW
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

Add the PSR interrupt handling code back for HSW. Looks like
the removal was never completed anyway since the irq setup
code was lest untouched.

Signed-off-by: Ville Syrjälä <ville.syrjala@linux.intel.com>
---
 drivers/gpu/drm/i915/i915_irq.c | 14 ++++++++++++++
 1 file changed, 14 insertions(+)

diff --git a/drivers/gpu/drm/i915/i915_irq.c b/drivers/gpu/drm/i915/i915_irq.c
index 2b94b8ca8ec9..e1c57ba4f80a 100644
--- a/drivers/gpu/drm/i915/i915_irq.c
+++ b/drivers/gpu/drm/i915/i915_irq.c
@@ -1781,6 +1781,20 @@ static void ivb_display_irq_handler(struct drm_i915_private *dev_priv,
 	if (de_iir & DE_ERR_INT_IVB)
 		ivb_err_int_handler(dev_priv);
 
+	if (de_iir & DE_EDP_PSR_INT_HSW) {
+		struct intel_encoder *encoder;
+
+		for_each_intel_encoder_with_psr(&dev_priv->drm, encoder) {
+			struct intel_dp *intel_dp = enc_to_intel_dp(encoder);
+			u32 psr_iir;
+
+			psr_iir = intel_uncore_rmw(&dev_priv->uncore,
+						   EDP_PSR_IIR, 0, 0);
+			intel_psr_irq_handler(intel_dp, psr_iir);
+			break;
+		}
+	}
+
 	if (de_iir & DE_AUX_CHANNEL_A_IVB)
 		dp_aux_irq_handler(dev_priv);
 
-- 
2.39.2

