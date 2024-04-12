Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id E4F248A359D
	for <lists+intel-gfx@lfdr.de>; Fri, 12 Apr 2024 20:27:15 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 17F8A10F79E;
	Fri, 12 Apr 2024 18:27:14 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="hqK/idC1";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.13])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 91A8910F79E
 for <intel-gfx@lists.freedesktop.org>; Fri, 12 Apr 2024 18:27:09 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1712946430; x=1744482430;
 h=from:to:subject:date:message-id:in-reply-to:references:
 mime-version:content-transfer-encoding;
 bh=YEWfazbBkYu/ihHIL+YETQlXq/R7mghOt5ElgiFE/7U=;
 b=hqK/idC1H4RI9kzQaAox4nKWlrdk/w5xziqrUr8QBzBWX8wt7M776XJg
 oGGR9qjgPGdcab7E2l51Xui+1O92C4CdOaCjy9J6BStiWvB/P2PcSSQlF
 beK+Ox0sBkL+Hm6b6pli5H2yCv0pdSM3qyGd+ROTCvtl3RDBiYd9GgtHc
 M/enDeQYe9NjDYp74nLJx1HrWRtOjYqkNv59lwjKUfKnRTihhH+ipVc0p
 XTDmlLGSXsAYeQ7RnTcnD3FrRDYKSUJ3V54GYMexZ1fZWKUvIePSvZnFU
 Z3uX39F9nl1ZcOyRftK6be4iTzNeQiVI0qEAEIVeWLZ35veqQS4TuVDqo g==;
X-CSE-ConnectionGUID: aSyJIB0SRjafR51ZRysCQA==
X-CSE-MsgGUID: FXBtdo21R+CN2lGt/uNxEA==
X-IronPort-AV: E=McAfee;i="6600,9927,11042"; a="19560500"
X-IronPort-AV: E=Sophos;i="6.07,196,1708416000"; d="scan'208";a="19560500"
Received: from fmviesa008.fm.intel.com ([10.60.135.148])
 by orvoesa105.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 12 Apr 2024 11:27:09 -0700
X-CSE-ConnectionGUID: 4FUan7r4Qkuu/c0QjZ3soQ==
X-CSE-MsgGUID: vyslgwQdRyC+idMXqhe3Cw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.07,196,1708416000"; d="scan'208";a="21394385"
Received: from stinkpipe.fi.intel.com (HELO stinkbox) ([10.237.72.74])
 by fmviesa008.fm.intel.com with SMTP; 12 Apr 2024 11:27:07 -0700
Received: by stinkbox (sSMTP sendmail emulation);
 Fri, 12 Apr 2024 21:27:06 +0300
From: Ville Syrjala <ville.syrjala@linux.intel.com>
To: intel-gfx@lists.freedesktop.org
Subject: [PATCH 01/18] drm/i915: Replace hand rolled PLL state dump with
 intel_dpll_dump_hw_state()
Date: Fri, 12 Apr 2024 21:26:46 +0300
Message-ID: <20240412182703.19916-2-ville.syrjala@linux.intel.com>
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

Just use intel_dpll_dump_hw_state() instead of hand rolling it.

Signed-off-by: Ville Syrjälä <ville.syrjala@linux.intel.com>
---
 .../drm/i915/display/intel_display_debugfs.c  | 31 ++-----------------
 1 file changed, 2 insertions(+), 29 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_display_debugfs.c b/drivers/gpu/drm/i915/display/intel_display_debugfs.c
index 0feffe8d4e45..73be72bf3f5c 100644
--- a/drivers/gpu/drm/i915/display/intel_display_debugfs.c
+++ b/drivers/gpu/drm/i915/display/intel_display_debugfs.c
@@ -638,6 +638,7 @@ static int i915_display_capabilities(struct seq_file *m, void *unused)
 static int i915_shared_dplls_info(struct seq_file *m, void *unused)
 {
 	struct drm_i915_private *dev_priv = node_to_i915(m->private);
+	struct drm_printer p = drm_seq_file_printer(m);
 	struct intel_shared_dpll *pll;
 	int i;
 
@@ -654,35 +655,7 @@ static int i915_shared_dplls_info(struct seq_file *m, void *unused)
 			   pll->state.pipe_mask, pll->active_mask,
 			   str_yes_no(pll->on));
 		seq_printf(m, " tracked hardware state:\n");
-		seq_printf(m, " dpll:    0x%08x\n", pll->state.hw_state.dpll);
-		seq_printf(m, " dpll_md: 0x%08x\n",
-			   pll->state.hw_state.dpll_md);
-		seq_printf(m, " fp0:     0x%08x\n", pll->state.hw_state.fp0);
-		seq_printf(m, " fp1:     0x%08x\n", pll->state.hw_state.fp1);
-		seq_printf(m, " wrpll:   0x%08x\n", pll->state.hw_state.wrpll);
-		seq_printf(m, " cfgcr0:  0x%08x\n", pll->state.hw_state.cfgcr0);
-		seq_printf(m, " cfgcr1:  0x%08x\n", pll->state.hw_state.cfgcr1);
-		seq_printf(m, " div0:    0x%08x\n", pll->state.hw_state.div0);
-		seq_printf(m, " mg_refclkin_ctl:        0x%08x\n",
-			   pll->state.hw_state.mg_refclkin_ctl);
-		seq_printf(m, " mg_clktop2_coreclkctl1: 0x%08x\n",
-			   pll->state.hw_state.mg_clktop2_coreclkctl1);
-		seq_printf(m, " mg_clktop2_hsclkctl:    0x%08x\n",
-			   pll->state.hw_state.mg_clktop2_hsclkctl);
-		seq_printf(m, " mg_pll_div0:  0x%08x\n",
-			   pll->state.hw_state.mg_pll_div0);
-		seq_printf(m, " mg_pll_div1:  0x%08x\n",
-			   pll->state.hw_state.mg_pll_div1);
-		seq_printf(m, " mg_pll_lf:    0x%08x\n",
-			   pll->state.hw_state.mg_pll_lf);
-		seq_printf(m, " mg_pll_frac_lock: 0x%08x\n",
-			   pll->state.hw_state.mg_pll_frac_lock);
-		seq_printf(m, " mg_pll_ssc:   0x%08x\n",
-			   pll->state.hw_state.mg_pll_ssc);
-		seq_printf(m, " mg_pll_bias:  0x%08x\n",
-			   pll->state.hw_state.mg_pll_bias);
-		seq_printf(m, " mg_pll_tdc_coldst_bias: 0x%08x\n",
-			   pll->state.hw_state.mg_pll_tdc_coldst_bias);
+		intel_dpll_dump_hw_state(dev_priv, &p, &pll->state.hw_state);
 	}
 	drm_modeset_unlock_all(&dev_priv->drm);
 
-- 
2.43.2

