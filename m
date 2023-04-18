Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 6F9846E6B8E
	for <lists+intel-gfx@lfdr.de>; Tue, 18 Apr 2023 19:56:26 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 438CD10E83D;
	Tue, 18 Apr 2023 17:56:24 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga03.intel.com (mga03.intel.com [134.134.136.65])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 0727A10E838
 for <intel-gfx@lists.freedesktop.org>; Tue, 18 Apr 2023 17:56:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1681840569; x=1713376569;
 h=from:to:subject:date:message-id:in-reply-to:references:
 mime-version:content-transfer-encoding;
 bh=BHASgs9jxFz88x/T8p66ZcwON9HPBPc8XNeZjZFScwA=;
 b=gl7fElXPX4vbNWZ63q3SSV/7rB9tVS3imbFkD1oJPU50VfRNPYAI0w4f
 GKdaN22AyLzBDfAi5Ihtx4ByhB6skG4mQeFYxWaDEDwnSu9w/o/X3j/iS
 aOEwfHAGrL1zL/QrLxwOV0J+hzMID4YHip85aE1zNwZp3naxdjnt5+JaY
 LAv6RbFU5OzBlAAWYwtNzVDql5V02R1ija/N9n7PnPLo90OHTZLv3Igna
 oeR3v5LW/T2r8EwNDko2LLyQ5kCzVKe3lKbMF+FFN1c0tAWf8vBpMT1sT
 SOZYaCuTRQFEE6zmiNUNijD7GlbXssVF5gW5ukVPJJWQP1zs0kYCeMIYn w==;
X-IronPort-AV: E=McAfee;i="6600,9927,10684"; a="348002246"
X-IronPort-AV: E=Sophos;i="5.99,207,1677571200"; d="scan'208";a="348002246"
Received: from orsmga004.jf.intel.com ([10.7.209.38])
 by orsmga103.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 18 Apr 2023 10:56:08 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10684"; a="815302664"
X-IronPort-AV: E=Sophos;i="5.99,207,1677571200"; d="scan'208";a="815302664"
Received: from stinkpipe.fi.intel.com (HELO stinkbox) ([10.237.72.70])
 by orsmga004.jf.intel.com with SMTP; 18 Apr 2023 10:56:06 -0700
Received: by stinkbox (sSMTP sendmail emulation);
 Tue, 18 Apr 2023 20:56:06 +0300
From: Ville Syrjala <ville.syrjala@linux.intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Tue, 18 Apr 2023 20:55:25 +0300
Message-Id: <20230418175528.13117-13-ville.syrjala@linux.intel.com>
X-Mailer: git-send-email 2.39.2
In-Reply-To: <20230418175528.13117-1-ville.syrjala@linux.intel.com>
References: <20230418175528.13117-1-ville.syrjala@linux.intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH 12/15] drm/i915:
 s/PS_COEE_INDEX_AUTO_INC/PS_COEF_INDEX_AUTO_INC/
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

Fix a typo in the PS_COEF_INDEX_AUTO_INC define.

Signed-off-by: Ville Syrjälä <ville.syrjala@linux.intel.com>
---
 drivers/gpu/drm/i915/display/skl_scaler.c | 2 +-
 drivers/gpu/drm/i915/i915_reg.h           | 2 +-
 2 files changed, 2 insertions(+), 2 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/skl_scaler.c b/drivers/gpu/drm/i915/display/skl_scaler.c
index a96f8ecbeec1..4437d130293a 100644
--- a/drivers/gpu/drm/i915/display/skl_scaler.c
+++ b/drivers/gpu/drm/i915/display/skl_scaler.c
@@ -658,7 +658,7 @@ static void glk_program_nearest_filter_coefs(struct drm_i915_private *dev_priv,
 	int i;
 
 	intel_de_write_fw(dev_priv, GLK_PS_COEF_INDEX_SET(pipe, id, set),
-			  PS_COEE_INDEX_AUTO_INC);
+			  PS_COEF_INDEX_AUTO_INC);
 
 	for (i = 0; i < 17 * 7; i += 2) {
 		u32 tmp;
diff --git a/drivers/gpu/drm/i915/i915_reg.h b/drivers/gpu/drm/i915/i915_reg.h
index f8e6b86facc3..a5ae291de55b 100644
--- a/drivers/gpu/drm/i915/i915_reg.h
+++ b/drivers/gpu/drm/i915/i915_reg.h
@@ -4146,7 +4146,7 @@
 #define _PS_COEF_SET0_INDEX_2A	   0x68298
 #define _PS_COEF_SET0_INDEX_1B	   0x68998
 #define _PS_COEF_SET0_INDEX_2B	   0x68A98
-#define PS_COEE_INDEX_AUTO_INC	   (1 << 10)
+#define PS_COEF_INDEX_AUTO_INC	   (1 << 10)
 
 #define _PS_COEF_SET0_DATA_1A	   0x6819C
 #define _PS_COEF_SET0_DATA_2A	   0x6829C
-- 
2.39.2

