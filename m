Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 05383729C7C
	for <lists+intel-gfx@lfdr.de>; Fri,  9 Jun 2023 16:14:36 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 8C30810E6BD;
	Fri,  9 Jun 2023 14:14:34 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
 by gabe.freedesktop.org (Postfix) with ESMTPS id CB55B10E6BD
 for <intel-gfx@lists.freedesktop.org>; Fri,  9 Jun 2023 14:14:31 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1686320071; x=1717856071;
 h=from:to:subject:date:message-id:in-reply-to:references:
 mime-version:content-transfer-encoding;
 bh=6sUFSFnEh+1LWTfz42mkas8xodrdnmklGxqvCpy8RLQ=;
 b=ecbURyTHCWEUwuPI/8tKVso3RBgj+q6uxdoScf67yev1pGoSarUmUHHS
 rpc66RJPJFlj0Czeq1oZmZP+dBMYfaRuD7raAOqrK7uZxXZYdjQ3Hn24P
 JQnPaq/4f9snP5XBOufcuQhkua7KL+qvtmyfGdW1AekzodEraw1J1i+ja
 5mtPFp5tkzyphIKfN+NiU4M1P2JsItYY/X/NrNuS05IbwowRFthtfzvnw
 KdbpNR4/KgaaW0NsiaEpi3Di5Z3JzoX/Wkk6r6NT8YE+DQC/zokUT9f86
 0npolBF6djEDrQbhYpmgAXo2d52uxXUwXMAH1wGquTHvreZAeiPN6Rx52 A==;
X-IronPort-AV: E=McAfee;i="6600,9927,10736"; a="385966420"
X-IronPort-AV: E=Sophos;i="6.00,229,1681196400"; d="scan'208";a="385966420"
Received: from orsmga008.jf.intel.com ([10.7.209.65])
 by fmsmga101.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 09 Jun 2023 07:14:29 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10736"; a="740183110"
X-IronPort-AV: E=Sophos;i="6.00,229,1681196400"; d="scan'208";a="740183110"
Received: from stinkpipe.fi.intel.com (HELO stinkbox) ([10.237.72.70])
 by orsmga008.jf.intel.com with SMTP; 09 Jun 2023 07:14:27 -0700
Received: by stinkbox (sSMTP sendmail emulation);
 Fri, 09 Jun 2023 17:14:27 +0300
From: Ville Syrjala <ville.syrjala@linux.intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Fri,  9 Jun 2023 17:13:58 +0300
Message-Id: <20230609141404.12729-8-ville.syrjala@linux.intel.com>
X-Mailer: git-send-email 2.39.3
In-Reply-To: <20230609141404.12729-1-ville.syrjala@linux.intel.com>
References: <20230609141404.12729-1-ville.syrjala@linux.intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH v2 07/13] drm/i915/psr: Restore PSR interrupt
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
 drivers/gpu/drm/i915/display/intel_display_irq.c | 14 ++++++++++++++
 1 file changed, 14 insertions(+)

diff --git a/drivers/gpu/drm/i915/display/intel_display_irq.c b/drivers/gpu/drm/i915/display/intel_display_irq.c
index ae2578741dfe..ae98c99c5378 100644
--- a/drivers/gpu/drm/i915/display/intel_display_irq.c
+++ b/drivers/gpu/drm/i915/display/intel_display_irq.c
@@ -749,6 +749,20 @@ void ivb_display_irq_handler(struct drm_i915_private *dev_priv, u32 de_iir)
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
 		intel_dp_aux_irq_handler(dev_priv);
 
-- 
2.39.3

