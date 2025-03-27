Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 300F7A73524
	for <lists+intel-gfx@lfdr.de>; Thu, 27 Mar 2025 15:58:22 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id AE6E910E8F8;
	Thu, 27 Mar 2025 14:58:20 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="TxaVVzgw";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.7])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 0770D10E068;
 Thu, 27 Mar 2025 14:58:17 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1743087498; x=1774623498;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=hpV5fEyd87hT0Mbf8iHgJhG7WJR0dZycnDG0D8+RChs=;
 b=TxaVVzgwI6jYNmz1/6eM69ZSr1O8YYQelwrysUKcjTVl4h8Ydt5jYsVz
 iiABItzUIjCRclwGSlRl7gYxv+XfqL2vg2v9pK8g0Nvj7qESLLhvzr9+m
 a9N1Kj2vW0JdsqW6GjJTPockm3FE89uWI4iI90cmAJsdqm9PXGRqtdA1t
 Z+tkmxXC0Firn6iVszd5NIZGGCHOb9xchL2xzgw9DTnExGU48Dnf1zkY5
 Of//6x0i4tOnq90tZdkPqM2YVOKLs11ZBpsMqxZKcABmHG7AiJUoA9ZSH
 wnppmaoP+1gU8MH0Ge5FAhsK35wZHxHfkscANZUN2v/6P0Vx8OakeDpbc g==;
X-CSE-ConnectionGUID: FIikk085Rw+4wcaLAutLwg==
X-CSE-MsgGUID: 2sL4Ums/QDWmtnSpJIKAEg==
X-IronPort-AV: E=McAfee;i="6700,10204,11385"; a="69788016"
X-IronPort-AV: E=Sophos;i="6.14,280,1736841600"; d="scan'208";a="69788016"
Received: from fmviesa008.fm.intel.com ([10.60.135.148])
 by fmvoesa101.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 27 Mar 2025 07:58:18 -0700
X-CSE-ConnectionGUID: 60Jcb+qsQ6i1nkqpr6cGcw==
X-CSE-MsgGUID: TLW6P3HXS2KtswAzWbd2zA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.14,280,1736841600"; d="scan'208";a="125381250"
Received: from srr4-3-linux-103-aknautiy.iind.intel.com ([10.223.34.160])
 by fmviesa008-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 27 Mar 2025 07:58:16 -0700
From: Ankit Nautiyal <ankit.k.nautiyal@intel.com>
To: intel-gfx@lists.freedesktop.org
Cc: intel-xe@lists.freedesktop.org, jani.nikula@linux.intel.com,
 ville.syrjala@linux.intel.com, mitulkumar.ajitkumar.golani@intel.com
Subject: [PATCH 1/2] drm/i915/display: Introduce transcoder_has_vrr() helper
Date: Thu, 27 Mar 2025 20:16:28 +0530
Message-ID: <20250327144629.648306-2-ankit.k.nautiyal@intel.com>
X-Mailer: git-send-email 2.45.2
In-Reply-To: <20250327144629.648306-1-ankit.k.nautiyal@intel.com>
References: <20250327144629.648306-1-ankit.k.nautiyal@intel.com>
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

Introduce a new helper to check transcoder_has_vrr() and use
that to exclude transcoders which do not support VRR.

v2: Include HAS_VRR into the helper. (Ville)
v3: Drop the usage in places where not applicable. (Ville)

Signed-off-by: Ankit Nautiyal <ankit.k.nautiyal@intel.com>
---
 drivers/gpu/drm/i915/display/intel_display.c | 11 ++++++++++-
 1 file changed, 10 insertions(+), 1 deletion(-)

diff --git a/drivers/gpu/drm/i915/display/intel_display.c b/drivers/gpu/drm/i915/display/intel_display.c
index ee7812126129..b82b3d63be73 100644
--- a/drivers/gpu/drm/i915/display/intel_display.c
+++ b/drivers/gpu/drm/i915/display/intel_display.c
@@ -2625,6 +2625,15 @@ void intel_cpu_transcoder_set_m2_n2(struct intel_crtc *crtc,
 		      PIPE_LINK_N2(display, transcoder));
 }
 
+static bool
+transcoder_has_vrr(const struct intel_crtc_state *crtc_state)
+{
+	struct intel_display *display = to_intel_display(crtc_state);
+	enum transcoder cpu_transcoder = crtc_state->cpu_transcoder;
+
+	return HAS_VRR(display) && !transcoder_is_dsi(cpu_transcoder);
+}
+
 static void intel_set_transcoder_timings(const struct intel_crtc_state *crtc_state)
 {
 	struct intel_display *display = to_intel_display(crtc_state);
@@ -3908,7 +3917,7 @@ static bool hsw_get_pipe_config(struct intel_crtc *crtc,
 	    DISPLAY_VER(display) >= 11)
 		intel_get_transcoder_timings(crtc, pipe_config);
 
-	if (HAS_VRR(display) && !transcoder_is_dsi(pipe_config->cpu_transcoder))
+	if (transcoder_has_vrr(pipe_config))
 		intel_vrr_get_config(pipe_config);
 
 	intel_get_pipe_src_size(crtc, pipe_config);
-- 
2.45.2

