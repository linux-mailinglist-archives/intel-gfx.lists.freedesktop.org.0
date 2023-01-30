Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 6B07F680A78
	for <lists+intel-gfx@lfdr.de>; Mon, 30 Jan 2023 11:08:52 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 88D0A10E100;
	Mon, 30 Jan 2023 10:08:47 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga05.intel.com (mga05.intel.com [192.55.52.43])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 8ECE410E0D7
 for <intel-gfx@lists.freedesktop.org>; Mon, 30 Jan 2023 10:08:37 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1675073317; x=1706609317;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=fW3YZhfI7YFv6lblEvPnoIYxTnBc62+Tf/3I8VnYYcs=;
 b=WumawCgYgAPlfuS5YvfpqXKTJUmtuRMXxGHBZNeRfXjfCdYUTqLL62Jh
 ojiaGJPsaQaQsV0Ux/Qr61qurRG9xbUXnF/aXAX0RIhjcAPduJ6fkouG5
 9cOuKGnkV9JR3IKWALrgdmcN/KsSKEkS/7EodX1Bhreyh1PLMw7fpqc1I
 rOhOGqgEitpZro16KtP5bd1+v1L3ne4Be3m4LwDQWmqZZ+frJQ+It+OpJ
 gQgCS/K40xiJmrKP5UBCs3mBQiZIlEzNXjJpHbQn6L7J849jzItY7gRKd
 OBs+IEipbgnJpx+QL7nRjsOlTF59pfABG2HaPxH0BlDgZD9vA2h8bEBfB w==;
X-IronPort-AV: E=McAfee;i="6500,9779,10605"; a="413741250"
X-IronPort-AV: E=Sophos;i="5.97,257,1669104000"; d="scan'208";a="413741250"
Received: from orsmga007.jf.intel.com ([10.7.209.58])
 by fmsmga105.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 30 Jan 2023 02:08:34 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6500,9779,10605"; a="657400653"
X-IronPort-AV: E=Sophos;i="5.97,257,1669104000"; d="scan'208";a="657400653"
Received: from chaitanya.iind.intel.com ([10.190.239.113])
 by orsmga007.jf.intel.com with ESMTP; 30 Jan 2023 02:08:30 -0800
From: Chaitanya Kumar Borah <chaitanya.kumar.borah@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Mon, 30 Jan 2023 15:38:06 +0530
Message-Id: <20230130100806.1373883-3-chaitanya.kumar.borah@intel.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20230130100806.1373883-1-chaitanya.kumar.borah@intel.com>
References: <20230130100806.1373883-1-chaitanya.kumar.borah@intel.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [RFC v4 2/2] drm/i915/display: Add 480 MHz CDCLK steps
 for RPL-U
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

v2: (Matt)
    - Add missing clock steps
    - Correct reference clock typo

v3: - Revert to RPL-U subplatform (Jani)

v4: - Remove Bspec reference from code (Jani)

Signed-off-by: Chaitanya Kumar Borah <chaitanya.kumar.borah@intel.com>
---
 drivers/gpu/drm/i915/display/intel_cdclk.c | 26 ++++++++++++++++++++++
 1 file changed, 26 insertions(+)

diff --git a/drivers/gpu/drm/i915/display/intel_cdclk.c b/drivers/gpu/drm/i915/display/intel_cdclk.c
index 0c107a38f9d0..2e26e6762f35 100644
--- a/drivers/gpu/drm/i915/display/intel_cdclk.c
+++ b/drivers/gpu/drm/i915/display/intel_cdclk.c
@@ -1329,6 +1329,30 @@ static const struct intel_cdclk_vals adlp_cdclk_table[] = {
 	{}
 };
 
+static const struct intel_cdclk_vals rplu_cdclk_table[] = {
+	{ .refclk = 19200, .cdclk = 172800, .divider = 3, .ratio = 27 },
+	{ .refclk = 19200, .cdclk = 192000, .divider = 2, .ratio = 20 },
+	{ .refclk = 19200, .cdclk = 307200, .divider = 2, .ratio = 32 },
+	{ .refclk = 19200, .cdclk = 480000, .divider = 2, .ratio = 50 },
+	{ .refclk = 19200, .cdclk = 556800, .divider = 2, .ratio = 58 },
+	{ .refclk = 19200, .cdclk = 652800, .divider = 2, .ratio = 68 },
+
+	{ .refclk = 24000, .cdclk = 176000, .divider = 3, .ratio = 22 },
+	{ .refclk = 24000, .cdclk = 192000, .divider = 2, .ratio = 16 },
+	{ .refclk = 24000, .cdclk = 312000, .divider = 2, .ratio = 26 },
+	{ .refclk = 24000, .cdclk = 480000, .divider = 2, .ratio = 40 },
+	{ .refclk = 24000, .cdclk = 552000, .divider = 2, .ratio = 46 },
+	{ .refclk = 24000, .cdclk = 648000, .divider = 2, .ratio = 54 },
+
+	{ .refclk = 38400, .cdclk = 179200, .divider = 3, .ratio = 14 },
+	{ .refclk = 38400, .cdclk = 192000, .divider = 2, .ratio = 10 },
+	{ .refclk = 38400, .cdclk = 307200, .divider = 2, .ratio = 16 },
+	{ .refclk = 38400, .cdclk = 480000, .divider = 2, .ratio = 25 },
+	{ .refclk = 38400, .cdclk = 556800, .divider = 2, .ratio = 29 },
+	{ .refclk = 38400, .cdclk = 652800, .divider = 2, .ratio = 34 },
+	{}
+};
+
 static const struct intel_cdclk_vals dg2_cdclk_table[] = {
 	{ .refclk = 38400, .cdclk = 163200, .divider = 2, .ratio = 34, .waveform = 0x8888 },
 	{ .refclk = 38400, .cdclk = 204000, .divider = 2, .ratio = 34, .waveform = 0x9248 },
@@ -3353,6 +3377,8 @@ void intel_init_cdclk_hooks(struct drm_i915_private *dev_priv)
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

