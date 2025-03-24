Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 8CB68A6DBE7
	for <lists+intel-gfx@lfdr.de>; Mon, 24 Mar 2025 14:45:06 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 05DF210E447;
	Mon, 24 Mar 2025 13:45:05 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="TACRcIFa";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.21])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 5EF1C10E440;
 Mon, 24 Mar 2025 13:44:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1742823899; x=1774359899;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=Jco2h2vwWWkiXDef5QmHb3I8amLSZJkVAG8HTmA7UXc=;
 b=TACRcIFaEvQbasabQ8lLkGChdMNcMLZXlFMVdJXOCGKGis+qhhCUUkyg
 n5xn3FBLd3ny3Cftqu27+RS9NNemKZntYF4ctF9yr1S+WTAXerozPrAr7
 e6RlvTRW/smR0y1U1OAlVThJK6vqXpQzAKolhPodZFARh2UxHv3jCdHFP
 /yMY/LMp+vNRuEfiz8w9NFsnf4V0Lfkw9PGeEtj3c8zLhc/V0m7pBJKSy
 PgO3BD4EkpDs9VhzBYMH64O9DUDrPlCjY5F93alTKp8pCUvscwhydD9y1
 VU/dMaMhnfRYJgPCLLTHV1vALw3/QzgNgvkSuwwhszfSYyuS419eLtUps w==;
X-CSE-ConnectionGUID: O1Yjnf/7ToSxdmPd2KRoBw==
X-CSE-MsgGUID: ZwBgKkbKTD24geYJMiOuiw==
X-IronPort-AV: E=McAfee;i="6700,10204,11383"; a="43955733"
X-IronPort-AV: E=Sophos;i="6.14,272,1736841600"; d="scan'208";a="43955733"
Received: from fmviesa007.fm.intel.com ([10.60.135.147])
 by orvoesa113.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 24 Mar 2025 06:44:59 -0700
X-CSE-ConnectionGUID: q+uNlehpTomskVI41DqWgw==
X-CSE-MsgGUID: pTotd6PUSn2V34rQ3Rsh8w==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.14,272,1736841600"; d="scan'208";a="124040688"
Received: from srr4-3-linux-103-aknautiy.iind.intel.com ([10.223.34.160])
 by fmviesa007-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 24 Mar 2025 06:44:57 -0700
From: Ankit Nautiyal <ankit.k.nautiyal@intel.com>
To: intel-gfx@lists.freedesktop.org
Cc: intel-xe@lists.freedesktop.org, jani.nikula@linux.intel.com,
 ville.syrjala@linux.intel.com, mitulkumar.ajitkumar.golani@intel.com
Subject: [PATCH 11/16] drm/i915/display: Move vrr.guardband/pipeline_full out
 of !fastset block
Date: Mon, 24 Mar 2025 19:02:43 +0530
Message-ID: <20250324133248.4071909-12-ankit.k.nautiyal@intel.com>
X-Mailer: git-send-email 2.45.2
In-Reply-To: <20250324133248.4071909-1-ankit.k.nautiyal@intel.com>
References: <20250324133248.4071909-1-ankit.k.nautiyal@intel.com>
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

Since the vrr.guardband can now change for platforms that always use the
VRR Timing Generator, and it is unsafe to reprogram the guardband on the
fly, move the guardband and pipeline_full checks from the pure !fastboot
path and add a check for intel_vrr_always_use_vrr_tg().

For older platforms the vrr.guardband change happens when VRR Timing
generator is off. For the platforms that always use the VRR Timing
Generator, this will prevent reprogramming the vrr.guardband without a
full modeset. However, this will disrupt LRR functionality for these
platforms.

v2: Modify the check to avoid breaking the LRR on older platform.
(Ville)
v3: Correct the oversight of not removing the lines from the original
location. (Ville)

Signed-off-by: Ankit Nautiyal <ankit.k.nautiyal@intel.com>
Reviewed-by: Ville Syrjälä <ville.syrjala@linux.intel.com>
---
 drivers/gpu/drm/i915/display/intel_display.c | 7 +++++--
 drivers/gpu/drm/i915/display/intel_vrr.c     | 1 -
 drivers/gpu/drm/i915/display/intel_vrr.h     | 2 ++
 3 files changed, 7 insertions(+), 3 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_display.c b/drivers/gpu/drm/i915/display/intel_display.c
index d26e696ec037..ae1dc32044fb 100644
--- a/drivers/gpu/drm/i915/display/intel_display.c
+++ b/drivers/gpu/drm/i915/display/intel_display.c
@@ -5389,8 +5389,6 @@ intel_pipe_config_compare(const struct intel_crtc_state *current_config,
 		PIPE_CONF_CHECK_I(vrr.vmin);
 		PIPE_CONF_CHECK_I(vrr.vmax);
 		PIPE_CONF_CHECK_I(vrr.flipline);
-		PIPE_CONF_CHECK_I(vrr.pipeline_full);
-		PIPE_CONF_CHECK_I(vrr.guardband);
 		PIPE_CONF_CHECK_I(vrr.vsync_start);
 		PIPE_CONF_CHECK_I(vrr.vsync_end);
 		PIPE_CONF_CHECK_LLI(cmrr.cmrr_m);
@@ -5398,6 +5396,11 @@ intel_pipe_config_compare(const struct intel_crtc_state *current_config,
 		PIPE_CONF_CHECK_BOOL(cmrr.enable);
 	}
 
+	if (!fastset || intel_vrr_always_use_vrr_tg(display)) {
+		PIPE_CONF_CHECK_I(vrr.pipeline_full);
+		PIPE_CONF_CHECK_I(vrr.guardband);
+	}
+
 #undef PIPE_CONF_CHECK_X
 #undef PIPE_CONF_CHECK_I
 #undef PIPE_CONF_CHECK_LLI
diff --git a/drivers/gpu/drm/i915/display/intel_vrr.c b/drivers/gpu/drm/i915/display/intel_vrr.c
index 352b853c10eb..c57e0319d83c 100644
--- a/drivers/gpu/drm/i915/display/intel_vrr.c
+++ b/drivers/gpu/drm/i915/display/intel_vrr.c
@@ -552,7 +552,6 @@ bool intel_vrr_is_push_sent(const struct intel_crtc_state *crtc_state)
 	return intel_de_read(display, TRANS_PUSH(display, cpu_transcoder)) & TRANS_PUSH_SEND;
 }
 
-static
 bool intel_vrr_always_use_vrr_tg(struct intel_display *display)
 {
 	if (!HAS_VRR(display))
diff --git a/drivers/gpu/drm/i915/display/intel_vrr.h b/drivers/gpu/drm/i915/display/intel_vrr.h
index c95acf1ad238..38bf9996b883 100644
--- a/drivers/gpu/drm/i915/display/intel_vrr.h
+++ b/drivers/gpu/drm/i915/display/intel_vrr.h
@@ -13,6 +13,7 @@ struct intel_atomic_state;
 struct intel_connector;
 struct intel_crtc_state;
 struct intel_dsb;
+struct intel_display;
 
 bool intel_vrr_is_capable(struct intel_connector *connector);
 bool intel_vrr_is_in_range(struct intel_connector *connector, int vrefresh);
@@ -39,5 +40,6 @@ bool intel_vrr_is_fixed_rr(const struct intel_crtc_state *crtc_state);
 void intel_vrr_transcoder_enable(const struct intel_crtc_state *crtc_state);
 void intel_vrr_transcoder_disable(const struct intel_crtc_state *crtc_state);
 void intel_vrr_set_fixed_rr_timings(const struct intel_crtc_state *crtc_state);
+bool intel_vrr_always_use_vrr_tg(struct intel_display *display);
 
 #endif /* __INTEL_VRR_H__ */
-- 
2.45.2

