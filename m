Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 26E75879912
	for <lists+intel-gfx@lfdr.de>; Tue, 12 Mar 2024 17:37:08 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 4739810F4CE;
	Tue, 12 Mar 2024 16:37:06 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="a8DKyomw";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.9])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 70FEC10F4C7;
 Tue, 12 Mar 2024 16:37:04 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1710261424; x=1741797424;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=qE6JlS101qzThZVsEHKdWLO+hG4y2CvkKw7FY76PB18=;
 b=a8DKyomw8lc+KF20zcqJVEsGRqk4rkihtktazwS1t0INBQCujUIe58Tu
 zcLvUwoJ8pKabKjiFJQ4itvhxFEOdftmLbsLdWIzHK25RhfCcY5Ujynde
 NvDtdpBRauRBbOz22CZvyLuCCBdntS4wHG76SReqCi+pztjIwtcFXGnCz
 sPOLbqjdmyriu9GE7yT655KxavGCvkzawdBFp0zyng30DIWU8XKgG2aX3
 RkzHGsUuXVRLyXh0fiB/qCQlPFKO3H+pQCWqeazzpJgkJ3gpG03M3NBgX
 09fstbHP404FezlA73H/dEa09ZEVmgHggvGrcnQhKGcbtvs6WWg191PZa g==;
X-IronPort-AV: E=McAfee;i="6600,9927,11011"; a="27458073"
X-IronPort-AV: E=Sophos;i="6.07,119,1708416000"; d="scan'208";a="27458073"
Received: from orviesa003.jf.intel.com ([10.64.159.143])
 by orvoesa101.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 12 Mar 2024 09:37:04 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.07,119,1708416000"; d="scan'208";a="16245826"
Received: from ticela-or-524.amr.corp.intel.com (HELO gjsousa-mobl2.intel.com)
 ([10.255.33.238])
 by ORVIESA003-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 12 Mar 2024 09:37:03 -0700
From: Gustavo Sousa <gustavo.sousa@intel.com>
To: intel-gfx@lists.freedesktop.org,
	intel-xe@lists.freedesktop.org
Cc: Lucas De Marchi <lucas.demarchi@intel.com>,
 Matt Roper <matthew.d.roper@intel.com>,
 Stanislav Lisovskiy <stanislav.lisovskiy@intel.com>,
 gustavo.sousa@intel.com
Subject: [PATCH v2 3/8] drm/i915/cdclk: Only compute squash waveform when
 necessary
Date: Tue, 12 Mar 2024 13:36:34 -0300
Message-ID: <20240312163639.172321-4-gustavo.sousa@intel.com>
X-Mailer: git-send-email 2.44.0
In-Reply-To: <20240312163639.172321-1-gustavo.sousa@intel.com>
References: <20240312163639.172321-1-gustavo.sousa@intel.com>
MIME-Version: 1.0
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

It is no use computing the squash waveform if we are not going to use
it. Move the call to cdclk_squash_waveform() inside the block guarded by
HAS_CDCLK_SQUASH(dev_priv).

v2:
  - Move "u16 waveform" declaration to inside the block where it is
    initialized and used. (Matt)

Reviewed-by: Matt Roper <matthew.d.roper@intel.com>
Signed-off-by: Gustavo Sousa <gustavo.sousa@intel.com>
---
 drivers/gpu/drm/i915/display/intel_cdclk.c | 6 +++---
 1 file changed, 3 insertions(+), 3 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_cdclk.c b/drivers/gpu/drm/i915/display/intel_cdclk.c
index ad0f03e51e4a..354a9dba6440 100644
--- a/drivers/gpu/drm/i915/display/intel_cdclk.c
+++ b/drivers/gpu/drm/i915/display/intel_cdclk.c
@@ -2006,7 +2006,6 @@ static void _bxt_set_cdclk(struct drm_i915_private *dev_priv,
 {
 	int cdclk = cdclk_config->cdclk;
 	int vco = cdclk_config->vco;
-	u16 waveform;
 
 	if (HAS_CDCLK_CRAWL(dev_priv) && dev_priv->display.cdclk.hw.vco > 0 && vco > 0 &&
 	    !cdclk_pll_is_unknown(dev_priv->display.cdclk.hw.vco)) {
@@ -2021,10 +2020,11 @@ static void _bxt_set_cdclk(struct drm_i915_private *dev_priv,
 	} else
 		bxt_cdclk_pll_update(dev_priv, vco);
 
-	waveform = cdclk_squash_waveform(dev_priv, cdclk);
+	if (HAS_CDCLK_SQUASH(dev_priv)) {
+		u16 waveform = cdclk_squash_waveform(dev_priv, cdclk);
 
-	if (HAS_CDCLK_SQUASH(dev_priv))
 		dg2_cdclk_squash_program(dev_priv, waveform);
+	}
 
 	intel_de_write(dev_priv, CDCLK_CTL, bxt_cdclk_ctl(dev_priv, cdclk_config, pipe));
 
-- 
2.44.0

