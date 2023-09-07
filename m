Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 453627974AC
	for <lists+intel-gfx@lfdr.de>; Thu,  7 Sep 2023 17:40:37 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 8FE8B10E830;
	Thu,  7 Sep 2023 15:40:12 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [134.134.136.126])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 2960410E820;
 Thu,  7 Sep 2023 15:40:07 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1694101207; x=1725637207;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=1/+GlIdBLvHBAuj10wH2xeOHRmIM+mRadCKqyrKLdgU=;
 b=ZddohOZT550OEzFMAmRGZ3hE+vms1geXncKBGgSXAtPhzKKZMCbBDdTN
 +sntPFJmYuxDPOkYz303yiFaKLcHSAxT+NjTsAoeYMOWPbcadfOJbbd0O
 uwbmtbNYZ1wtZr4tklxxpD99ajN/m+ErC1DXhqNAJenwGiUUkbS6EvlaB
 EXQcfAaXNtviuGFFdoNSdauIwjiOxDHyZvYZyNeZrdu7dHF8MNYc2a8RX
 L8OeLr+eauMtWEnSLt4G5EjfDJi3JBPEoAw991uIx47STMt4CuifIP8gl
 wIQNPkyIDSQnRChujDGwvyIHL3eTfvvg0U4JL7HPauzlhzsVyNOsOr9xt w==;
X-IronPort-AV: E=McAfee;i="6600,9927,10826"; a="362445803"
X-IronPort-AV: E=Sophos;i="6.02,235,1688454000"; d="scan'208";a="362445803"
Received: from fmsmga005.fm.intel.com ([10.253.24.32])
 by orsmga106.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 07 Sep 2023 08:38:18 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10826"; a="1072930297"
X-IronPort-AV: E=Sophos;i="6.02,235,1688454000"; d="scan'208";a="1072930297"
Received: from lucas-s2600cw.jf.intel.com ([10.165.21.196])
 by fmsmga005-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 07 Sep 2023 08:38:18 -0700
From: Lucas De Marchi <lucas.demarchi@intel.com>
To: intel-xe@lists.freedesktop.org,
	intel-gfx@lists.freedesktop.org
Date: Thu,  7 Sep 2023 08:37:50 -0700
Message-Id: <20230907153757.2249452-21-lucas.demarchi@intel.com>
X-Mailer: git-send-email 2.40.1
In-Reply-To: <20230907153757.2249452-1-lucas.demarchi@intel.com>
References: <20230907153757.2249452-1-lucas.demarchi@intel.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH v2 20/27] drm/i915/xe2lpd: Extend Wa_15010685871
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

Xe2_LPD also needs workaround 15010685871. While adding the new display
version, also re-order the condition to follow the convention of new
version first.

Signed-off-by: Lucas De Marchi <lucas.demarchi@intel.com>
---
 drivers/gpu/drm/i915/display/intel_cdclk.c | 7 ++++---
 1 file changed, 4 insertions(+), 3 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_cdclk.c b/drivers/gpu/drm/i915/display/intel_cdclk.c
index ad5251ba6fe1..cfd01050f7f1 100644
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
+		IS_DG2(dev_priv)) && dev_priv->display.cdclk.hw.vco > 0 &&
+		HAS_CDCLK_SQUASH(dev_priv);
 }
 
 static void _bxt_set_cdclk(struct drm_i915_private *dev_priv,
-- 
2.40.1

