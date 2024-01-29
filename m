Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id DCC6D841161
	for <lists+intel-gfx@lfdr.de>; Mon, 29 Jan 2024 18:56:09 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 839BE112A48;
	Mon, 29 Jan 2024 17:55:36 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.12])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 89EFE112A51
 for <intel-gfx@lists.freedesktop.org>; Mon, 29 Jan 2024 17:55:31 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1706550932; x=1738086932;
 h=from:to:subject:date:message-id:in-reply-to:references:
 mime-version:content-transfer-encoding;
 bh=SGmrjdQjqkX7Wr12Cdv8h5xWfSzYHeNQsbsYQnouFJA=;
 b=EVYKDTACQ1UIte27eNdvF2QcU0UQIpsqg3Oy76E2IKCDh10Yu5pGB4ye
 //wBf7JtUmtX32Sc17Nadaloh3MFjERhRd1dbA8aXMGd1KmHdmgyDGmJg
 HLAU7T9qfuv5fgxTfecWWpcXbnwobYaqcJ5inJRIvEJZu/W/9WtUSiu+h
 nWDfWBJcr/E8Ma4ueTFA5UF5CcqCcMuiGbLuegzfnsl1t34rMd/r+fKyS
 DSLlc4zCWcEls1jm0XXRBUJJpJP9nc+kIjNbBwOlRhReGGGbL/GuR3+AY
 y3tYRkq0NhB5xbogVbvRu5YXjqphPOB30sjd6lbVWLTy9wQgmS1gJWsOu Q==;
X-IronPort-AV: E=McAfee;i="6600,9927,10968"; a="10407795"
X-IronPort-AV: E=Sophos;i="6.05,227,1701158400"; d="scan'208";a="10407795"
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
 by orvoesa104.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 29 Jan 2024 09:55:21 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10968"; a="931157886"
X-IronPort-AV: E=Sophos;i="6.05,227,1701158400"; d="scan'208";a="931157886"
Received: from ideak-desk.fi.intel.com ([10.237.72.78])
 by fmsmga001-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 29 Jan 2024 09:55:20 -0800
From: Imre Deak <imre.deak@intel.com>
To: intel-gfx@lists.freedesktop.org
Subject: [PATCH 4/6] drm/i915/adlp+: Add DSC early pixel count scaling WA
 (Wa_1409098942)
Date: Mon, 29 Jan 2024 19:55:31 +0200
Message-Id: <20240129175533.904590-5-imre.deak@intel.com>
X-Mailer: git-send-email 2.39.2
In-Reply-To: <20240129175533.904590-1-imre.deak@intel.com>
References: <20240129175533.904590-1-imre.deak@intel.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
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

Add a workaround to fix timing issues on links with DSC enabled -
presumedly related to the audio functionality.

Bspec requires enabling this workaround if audio is enabled on ADLP,
however Windows enables it whenever DSC is enabled ADLP onwards; follow
Windows.

Bspec: 50490, 55424

Signed-off-by: Imre Deak <imre.deak@intel.com>
---
 drivers/gpu/drm/i915/display/intel_display.c | 13 +++++++++++++
 drivers/gpu/drm/i915/i915_reg.h              |  3 +++
 2 files changed, 16 insertions(+)

diff --git a/drivers/gpu/drm/i915/display/intel_display.c b/drivers/gpu/drm/i915/display/intel_display.c
index a92e959c8ac7b..0f4cd634d7dce 100644
--- a/drivers/gpu/drm/i915/display/intel_display.c
+++ b/drivers/gpu/drm/i915/display/intel_display.c
@@ -435,6 +435,14 @@ void intel_enable_transcoder(const struct intel_crtc_state *new_crtc_state)
 		return;
 	}
 
+	/* Wa_1409098942: adlp+ */
+	if (DISPLAY_VER(dev_priv) >= 13 &&
+	    new_crtc_state->dsc.compression_enable) {
+		val &= ~TRANSCONF_PIXEL_COUNT_SCALING_MASK;
+		val |= REG_FIELD_PREP(TRANSCONF_PIXEL_COUNT_SCALING_MASK,
+				      TRANSCONF_PIXEL_COUNT_SCALING_X4);
+	}
+
 	intel_de_write(dev_priv, TRANSCONF(cpu_transcoder),
 		       val | TRANSCONF_ENABLE);
 	intel_de_posting_read(dev_priv, TRANSCONF(cpu_transcoder));
@@ -481,6 +489,11 @@ void intel_disable_transcoder(const struct intel_crtc_state *old_crtc_state)
 	if (!IS_I830(dev_priv))
 		val &= ~TRANSCONF_ENABLE;
 
+	/* Wa_1409098942: adlp+ */
+	if (DISPLAY_VER(dev_priv) >= 13 &&
+	    old_crtc_state->dsc.compression_enable)
+		val &= ~TRANSCONF_PIXEL_COUNT_SCALING_MASK;
+
 	intel_de_write(dev_priv, TRANSCONF(cpu_transcoder), val);
 
 	if (DISPLAY_VER(dev_priv) >= 12)
diff --git a/drivers/gpu/drm/i915/i915_reg.h b/drivers/gpu/drm/i915/i915_reg.h
index eecbdecb8ed40..b43d1145fa22f 100644
--- a/drivers/gpu/drm/i915/i915_reg.h
+++ b/drivers/gpu/drm/i915/i915_reg.h
@@ -2588,6 +2588,9 @@
 #define   TRANSCONF_DITHER_TYPE_ST1		REG_FIELD_PREP(TRANSCONF_DITHER_TYPE_MASK, 1)
 #define   TRANSCONF_DITHER_TYPE_ST2		REG_FIELD_PREP(TRANSCONF_DITHER_TYPE_MASK, 2)
 #define   TRANSCONF_DITHER_TYPE_TEMP		REG_FIELD_PREP(TRANSCONF_DITHER_TYPE_MASK, 3)
+#define   TRANSCONF_PIXEL_COUNT_SCALING_MASK	REG_GENMASK(1, 0)
+#define   TRANSCONF_PIXEL_COUNT_SCALING_X4	1
+
 #define _PIPEASTAT		0x70024
 #define   PIPE_FIFO_UNDERRUN_STATUS		(1UL << 31)
 #define   SPRITE1_FLIP_DONE_INT_EN_VLV		(1UL << 30)
-- 
2.39.2

