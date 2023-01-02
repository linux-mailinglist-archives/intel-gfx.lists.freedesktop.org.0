Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id C248065AD6F
	for <lists+intel-gfx@lfdr.de>; Mon,  2 Jan 2023 07:20:22 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id D0E6710E189;
	Mon,  2 Jan 2023 06:20:18 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
 by gabe.freedesktop.org (Postfix) with ESMTPS id B8EB210E18A
 for <intel-gfx@lists.freedesktop.org>; Mon,  2 Jan 2023 06:20:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1672640416; x=1704176416;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=W5+ctQ3tDOqnZCDqpB97AV1hp7iuSH53nHrmhhP2B50=;
 b=TNfpFYU41dyQ5ISpbZ0e3vb2tv/otub4wxnjZBBN6U7hVE7R15tDFrst
 nfgvTv2xQUdHwyQIjHNUsIXvogaSFj45wuE2lW0mHOGNXHnt8jGfpjWan
 B4X0QDZVD7D42nUj3wq2ok/WEp5N0Xe+PNI+WwFwyc4Aar/0MXjEjW+dX
 SwsM2zYlyD2ceHbw0VC1ftsa3fqIyCf79Bi7Y2Q5j9tCrH729Uw9aACSF
 ktA1HgTY4riib6OfP4jVWj3b5l1XlXt3W9CNPwSK3iV1HZ7v6kqO5LkM7
 LVRNd90GTtK0DBZG+Q2A/dPS90IHv6k9PaFWSwfZcOQwxxv3Toqqo05xt g==;
X-IronPort-AV: E=McAfee;i="6500,9779,10577"; a="348657602"
X-IronPort-AV: E=Sophos;i="5.96,293,1665471600"; d="scan'208";a="348657602"
Received: from orsmga007.jf.intel.com ([10.7.209.58])
 by fmsmga101.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 01 Jan 2023 22:20:16 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6500,9779,10577"; a="647840562"
X-IronPort-AV: E=Sophos;i="5.96,293,1665471600"; d="scan'208";a="647840562"
Received: from chaitanya.iind.intel.com ([10.190.239.113])
 by orsmga007.jf.intel.com with ESMTP; 01 Jan 2023 22:20:13 -0800
From: Chaitanya Kumar Borah <chaitanya.kumar.borah@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Mon,  2 Jan 2023 11:50:03 +0530
Message-Id: <20230102062005.720964-3-chaitanya.kumar.borah@intel.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20230102062005.720964-1-chaitanya.kumar.borah@intel.com>
References: <20230102062005.720964-1-chaitanya.kumar.borah@intel.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [RFC 2/4] drm/i915/display: Add 480 MHz CDCLK steps for
 RPL-U
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
Cc: ville.syrjala@intel.com
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

A new step of 480MHz has been added on SKUs that have a RPL-U
device id to support 120Hz displays more efficiently. Use a
new quirk to identify the machine for which this change needs
to be applied.

BSpec: 55409

Signed-off-by: Chaitanya Kumar Borah <chaitanya.kumar.borah@intel.com>
---
 drivers/gpu/drm/i915/display/intel_cdclk.c | 25 ++++++++++++++++++++++
 1 file changed, 25 insertions(+)

diff --git a/drivers/gpu/drm/i915/display/intel_cdclk.c b/drivers/gpu/drm/i915/display/intel_cdclk.c
index 0c107a38f9d0..f5df0a806765 100644
--- a/drivers/gpu/drm/i915/display/intel_cdclk.c
+++ b/drivers/gpu/drm/i915/display/intel_cdclk.c
@@ -38,6 +38,7 @@
 #include "intel_pcode.h"
 #include "intel_psr.h"
 #include "vlv_sideband.h"
+#include "intel_quirks.h"
 
 /**
  * DOC: CDCLK / RAWCLK
@@ -1329,6 +1330,27 @@ static const struct intel_cdclk_vals adlp_cdclk_table[] = {
 	{}
 };
 
+static const struct intel_cdclk_vals rplu_cdclk_table[] = {
+	{ .refclk = 19200, .cdclk = 172800, .divider = 3, .ratio = 27 },
+	{ .refclk = 19200, .cdclk = 192000, .divider = 2, .ratio = 20 },
+	{ .refclk = 19200, .cdclk = 480000, .divider = 2, .ratio = 50 },
+	{ .refclk = 19200, .cdclk = 556800, .divider = 2, .ratio = 58 },
+	{ .refclk = 19200, .cdclk = 652800, .divider = 2, .ratio = 68 },
+
+	{ .refclk = 24000, .cdclk = 176000, .divider = 3, .ratio = 22 },
+	{ .refclk = 24000, .cdclk = 192000, .divider = 2, .ratio = 16 },
+	{ .refclk = 24000, .cdclk = 480000, .divider = 2, .ratio = 40 },
+	{ .refclk = 24000, .cdclk = 552000, .divider = 2, .ratio = 46 },
+	{ .refclk = 24400, .cdclk = 648000, .divider = 2, .ratio = 54 },
+
+	{ .refclk = 38400, .cdclk = 179200, .divider = 3, .ratio = 14 },
+	{ .refclk = 38400, .cdclk = 192000, .divider = 2, .ratio = 10 },
+	{ .refclk = 38400, .cdclk = 480000, .divider = 2, .ratio = 25 },
+	{ .refclk = 38400, .cdclk = 556800, .divider = 2, .ratio = 29 },
+	{ .refclk = 38400, .cdclk = 652800, .divider = 2, .ratio = 34 },
+	{}
+};
+
 static const struct intel_cdclk_vals dg2_cdclk_table[] = {
 	{ .refclk = 38400, .cdclk = 163200, .divider = 2, .ratio = 34, .waveform = 0x8888 },
 	{ .refclk = 38400, .cdclk = 204000, .divider = 2, .ratio = 34, .waveform = 0x9248 },
@@ -3353,6 +3375,9 @@ void intel_init_cdclk_hooks(struct drm_i915_private *dev_priv)
 		/* Wa_22011320316:adl-p[a0] */
 		if (IS_ADLP_DISPLAY_STEP(dev_priv, STEP_A0, STEP_B0))
 			dev_priv->display.cdclk.table = adlp_a_step_cdclk_table;
+		/* BSpec: 55409 */
+		else if (intel_has_quirk(dev_priv, QUIRK_480MHZ_CDCLK_STEP))
+			dev_priv->display.cdclk.table = rplu_cdclk_table;
 		else
 			dev_priv->display.cdclk.table = adlp_cdclk_table;
 	} else if (IS_ROCKETLAKE(dev_priv)) {
-- 
2.25.1

