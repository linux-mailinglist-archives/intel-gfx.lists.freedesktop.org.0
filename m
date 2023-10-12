Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 4F8D17C6E36
	for <lists+intel-gfx@lfdr.de>; Thu, 12 Oct 2023 14:35:43 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 4EDCB10E4C1;
	Thu, 12 Oct 2023 12:35:39 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.55.52.93])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 32ED210E4BC
 for <intel-gfx@lists.freedesktop.org>; Thu, 12 Oct 2023 12:35:35 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1697114135; x=1728650135;
 h=from:to:subject:date:message-id:in-reply-to:references:
 mime-version:content-transfer-encoding;
 bh=+NoaQ8akBDl0+xFhbGkwNl4hyL2rYJM2nHD3CLE7MJU=;
 b=cdFuOlJwA0zZc2uWbJ4tmjqCjv/1wjiP68v29myhvkU9rMbhDGaseGRT
 bQ0XZ6VmtHLh8LsSUC2dTLqawiZdXxJnbK/dwFwaSfffae6etviu3YIIJ
 zNZPisXCLHxGJDksFeuB+XBH8VrS2HCe+FZDdOvcBGZ4fQjjr1Kmi62Ev
 6dY2K94wh4747Xq/PAE9QKCVAfHxRRHOLbEkbey0iVr2eByF0guDLN9NT
 gzaXdCwCQl/iaZXrHgxwJHnbWslV4FKfAw41dPyKH/vg1FGVefr+xarJ0
 MX9Jf3Ye1dYK6Occjy+1qeMyTim1khxQH0DXlPe8xcQkkOIJ02wvSWdHf Q==;
X-IronPort-AV: E=McAfee;i="6600,9927,10861"; a="382142634"
X-IronPort-AV: E=Sophos;i="6.03,218,1694761200"; d="scan'208";a="382142634"
Received: from fmsmga003.fm.intel.com ([10.253.24.29])
 by fmsmga102.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 12 Oct 2023 05:35:35 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10861"; a="844982162"
X-IronPort-AV: E=Sophos;i="6.03,218,1694761200"; d="scan'208";a="844982162"
Received: from stinkpipe.fi.intel.com (HELO stinkbox) ([10.237.72.74])
 by FMSMGA003.fm.intel.com with SMTP; 12 Oct 2023 05:35:32 -0700
Received: by stinkbox (sSMTP sendmail emulation);
 Thu, 12 Oct 2023 15:35:32 +0300
From: Ville Syrjala <ville.syrjala@linux.intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Thu, 12 Oct 2023 15:35:21 +0300
Message-ID: <20231012123522.26045-4-ville.syrjala@linux.intel.com>
X-Mailer: git-send-email 2.41.0
In-Reply-To: <20231012123522.26045-1-ville.syrjala@linux.intel.com>
References: <20231012123522.26045-1-ville.syrjala@linux.intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH 3/4] drm/i915: Move the DPLL extra power domain
 handling up one level
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

The extra DPLL power domain is currently handled in three places:
- combo_pll_enable()
- combo_pll_disable()
- readout_dpll_hw_state()

First two of those are low level PLL funcs, but the third is a higher
level thing. So the current situation is rather inconsistent. Unify
this by moving the PLL enable/disable up one level. This also means
the extra power domain could be trivially be used by other platforms
as well.

Signed-off-by: Ville Syrjälä <ville.syrjala@linux.intel.com>
---
 drivers/gpu/drm/i915/display/intel_dpll_mgr.c | 16 ++++++++++------
 1 file changed, 10 insertions(+), 6 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_dpll_mgr.c b/drivers/gpu/drm/i915/display/intel_dpll_mgr.c
index 4e524cb8ed83..556b10eefe66 100644
--- a/drivers/gpu/drm/i915/display/intel_dpll_mgr.c
+++ b/drivers/gpu/drm/i915/display/intel_dpll_mgr.c
@@ -258,6 +258,10 @@ void intel_enable_shared_dpll(const struct intel_crtc_state *crtc_state)
 	drm_WARN_ON(&i915->drm, pll->on);
 
 	drm_dbg_kms(&i915->drm, "enabling %s\n", pll->info->name);
+
+	if (pll->info->power_domain)
+		pll->wakeref = intel_display_power_get(i915, pll->info->power_domain);
+
 	pll->info->funcs->enable(i915, pll);
 	pll->on = true;
 
@@ -307,6 +311,9 @@ void intel_disable_shared_dpll(const struct intel_crtc_state *crtc_state)
 	pll->info->funcs->disable(i915, pll);
 	pll->on = false;
 
+	if (pll->info->power_domain)
+		intel_display_power_put(i915, pll->info->power_domain, pll->wakeref);
+
 out:
 	mutex_unlock(&i915->display.dpll.lock);
 }
@@ -3838,9 +3845,6 @@ static void combo_pll_enable(struct drm_i915_private *i915,
 {
 	i915_reg_t enable_reg = intel_combo_pll_enable_reg(i915, pll);
 
-	if (pll->info->power_domain)
-		pll->wakeref = intel_display_power_get(i915, pll->info->power_domain);
-
 	icl_pll_power_enable(i915, pll, enable_reg);
 
 	icl_dpll_write(i915, pll);
@@ -3936,9 +3940,6 @@ static void combo_pll_disable(struct drm_i915_private *i915,
 	i915_reg_t enable_reg = intel_combo_pll_enable_reg(i915, pll);
 
 	icl_pll_disable(i915, pll, enable_reg);
-
-	if (pll->info->power_domain)
-		intel_display_power_put(i915, pll->info->power_domain, pll->wakeref);
 }
 
 static void tbt_pll_disable(struct drm_i915_private *i915,
@@ -4409,6 +4410,9 @@ static void sanitize_dpll_state(struct drm_i915_private *i915,
 
 	pll->info->funcs->disable(i915, pll);
 	pll->on = false;
+
+	if (pll->info->power_domain)
+		intel_display_power_put(i915, pll->info->power_domain, pll->wakeref);
 }
 
 void intel_dpll_sanitize_state(struct drm_i915_private *i915)
-- 
2.41.0

