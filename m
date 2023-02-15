Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id B53A6697B9F
	for <lists+intel-gfx@lfdr.de>; Wed, 15 Feb 2023 13:19:07 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id A84E910E0B9;
	Wed, 15 Feb 2023 12:19:03 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 265C210E0B9
 for <intel-gfx@lists.freedesktop.org>; Wed, 15 Feb 2023 12:19:02 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1676463542; x=1707999542;
 h=from:to:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=qZo060uZPmNR9nNb48QLwm1rcWs06nMTkTkKJ48rQgQ=;
 b=cryTuoqTvaGjFLjgjwluZHeE+RztrK6WjFRcEgxrVJHSIhl1Qwr2iiPO
 b1m8SZaB+MuicVvGpi1z8gumZAz4ZWTSmjJrA/r12mvaeBZsDzM8k1UoN
 xFzd67B6X8T2aYcvC7fr4dicZq8vrRTzHOO7sto3T8/f1th5hZzB8PzF3
 2p47Rv64f0CL71yAscjncjc91dLP18Tsm6XsEOIPM8DcGkbwNfftR/vVg
 zuTj/HBXefcq8a1IpHWUHvChX6BtrFRvN0p3wiRRFvJZgihHjQRxg376i
 i3BpQdkyV1dfqpED8KesEFIQexJqOUT/RxkUl9UCnNQmtPiM4J/1tuSN3 g==;
X-IronPort-AV: E=McAfee;i="6500,9779,10621"; a="329131820"
X-IronPort-AV: E=Sophos;i="5.97,299,1669104000"; d="scan'208";a="329131820"
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
 by fmsmga102.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 15 Feb 2023 04:19:01 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6500,9779,10621"; a="778763232"
X-IronPort-AV: E=Sophos;i="5.97,299,1669104000"; d="scan'208";a="778763232"
Received: from stinkpipe.fi.intel.com (HELO stinkbox) ([10.237.72.55])
 by fmsmga002.fm.intel.com with SMTP; 15 Feb 2023 04:18:59 -0800
Received: by stinkbox (sSMTP sendmail emulation);
 Wed, 15 Feb 2023 14:18:59 +0200
From: Ville Syrjala <ville.syrjala@linux.intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Wed, 15 Feb 2023 14:18:59 +0200
Message-Id: <20230215121859.15923-1-ville.syrjala@linux.intel.com>
X-Mailer: git-send-email 2.39.1
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH] drm/i915: Reduce ELD hex dumps a bit
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

Do the ELD hexdumps only up to the last differing byte.
The rest is typically all zeroes anyway so not much point
in dumping it.

Signed-off-by: Ville Syrjälä <ville.syrjala@linux.intel.com>
---
 drivers/gpu/drm/i915/display/intel_display.c | 23 ++++++++++++++++++++
 1 file changed, 23 insertions(+)

diff --git a/drivers/gpu/drm/i915/display/intel_display.c b/drivers/gpu/drm/i915/display/intel_display.c
index 3479125fbda6..d73aea9040e0 100644
--- a/drivers/gpu/drm/i915/display/intel_display.c
+++ b/drivers/gpu/drm/i915/display/intel_display.c
@@ -5348,6 +5348,23 @@ pipe_config_dp_vsc_sdp_mismatch(struct drm_i915_private *dev_priv,
 	}
 }
 
+/*
+ * Like a revese memcmp(), but returns the
+ * position of the last differing byte.
+ */
+static int
+memcmp_pos_reverse(const u8 *a, const u8 *b, size_t len)
+{
+	int i;
+
+	for (i = len - 1; i >= 0; i--) {
+		if (a[i] != b[i])
+			return i;
+	}
+
+	return len;
+}
+
 static void
 pipe_config_buffer_mismatch(struct drm_i915_private *dev_priv,
 			    bool fastset, const char *name,
@@ -5357,6 +5374,9 @@ pipe_config_buffer_mismatch(struct drm_i915_private *dev_priv,
 		if (!drm_debug_enabled(DRM_UT_KMS))
 			return;
 
+		/* only dump up to the last difference */
+		len = memcmp_pos_reverse(a, b, len) + 1;
+
 		drm_dbg_kms(&dev_priv->drm,
 			    "fastset mismatch in %s buffer\n", name);
 		print_hex_dump(KERN_DEBUG, "expected: ", DUMP_PREFIX_NONE,
@@ -5364,6 +5384,9 @@ pipe_config_buffer_mismatch(struct drm_i915_private *dev_priv,
 		print_hex_dump(KERN_DEBUG, "found: ", DUMP_PREFIX_NONE,
 			       16, 0, b, len, false);
 	} else {
+		/* only dump up to the last difference */
+		len = memcmp_pos_reverse(a, b, len) + 1;
+
 		drm_err(&dev_priv->drm, "mismatch in %s buffer\n", name);
 		print_hex_dump(KERN_ERR, "expected: ", DUMP_PREFIX_NONE,
 			       16, 0, a, len, false);
-- 
2.39.1

