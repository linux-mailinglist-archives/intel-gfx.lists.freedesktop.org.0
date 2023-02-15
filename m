Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id E5ED3697F0A
	for <lists+intel-gfx@lfdr.de>; Wed, 15 Feb 2023 16:02:27 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id BBF2210E133;
	Wed, 15 Feb 2023 15:02:25 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga06.intel.com (mga06b.intel.com [134.134.136.31])
 by gabe.freedesktop.org (Postfix) with ESMTPS id D9A6A10E133
 for <intel-gfx@lists.freedesktop.org>; Wed, 15 Feb 2023 15:02:23 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1676473343; x=1708009343;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=gcSfdRcCwiza+dGua9Bv4ILx5go4Vm21Mt7xbk1JM3E=;
 b=APsqMN8nRCOVONJEPgE0T0hefwp47pCmt2KqVjlgZ1WV4YBb1mKVbSq9
 ChNITJaCCnYF1tLHvYJpyeeBRsnTE3uR1v0+QQYXXruShvLhJPfddCFgw
 UHB04prMKDEfvgmoEl5G5Duq9LO7rju7VEu/IfGHa2ND2Xzsb3krg/M7A
 UddCbT8OSmD0/tLqPv5bpQhHEKZerIh8U6YGBbziy77qoY+lvUd+BoeID
 fjLeORlYwXjeudOFJj/bL0gHdGQnV09+3+Tr2ICMNncXhS2GuMcTsPXH2
 jx6sVol88MegvwwzmytXwCssDBtzps4PYnau/CfDXtbGNBIVEihcvd4Cy A==;
X-IronPort-AV: E=McAfee;i="6500,9779,10621"; a="393848569"
X-IronPort-AV: E=Sophos;i="5.97,299,1669104000"; d="scan'208";a="393848569"
Received: from orsmga002.jf.intel.com ([10.7.209.21])
 by orsmga104.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 15 Feb 2023 07:01:53 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6500,9779,10621"; a="669642773"
X-IronPort-AV: E=Sophos;i="5.97,299,1669104000"; d="scan'208";a="669642773"
Received: from stinkpipe.fi.intel.com (HELO stinkbox) ([10.237.72.55])
 by orsmga002.jf.intel.com with SMTP; 15 Feb 2023 07:01:29 -0800
Received: by stinkbox (sSMTP sendmail emulation);
 Wed, 15 Feb 2023 17:01:29 +0200
From: Ville Syrjala <ville.syrjala@linux.intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Wed, 15 Feb 2023 17:01:29 +0200
Message-Id: <20230215150129.13288-1-ville.syrjala@linux.intel.com>
X-Mailer: git-send-email 2.39.1
In-Reply-To: <20230215121859.15923-1-ville.syrjala@linux.intel.com>
References: <20230215121859.15923-1-ville.syrjala@linux.intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH v2] drm/i915: Reduce ELD hex dumps a bit
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
Cc: Jani Nikula <jani.nikula@intel.com>
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

From: Ville Syrjälä <ville.syrjala@linux.intel.com>

Do the ELD hexdumps only up to the last differing byte.
The rest is typically all zeroes anyway so not much point
in dumping it.

Couldn't find anything for memcmp_diff_len() so
rolled my own.

v2: Use semantics and function name suggested by Jani

Cc: Jani Nikula <jani.nikula@intel.com>
Signed-off-by: Ville Syrjälä <ville.syrjala@linux.intel.com>
---
 drivers/gpu/drm/i915/display/intel_display.c | 20 ++++++++++++++++++++
 1 file changed, 20 insertions(+)

diff --git a/drivers/gpu/drm/i915/display/intel_display.c b/drivers/gpu/drm/i915/display/intel_display.c
index 3479125fbda6..664322a58236 100644
--- a/drivers/gpu/drm/i915/display/intel_display.c
+++ b/drivers/gpu/drm/i915/display/intel_display.c
@@ -5348,6 +5348,20 @@ pipe_config_dp_vsc_sdp_mismatch(struct drm_i915_private *dev_priv,
 	}
 }
 
+/* Returns the length up to and including the last differing byte */
+static size_t
+memcmp_diff_len(const u8 *a, const u8 *b, size_t len)
+{
+	int i;
+
+	for (i = len - 1; i >= 0; i--) {
+		if (a[i] != b[i])
+			return i + 1;
+	}
+
+	return 0;
+}
+
 static void
 pipe_config_buffer_mismatch(struct drm_i915_private *dev_priv,
 			    bool fastset, const char *name,
@@ -5357,6 +5371,9 @@ pipe_config_buffer_mismatch(struct drm_i915_private *dev_priv,
 		if (!drm_debug_enabled(DRM_UT_KMS))
 			return;
 
+		/* only dump up to the last difference */
+		len = memcmp_diff_len(a, b, len);
+
 		drm_dbg_kms(&dev_priv->drm,
 			    "fastset mismatch in %s buffer\n", name);
 		print_hex_dump(KERN_DEBUG, "expected: ", DUMP_PREFIX_NONE,
@@ -5364,6 +5381,9 @@ pipe_config_buffer_mismatch(struct drm_i915_private *dev_priv,
 		print_hex_dump(KERN_DEBUG, "found: ", DUMP_PREFIX_NONE,
 			       16, 0, b, len, false);
 	} else {
+		/* only dump up to the last difference */
+		len = memcmp_diff_len(a, b, len);
+
 		drm_err(&dev_priv->drm, "mismatch in %s buffer\n", name);
 		print_hex_dump(KERN_ERR, "expected: ", DUMP_PREFIX_NONE,
 			       16, 0, a, len, false);
-- 
2.39.1

