Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 76947AE7F7E
	for <lists+intel-gfx@lfdr.de>; Wed, 25 Jun 2025 12:33:57 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id D1B0D10E6E3;
	Wed, 25 Jun 2025 10:33:55 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="JClcB9kM";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.7])
 by gabe.freedesktop.org (Postfix) with ESMTPS id CD91810E6DD;
 Wed, 25 Jun 2025 10:33:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1750847633; x=1782383633;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=NbhKBanxQ2hddBv+ePibIc/8rcF/vTU7Pzf3lFJer1g=;
 b=JClcB9kMj7INJL4YifQKLcI5L3oeO5bbJ5WSxhLaEUjw90MkSeMb52u6
 iIiQWlqDiLOdGqmrTmekSZc5QUpsFdyb/kZkMxJl6fxyiDQBFWYWlkXn1
 P101eGUnp8xYNIi0gUlVVCk+DTmXTf6Xpx5VhTMmxvnP4c33fkBnigRJH
 I/ONrt/X59v/m3xPE25MkqXXeW7A/a5JQhkz1MaHKVwrG8IC6gAFPiDnB
 MZk2Sjt8220L4ufqCs9yMDF+J/kT0/Mg9/VZ+YODVfr/ItV7wkhi9M8EZ
 NjYCTSR8QCy1myxl6azuSAyQACWprLsMM+wo+lAohsPlKnUVhGnXD36A5 A==;
X-CSE-ConnectionGUID: XUGlNhKVSpiQZb8LJwan9w==
X-CSE-MsgGUID: OtH7ow54TRSu+RCdPwhSwg==
X-IronPort-AV: E=McAfee;i="6800,10657,11474"; a="78537664"
X-IronPort-AV: E=Sophos;i="6.16,264,1744095600"; d="scan'208";a="78537664"
Received: from orviesa009.jf.intel.com ([10.64.159.149])
 by fmvoesa101.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 25 Jun 2025 03:33:53 -0700
X-CSE-ConnectionGUID: euO7b1g/SMGzkL0QAZmv2Q==
X-CSE-MsgGUID: CFd97Qs9S0+2arOyiliSGQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.16,264,1744095600"; d="scan'208";a="151936712"
Received: from monicael-mobl3.ger.corp.intel.com (HELO localhost)
 ([10.245.246.78])
 by orviesa009-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 25 Jun 2025 03:33:52 -0700
From: Jani Nikula <jani.nikula@intel.com>
To: intel-gfx@lists.freedesktop.org,
	intel-xe@lists.freedesktop.org
Cc: jani.nikula@intel.com,
	imre.deak@intel.com
Subject: [CI v2 15/16] drm/i915/cdclk: abstract intel_cdclk_actual() and
 intel_cdclk_actual_voltage_level()
Date: Wed, 25 Jun 2025 13:32:33 +0300
Message-Id: <241a9b80a8262b82fded54707ca5622af215dd86.1750847509.git.jani.nikula@intel.com>
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

Add intel_cdclk_actual() and intel_cdclk_actual_voltage_level() helpers
to avoid looking at struct intel_cdclk_state internals outside of
intel_cdclk.c.

v2: Better location (Imre)

Reviewed-by: Imre Deak <imre.deak@intel.com>
Signed-off-by: Jani Nikula <jani.nikula@intel.com>
---
 drivers/gpu/drm/i915/display/intel_cdclk.c    | 10 ++++++++++
 drivers/gpu/drm/i915/display/intel_cdclk.h    |  2 ++
 drivers/gpu/drm/i915/display/intel_pmdemand.c |  4 ++--
 3 files changed, 14 insertions(+), 2 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_cdclk.c b/drivers/gpu/drm/i915/display/intel_cdclk.c
index 156b5b5190cc..588d776e8624 100644
--- a/drivers/gpu/drm/i915/display/intel_cdclk.c
+++ b/drivers/gpu/drm/i915/display/intel_cdclk.c
@@ -3840,6 +3840,16 @@ int intel_cdclk_logical(const struct intel_cdclk_state *cdclk_state)
 	return cdclk_state->logical.cdclk;
 }
 
+int intel_cdclk_actual(const struct intel_cdclk_state *cdclk_state)
+{
+	return cdclk_state->actual.cdclk;
+}
+
+int intel_cdclk_actual_voltage_level(const struct intel_cdclk_state *cdclk_state)
+{
+	return cdclk_state->actual.voltage_level;
+}
+
 int intel_cdclk_min_cdclk(const struct intel_cdclk_state *cdclk_state, enum pipe pipe)
 {
 	return cdclk_state->min_cdclk[pipe];
diff --git a/drivers/gpu/drm/i915/display/intel_cdclk.h b/drivers/gpu/drm/i915/display/intel_cdclk.h
index 0d5ee1826168..07f8b184b5fe 100644
--- a/drivers/gpu/drm/i915/display/intel_cdclk.h
+++ b/drivers/gpu/drm/i915/display/intel_cdclk.h
@@ -98,6 +98,8 @@ int intel_cdclk_init(struct intel_display *display);
 void intel_cdclk_debugfs_register(struct intel_display *display);
 
 int intel_cdclk_logical(const struct intel_cdclk_state *cdclk_state);
+int intel_cdclk_actual(const struct intel_cdclk_state *cdclk_state);
+int intel_cdclk_actual_voltage_level(const struct intel_cdclk_state *cdclk_state);
 int intel_cdclk_min_cdclk(const struct intel_cdclk_state *cdclk_state, enum pipe pipe);
 int intel_cdclk_bw_min_cdclk(const struct intel_cdclk_state *cdclk_state);
 bool intel_cdclk_pmdemand_needs_update(struct intel_atomic_state *state);
diff --git a/drivers/gpu/drm/i915/display/intel_pmdemand.c b/drivers/gpu/drm/i915/display/intel_pmdemand.c
index 16ef68ef4041..d806c15db7ce 100644
--- a/drivers/gpu/drm/i915/display/intel_pmdemand.c
+++ b/drivers/gpu/drm/i915/display/intel_pmdemand.c
@@ -360,9 +360,9 @@ int intel_pmdemand_atomic_check(struct intel_atomic_state *state)
 		return PTR_ERR(new_cdclk_state);
 
 	new_pmdemand_state->params.voltage_index =
-		new_cdclk_state->actual.voltage_level;
+		intel_cdclk_actual_voltage_level(new_cdclk_state);
 	new_pmdemand_state->params.cdclk_freq_mhz =
-		DIV_ROUND_UP(new_cdclk_state->actual.cdclk, 1000);
+		DIV_ROUND_UP(intel_cdclk_actual(new_cdclk_state), 1000);
 
 	intel_pmdemand_update_max_ddiclk(display, state, new_pmdemand_state);
 
-- 
2.39.5

