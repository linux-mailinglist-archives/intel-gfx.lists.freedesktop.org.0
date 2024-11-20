Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 8C5F39D35C9
	for <lists+intel-gfx@lfdr.de>; Wed, 20 Nov 2024 09:47:49 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 1AA2810E6D1;
	Wed, 20 Nov 2024 08:47:48 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="dapDjBB5";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.20])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 87BC710E6CF
 for <intel-gfx@lists.freedesktop.org>; Wed, 20 Nov 2024 08:47:46 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1732092467; x=1763628467;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=Nn3xOyx12OEM8FZ4MHT9Ctakexp9RBuS6QeGLXT0aAs=;
 b=dapDjBB54rTJkVJWhJKGu98LDHEYO1dk2Yo3UUO2rg4ZdvgR+ZWcpUBZ
 jbGtQARUk86YMxNsIBT50/Uo8mHKVBJGzE3HvtZx2XJXhYltD5oTSeF+o
 7EhvqT1Au0+gHi7UDe2i8al8/jKxzkHtTTwUv3d0Got5pP0XcUNh/oQDk
 hJR6rTBEDbwSEo5Z6cKazJ/g0V422VPHOmAwjGS/VcGaAYnTUPd3kK8g6
 AxSZf6qn1U9RDmn4xzwBFOnibZrCtNaWjBM93BtSzYY2EmU1LIFybCXTC
 vU6okIYEVK9bbybDNA0lSoqwOwIs0SqBuySoNbi60OVcaa217vAFCYjmC Q==;
X-CSE-ConnectionGUID: rlF5yDMqSN+F2FT3VefwYQ==
X-CSE-MsgGUID: s5U9c787T128ESyCr2rJxg==
X-IronPort-AV: E=McAfee;i="6700,10204,11261"; a="31887141"
X-IronPort-AV: E=Sophos;i="6.12,169,1728975600"; d="scan'208";a="31887141"
Received: from orviesa006.jf.intel.com ([10.64.159.146])
 by orvoesa112.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 20 Nov 2024 00:47:46 -0800
X-CSE-ConnectionGUID: QPy+37Q2TNy37jnd+Uz6nA==
X-CSE-MsgGUID: +UcAKqRiTAmRYjSmg2Aa+A==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.12,169,1728975600"; d="scan'208";a="89956740"
Received: from mgolanimitul-x299-ud4-pro.iind.intel.com ([10.190.239.114])
 by orviesa006.jf.intel.com with ESMTP; 20 Nov 2024 00:47:45 -0800
From: Mitul Golani <mitulkumar.ajitkumar.golani@intel.com>
To: intel-gfx@lists.freedesktop.org
Cc: ankit.k.nautiyal@intel.com, ville.syrjala@linux.intel.com,
 jani.nikula@intel.com
Subject: [PATCH v4 1/5] drm/i915/vrr: Add crtc_state dump for vrr.vsync params
Date: Wed, 20 Nov 2024 14:19:44 +0530
Message-ID: <20241120084948.1834306-2-mitulkumar.ajitkumar.golani@intel.com>
X-Mailer: git-send-email 2.46.0
In-Reply-To: <20241120084948.1834306-1-mitulkumar.ajitkumar.golani@intel.com>
References: <20241120084948.1834306-1-mitulkumar.ajitkumar.golani@intel.com>
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

Add crtc_state dump for vrr.vsync_{start/end} params to track the
state correctly.

Signed-off-by: Mitul Golani <mitulkumar.ajitkumar.golani@intel.com>
---
 drivers/gpu/drm/i915/display/intel_crtc_state_dump.c | 4 +++-
 1 file changed, 3 insertions(+), 1 deletion(-)

diff --git a/drivers/gpu/drm/i915/display/intel_crtc_state_dump.c b/drivers/gpu/drm/i915/display/intel_crtc_state_dump.c
index 705ec5ad385c..92dbf2cc150c 100644
--- a/drivers/gpu/drm/i915/display/intel_crtc_state_dump.c
+++ b/drivers/gpu/drm/i915/display/intel_crtc_state_dump.c
@@ -296,11 +296,13 @@ void intel_crtc_state_dump(const struct intel_crtc_state *pipe_config,
 		intel_dump_buffer("ELD: ", pipe_config->eld,
 				  drm_eld_size(pipe_config->eld));
 
-	drm_printf(&p, "vrr: %s, vmin: %d, vmax: %d, pipeline full: %d, guardband: %d flipline: %d, vmin vblank: %d, vmax vblank: %d\n",
+	drm_printf(&p, "vrr: %s, vmin: %d, vmax: %d, pipeline full: %d, guardband: %d flipline: %d, vrr_vsync_start: %d, vrr_vsync_end: %d, vmin vblank: %d, vmax vblank: %d\n",
 		   str_yes_no(pipe_config->vrr.enable),
 		   pipe_config->vrr.vmin, pipe_config->vrr.vmax,
 		   pipe_config->vrr.pipeline_full, pipe_config->vrr.guardband,
 		   pipe_config->vrr.flipline,
+		   pipe_config->vrr.vsync_start,
+		   pipe_config->vrr.vsync_end,
 		   intel_vrr_vmin_vblank_start(pipe_config),
 		   intel_vrr_vmax_vblank_start(pipe_config));
 
-- 
2.46.0

