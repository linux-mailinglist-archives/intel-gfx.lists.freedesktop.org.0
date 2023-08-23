Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 707E4785E37
	for <lists+intel-gfx@lfdr.de>; Wed, 23 Aug 2023 19:09:56 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 1D6CB10E478;
	Wed, 23 Aug 2023 17:09:29 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [134.134.136.31])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 6020A10E487;
 Wed, 23 Aug 2023 17:09:21 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1692810561; x=1724346561;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=JaP2qAorvMgX2pDQpno3vjvufwJZ5W93ZeV5ZDcA9ek=;
 b=QculQ7IaUxJe1qzfZ81MoGry8mOVUJ5R1hcxA+x7AwmzPYsR7TcsDfHJ
 ZwvvV+je8yiWFHdPxNRECBpKbA96Zmtju5LcfSMPyF9MiD4YkVT1985g5
 Hpb0k7kDLD/TlGgE+1wWlDKSDTqp9W/YGYYazf5SBDz21rmHKrVwz0DEf
 GdePNYs69GEgkDeeYxGsPFBkY4nagKUl4wZ9eq6hDdeUZJ8cUfOmHjINg
 fevCAe8rGVY25DsXPyy+PWTPau1zncNAHe3Zashh1WLgfMjTyo/WahR6u
 Lb1UTeZsggglOyq4zMOE2I4otRbJEd9DjTmRXJN8J3gROMyRyywtkfL6g A==;
X-IronPort-AV: E=McAfee;i="6600,9927,10811"; a="438147502"
X-IronPort-AV: E=Sophos;i="6.01,195,1684825200"; d="scan'208";a="438147502"
Received: from fmsmga008.fm.intel.com ([10.253.24.58])
 by orsmga104.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 23 Aug 2023 10:09:21 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10811"; a="802204857"
X-IronPort-AV: E=Sophos;i="6.01,195,1684825200"; d="scan'208";a="802204857"
Received: from lucas-s2600cw.jf.intel.com ([10.165.21.196])
 by fmsmga008-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 23 Aug 2023 10:09:20 -0700
From: Lucas De Marchi <lucas.demarchi@intel.com>
To: intel-xe@lists.freedesktop.org,
	intel-gfx@lists.freedesktop.org
Date: Wed, 23 Aug 2023 10:07:28 -0700
Message-Id: <20230823170740.1180212-31-lucas.demarchi@intel.com>
X-Mailer: git-send-email 2.40.1
In-Reply-To: <20230823170740.1180212-1-lucas.demarchi@intel.com>
References: <20230823170740.1180212-1-lucas.demarchi@intel.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH 30/42] drm/i915/xe2lpd: Extend Wa_15010685871
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
Cc: Lucas De Marchi <lucas.demarchi@intel.com>
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

Xe2_LPD also needs workaround 15010685871.

Signed-off-by: Lucas De Marchi <lucas.demarchi@intel.com>
---
 drivers/gpu/drm/i915/display/intel_cdclk.c | 6 +++---
 1 file changed, 3 insertions(+), 3 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_cdclk.c b/drivers/gpu/drm/i915/display/intel_cdclk.c
index 4207863b7b2a..fdd8d04fe12c 100644
--- a/drivers/gpu/drm/i915/display/intel_cdclk.c
+++ b/drivers/gpu/drm/i915/display/intel_cdclk.c
@@ -1839,9 +1839,9 @@ static bool cdclk_compute_crawl_and_squash_midpoint(struct drm_i915_private *i91
 
 static bool pll_enable_wa_needed(struct drm_i915_private *dev_priv)
 {
-	return ((IS_DG2(dev_priv) || IS_METEORLAKE(dev_priv)) &&
-		dev_priv->display.cdclk.hw.vco > 0 &&
-		HAS_CDCLK_SQUASH(dev_priv));
+	return (IS_DG2(dev_priv) || IS_METEORLAKE(dev_priv) ||
+		DISPLAY_VER(dev_priv) == 20) &&
+		dev_priv->display.cdclk.hw.vco > 0 && HAS_CDCLK_SQUASH(dev_priv);
 }
 
 static void _bxt_set_cdclk(struct drm_i915_private *dev_priv,
-- 
2.40.1

