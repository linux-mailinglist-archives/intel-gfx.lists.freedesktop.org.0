Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id DEE9EAD6FE2
	for <lists+intel-gfx@lfdr.de>; Thu, 12 Jun 2025 14:13:32 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 7E99110E810;
	Thu, 12 Jun 2025 12:13:31 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="XcZa1d7H";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.19])
 by gabe.freedesktop.org (Postfix) with ESMTPS id D7E1610E80F;
 Thu, 12 Jun 2025 12:13:29 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1749730410; x=1781266410;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=ZlfG3tRAXEJiAuDyAQeJ6+wu+m0/ET6AS0oD292BheY=;
 b=XcZa1d7Hugu+t63TYPWzG4j1AhdPqK9GSQxvbtvlPC2SlrUQGMPTkDvs
 +8BD/kopX/rNXe89k/gaez4crksVqPbf9q48XUseQuL6n4Z/LzPP7Oymo
 1knNdqU9+ZFLXCG7L4N5G9Qv/cRcYoLBunSdIQLLUCASpnxlUhd1Ip/TZ
 v4Ei29h61hFwXlDKP3/PA2P08uaGJez6XOLFLcPiK7/rp39EPssiGhmxO
 oL1r0CrY+nFY10CmlksY6JZlVpzhs1aUd5e5pCLjS3zXq9ku8cCDLJS2e
 kdKRKV4xOz54aaQvtC4s/x1vnopXdrG9OpGCnf+IOQiAFNB27C8hF2rvN Q==;
X-CSE-ConnectionGUID: lbLSYC5vSniLNUXM+rS8mQ==
X-CSE-MsgGUID: fCaYaktqSsS0dcOsH97bVA==
X-IronPort-AV: E=McAfee;i="6800,10657,11461"; a="51779444"
X-IronPort-AV: E=Sophos;i="6.16,230,1744095600"; d="scan'208";a="51779444"
Received: from orviesa003.jf.intel.com ([10.64.159.143])
 by orvoesa111.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 12 Jun 2025 05:13:30 -0700
X-CSE-ConnectionGUID: 3GTj0vDESS6RO0kzLapZew==
X-CSE-MsgGUID: e8qFFwqXQQSf5spqPbO9Gg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.16,230,1744095600"; d="scan'208";a="152267563"
Received: from fdefranc-mobl3.ger.corp.intel.com (HELO localhost)
 ([10.245.246.242])
 by ORVIESA003-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 12 Jun 2025 05:13:28 -0700
From: Jani Nikula <jani.nikula@intel.com>
To: intel-gfx@lists.freedesktop.org,
	intel-xe@lists.freedesktop.org
Cc: jani.nikula@intel.com
Subject: [PATCH 15/16] drm/i915/cdclk: abstract intel_cdclk_actual() and
 intel_cdclk_actual_voltage_level()
Date: Thu, 12 Jun 2025 15:12:10 +0300
Message-Id: <b282cb46ab35f4e0a6e2cf6c57cd8a2cd5db2647.1749730224.git.jani.nikula@intel.com>
X-Mailer: git-send-email 2.39.5
In-Reply-To: <cover.1749730224.git.jani.nikula@intel.com>
References: <cover.1749730224.git.jani.nikula@intel.com>
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

Signed-off-by: Jani Nikula <jani.nikula@intel.com>
---
 drivers/gpu/drm/i915/display/intel_cdclk.c    | 10 ++++++++++
 drivers/gpu/drm/i915/display/intel_cdclk.h    |  2 ++
 drivers/gpu/drm/i915/display/intel_pmdemand.c |  4 ++--
 3 files changed, 14 insertions(+), 2 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_cdclk.c b/drivers/gpu/drm/i915/display/intel_cdclk.c
index 994be1d0e20c..2e8abf237bd1 100644
--- a/drivers/gpu/drm/i915/display/intel_cdclk.c
+++ b/drivers/gpu/drm/i915/display/intel_cdclk.c
@@ -3884,3 +3884,13 @@ void intel_cdclk_read_hw(struct intel_display *display)
 	cdclk_state->actual = display->cdclk.hw;
 	cdclk_state->logical = display->cdclk.hw;
 }
+
+int intel_cdclk_actual(const struct intel_cdclk_state *cdclk_state)
+{
+	return cdclk_state->actual.cdclk;
+}
+
+int intel_cdclk_actual_voltage_level(const struct intel_cdclk_state *cdclk_state)
+{
+	return cdclk_state->actual.voltage_level;
+}
diff --git a/drivers/gpu/drm/i915/display/intel_cdclk.h b/drivers/gpu/drm/i915/display/intel_cdclk.h
index 0d5ee1826168..f38605c6ab72 100644
--- a/drivers/gpu/drm/i915/display/intel_cdclk.h
+++ b/drivers/gpu/drm/i915/display/intel_cdclk.h
@@ -103,5 +103,7 @@ int intel_cdclk_bw_min_cdclk(const struct intel_cdclk_state *cdclk_state);
 bool intel_cdclk_pmdemand_needs_update(struct intel_atomic_state *state);
 void intel_cdclk_force_min_cdclk(struct intel_cdclk_state *cdclk_state, int force_min_cdclk);
 void intel_cdclk_read_hw(struct intel_display *display);
+int intel_cdclk_actual(const struct intel_cdclk_state *cdclk_state);
+int intel_cdclk_actual_voltage_level(const struct intel_cdclk_state *cdclk_state);
 
 #endif /* __INTEL_CDCLK_H__ */
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

