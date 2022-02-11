Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id CF2164B20FC
	for <lists+intel-gfx@lfdr.de>; Fri, 11 Feb 2022 10:06:53 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 0462A10EA2B;
	Fri, 11 Feb 2022 09:06:52 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 7524110EA2B
 for <intel-gfx@lists.freedesktop.org>; Fri, 11 Feb 2022 09:06:51 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1644570411; x=1676106411;
 h=from:to:subject:date:message-id:in-reply-to:references:
 mime-version:content-transfer-encoding;
 bh=yl8TS+hYAj3vb4axw4QTUzNxEWUY/BFkX41kMQ18f94=;
 b=VWbEhPrSTxmjuzxekrMdtINxPHthUEu9hMndeTzlzCIjljIb4A4Zktuu
 oLIbT5qghNEKlYnPoh7WnBRzp8fDMEha4BKhsQKVi3ynbkG67Nk3z3B67
 gZqi+JRAtVOkLq6b7S96y51ANcYRQoLEt4F8Jn5u7s4x6XKlN78nuubbx
 GH/DjNOQkkttwz5AKXxS5pylPUs23lOxVUjSzJWoIzsAIRrtuR62iuMWf
 ibeE8v3OsBew4WoPZwf/2zQriO4J7RRgxP/D2JaQtMn7ZNlqyV+nV1F7I
 bRwWFHI7k6nZQaBPo1xA4+zwuxP7uY52r8swcyWp5jpeIG2Cwks6/RJuo Q==;
X-IronPort-AV: E=McAfee;i="6200,9189,10254"; a="249445707"
X-IronPort-AV: E=Sophos;i="5.88,360,1635231600"; d="scan'208";a="249445707"
Received: from orsmga001.jf.intel.com ([10.7.209.18])
 by orsmga102.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 11 Feb 2022 01:06:47 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.88,360,1635231600"; d="scan'208";a="568978393"
Received: from stinkpipe.fi.intel.com (HELO stinkbox) ([10.237.72.151])
 by orsmga001.jf.intel.com with SMTP; 11 Feb 2022 01:06:45 -0800
Received: by stinkbox (sSMTP sendmail emulation);
 Fri, 11 Feb 2022 11:06:44 +0200
From: Ville Syrjala <ville.syrjala@linux.intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Fri, 11 Feb 2022 11:06:26 +0200
Message-Id: <20220211090629.15555-6-ville.syrjala@linux.intel.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20220211090629.15555-1-ville.syrjala@linux.intel.com>
References: <20220211090629.15555-1-ville.syrjala@linux.intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH 5/8] drm/i915: Remove gen6_check_mch_setup()
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

snb_wm_latency_quirk() already boosts up the latency values
so the extra warning about the SSKPD value being insufficient
is now redundant. Drop it.

Signed-off-by: Ville Syrjälä <ville.syrjala@linux.intel.com>
---
 drivers/gpu/drm/i915/intel_pm.c | 15 ---------------
 1 file changed, 15 deletions(-)

diff --git a/drivers/gpu/drm/i915/intel_pm.c b/drivers/gpu/drm/i915/intel_pm.c
index 0fa3dce9bd54..34e46a9b8300 100644
--- a/drivers/gpu/drm/i915/intel_pm.c
+++ b/drivers/gpu/drm/i915/intel_pm.c
@@ -7432,17 +7432,6 @@ static void cpt_init_clock_gating(struct drm_i915_private *dev_priv)
 	}
 }
 
-static void gen6_check_mch_setup(struct drm_i915_private *dev_priv)
-{
-	u32 tmp;
-
-	tmp = intel_uncore_read(&dev_priv->uncore, MCH_SSKPD);
-	if ((tmp & MCH_SSKPD_WM0_MASK) != MCH_SSKPD_WM0_VAL)
-		drm_dbg_kms(&dev_priv->drm,
-			    "Wrong MCH_SSKPD value: 0x%08x This can cause underruns.\n",
-			    tmp);
-}
-
 static void gen6_init_clock_gating(struct drm_i915_private *dev_priv)
 {
 	u32 dspclk_gate = ILK_VRHUNIT_CLOCK_GATE_DISABLE;
@@ -7500,8 +7489,6 @@ static void gen6_init_clock_gating(struct drm_i915_private *dev_priv)
 	g4x_disable_trickle_feed(dev_priv);
 
 	cpt_init_clock_gating(dev_priv);
-
-	gen6_check_mch_setup(dev_priv);
 }
 
 static void lpt_init_clock_gating(struct drm_i915_private *dev_priv)
@@ -7853,8 +7840,6 @@ static void ivb_init_clock_gating(struct drm_i915_private *dev_priv)
 
 	if (!HAS_PCH_NOP(dev_priv))
 		cpt_init_clock_gating(dev_priv);
-
-	gen6_check_mch_setup(dev_priv);
 }
 
 static void vlv_init_clock_gating(struct drm_i915_private *dev_priv)
-- 
2.34.1

