Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 677C98A359E
	for <lists+intel-gfx@lfdr.de>; Fri, 12 Apr 2024 20:27:19 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id B2C4510F79F;
	Fri, 12 Apr 2024 18:27:17 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="L+GL2SXh";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.13])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 5D7EF10F79F
 for <intel-gfx@lists.freedesktop.org>; Fri, 12 Apr 2024 18:27:12 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1712946432; x=1744482432;
 h=from:to:subject:date:message-id:in-reply-to:references:
 mime-version:content-transfer-encoding;
 bh=Jn+dm1M1wRdLqEKfqUU40u3o3K2ZZb1mSdVCrfg0Eo0=;
 b=L+GL2SXhnE66HrLrmiugojMOo4jdn01Wd/64YcdIGpn+d48L4bFAE6Hz
 wn0MdhUMGG9qmzuCRSyp1ASjvIek/PSwJn4Ww9caQi+zdztdvTMCnWo/a
 xQOh3A37Hum3aTG5D5oHdIfzfat145PDiD2eHgQW9X/hY3XS+KA9PK5u4
 5qQcHbE1Nmk3qIgMkLI/eQbcII+wGEMIhbPWFSQZTgREj8z49f5PtgGIU
 NV3aDRuKwpWM0+ndv8NbhRIXAIh1uCn1uD8uUMxwDE7Nppvnns1zEy/RM
 ouSdia0lO68SkO9XKPLdfgW+zTD6iBqO78b4+4c7UJqAo6C+msXCVN35u A==;
X-CSE-ConnectionGUID: L+nAwgT1RdCGlHdGOZ6VyA==
X-CSE-MsgGUID: GjLb0eisSjmqIsdLy2zHWg==
X-IronPort-AV: E=McAfee;i="6600,9927,11042"; a="19560503"
X-IronPort-AV: E=Sophos;i="6.07,196,1708416000"; d="scan'208";a="19560503"
Received: from fmviesa008.fm.intel.com ([10.60.135.148])
 by orvoesa105.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 12 Apr 2024 11:27:12 -0700
X-CSE-ConnectionGUID: SybJ493FT+qbH224AeXrUA==
X-CSE-MsgGUID: BWkQmLizS5uGApexL4G7Nw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.07,196,1708416000"; d="scan'208";a="21394513"
Received: from stinkpipe.fi.intel.com (HELO stinkbox) ([10.237.72.74])
 by fmviesa008.fm.intel.com with SMTP; 12 Apr 2024 11:27:10 -0700
Received: by stinkbox (sSMTP sendmail emulation);
 Fri, 12 Apr 2024 21:27:09 +0300
From: Ville Syrjala <ville.syrjala@linux.intel.com>
To: intel-gfx@lists.freedesktop.org
Subject: [PATCH 02/18] drm/i915: Use printer for the rest of PLL debugfs dump
Date: Fri, 12 Apr 2024 21:26:47 +0300
Message-ID: <20240412182703.19916-3-ville.syrjala@linux.intel.com>
X-Mailer: git-send-email 2.43.2
In-Reply-To: <20240412182703.19916-1-ville.syrjala@linux.intel.com>
References: <20240412182703.19916-1-ville.syrjala@linux.intel.com>
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

Since we now have the printer around for intel_dpll_dump_hw_state()
use it for all the other PLL prints as well. Just to make the thing
looks less crazy.

Signed-off-by: Ville Syrjälä <ville.syrjala@linux.intel.com>
---
 drivers/gpu/drm/i915/display/intel_display_debugfs.c | 8 ++++----
 1 file changed, 4 insertions(+), 4 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_display_debugfs.c b/drivers/gpu/drm/i915/display/intel_display_debugfs.c
index 73be72bf3f5c..35f9f86ef70f 100644
--- a/drivers/gpu/drm/i915/display/intel_display_debugfs.c
+++ b/drivers/gpu/drm/i915/display/intel_display_debugfs.c
@@ -644,17 +644,17 @@ static int i915_shared_dplls_info(struct seq_file *m, void *unused)
 
 	drm_modeset_lock_all(&dev_priv->drm);
 
-	seq_printf(m, "PLL refclks: non-SSC: %d kHz, SSC: %d kHz\n",
+	drm_printf(&p, "PLL refclks: non-SSC: %d kHz, SSC: %d kHz\n",
 		   dev_priv->display.dpll.ref_clks.nssc,
 		   dev_priv->display.dpll.ref_clks.ssc);
 
 	for_each_shared_dpll(dev_priv, pll, i) {
-		seq_printf(m, "DPLL%i: %s, id: %i\n", pll->index,
+		drm_printf(&p, "DPLL%i: %s, id: %i\n", pll->index,
 			   pll->info->name, pll->info->id);
-		seq_printf(m, " pipe_mask: 0x%x, active: 0x%x, on: %s\n",
+		drm_printf(&p, " pipe_mask: 0x%x, active: 0x%x, on: %s\n",
 			   pll->state.pipe_mask, pll->active_mask,
 			   str_yes_no(pll->on));
-		seq_printf(m, " tracked hardware state:\n");
+		drm_printf(&p, " tracked hardware state:\n");
 		intel_dpll_dump_hw_state(dev_priv, &p, &pll->state.hw_state);
 	}
 	drm_modeset_unlock_all(&dev_priv->drm);
-- 
2.43.2

