Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 2C1E4AE7F6D
	for <lists+intel-gfx@lfdr.de>; Wed, 25 Jun 2025 12:33:42 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 7318C10E6D7;
	Wed, 25 Jun 2025 10:33:40 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="MxZkgRoI";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.20])
 by gabe.freedesktop.org (Postfix) with ESMTPS id D212F10E6D7;
 Wed, 25 Jun 2025 10:33:38 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1750847619; x=1782383619;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=ZlX8ognWZm105/jkHljP4hLjze1Jg+85pcLZlnLkS4Q=;
 b=MxZkgRoIg2UbNeA/xfSiskumwXJBJPCLRNoNafJbiJshLB+jyjk88elx
 +8jLWZeOyV9T598deszzQD5e9Wei+LlHwW7ME/3jEP1fuCjhSNqpsxisS
 JO+JvAXiW/+cKeoDrxsF4yXYwizmLHkTXdHW/163DKdsVPwifLLQjLAR4
 V+j9uxnFHffnWpfOmQA7aLp3i/RUymh33wTCyftLuQ7xUFq7P3cKgmzte
 DJz4txEDQUTp4fqBJ++F1K5E4VeN4v5qmBtaDlgdvuikfxYzpDJedATHt
 LVOmCKWke7NA6InxRuWpMj8zJThYzCrHynMiPG74roN0yX2Rnc5LlL70M A==;
X-CSE-ConnectionGUID: OE56D9iDTQ23Yx8sXqZc7g==
X-CSE-MsgGUID: 8+ApZmmeTLawf1BQ/YI1xA==
X-IronPort-AV: E=McAfee;i="6800,10657,11474"; a="52830321"
X-IronPort-AV: E=Sophos;i="6.16,264,1744095600"; d="scan'208";a="52830321"
Received: from fmviesa007.fm.intel.com ([10.60.135.147])
 by orvoesa112.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 25 Jun 2025 03:33:39 -0700
X-CSE-ConnectionGUID: vwzavWnlSniCBXt8wJOprA==
X-CSE-MsgGUID: dh5sFBwTSdGV3voGBbYprw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.16,264,1744095600"; d="scan'208";a="151799068"
Received: from monicael-mobl3.ger.corp.intel.com (HELO localhost)
 ([10.245.246.78])
 by fmviesa007-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 25 Jun 2025 03:33:36 -0700
From: Jani Nikula <jani.nikula@intel.com>
To: intel-gfx@lists.freedesktop.org,
	intel-xe@lists.freedesktop.org
Cc: jani.nikula@intel.com,
	imre.deak@intel.com
Subject: [CI v2 12/16] drm/i915/cdclk: abstract
 intel_cdclk_pmdemand_needs_update()
Date: Wed, 25 Jun 2025 13:32:30 +0300
Message-Id: <d0d4f073707a2badb432187f6e02d6d7f9fe431b.1750847509.git.jani.nikula@intel.com>
X-Mailer: git-send-email 2.39.5
In-Reply-To: <cover.1750847509.git.jani.nikula@intel.com>
References: <cover.1750847509.git.jani.nikula@intel.com>
MIME-Version: 1.0
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
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

Add intel_cdclk_pmdemand_needs_update() helper to avoid looking at
struct intel_cdclk_state internals outside of intel_cdclk.c.

Reviewed-by: Imre Deak <imre.deak@intel.com>
Signed-off-by: Jani Nikula <jani.nikula@intel.com>
---
 drivers/gpu/drm/i915/display/intel_cdclk.c    | 15 +++++++++++++++
 drivers/gpu/drm/i915/display/intel_cdclk.h    |  1 +
 drivers/gpu/drm/i915/display/intel_pmdemand.c |  9 +--------
 3 files changed, 17 insertions(+), 8 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_cdclk.c b/drivers/gpu/drm/i915/display/intel_cdclk.c
index baec4042e4b6..a0c254f942fd 100644
--- a/drivers/gpu/drm/i915/display/intel_cdclk.c
+++ b/drivers/gpu/drm/i915/display/intel_cdclk.c
@@ -3849,3 +3849,18 @@ int intel_cdclk_bw_min_cdclk(const struct intel_cdclk_state *cdclk_state)
 {
 	return cdclk_state->bw_min_cdclk;
 }
+
+bool intel_cdclk_pmdemand_needs_update(struct intel_atomic_state *state)
+{
+	const struct intel_cdclk_state *new_cdclk_state, *old_cdclk_state;
+
+	new_cdclk_state = intel_atomic_get_new_cdclk_state(state);
+	old_cdclk_state = intel_atomic_get_old_cdclk_state(state);
+
+	if (new_cdclk_state &&
+	    (new_cdclk_state->actual.cdclk != old_cdclk_state->actual.cdclk ||
+	     new_cdclk_state->actual.voltage_level != old_cdclk_state->actual.voltage_level))
+		return true;
+
+	return false;
+}
diff --git a/drivers/gpu/drm/i915/display/intel_cdclk.h b/drivers/gpu/drm/i915/display/intel_cdclk.h
index fe1a1f1c1900..8527a6e44ee5 100644
--- a/drivers/gpu/drm/i915/display/intel_cdclk.h
+++ b/drivers/gpu/drm/i915/display/intel_cdclk.h
@@ -100,5 +100,6 @@ void intel_cdclk_debugfs_register(struct intel_display *display);
 int intel_cdclk_logical(const struct intel_cdclk_state *cdclk_state);
 int intel_cdclk_min_cdclk(const struct intel_cdclk_state *cdclk_state, enum pipe pipe);
 int intel_cdclk_bw_min_cdclk(const struct intel_cdclk_state *cdclk_state);
+bool intel_cdclk_pmdemand_needs_update(struct intel_atomic_state *state);
 
 #endif /* __INTEL_CDCLK_H__ */
diff --git a/drivers/gpu/drm/i915/display/intel_pmdemand.c b/drivers/gpu/drm/i915/display/intel_pmdemand.c
index a4d53fd94489..16ef68ef4041 100644
--- a/drivers/gpu/drm/i915/display/intel_pmdemand.c
+++ b/drivers/gpu/drm/i915/display/intel_pmdemand.c
@@ -294,7 +294,6 @@ intel_pmdemand_connector_needs_update(struct intel_atomic_state *state)
 
 static bool intel_pmdemand_needs_update(struct intel_atomic_state *state)
 {
-	const struct intel_cdclk_state *new_cdclk_state, *old_cdclk_state;
 	const struct intel_crtc_state *new_crtc_state, *old_crtc_state;
 	struct intel_crtc *crtc;
 	int i;
@@ -305,13 +304,7 @@ static bool intel_pmdemand_needs_update(struct intel_atomic_state *state)
 	if (intel_dbuf_pmdemand_needs_update(state))
 		return true;
 
-	new_cdclk_state = intel_atomic_get_new_cdclk_state(state);
-	old_cdclk_state = intel_atomic_get_old_cdclk_state(state);
-	if (new_cdclk_state &&
-	    (new_cdclk_state->actual.cdclk !=
-	     old_cdclk_state->actual.cdclk ||
-	     new_cdclk_state->actual.voltage_level !=
-	     old_cdclk_state->actual.voltage_level))
+	if (intel_cdclk_pmdemand_needs_update(state))
 		return true;
 
 	for_each_oldnew_intel_crtc_in_state(state, crtc, old_crtc_state,
-- 
2.39.5

