Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 384FA889C8D
	for <lists+intel-gfx@lfdr.de>; Mon, 25 Mar 2024 12:23:40 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id EA36710E7AC;
	Mon, 25 Mar 2024 11:23:36 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="BMKSaQSF";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.17])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 6EEBD10E7AB
 for <intel-gfx@lists.freedesktop.org>; Mon, 25 Mar 2024 11:23:35 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1711365815; x=1742901815;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=UMj0/P51zAoXnpMv6I7XOqWAd/bQNNo47bSrpFK6qxQ=;
 b=BMKSaQSFquN16U+zg8Re0ibQktV0xgtDUutF3fhof6GhSHCi+Cp7FWA9
 YAbZzbZwPHumUNOPSs/JZh5ndVaTRf3x2ditXD21LN8clpJ2ieQXRnRkq
 PfuDW3Ng9hs7rmEyA2IPBeNcEjnsp2YGvu3I6HQ2x2oQASifiSEain8qS
 6oG6+Vz0dNiCHpVc19En5owb3wizcZ2zPUyJPjuioBxoM4DdmBScEPr9Q
 HNqrS3WI9eSFK6eSYlqUvDPSu18+/DkuxqLZ3+yU5mV70viMT1PREdWa8
 LOolhqne+6WYgwVBhNrF2qi6S0qChZvNyKXDHMsHW8kS7Ed4MCrix6eec Q==;
X-IronPort-AV: E=McAfee;i="6600,9927,11023"; a="6219232"
X-IronPort-AV: E=Sophos;i="6.07,153,1708416000"; 
   d="scan'208";a="6219232"
Received: from fmviesa010.fm.intel.com ([10.60.135.150])
 by fmvoesa111.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 25 Mar 2024 04:23:35 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.07,153,1708416000"; d="scan'208";a="15500472"
Received: from unknown (HELO slisovsk-Lenovo-ideapad-720S-13IKB.fi.intel.com)
 ([10.237.72.65])
 by fmviesa010.fm.intel.com with ESMTP; 25 Mar 2024 04:23:34 -0700
From: Stanislav Lisovskiy <stanislav.lisovskiy@intel.com>
To: intel-gfx@lists.freedesktop.org
Cc: jani.saarinen@intel.com, Stanislav.Lisovskiy@intel.com,
 ville.syrjala@linux.intel.com
Subject: [PATCH 2/4] drm/i915: Use old mbus_join value when increasing CDCLK
Date: Mon, 25 Mar 2024 13:23:27 +0200
Message-Id: <20240325112329.7922-3-stanislav.lisovskiy@intel.com>
X-Mailer: git-send-email 2.37.3
In-Reply-To: <20240325112329.7922-1-stanislav.lisovskiy@intel.com>
References: <20240325112329.7922-1-stanislav.lisovskiy@intel.com>
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

In order to make sure we are not breaking the proper sequence
lets to updates step by step and don't change MBUS join value
during MDCLK/CDCLK programming stage.
MBUS join programming would be taken care by pre/post ddb hooks.

v2: - Reworded comment about using old mbus_join value in
      intel_set_cdclk(Ville Syrjälä)

Reviewed-by: Ville Syrjälä <ville.syrjala@linux.intel.com>
Signed-off-by: Stanislav Lisovskiy <stanislav.lisovskiy@intel.com>
---
 drivers/gpu/drm/i915/display/intel_cdclk.c | 12 +++++++++++-
 1 file changed, 11 insertions(+), 1 deletion(-)

diff --git a/drivers/gpu/drm/i915/display/intel_cdclk.c b/drivers/gpu/drm/i915/display/intel_cdclk.c
index 31aaa9780dfcf..c7813d433c424 100644
--- a/drivers/gpu/drm/i915/display/intel_cdclk.c
+++ b/drivers/gpu/drm/i915/display/intel_cdclk.c
@@ -2611,9 +2611,19 @@ intel_set_cdclk_pre_plane_update(struct intel_atomic_state *state)
 
 	if (pipe == INVALID_PIPE ||
 	    old_cdclk_state->actual.cdclk <= new_cdclk_state->actual.cdclk) {
+		struct intel_cdclk_config cdclk_config;
+
 		drm_WARN_ON(&i915->drm, !new_cdclk_state->base.changed);
 
-		intel_set_cdclk(i915, &new_cdclk_state->actual, pipe);
+		/*
+		 * By this hack we want to prevent mbus_join to be changed
+		 * beforehand - we will take care of this later in
+		 * intel_dbuf_mbus_post_ddb_update
+		 */
+		cdclk_config = new_cdclk_state->actual;
+		cdclk_config.joined_mbus = old_cdclk_state->actual.joined_mbus;
+
+		intel_set_cdclk(i915, &cdclk_config, pipe);
 	}
 }
 
-- 
2.37.3

