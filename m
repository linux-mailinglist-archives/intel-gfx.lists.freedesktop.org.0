Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 659587F6E15
	for <lists+intel-gfx@lfdr.de>; Fri, 24 Nov 2023 09:27:53 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 96F8E10E799;
	Fri, 24 Nov 2023 08:27:48 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.55.52.88])
 by gabe.freedesktop.org (Postfix) with ESMTPS id C7A1310E1AD
 for <intel-gfx@lists.freedesktop.org>; Fri, 24 Nov 2023 08:27:42 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1700814462; x=1732350462;
 h=from:to:subject:date:message-id:in-reply-to:references:
 mime-version:content-transfer-encoding;
 bh=IKlFQjnOGl3tpgQMNXTuhW2r/ete+Kt7inimf4UxU1Q=;
 b=hL24iwZozEpApUWk8wttQXfZDC5l4UebqaMnUNjRmmvbCkeolC/VSeiM
 WSJNvQp8a3/Zj4aAVp34yALJitxtV/wAaSFVrR+fWN5cPPD8gBFAFU9V0
 nUyHOhFTYecNSgqSEFj/hryL8GBJK/uozFthSfhWal9PkpM+KEepNP4v5
 bJ4cKsdXdZR1zYW6p9QuT7Pfm0cvdsGJwv+ENzJVBZ5Cx4iN+jfGrxrLs
 agRlNoSdR9eJRT74Ync+gu7Kp8F/UyS7dLdumNFhB2OEw0coOjoBhAmz9
 jQYKjAs1t/Qk4e662l6ZO+5icQtHc/G3BjOJ5t0xlzHzMl4rOUTn3bPEs w==;
X-IronPort-AV: E=McAfee;i="6600,9927,10902"; a="423523555"
X-IronPort-AV: E=Sophos;i="6.04,223,1695711600"; d="scan'208";a="423523555"
Received: from orsmga007.jf.intel.com ([10.7.209.58])
 by fmsmga101.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 24 Nov 2023 00:27:41 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10902"; a="760896278"
X-IronPort-AV: E=Sophos;i="6.04,223,1695711600"; d="scan'208";a="760896278"
Received: from stinkpipe.fi.intel.com (HELO stinkbox) ([10.237.72.74])
 by orsmga007.jf.intel.com with SMTP; 24 Nov 2023 00:27:39 -0800
Received: by stinkbox (sSMTP sendmail emulation);
 Fri, 24 Nov 2023 10:27:38 +0200
From: Ville Syrjala <ville.syrjala@linux.intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Fri, 24 Nov 2023 10:27:32 +0200
Message-ID: <20231124082735.25470-2-ville.syrjala@linux.intel.com>
X-Mailer: git-send-email 2.41.0
In-Reply-To: <20231124082735.25470-1-ville.syrjala@linux.intel.com>
References: <20231124082735.25470-1-ville.syrjala@linux.intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH 2/5] drm/i915: Replace a memset() with zero
 initialization
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

Declaring a struct and immediately zeroing it with memset()
seems a bit silly to me. Just zero initialize the struct
when declaring it.

Signed-off-by: Ville Syrjälä <ville.syrjala@linux.intel.com>
---
 drivers/gpu/drm/i915/display/intel_dpll_mgr.c | 4 +---
 1 file changed, 1 insertion(+), 3 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_dpll_mgr.c b/drivers/gpu/drm/i915/display/intel_dpll_mgr.c
index ef57dad1a9cb..0376adc36780 100644
--- a/drivers/gpu/drm/i915/display/intel_dpll_mgr.c
+++ b/drivers/gpu/drm/i915/display/intel_dpll_mgr.c
@@ -4465,12 +4465,10 @@ verify_single_dpll_state(struct drm_i915_private *i915,
 			 struct intel_crtc *crtc,
 			 const struct intel_crtc_state *new_crtc_state)
 {
-	struct intel_dpll_hw_state dpll_hw_state;
+	struct intel_dpll_hw_state dpll_hw_state = {};
 	u8 pipe_mask;
 	bool active;
 
-	memset(&dpll_hw_state, 0, sizeof(dpll_hw_state));
-
 	drm_dbg_kms(&i915->drm, "%s\n", pll->info->name);
 
 	active = intel_dpll_get_hw_state(i915, pll, &dpll_hw_state);
-- 
2.41.0

