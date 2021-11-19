Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 4060B456F64
	for <lists+intel-gfx@lfdr.de>; Fri, 19 Nov 2021 14:14:41 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 8B56D6F8C4;
	Fri, 19 Nov 2021 13:14:39 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga17.intel.com (mga17.intel.com [192.55.52.151])
 by gabe.freedesktop.org (Postfix) with ESMTPS id ABA376F8C6
 for <intel-gfx@lists.freedesktop.org>; Fri, 19 Nov 2021 13:14:36 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6200,9189,10172"; a="215124504"
X-IronPort-AV: E=Sophos;i="5.87,247,1631602800"; d="scan'208";a="215124504"
Received: from orsmga008.jf.intel.com ([10.7.209.65])
 by fmsmga107.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 19 Nov 2021 05:14:36 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.87,247,1631602800"; d="scan'208";a="507894079"
Received: from sorvi2.fi.intel.com ([10.237.72.194])
 by orsmga008.jf.intel.com with ESMTP; 19 Nov 2021 05:14:35 -0800
From: Mika Kahola <mika.kahola@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Fri, 19 Nov 2021 15:13:47 +0200
Message-Id: <20211119131348.725220-5-mika.kahola@intel.com>
X-Mailer: git-send-email 2.27.0
In-Reply-To: <20211119131348.725220-1-mika.kahola@intel.com>
References: <20211119131348.725220-1-mika.kahola@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH v2 4/5] drm/i915/display/dg2: Read CD clock from
 squasher table
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

To calculate CD clock with squasher unit, we set CD clock ratio to fixed value of 34.
The CD clock value is read from CD clock squasher table.

BSpec: 54034

v2: Read ratio from register (Ville)
    Drop unnecessary local variable (Ville)
    Get CD clock from the given table
v3: Calculate CD clock frequency based on waveform bit pattern (Ville)
[v4: vsyrjala: Actually do a proper blind readout from the hardware]
[v5: vsyrjala: Use has_cdclk_squasher()]

Signed-off-by: Mika Kahola <mika.kahola@intel.com>
Signed-off-by: Ville Syrjälä <ville.syrjala@linux.intel.com>
---
 drivers/gpu/drm/i915/display/intel_cdclk.c | 17 ++++++++++++++++-
 1 file changed, 16 insertions(+), 1 deletion(-)

diff --git a/drivers/gpu/drm/i915/display/intel_cdclk.c b/drivers/gpu/drm/i915/display/intel_cdclk.c
index 560383e8c5b6..5fcb393079f7 100644
--- a/drivers/gpu/drm/i915/display/intel_cdclk.c
+++ b/drivers/gpu/drm/i915/display/intel_cdclk.c
@@ -1466,6 +1466,7 @@ static void bxt_de_pll_readout(struct drm_i915_private *dev_priv,
 static void bxt_get_cdclk(struct drm_i915_private *dev_priv,
 			  struct intel_cdclk_config *cdclk_config)
 {
+	u32 squash_ctl = 0;
 	u32 divider;
 	int div;
 
@@ -1503,7 +1504,21 @@ static void bxt_get_cdclk(struct drm_i915_private *dev_priv,
 		return;
 	}
 
-	cdclk_config->cdclk = DIV_ROUND_CLOSEST(cdclk_config->vco, div);
+	if (has_cdclk_squasher(dev_priv))
+		squash_ctl = intel_de_read(dev_priv, CDCLK_SQUASH_CTL);
+
+	if (squash_ctl & CDCLK_SQUASH_ENABLE) {
+		u16 waveform;
+		int size;
+
+		size = REG_FIELD_GET(CDCLK_SQUASH_WINDOW_SIZE_MASK, squash_ctl) + 1;
+		waveform = REG_FIELD_GET(CDCLK_SQUASH_WAVEFORM_MASK, squash_ctl) >> (16 - size);
+
+		cdclk_config->cdclk = DIV_ROUND_CLOSEST(hweight16(waveform) *
+							cdclk_config->vco, size * div);
+	} else {
+		cdclk_config->cdclk = DIV_ROUND_CLOSEST(cdclk_config->vco, div);
+	}
 
  out:
 	/*
-- 
2.27.0

