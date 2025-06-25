Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 5D74AAE7F71
	for <lists+intel-gfx@lfdr.de>; Wed, 25 Jun 2025 12:33:47 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id B5CF710E6DB;
	Wed, 25 Jun 2025 10:33:45 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="gJ2k6mFY";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.20])
 by gabe.freedesktop.org (Postfix) with ESMTPS id ADDC510E6DB;
 Wed, 25 Jun 2025 10:33:43 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1750847624; x=1782383624;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=nNnkrX7OwqlLNUwJfdm6NRf1MQssjPqRIWW5ymHV2Z4=;
 b=gJ2k6mFYzPmbJeL6Rz3BQbKDY16XrK8BiSIER14FsgldPBQluqMDvnfE
 YYRtt7aKLjQcCmUUxcOeQjRqT1QE+VxaiOQSMzW2Q1vFNRGTsHd6/ocly
 S9X36cq2IbexbCccjz6UhaWhqGBCXiie5mIIgPN6hLgu6DNrX3Lex63iY
 UFQXZ0CVktV8a4aVdwIQZvx6B6S6e8bJMMOovWKrntq6fNq2GWynnaDdh
 X7tpfaDbnfVnOsvEJ5Cjif2gJyXK3cVfpJcsr5LmDs1npTwJ3Rq735J6h
 Dt8SPVDNX3AGeadMT/5SGLdFzvBnkvNlXzQEE8fmRctHDjmxthAVAAR8a Q==;
X-CSE-ConnectionGUID: uThIu+RXSceL/JVo+a/z1A==
X-CSE-MsgGUID: 1QoVUX94ROep/NBfPpo3Rw==
X-IronPort-AV: E=McAfee;i="6800,10657,11474"; a="52830328"
X-IronPort-AV: E=Sophos;i="6.16,264,1744095600"; d="scan'208";a="52830328"
Received: from fmviesa007.fm.intel.com ([10.60.135.147])
 by orvoesa112.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 25 Jun 2025 03:33:44 -0700
X-CSE-ConnectionGUID: r6pYfywATxqhkVeqwoGgTg==
X-CSE-MsgGUID: 8TKlEDpIT+6lsCxnkuHhgQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.16,264,1744095600"; d="scan'208";a="151799132"
Received: from monicael-mobl3.ger.corp.intel.com (HELO localhost)
 ([10.245.246.78])
 by fmviesa007-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 25 Jun 2025 03:33:41 -0700
From: Jani Nikula <jani.nikula@intel.com>
To: intel-gfx@lists.freedesktop.org,
	intel-xe@lists.freedesktop.org
Cc: jani.nikula@intel.com,
	imre.deak@intel.com
Subject: [CI v2 13/16] drm/i915/cdclk: abstract intel_cdclk_force_min_cdclk()
Date: Wed, 25 Jun 2025 13:32:31 +0300
Message-Id: <0bf8a94a1a7d3ac564406ba427d12c4c8eefb5bb.1750847509.git.jani.nikula@intel.com>
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

Add intel_cdclk_force_min_cdclk() helper to avoid modifying struct
intel_cdclk_state internals outside of intel_cdclk.c.

Reviewed-by: Imre Deak <imre.deak@intel.com>
Signed-off-by: Jani Nikula <jani.nikula@intel.com>
---
 drivers/gpu/drm/i915/display/intel_audio.c | 2 +-
 drivers/gpu/drm/i915/display/intel_cdclk.c | 5 +++++
 drivers/gpu/drm/i915/display/intel_cdclk.h | 1 +
 3 files changed, 7 insertions(+), 1 deletion(-)

diff --git a/drivers/gpu/drm/i915/display/intel_audio.c b/drivers/gpu/drm/i915/display/intel_audio.c
index 55af3a553c58..5bdaef38f13d 100644
--- a/drivers/gpu/drm/i915/display/intel_audio.c
+++ b/drivers/gpu/drm/i915/display/intel_audio.c
@@ -951,7 +951,7 @@ static int glk_force_audio_cdclk_commit(struct intel_atomic_state *state,
 	if (IS_ERR(cdclk_state))
 		return PTR_ERR(cdclk_state);
 
-	cdclk_state->force_min_cdclk = enable ? 2 * 96000 : 0;
+	intel_cdclk_force_min_cdclk(cdclk_state, enable ? 2 * 96000 : 0);
 
 	return drm_atomic_commit(&state->base);
 }
diff --git a/drivers/gpu/drm/i915/display/intel_cdclk.c b/drivers/gpu/drm/i915/display/intel_cdclk.c
index a0c254f942fd..0c2d0195a2d9 100644
--- a/drivers/gpu/drm/i915/display/intel_cdclk.c
+++ b/drivers/gpu/drm/i915/display/intel_cdclk.c
@@ -3864,3 +3864,8 @@ bool intel_cdclk_pmdemand_needs_update(struct intel_atomic_state *state)
 
 	return false;
 }
+
+void intel_cdclk_force_min_cdclk(struct intel_cdclk_state *cdclk_state, int force_min_cdclk)
+{
+	cdclk_state->force_min_cdclk = force_min_cdclk;
+}
diff --git a/drivers/gpu/drm/i915/display/intel_cdclk.h b/drivers/gpu/drm/i915/display/intel_cdclk.h
index 8527a6e44ee5..ff10ed526bd4 100644
--- a/drivers/gpu/drm/i915/display/intel_cdclk.h
+++ b/drivers/gpu/drm/i915/display/intel_cdclk.h
@@ -101,5 +101,6 @@ int intel_cdclk_logical(const struct intel_cdclk_state *cdclk_state);
 int intel_cdclk_min_cdclk(const struct intel_cdclk_state *cdclk_state, enum pipe pipe);
 int intel_cdclk_bw_min_cdclk(const struct intel_cdclk_state *cdclk_state);
 bool intel_cdclk_pmdemand_needs_update(struct intel_atomic_state *state);
+void intel_cdclk_force_min_cdclk(struct intel_cdclk_state *cdclk_state, int force_min_cdclk);
 
 #endif /* __INTEL_CDCLK_H__ */
-- 
2.39.5

