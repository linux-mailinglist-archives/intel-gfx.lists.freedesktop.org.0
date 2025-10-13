Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id EEC04BD60A9
	for <lists+intel-gfx@lfdr.de>; Mon, 13 Oct 2025 22:13:26 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id ED79610E52F;
	Mon, 13 Oct 2025 20:13:14 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="CxuTZmAW";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.13])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 1070810E534;
 Mon, 13 Oct 2025 20:13:13 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1760386393; x=1791922393;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=etJIt+jeOQ8chRJEus/8dBv33leTpayrJhxjWw98/YE=;
 b=CxuTZmAWK6JZTkTT+g47kLT6LMyzyyVORkRrP4efoazPR5nDKt2QZ44M
 9enN7wBkmq5UVULGeis9rHza3uyOZeWjK2tXMOvxhlMkur9zU/jd0y750
 DRqlPOfJ6MwY7Aa5HI10/zB/Srx5lCsCv4KWsXf0D7lBAklrkoz4mMb0U
 MEINAEA4xf0UTbOY66tXtJoSoO2tL7KZV8/dhSvBnNOW6A84lAioEy0EM
 MWtYyzIgRRC60iCnlR1DUnPBM482DYwmaOaIE4/xJXxTXbgGrswD8+ZIT
 bXmwwUIPgPDCK5Rb7j115YbBm+B1yvdRHetcNnL3G7+ed8uq3tJrckPag w==;
X-CSE-ConnectionGUID: zQV4bbw3Qxm9Uj6UC2rk7A==
X-CSE-MsgGUID: tKHUxS2oTSalIrCriMGq4g==
X-IronPort-AV: E=McAfee;i="6800,10657,11581"; a="65159190"
X-IronPort-AV: E=Sophos;i="6.19,226,1754982000"; d="scan'208";a="65159190"
Received: from orviesa009.jf.intel.com ([10.64.159.149])
 by fmvoesa107.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 13 Oct 2025 13:13:12 -0700
X-CSE-ConnectionGUID: YugGQj7/QfOwNROEJEJ5cA==
X-CSE-MsgGUID: pOexES1/S7yCMF397bOxfg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.19,226,1754982000"; d="scan'208";a="181250825"
Received: from smoticic-mobl1.ger.corp.intel.com (HELO localhost)
 ([10.245.244.105])
 by orviesa009-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 13 Oct 2025 13:13:12 -0700
From: Ville Syrjala <ville.syrjala@linux.intel.com>
To: intel-gfx@lists.freedesktop.org
Cc: intel-xe@lists.freedesktop.org
Subject: [PATCH 8/9] drm/i915: Include the per-crtc minimum cdclk in the crtc
 state dump
Date: Mon, 13 Oct 2025 23:12:35 +0300
Message-ID: <20251013201236.30084-9-ville.syrjala@linux.intel.com>
X-Mailer: git-send-email 2.49.1
In-Reply-To: <20251013201236.30084-1-ville.syrjala@linux.intel.com>
References: <20251013201236.30084-1-ville.syrjala@linux.intel.com>
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

Include the crtc minimum cdclk in the crtc state dump. Might help
figuring out who needed how much cdclk.

Signed-off-by: Ville Syrjälä <ville.syrjala@linux.intel.com>
---
 drivers/gpu/drm/i915/display/intel_crtc_state_dump.c | 4 ++--
 1 file changed, 2 insertions(+), 2 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_crtc_state_dump.c b/drivers/gpu/drm/i915/display/intel_crtc_state_dump.c
index a14bcda4446c..23e25e97d060 100644
--- a/drivers/gpu/drm/i915/display/intel_crtc_state_dump.c
+++ b/drivers/gpu/drm/i915/display/intel_crtc_state_dump.c
@@ -314,9 +314,9 @@ void intel_crtc_state_dump(const struct intel_crtc_state *pipe_config,
 	drm_printf(&p, "pipe mode: " DRM_MODE_FMT "\n",
 		   DRM_MODE_ARG(&pipe_config->hw.pipe_mode));
 	intel_dump_crtc_timings(&p, &pipe_config->hw.pipe_mode);
-	drm_printf(&p, "port clock: %d, pipe src: " DRM_RECT_FMT ", pixel rate %d\n",
+	drm_printf(&p, "port clock: %d, pipe src: " DRM_RECT_FMT ", pixel rate %d, min cdclk %d\n",
 		   pipe_config->port_clock, DRM_RECT_ARG(&pipe_config->pipe_src),
-		   pipe_config->pixel_rate);
+		   pipe_config->pixel_rate, pipe_config->min_cdclk);
 
 	drm_printf(&p, "linetime: %d, ips linetime: %d\n",
 		   pipe_config->linetime, pipe_config->ips_linetime);
-- 
2.49.1

