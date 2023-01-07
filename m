Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 8A133660C98
	for <lists+intel-gfx@lfdr.de>; Sat,  7 Jan 2023 06:37:00 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 342D310E908;
	Sat,  7 Jan 2023 05:36:58 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
 by gabe.freedesktop.org (Postfix) with ESMTPS id B0D0E10E908
 for <intel-gfx@lists.freedesktop.org>; Sat,  7 Jan 2023 05:36:55 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1673069815; x=1704605815;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=9wBEnVDfQGd6kHsBVl68L+A/EieoTC4rdgfXI8gvlS4=;
 b=la9crZtDQrx9P/vBdCAhWjeSyqpeYEc1mer01yrQV8lzyzPBqjMj+zaX
 e4yzpAzrOOJSR5gzc7w6JYqPDwmxxdBEsaZYN6NKJ4JXVUYFqH8v5BaTg
 6+k3eqkWNcUmqFuY8yW4Pm/JJEH4jTqq3gQsId4iZzEU2ss5wdcPxdGFj
 +F9b5jMjcPsxGa7EIxopJ/vOqQ7qnDZyU4wuRVK4PCx5KEl3RKK8FzzIe
 wzR/9BMfbDkFw+AvKM1lvorrRO0jsDbuyvCaubu8HDBGMCnqR87TUV7xC
 0spbzYUAJU4hV8jhaEwxBdNDf22clOQ6JPgyrex7asGL0245hkf7T9Ky7 g==;
X-IronPort-AV: E=McAfee;i="6500,9779,10582"; a="320316741"
X-IronPort-AV: E=Sophos;i="5.96,307,1665471600"; d="scan'208";a="320316741"
Received: from orsmga004.jf.intel.com ([10.7.209.38])
 by fmsmga102.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 06 Jan 2023 21:36:55 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6500,9779,10582"; a="780178995"
X-IronPort-AV: E=Sophos;i="5.96,307,1665471600"; d="scan'208";a="780178995"
Received: from chaitanya.iind.intel.com ([10.190.239.113])
 by orsmga004.jf.intel.com with ESMTP; 06 Jan 2023 21:36:52 -0800
From: Chaitanya Kumar Borah <chaitanya.kumar.borah@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Sat,  7 Jan 2023 11:06:43 +0530
Message-Id: <20230107053643.1984045-3-chaitanya.kumar.borah@intel.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20230107053643.1984045-1-chaitanya.kumar.borah@intel.com>
References: <20230107053643.1984045-1-chaitanya.kumar.borah@intel.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [RFC 2/2] drm/i915/display: Add 480 MHz CDCLK steps for
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
 drivers/gpu/drm/i915/display/intel_cdclk.c | 23 ++++++++++++++++++++++
 1 file changed, 23 insertions(+)

diff --git a/drivers/gpu/drm/i915/display/intel_cdclk.c b/drivers/gpu/drm/i915/display/intel_cdclk.c
index 0c107a38f9d0..a437ac446871 100644
--- a/drivers/gpu/drm/i915/display/intel_cdclk.c
+++ b/drivers/gpu/drm/i915/display/intel_cdclk.c
@@ -1329,6 +1329,27 @@ static const struct intel_cdclk_vals adlp_cdclk_table[] = {
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
@@ -3353,6 +3374,8 @@ void intel_init_cdclk_hooks(struct drm_i915_private *dev_priv)
 		/* Wa_22011320316:adl-p[a0] */
 		if (IS_ADLP_DISPLAY_STEP(dev_priv, STEP_A0, STEP_B0))
 			dev_priv->display.cdclk.table = adlp_a_step_cdclk_table;
+		else if (IS_ADLP_RPLU(dev_priv))
+			dev_priv->display.cdclk.table = rplu_cdclk_table;
 		else
 			dev_priv->display.cdclk.table = adlp_cdclk_table;
 	} else if (IS_ROCKETLAKE(dev_priv)) {
-- 
2.25.1

