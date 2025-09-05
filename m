Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id D5354B45AF9
	for <lists+intel-gfx@lfdr.de>; Fri,  5 Sep 2025 16:52:23 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id CAB3F10EBCC;
	Fri,  5 Sep 2025 14:52:21 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="SsIXZq0U";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.9])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 1C01810EBE0;
 Fri,  5 Sep 2025 14:52:20 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1757083941; x=1788619941;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=Q6Zz4qBWGx22o1l01UM9wF5YKirYfTaRo99hlD6J6jo=;
 b=SsIXZq0UYLM4C3BGk1cVuwz3s3CdxVSBh3mWuNVs0zKYAe1fQbE1uNpK
 AVkg2Hv+9tJ61qxh+weN3RCfei1OKTb1MWjzDKzqYY/CE/nUZjqa+IB3e
 ZPy9wQIwpU1ULKdOtoUFKhtRWvRftOjDXqGDks47OKTTXu3I66JYpXZ6j
 HOHPzM1/zph1JmJlB2YxYCNO+Lu2t56p2Rkx8E7BOhEExRf1O+vCimIN2
 IgwP2UE1DVCV7syyO1Q/6NEgcBkJncF6CEUyN12r5sUvZisLNnpuBPLr2
 UlRydZw9VpauMFgnTNNYV7ejvhBxOnFvHS62qaoyN32HIyXzvicetiH1a A==;
X-CSE-ConnectionGUID: 08Twk1VATrGQ6CY/o5T0LQ==
X-CSE-MsgGUID: xkTZPYxsRaKyckKdbrAMXg==
X-IronPort-AV: E=McAfee;i="6800,10657,11531"; a="82027598"
X-IronPort-AV: E=Sophos;i="6.17,312,1747724400"; d="scan'208";a="82027598"
Received: from fmviesa002.fm.intel.com ([10.60.135.142])
 by orvoesa101.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 05 Sep 2025 07:52:20 -0700
X-CSE-ConnectionGUID: dLElIW7PRPOJNYvBpndi6A==
X-CSE-MsgGUID: c6OBDAIvSFq/+IJgUkp1Ag==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.18,241,1751266800"; d="scan'208";a="195837335"
Received: from dalessan-mobl3.ger.corp.intel.com (HELO localhost)
 ([10.245.245.33])
 by fmviesa002-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 05 Sep 2025 07:52:18 -0700
From: Ville Syrjala <ville.syrjala@linux.intel.com>
To: intel-gfx@lists.freedesktop.org
Cc: intel-xe@lists.freedesktop.org
Subject: [PATCH 01/13] drm/i915/dram: Also apply the 16Gb DIMM w/a for larger
 DRAM chips
Date: Fri,  5 Sep 2025 17:52:00 +0300
Message-ID: <20250905145212.10845-2-ville.syrjala@linux.intel.com>
X-Mailer: git-send-email 2.49.1
In-Reply-To: <20250905145212.10845-1-ville.syrjala@linux.intel.com>
References: <20250905145212.10845-1-ville.syrjala@linux.intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
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

From: Ville Syrjälä <ville.syrjala@linux.intel.com>

While the spec only asks us to do the WM0 latency bump for 16Gb
DRAM devices I believe we should apply it for larger DRAM chips.
At the time the w/a was added there were no larger chips on
the market, but I think I've seen at least 32Gb DDR4 chips
being available these days.

Whether it's possible to actually find suitable DIMMs for the
affected systems with largers chips I don't know. Also it's
not known whether the 1 usec latency bump would be sufficient
for larger chips. Someone would need to find such DIMMs and
test this. Fortunately we do have a bit of extra latency already
with the 1 usec bump, as the actual requirement was .4 usec for
for 16Gb chips.

Signed-off-by: Ville Syrjälä <ville.syrjala@linux.intel.com>
---
 drivers/gpu/drm/i915/display/skl_watermark.c |  4 ++--
 drivers/gpu/drm/i915/soc/intel_dram.c        | 10 +++++-----
 2 files changed, 7 insertions(+), 7 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/skl_watermark.c b/drivers/gpu/drm/i915/display/skl_watermark.c
index 0b9c86042e78..b7482d428868 100644
--- a/drivers/gpu/drm/i915/display/skl_watermark.c
+++ b/drivers/gpu/drm/i915/display/skl_watermark.c
@@ -3209,9 +3209,9 @@ adjust_wm_latency(struct intel_display *display,
 	}
 
 	/*
-	 * WA Level-0 adjustment for 16Gb DIMMs: SKL+
+	 * WA Level-0 adjustment for 16Gb+ DIMMs: SKL+
 	 * If we could not get dimm info enable this WA to prevent from
-	 * any underrun. If not able to get DIMM info assume 16Gb DIMM
+	 * any underrun. If not able to get DIMM info assume 16Gb+ DIMM
 	 * to avoid any underrun.
 	 */
 	if (!display->platform.dg2 && dram_info->has_16gb_dimms)
diff --git a/drivers/gpu/drm/i915/soc/intel_dram.c b/drivers/gpu/drm/i915/soc/intel_dram.c
index 149527827624..8e81573022ff 100644
--- a/drivers/gpu/drm/i915/soc/intel_dram.c
+++ b/drivers/gpu/drm/i915/soc/intel_dram.c
@@ -335,7 +335,7 @@ static bool
 skl_is_16gb_dimm(const struct dram_dimm_info *dimm)
 {
 	/* Convert total Gb to Gb per DRAM device */
-	return dimm->size / (intel_dimm_num_devices(dimm) ?: 1) == 16;
+	return dimm->size / (intel_dimm_num_devices(dimm) ?: 1) >= 16;
 }
 
 static void
@@ -354,7 +354,7 @@ skl_dram_get_dimm_info(struct drm_i915_private *i915,
 	}
 
 	drm_dbg_kms(&i915->drm,
-		    "CH%u DIMM %c size: %u Gb, width: X%u, ranks: %u, 16Gb DIMMs: %s\n",
+		    "CH%u DIMM %c size: %u Gb, width: X%u, ranks: %u, 16Gb+ DIMMs: %s\n",
 		    channel, dimm_name, dimm->size, dimm->width, dimm->ranks,
 		    str_yes_no(skl_is_16gb_dimm(dimm)));
 }
@@ -384,7 +384,7 @@ skl_dram_get_channel_info(struct drm_i915_private *i915,
 	ch->is_16gb_dimm = skl_is_16gb_dimm(&ch->dimm_l) ||
 		skl_is_16gb_dimm(&ch->dimm_s);
 
-	drm_dbg_kms(&i915->drm, "CH%u ranks: %u, 16Gb DIMMs: %s\n",
+	drm_dbg_kms(&i915->drm, "CH%u ranks: %u, 16Gb+ DIMMs: %s\n",
 		    channel, ch->ranks, str_yes_no(ch->is_16gb_dimm));
 
 	return 0;
@@ -406,7 +406,7 @@ skl_dram_get_channels_info(struct drm_i915_private *i915, struct dram_info *dram
 	u32 val;
 	int ret;
 
-	/* Assume 16Gb DIMMs are present until proven otherwise */
+	/* Assume 16Gb+ DIMMs are present until proven otherwise */
 	dram_info->has_16gb_dimms = true;
 
 	val = intel_uncore_read(&i915->uncore,
@@ -438,7 +438,7 @@ skl_dram_get_channels_info(struct drm_i915_private *i915, struct dram_info *dram
 	drm_dbg_kms(&i915->drm, "Memory configuration is symmetric? %s\n",
 		    str_yes_no(dram_info->symmetric_memory));
 
-	drm_dbg_kms(&i915->drm, "16Gb DIMMs: %s\n",
+	drm_dbg_kms(&i915->drm, "16Gb+ DIMMs: %s\n",
 		    str_yes_no(dram_info->has_16gb_dimms));
 
 	return 0;
-- 
2.49.1

