Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 0ABD4914211
	for <lists+intel-gfx@lfdr.de>; Mon, 24 Jun 2024 07:35:47 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 6179110E349;
	Mon, 24 Jun 2024 05:35:45 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="l9h3mdJV";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.10])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 6173E10E349
 for <intel-gfx@lists.freedesktop.org>; Mon, 24 Jun 2024 05:35:41 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1719207342; x=1750743342;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=oKFyvXsXuzXrWWmyHgBsgF3az3s/sSu21sbMq9XZ4d8=;
 b=l9h3mdJVTM0PWlIRpqMZaprmx63+b3WEQZ9+bZZS6Th3RPNure113LOb
 ITTrRYWSbIWsEkYbq5voHwBW+cBHL/CSJMtM7Q/qvb7jPG39c1d1OOlsc
 IXIb6AaAiUvOUvy8Io0RLaA5TvM5H5oV1Mc1RdHvRVUkRDRQHNkS5DZ5d
 cEqzzwqhnf9LXKoRgZvqhwfJj62L21z/ZPy5v5B+s6F8v2ybD4xe+4bd3
 Aa6T8BaBloUKt+/uILJfk6VUdpvethMZ6HKY+fVLEi31RiK9vqZHx4hyl
 z43vAy3QvtESkbnHm/L/FCJifci8Crjb86foyCCu47f2G/yv6WSRSV7CO Q==;
X-CSE-ConnectionGUID: /gYZE6xBTMOLCPjQZCVZHA==
X-CSE-MsgGUID: umrFTzi0Qk2BjDtJ6wJJJg==
X-IronPort-AV: E=McAfee;i="6700,10204,11112"; a="27567225"
X-IronPort-AV: E=Sophos;i="6.08,261,1712646000"; d="scan'208";a="27567225"
Received: from fmviesa006.fm.intel.com ([10.60.135.146])
 by fmvoesa104.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 23 Jun 2024 22:35:41 -0700
X-CSE-ConnectionGUID: f3sPesJCS+mP+5TsBPZQXQ==
X-CSE-MsgGUID: BTmbqvdGQ9StQzJ6u/46/w==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.08,261,1712646000"; d="scan'208";a="42994172"
Received: from srr4-3-linux-103-aknautiy.iind.intel.com ([10.223.34.160])
 by fmviesa006-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 23 Jun 2024 22:35:40 -0700
From: Ankit Nautiyal <ankit.k.nautiyal@intel.com>
To: intel-gfx@lists.freedesktop.org
Cc: jani.nikula@linux.intel.com, ville.syrjala@linux.intel.com,
 mitulkumar.ajitkumar.golani@intel.com
Subject: [PATCH 2/9] drm/i915/display: Get VRR compute config before
 get_transcoder_timing
Date: Mon, 24 Jun 2024 11:05:53 +0530
Message-Id: <20240624053600.3803116-3-ankit.k.nautiyal@intel.com>
X-Mailer: git-send-email 2.40.1
In-Reply-To: <20240624053600.3803116-1-ankit.k.nautiyal@intel.com>
References: <20240624053600.3803116-1-ankit.k.nautiyal@intel.com>
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

For fixed refresh rate with VRR framework, we need to fill
adjusted_mode->crtc_vtotal from VMAX register in intel_vrr_get_config,
that can be used in intel_get_transcoder_timings.

Call intel_vrr_get_config before intel_get_transcoder_timings.
Subsequent changes will move filling of crtc_vtotal in vrr compute
config step.

Signed-off-by: Ankit Nautiyal <ankit.k.nautiyal@intel.com>
---
 drivers/gpu/drm/i915/display/intel_display.c | 6 +++---
 1 file changed, 3 insertions(+), 3 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_display.c b/drivers/gpu/drm/i915/display/intel_display.c
index c782e65a7123..60d383c9002e 100644
--- a/drivers/gpu/drm/i915/display/intel_display.c
+++ b/drivers/gpu/drm/i915/display/intel_display.c
@@ -3843,13 +3843,13 @@ static bool hsw_get_pipe_config(struct intel_crtc *crtc,
 	intel_joiner_get_config(pipe_config);
 	intel_dsc_get_config(pipe_config);
 
+	if (HAS_VRR(dev_priv) && !transcoder_is_dsi(pipe_config->cpu_transcoder))
+		intel_vrr_get_config(pipe_config);
+
 	if (!transcoder_is_dsi(pipe_config->cpu_transcoder) ||
 	    DISPLAY_VER(dev_priv) >= 11)
 		intel_get_transcoder_timings(crtc, pipe_config);
 
-	if (HAS_VRR(dev_priv) && !transcoder_is_dsi(pipe_config->cpu_transcoder))
-		intel_vrr_get_config(pipe_config);
-
 	intel_get_pipe_src_size(crtc, pipe_config);
 
 	if (IS_HASWELL(dev_priv)) {
-- 
2.40.1

