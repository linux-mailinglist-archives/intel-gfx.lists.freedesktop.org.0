Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id EDC3A7A6B7F
	for <lists+intel-gfx@lfdr.de>; Tue, 19 Sep 2023 21:21:49 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id D2E0110E29E;
	Tue, 19 Sep 2023 19:21:33 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.55.52.136])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 28D0410E24F
 for <intel-gfx@lists.freedesktop.org>; Tue, 19 Sep 2023 19:21:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1695151287; x=1726687287;
 h=from:to:subject:date:message-id:in-reply-to:references:
 mime-version:content-transfer-encoding;
 bh=qxMkiwJDkH+r+M/wyXOQFt7QzVfoWlIi1Dr+d/8t8ms=;
 b=h3oQ81JrNy1JNfPBEmmXvfltS9IrV2q9mJrL8hLVI70pQZ5CGhsWfwY/
 Hokd4Vlpw28nzc041+7TOslSTdBtjGojOktNwP7HjJn8wqa5cpEF8AC/a
 pSjdjLIxQodc2dUaQ+LpbkZR6RfmWNlSw0A1IAeVJ0NzMTuHsNKA3qiC6
 VfozVHrd6+D7B0+L6j5LLajvhZt1mZ2Qsn1iiV4kCO0uNqQuVMTsAPUdK
 kqIp/67nvOT72yMs+fKsk+nzRV/+6zqXYOGAK+hSWuhkI01D0thHKJSwn
 HkzxY2gECKGViF5IcIvCWLQxNdNTZgjyR0xRMZUrcMo45P9pt6vwTQHMK w==;
X-IronPort-AV: E=McAfee;i="6600,9927,10838"; a="359423142"
X-IronPort-AV: E=Sophos;i="6.02,160,1688454000"; d="scan'208";a="359423142"
Received: from orsmga002.jf.intel.com ([10.7.209.21])
 by fmsmga106.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 19 Sep 2023 12:21:26 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10838"; a="746350099"
X-IronPort-AV: E=Sophos;i="6.02,160,1688454000"; d="scan'208";a="746350099"
Received: from lucas-s2600cw.jf.intel.com ([10.165.21.196])
 by orsmga002-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 19 Sep 2023 12:21:25 -0700
From: Lucas De Marchi <lucas.demarchi@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Tue, 19 Sep 2023 12:21:23 -0700
Message-Id: <20230919192128.2045154-17-lucas.demarchi@intel.com>
X-Mailer: git-send-email 2.40.1
In-Reply-To: <20230919192128.2045154-1-lucas.demarchi@intel.com>
References: <20230919192128.2045154-1-lucas.demarchi@intel.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [CI 17/22] drm/i915/xe2lpd: Extend Wa_15010685871
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

Xe2_LPD also needs workaround 15010685871. While adding the new display
version, also re-order the condition to follow the convention of new
version first.

v2: Remove redundant HAS_CDCLK_SQUASH(). As the platform or IP version
    needing the workaround are handpicked, there is no need to also
    check if tha platform has squashing support (Matt Roper)

Signed-off-by: Lucas De Marchi <lucas.demarchi@intel.com>
Reviewed-by: Matt Roper <matthew.d.roper@intel.com>
---
 drivers/gpu/drm/i915/display/intel_cdclk.c | 7 ++++---
 1 file changed, 4 insertions(+), 3 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_cdclk.c b/drivers/gpu/drm/i915/display/intel_cdclk.c
index ad5251ba6fe1..656ff50def39 100644
--- a/drivers/gpu/drm/i915/display/intel_cdclk.c
+++ b/drivers/gpu/drm/i915/display/intel_cdclk.c
@@ -1841,9 +1841,10 @@ static bool cdclk_compute_crawl_and_squash_midpoint(struct drm_i915_private *i91
 
 static bool pll_enable_wa_needed(struct drm_i915_private *dev_priv)
 {
-	return ((IS_DG2(dev_priv) || DISPLAY_VER_FULL(dev_priv) == IP_VER(14, 0)) &&
-		dev_priv->display.cdclk.hw.vco > 0 &&
-		HAS_CDCLK_SQUASH(dev_priv));
+	return (DISPLAY_VER_FULL(dev_priv) == IP_VER(20, 0) ||
+		DISPLAY_VER_FULL(dev_priv) == IP_VER(14, 0) ||
+		IS_DG2(dev_priv)) &&
+		dev_priv->display.cdclk.hw.vco > 0;
 }
 
 static void _bxt_set_cdclk(struct drm_i915_private *dev_priv,
-- 
2.40.1

