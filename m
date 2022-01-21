Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 00ECF495F60
	for <lists+intel-gfx@lfdr.de>; Fri, 21 Jan 2022 14:02:12 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 37C5410EA35;
	Fri, 21 Jan 2022 13:02:10 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
 by gabe.freedesktop.org (Postfix) with ESMTPS id C68E010EA35
 for <intel-gfx@lists.freedesktop.org>; Fri, 21 Jan 2022 13:02:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1642770128; x=1674306128;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=bEqJMwkMHVHHpq6CcW7JpDZMcgyhUy9e6MeFh3gf/y0=;
 b=h4RTqHVXapOzlYcExewIhmTWkLuPls0S+DCjiNcgrLnxd/15WojByOdz
 FB+ZtG/UTYz3OmfGA6KJGP8noujaJ+UoU9Y7V4AgE2LYkGeOv+SSUF0kv
 B0NtSmrEQhkoIQ6ayZOvet/rFccUmBtHOcEgfcYYvB/bHvaVIMRxNMyHw
 IBb3HqoVKH3eNEMBnJet1yDg/mlgowRLDRgGCQ8NFbrMh93UH5Sgg+chz
 MHyn4y0L2nIJH46zm3ycx8RU7sAlghLIMNv1mBLV3J4L+YA0UMDTejCor
 wJWJwj4h9BQbOv9I6pS6ts0aCHwi9jd6/qu6fqq4kDNt9QfTyMVeH2/Ac Q==;
X-IronPort-AV: E=McAfee;i="6200,9189,10233"; a="270068085"
X-IronPort-AV: E=Sophos;i="5.88,304,1635231600"; d="scan'208";a="270068085"
Received: from orsmga006.jf.intel.com ([10.7.209.51])
 by fmsmga101.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 21 Jan 2022 05:01:37 -0800
X-IronPort-AV: E=Sophos;i="5.88,304,1635231600"; d="scan'208";a="478237043"
Received: from chandra2-mobl.ger.corp.intel.com (HELO localhost)
 ([10.252.48.104])
 by orsmga006-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 21 Jan 2022 05:01:32 -0800
From: Jani Nikula <jani.nikula@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Fri, 21 Jan 2022 15:00:38 +0200
Message-Id: <0074a45193873aea0becdf7cc87c0f06754ab706.1642769982.git.jani.nikula@intel.com>
X-Mailer: git-send-email 2.30.2
In-Reply-To: <cover.1642769982.git.jani.nikula@intel.com>
References: <cover.1642769982.git.jani.nikula@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH 9/9] drm/i915/cdclk: convert to drm device based
 logging
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

Prefer drm device based logging.

Cc: Ville Syrjälä <ville.syrjala@linux.intel.com>
Signed-off-by: Jani Nikula <jani.nikula@intel.com>
---
 drivers/gpu/drm/i915/display/intel_cdclk.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/gpu/drm/i915/display/intel_cdclk.c b/drivers/gpu/drm/i915/display/intel_cdclk.c
index c4b48b831ced..4b140a014ca8 100644
--- a/drivers/gpu/drm/i915/display/intel_cdclk.c
+++ b/drivers/gpu/drm/i915/display/intel_cdclk.c
@@ -1625,7 +1625,7 @@ static void adlp_cdclk_pll_crawl(struct drm_i915_private *dev_priv, int vco)
 	/* Timeout 200us */
 	if (intel_de_wait_for_set(dev_priv, BXT_DE_PLL_ENABLE,
 				  BXT_DE_PLL_LOCK | BXT_DE_PLL_FREQ_REQ_ACK, 1))
-		DRM_ERROR("timeout waiting for FREQ change request ack\n");
+		drm_err(&dev_priv->drm, "timeout waiting for FREQ change request ack\n");
 
 	val &= ~BXT_DE_PLL_FREQ_REQ;
 	intel_de_write(dev_priv, BXT_DE_PLL_ENABLE, val);
-- 
2.30.2

