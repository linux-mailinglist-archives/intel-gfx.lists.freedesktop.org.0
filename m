Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 3961B7C6E37
	for <lists+intel-gfx@lfdr.de>; Thu, 12 Oct 2023 14:35:46 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id B2E7D10E4C9;
	Thu, 12 Oct 2023 12:35:44 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.55.52.93])
 by gabe.freedesktop.org (Postfix) with ESMTPS id D1BDC10E4CB
 for <intel-gfx@lists.freedesktop.org>; Thu, 12 Oct 2023 12:35:38 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1697114138; x=1728650138;
 h=from:to:subject:date:message-id:in-reply-to:references:
 mime-version:content-transfer-encoding;
 bh=sk9DDNpWg+epGQxMQihnBmKsO7dr6x/F9YHDYQyIC5g=;
 b=Ove+pdeNn14hO6WpTNhgxe2UMnOU8BGQ3UjYyAm99U/sGh3dQSUqVQDi
 f8VoAFhmEUa9+mKyJ5pZUEN0n0J3ugaU/mZPQvo53NUFlFr1SdOeLcLOj
 W/GguSt4VjCr9niEEUxAwGIhYebWVN/m0z1QISMdMQlm0VPQJsknvu3tT
 4kTKBTPjU8lgY56JjoV+glSLf3qn+SwOoLtrv9fBcrF+wL+I9rCJt8Jsu
 +vADnSYNA0HZiBbGqn6mU1s6izYO2vZ35mCZN6Z/qptyYyASnz7U8fGk6
 iUG9llKQYJkLAOIEwNK3XkCxXLK2Wi3CEh5N3uVq89zfYMEvmsywzsXz+ Q==;
X-IronPort-AV: E=McAfee;i="6600,9927,10861"; a="382142675"
X-IronPort-AV: E=Sophos;i="6.03,218,1694761200"; d="scan'208";a="382142675"
Received: from fmsmga003.fm.intel.com ([10.253.24.29])
 by fmsmga102.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 12 Oct 2023 05:35:38 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10861"; a="844982185"
X-IronPort-AV: E=Sophos;i="6.03,218,1694761200"; d="scan'208";a="844982185"
Received: from stinkpipe.fi.intel.com (HELO stinkbox) ([10.237.72.74])
 by FMSMGA003.fm.intel.com with SMTP; 12 Oct 2023 05:35:36 -0700
Received: by stinkbox (sSMTP sendmail emulation);
 Thu, 12 Oct 2023 15:35:35 +0300
From: Ville Syrjala <ville.syrjala@linux.intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Thu, 12 Oct 2023 15:35:22 +0300
Message-ID: <20231012123522.26045-5-ville.syrjala@linux.intel.com>
X-Mailer: git-send-email 2.41.0
In-Reply-To: <20231012123522.26045-1-ville.syrjala@linux.intel.com>
References: <20231012123522.26045-1-ville.syrjala@linux.intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH 4/4] drm/i915: Extract _intel_{enable,
 disable}_shared_dpll()
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

We have a bit of duplicated code around the DPLL disabling. Extact
that to new function, and for symmetry also do the same for the
enable direction.

Signed-off-by: Ville Syrjälä <ville.syrjala@linux.intel.com>
---
 drivers/gpu/drm/i915/display/intel_dpll_mgr.c | 37 ++++++++++++-------
 1 file changed, 23 insertions(+), 14 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_dpll_mgr.c b/drivers/gpu/drm/i915/display/intel_dpll_mgr.c
index 556b10eefe66..7958d0bd851e 100644
--- a/drivers/gpu/drm/i915/display/intel_dpll_mgr.c
+++ b/drivers/gpu/drm/i915/display/intel_dpll_mgr.c
@@ -219,6 +219,26 @@ intel_tc_pll_enable_reg(struct drm_i915_private *i915,
 	return MG_PLL_ENABLE(tc_port);
 }
 
+static void _intel_enable_shared_dpll(struct drm_i915_private *i915,
+				      struct intel_shared_dpll *pll)
+{
+	if (pll->info->power_domain)
+		pll->wakeref = intel_display_power_get(i915, pll->info->power_domain);
+
+	pll->info->funcs->enable(i915, pll);
+	pll->on = true;
+}
+
+static void _intel_disable_shared_dpll(struct drm_i915_private *i915,
+				       struct intel_shared_dpll *pll)
+{
+	pll->info->funcs->disable(i915, pll);
+	pll->on = false;
+
+	if (pll->info->power_domain)
+		intel_display_power_put(i915, pll->info->power_domain, pll->wakeref);
+}
+
 /**
  * intel_enable_shared_dpll - enable a CRTC's shared DPLL
  * @crtc_state: CRTC, and its state, which has a shared DPLL
@@ -259,11 +279,7 @@ void intel_enable_shared_dpll(const struct intel_crtc_state *crtc_state)
 
 	drm_dbg_kms(&i915->drm, "enabling %s\n", pll->info->name);
 
-	if (pll->info->power_domain)
-		pll->wakeref = intel_display_power_get(i915, pll->info->power_domain);
-
-	pll->info->funcs->enable(i915, pll);
-	pll->on = true;
+	_intel_enable_shared_dpll(i915, pll);
 
 out:
 	mutex_unlock(&i915->display.dpll.lock);
@@ -308,11 +324,8 @@ void intel_disable_shared_dpll(const struct intel_crtc_state *crtc_state)
 		goto out;
 
 	drm_dbg_kms(&i915->drm, "disabling %s\n", pll->info->name);
-	pll->info->funcs->disable(i915, pll);
-	pll->on = false;
 
-	if (pll->info->power_domain)
-		intel_display_power_put(i915, pll->info->power_domain, pll->wakeref);
+	_intel_disable_shared_dpll(i915, pll);
 
 out:
 	mutex_unlock(&i915->display.dpll.lock);
@@ -4408,11 +4421,7 @@ static void sanitize_dpll_state(struct drm_i915_private *i915,
 		    "%s enabled but not in use, disabling\n",
 		    pll->info->name);
 
-	pll->info->funcs->disable(i915, pll);
-	pll->on = false;
-
-	if (pll->info->power_domain)
-		intel_display_power_put(i915, pll->info->power_domain, pll->wakeref);
+	_intel_disable_shared_dpll(i915, pll);
 }
 
 void intel_dpll_sanitize_state(struct drm_i915_private *i915)
-- 
2.41.0

