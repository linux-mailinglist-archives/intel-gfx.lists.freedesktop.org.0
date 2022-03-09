Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id CEF4B4D3502
	for <lists+intel-gfx@lfdr.de>; Wed,  9 Mar 2022 18:01:33 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id EF1F810E4E1;
	Wed,  9 Mar 2022 17:01:31 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
 by gabe.freedesktop.org (Postfix) with ESMTPS id CFACF10E4E1
 for <intel-gfx@lists.freedesktop.org>; Wed,  9 Mar 2022 17:01:30 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1646845290; x=1678381290;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=JnZK9lhqJlBQXkkW/PBBapPtcaoeiSrz/+63+mzioOg=;
 b=hH8w2uon/+l1sVSn5MTwv22BiXMvuHoFiEAdMQlXgibusDWru5ElXWU/
 l91ZEXPcNY4z2JnCAQP43ihlRt8q3Igaof98TC6DBPcEHU23bLRm1KEAn
 U5xUAo2y0k581z2PiWscGjU/9J55l7SSpy9sz9Ug+e1sM/OO9PB8IZIHx
 F8pojwNfN8jN9UcR1c4HFNxasrsp90DcRSo5gifUfAoDTkR5rsoYK7ghG
 I3oYWGFDEqsneqpQ+XjjfwvhKb5FmdfLgu4xl9DQIsw1W3Ab4VcZW1mgE
 oTpQ/ydZQa6UdC7aH+hNzdHfF7GCPXQZJPdtG8V8qfbo6MSUdfl5rt+Pu Q==;
X-IronPort-AV: E=McAfee;i="6200,9189,10281"; a="252598354"
X-IronPort-AV: E=Sophos;i="5.90,167,1643702400"; d="scan'208";a="252598354"
Received: from orsmga008.jf.intel.com ([10.7.209.65])
 by fmsmga102.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 09 Mar 2022 08:49:55 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.90,167,1643702400"; d="scan'208";a="554190099"
Received: from stinkpipe.fi.intel.com (HELO stinkbox) ([10.237.72.151])
 by orsmga008.jf.intel.com with SMTP; 09 Mar 2022 08:49:52 -0800
Received: by stinkbox (sSMTP sendmail emulation);
 Wed, 09 Mar 2022 18:49:51 +0200
From: Ville Syrjala <ville.syrjala@linux.intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Wed,  9 Mar 2022 18:49:41 +0200
Message-Id: <20220309164948.10671-2-ville.syrjala@linux.intel.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20220309164948.10671-1-ville.syrjala@linux.intel.com>
References: <20220309164948.10671-1-ville.syrjala@linux.intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH v2 1/8] drm/i915: Treat SAGV block time 0 as
 SAGV disabled
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
Cc: stable@vger.kernel.org
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

From: Ville Syrjälä <ville.syrjala@linux.intel.com>

For modern platforms the spec explicitly states that a
SAGV block time of zero means that SAGV is not supported.
Let's extend that to all platforms. Supposedly there should
be no systems where this isn't true, and it'll allow us to:
- use the same code regardless of older vs. newer platform
- wm latencies already treat 0 as disabled, so this fits well
  with other related code
- make it a bit more clear when SAGV is used vs. not
- avoid overflows from adding U32_MAX with a u16 wm0 latency value
  which could cause us to miscalculate the SAGV watermarks on tgl+

Cc: stable@vger.kernel.org
Signed-off-by: Ville Syrjälä <ville.syrjala@linux.intel.com>
---
 drivers/gpu/drm/i915/intel_pm.c | 10 ++++++----
 1 file changed, 6 insertions(+), 4 deletions(-)

diff --git a/drivers/gpu/drm/i915/intel_pm.c b/drivers/gpu/drm/i915/intel_pm.c
index 8ee31c9590a7..40a3094e55ca 100644
--- a/drivers/gpu/drm/i915/intel_pm.c
+++ b/drivers/gpu/drm/i915/intel_pm.c
@@ -3696,8 +3696,7 @@ skl_setup_sagv_block_time(struct drm_i915_private *dev_priv)
 		MISSING_CASE(DISPLAY_VER(dev_priv));
 	}
 
-	/* Default to an unusable block time */
-	dev_priv->sagv_block_time_us = -1;
+	dev_priv->sagv_block_time_us = 0;
 }
 
 /*
@@ -5644,7 +5643,7 @@ static void skl_compute_plane_wm(const struct intel_crtc_state *crtc_state,
 	result->min_ddb_alloc = max(min_ddb_alloc, blocks) + 1;
 	result->enable = true;
 
-	if (DISPLAY_VER(dev_priv) < 12)
+	if (DISPLAY_VER(dev_priv) < 12 && dev_priv->sagv_block_time_us)
 		result->can_sagv = latency >= dev_priv->sagv_block_time_us;
 }
 
@@ -5677,7 +5676,10 @@ static void tgl_compute_sagv_wm(const struct intel_crtc_state *crtc_state,
 	struct drm_i915_private *dev_priv = to_i915(crtc_state->uapi.crtc->dev);
 	struct skl_wm_level *sagv_wm = &plane_wm->sagv.wm0;
 	struct skl_wm_level *levels = plane_wm->wm;
-	unsigned int latency = dev_priv->wm.skl_latency[0] + dev_priv->sagv_block_time_us;
+	unsigned int latency = 0;
+
+	if (dev_priv->sagv_block_time_us)
+		latency = dev_priv->sagv_block_time_us + dev_priv->wm.skl_latency[0];
 
 	skl_compute_plane_wm(crtc_state, plane, 0, latency,
 			     wm_params, &levels[0],
-- 
2.34.1

