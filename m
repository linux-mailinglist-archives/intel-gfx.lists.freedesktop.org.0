Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 6E88BBF3033
	for <lists+intel-gfx@lfdr.de>; Mon, 20 Oct 2025 20:50:57 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id CC07310E4B9;
	Mon, 20 Oct 2025 18:50:55 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="naGK86SC";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.10])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 45A7110E4B8;
 Mon, 20 Oct 2025 18:50:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1760986254; x=1792522254;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=ULU2HUSNTxqRg5sztrIim5wAi1pNbJwbZjwjoY49UvA=;
 b=naGK86SC23TknXaLrVEABCyPIypfVpWSLHbHI/Xq2SidOZg8sUviYgzo
 EBh479L30XU6PgNs/8zJl3a8HEWe12XHs/HyeIQ4Lio88NLE53t+ukLfg
 A6ozWJobEW9kUv9rnsag36xmrS1nBRRqpEQM4D04lOwfAfX7epqpze+M2
 ZEfWuImVPRFMVDN6ppX19xgq1yAgHcGndQW37wBP+fmSvRT1z5IrtPbju
 LG5hdgVztPAW3AcNxFoEO6eqcyrsR5A47GEjFR8+nYcRGjnByzQ0v3gej
 XMHrTU926ggyrwm0edKdkV3lEfmAi4VZUVOE3Lw6IZ9Z+Y3Vxx6Pwfh4V g==;
X-CSE-ConnectionGUID: q/ydkuYaS2mjQy+uKyaICQ==
X-CSE-MsgGUID: sJPR1KWlRouPtTC/NSudgA==
X-IronPort-AV: E=McAfee;i="6800,10657,11586"; a="80546919"
X-IronPort-AV: E=Sophos;i="6.19,243,1754982000"; d="scan'208";a="80546919"
Received: from fmviesa002.fm.intel.com ([10.60.135.142])
 by orvoesa102.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 20 Oct 2025 11:50:54 -0700
X-CSE-ConnectionGUID: yB/7v6QmTd67Nd+aMOohjw==
X-CSE-MsgGUID: ZWwoaR/vTrmIidZu2I5Dag==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.19,243,1754982000"; d="scan'208";a="207078329"
Received: from fpallare-mobl4.ger.corp.intel.com (HELO localhost)
 ([10.245.245.58])
 by fmviesa002-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 20 Oct 2025 11:50:52 -0700
From: Ville Syrjala <ville.syrjala@linux.intel.com>
To: intel-gfx@lists.freedesktop.org
Cc: intel-xe@lists.freedesktop.org
Subject: [PATCH 03/22] drm/i915: Remove the "vblank delay" state dump
Date: Mon, 20 Oct 2025 21:50:19 +0300
Message-ID: <20251020185038.4272-4-ville.syrjala@linux.intel.com>
X-Mailer: git-send-email 2.49.1
In-Reply-To: <20251020185038.4272-1-ville.syrjala@linux.intel.com>
References: <20251020185038.4272-1-ville.syrjala@linux.intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
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

From: Ville Syrjälä <ville.syrjala@linux.intel.com>

The "vblank delay" we are including in the crtc state dump is
meaningful only when running with fixed refresh rate timings.
With VRR timings one has to look at the VRR state to figure out
the same thing.

Since we already dump the position of the delayed vblank for
both fixed refresh rate and VRR timings, this "vblank delay"
thing seems pretty much pointless now. Get rid of it.

Signed-off-by: Ville Syrjälä <ville.syrjala@linux.intel.com>
---
 drivers/gpu/drm/i915/display/intel_crtc_state_dump.c | 4 +---
 1 file changed, 1 insertion(+), 3 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_crtc_state_dump.c b/drivers/gpu/drm/i915/display/intel_crtc_state_dump.c
index 23e25e97d060..e6f300dbb5ee 100644
--- a/drivers/gpu/drm/i915/display/intel_crtc_state_dump.c
+++ b/drivers/gpu/drm/i915/display/intel_crtc_state_dump.c
@@ -289,9 +289,7 @@ void intel_crtc_state_dump(const struct intel_crtc_state *pipe_config,
 	drm_printf(&p, "scanline offset: %d\n",
 		   intel_crtc_scanline_offset(pipe_config));
 
-	drm_printf(&p, "vblank delay: %d, framestart delay: %d, MSA timing delay: %d set context latency: %d\n",
-		   pipe_config->hw.adjusted_mode.crtc_vblank_start -
-		   pipe_config->hw.adjusted_mode.crtc_vdisplay,
+	drm_printf(&p, "framestart delay: %d, MSA timing delay: %d, set context latency: %d\n",
 		   pipe_config->framestart_delay, pipe_config->msa_timing_delay,
 		   pipe_config->set_context_latency);
 
-- 
2.49.1

