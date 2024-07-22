Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 74842938B2C
	for <lists+intel-gfx@lfdr.de>; Mon, 22 Jul 2024 10:26:10 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id D04AD10E40B;
	Mon, 22 Jul 2024 08:26:08 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="Q47Hjusz";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.11])
 by gabe.freedesktop.org (Postfix) with ESMTPS id BE3E010E407
 for <intel-gfx@lists.freedesktop.org>; Mon, 22 Jul 2024 08:26:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1721636766; x=1753172766;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=0HlWX1n165B++Cst2oPrCHg/9cb/97qa8DXda+8pv28=;
 b=Q47Hjusz6rF3N+qcKBPde+vi8zPjmMsm943iLwEUZ2iqcDlZiUvTOhdY
 GMm6iEiXPXcl0i/0X1DnfUreo/z4bVrlVIEttm/YnIT+B42/Tc6jEjFm9
 1cGCEtdqtfOcBKjokDZKMHckdfP19i3cF2Db9h+VOamJ++mRF4Wv21w56
 BTxRlwafjP1g93eBqPX9stDmhYXraLS49/1AJucM9nlhqK1hgr1VZ5lno
 dAPltwL7mdqgUdqvzhEoBqZpU578DYsTKvwQ0eObmDy3VFwcMrGKeBJ1O
 KH7LoSsjT5Cgi29GwBboD/GKOsMjV/RK/xu6Tl6/hceXWdRxqkzok/xHX g==;
X-CSE-ConnectionGUID: ofeuvJzaTqSR62onTJssjg==
X-CSE-MsgGUID: zsS1Xzd7TF6tnQkFw4EpNg==
X-IronPort-AV: E=McAfee;i="6700,10204,11140"; a="29806927"
X-IronPort-AV: E=Sophos;i="6.09,227,1716274800"; d="scan'208";a="29806927"
Received: from fmviesa009.fm.intel.com ([10.60.135.149])
 by fmvoesa105.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 22 Jul 2024 01:26:06 -0700
X-CSE-ConnectionGUID: oXGvt6DtSOqYIyaJ2IrvIg==
X-CSE-MsgGUID: FK+tF+IkRD+e1a6Vs5rg+w==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.09,227,1716274800"; d="scan'208";a="51752881"
Received: from srr4-3-linux-103-aknautiy.iind.intel.com ([10.223.34.160])
 by fmviesa009-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 22 Jul 2024 01:26:04 -0700
From: Ankit Nautiyal <ankit.k.nautiyal@intel.com>
To: intel-gfx@lists.freedesktop.org
Cc: jani.nikula@linux.intel.com, ville.syrjala@linux.intel.com,
 mitulkumar.ajitkumar.golani@intel.com
Subject: [PATCH 02/10] drm/i915/display: Add member fixed_rr to denote Fixed
 refresh rate with VRRTG
Date: Mon, 22 Jul 2024 13:56:57 +0530
Message-ID: <20240722082705.3635041-3-ankit.k.nautiyal@intel.com>
X-Mailer: git-send-email 2.45.2
In-Reply-To: <20240722082705.3635041-1-ankit.k.nautiyal@intel.com>
References: <20240722082705.3635041-1-ankit.k.nautiyal@intel.com>
MIME-Version: 1.0
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

Add fixed_rr member to struct vrr to represent the case where a
fixed refresh rate with VRR timing generator is required.

v2: Move get_config change where vrr.fixed is actually set. (Mitul)

Signed-off-by: Ankit Nautiyal <ankit.k.nautiyal@intel.com>
---
 drivers/gpu/drm/i915/display/intel_display.c       | 4 +++-
 drivers/gpu/drm/i915/display/intel_display_types.h | 2 +-
 2 files changed, 4 insertions(+), 2 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_display.c b/drivers/gpu/drm/i915/display/intel_display.c
index 01a5faa3fea5..ecfd77c0b741 100644
--- a/drivers/gpu/drm/i915/display/intel_display.c
+++ b/drivers/gpu/drm/i915/display/intel_display.c
@@ -1004,7 +1004,8 @@ static bool vrr_params_changed(const struct intel_crtc_state *old_crtc_state,
 		old_crtc_state->vrr.vmin != new_crtc_state->vrr.vmin ||
 		old_crtc_state->vrr.vmax != new_crtc_state->vrr.vmax ||
 		old_crtc_state->vrr.guardband != new_crtc_state->vrr.guardband ||
-		old_crtc_state->vrr.pipeline_full != new_crtc_state->vrr.pipeline_full;
+		old_crtc_state->vrr.pipeline_full != new_crtc_state->vrr.pipeline_full ||
+		old_crtc_state->vrr.fixed_rr != new_crtc_state->vrr.fixed_rr;
 }
 
 static bool cmrr_params_changed(const struct intel_crtc_state *old_crtc_state,
@@ -5479,6 +5480,7 @@ intel_pipe_config_compare(const struct intel_crtc_state *current_config,
 
 	if (!fastset) {
 		PIPE_CONF_CHECK_BOOL(vrr.enable);
+		PIPE_CONF_CHECK_BOOL(vrr.fixed_rr);
 		PIPE_CONF_CHECK_I(vrr.vmin);
 		PIPE_CONF_CHECK_I(vrr.vmax);
 		PIPE_CONF_CHECK_I(vrr.flipline);
diff --git a/drivers/gpu/drm/i915/display/intel_display_types.h b/drivers/gpu/drm/i915/display/intel_display_types.h
index a9d2acdc51a4..4c0a18143c23 100644
--- a/drivers/gpu/drm/i915/display/intel_display_types.h
+++ b/drivers/gpu/drm/i915/display/intel_display_types.h
@@ -1407,7 +1407,7 @@ struct intel_crtc_state {
 
 	/* Variable Refresh Rate state */
 	struct {
-		bool enable, in_range;
+		bool enable, in_range, fixed_rr;
 		u8 pipeline_full;
 		u16 flipline, vmin, vmax, guardband;
 		u32 vsync_end, vsync_start;
-- 
2.45.2

