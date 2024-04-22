Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id ABC918AC71F
	for <lists+intel-gfx@lfdr.de>; Mon, 22 Apr 2024 10:35:11 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id EE6981128BF;
	Mon, 22 Apr 2024 08:35:09 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="kzj3EweE";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.18])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 097131128BC
 for <intel-gfx@lists.freedesktop.org>; Mon, 22 Apr 2024 08:35:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1713774908; x=1745310908;
 h=from:to:subject:date:message-id:in-reply-to:references:
 mime-version:content-transfer-encoding;
 bh=vzRQsJtSV0NYv3YTWRypxGKHDByV81LJL0pe17t7/To=;
 b=kzj3EweEdASU7KD1csP9OtKQrilmPqIiz30+GlcMtKIvyEtefwfRLM7k
 FdPYCHtuavN7oj3qwEwQgzVV/kVd2/fwhlThTkc7hNd/qGevO/5xDKscL
 1MoZO8Q0tYeygDuOm7qwpf9RwvmYAuerqofurYS2dm5L/g8E0uda5NH3q
 NcPQEDl0I1wkKwsTw5K7wtXP8D0W+FVWlv386Pet0x0S/4GFyhb996Orc
 HcZIBm75ffRvZK++y3E4gmGOLsagjgjM9I6qD8k3aTwe8rRvikAB9X8f+
 CTWee7EmB2ZhBnp3fRUJdR94v+F1ecoHfSpeaXDinKzImt/kirjDul6z0 Q==;
X-CSE-ConnectionGUID: C9b15qtfTruDxMlV2Q9abA==
X-CSE-MsgGUID: sT9Cb2aSSBuHRcmgvGVPcw==
X-IronPort-AV: E=McAfee;i="6600,9927,11051"; a="9453452"
X-IronPort-AV: E=Sophos;i="6.07,220,1708416000"; 
   d="scan'208";a="9453452"
Received: from fmviesa008.fm.intel.com ([10.60.135.148])
 by orvoesa110.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 22 Apr 2024 01:35:08 -0700
X-CSE-ConnectionGUID: PqYLhk4uSx6vEvaxuLV/Ug==
X-CSE-MsgGUID: gvGRck89R6Wi685Eb1hp0A==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.07,220,1708416000"; d="scan'208";a="24021784"
Received: from stinkpipe.fi.intel.com (HELO stinkbox) ([10.237.72.74])
 by fmviesa008.fm.intel.com with SMTP; 22 Apr 2024 01:35:06 -0700
Received: by stinkbox (sSMTP sendmail emulation);
 Mon, 22 Apr 2024 11:35:05 +0300
From: Ville Syrjala <ville.syrjala@linux.intel.com>
To: intel-gfx@lists.freedesktop.org
Subject: [PATCH 03/14] drm/i915/dpio: s/VLV_PLL_DW9_BCAST/VLV_PCS_DW17_BCAST/
Date: Mon, 22 Apr 2024 11:34:46 +0300
Message-ID: <20240422083457.23815-4-ville.syrjala@linux.intel.com>
X-Mailer: git-send-email 2.43.2
In-Reply-To: <20240422083457.23815-1-ville.syrjala@linux.intel.com>
References: <20240422083457.23815-1-ville.syrjala@linux.intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
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

VLV_PLL_DW9_BCAST is actually VLV_PCS_DW17_BCAST. The address
does kinda look like it goes to the PLL block on a first glance,
but broadcast is special and doesn't even exist for the PLL
(only PCS and TX have it).

The fact that we use a broadcast write here is a bit sketchy
IMO since we're now blasting the register to all PCS splines
across the whole PHY. So the PCS registers in the other channel
(ie. other pipe/port) will also be written. But I guess the
fact that we always write the same value should make this a nop
even if the other channel is already enabled (assuming the VBIOS/GOP
didn't screw up and use some other value...).

Signed-off-by: Ville Syrjälä <ville.syrjala@linux.intel.com>
---
 drivers/gpu/drm/i915/display/intel_dpll.c | 2 +-
 drivers/gpu/drm/i915/i915_reg.h           | 3 ++-
 2 files changed, 3 insertions(+), 2 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_dpll.c b/drivers/gpu/drm/i915/display/intel_dpll.c
index 6693beafe9c0..7e8aca3c87ec 100644
--- a/drivers/gpu/drm/i915/display/intel_dpll.c
+++ b/drivers/gpu/drm/i915/display/intel_dpll.c
@@ -1920,7 +1920,7 @@ static void vlv_prepare_pll(const struct intel_crtc_state *crtc_state)
 		vlv_pllb_recal_opamp(dev_priv, phy);
 
 	/* Set up Tx target for periodic Rcomp update */
-	vlv_dpio_write(dev_priv, phy, VLV_PLL_DW9_BCAST, 0x0100000f);
+	vlv_dpio_write(dev_priv, phy, VLV_PCS_DW17_BCAST, 0x0100000f);
 
 	/* Disable target IRef on PLL */
 	reg_val = vlv_dpio_read(dev_priv, phy, VLV_PLL_DW8(pipe));
diff --git a/drivers/gpu/drm/i915/i915_reg.h b/drivers/gpu/drm/i915/i915_reg.h
index a2fadcbe0932..8f3c83d2ab8d 100644
--- a/drivers/gpu/drm/i915/i915_reg.h
+++ b/drivers/gpu/drm/i915/i915_reg.h
@@ -233,7 +233,6 @@
 #define _VLV_PLL_DW8_CH1		0x8060
 #define VLV_PLL_DW8(ch) _PIPE(ch, _VLV_PLL_DW8_CH0, _VLV_PLL_DW8_CH1)
 
-#define VLV_PLL_DW9_BCAST		0xc044
 #define _VLV_PLL_DW9_CH0		0x8044
 #define _VLV_PLL_DW9_CH1		0x8064
 #define VLV_PLL_DW9(ch) _PIPE(ch, _VLV_PLL_DW9_CH0, _VLV_PLL_DW9_CH1)
@@ -370,6 +369,8 @@
 #define _VLV_PCS_DW14_CH1		0x8438
 #define	VLV_PCS_DW14(ch) _PORT(ch, _VLV_PCS_DW14_CH0, _VLV_PCS_DW14_CH1)
 
+#define VLV_PCS_DW17_BCAST		0xc044
+
 #define _VLV_PCS_DW23_CH0		0x825c
 #define _VLV_PCS_DW23_CH1		0x845c
 #define VLV_PCS_DW23(ch) _PORT(ch, _VLV_PCS_DW23_CH0, _VLV_PCS_DW23_CH1)
-- 
2.43.2

