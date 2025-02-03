Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 2AE3AA259DF
	for <lists+intel-gfx@lfdr.de>; Mon,  3 Feb 2025 13:50:22 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id BFC6010E4B8;
	Mon,  3 Feb 2025 12:50:20 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="Ijgd9nKk";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.9])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 39D8E10E4AF;
 Mon,  3 Feb 2025 12:50:19 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1738587019; x=1770123019;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=HaB7tFLGtZBzisulUlo+BgZAEEQXH9QRLpPtGqG7Tf8=;
 b=Ijgd9nKkLk49jWPDi1E1bDPnj0jmJ2O6Df1eAv+WGEasnbfIX9KY7LBl
 UZ2pNQE6jvW3tNWjjALjge/5DuOUGGf1kUk9a+OdIGs1uH+yxn1Sx2kgZ
 /CJgtuRhkKyhsHGK6PwP9sB6GHoUQf07g09NerMhi1uzvWPUwRRd/gJn6
 6bOkMRjxx9R8xGh483M5GFiB6AkomeibP/R0NOstZ/FWqeb0aewAisyL8
 WH0yM5W3P/OCH4lJSWHUVapH6Mgw1F2oD7NuKCPCa4JhbPRddGytW2rli
 Pp4M/q1ANkB3p+60hnavmTfIgrbwwSq7T0qgdJQw6eWfNMe+Bg2FGikv+ w==;
X-CSE-ConnectionGUID: Mzx5lBydQmyOu2DX5afD+g==
X-CSE-MsgGUID: 6IGrJ9fjR6aKkKRXpK9EeA==
X-IronPort-AV: E=McAfee;i="6700,10204,11335"; a="61548076"
X-IronPort-AV: E=Sophos;i="6.13,255,1732608000"; d="scan'208";a="61548076"
Received: from fmviesa002.fm.intel.com ([10.60.135.142])
 by orvoesa101.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 03 Feb 2025 04:50:19 -0800
X-CSE-ConnectionGUID: m4GwPJjjS1OILI1k3Eht1A==
X-CSE-MsgGUID: oUoa1YATRKuxv31jxcwvHQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.12,224,1728975600"; d="scan'208";a="133528989"
Received: from srr4-3-linux-103-aknautiy.iind.intel.com ([10.223.34.160])
 by fmviesa002-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 03 Feb 2025 04:50:17 -0800
From: Ankit Nautiyal <ankit.k.nautiyal@intel.com>
To: intel-gfx@lists.freedesktop.org
Cc: intel-xe@lists.freedesktop.org, jani.nikula@linux.intel.com,
 ville.syrjala@linux.intel.com, mitulkumar.ajitkumar.golani@intel.com
Subject: [PATCH 14/28] drm/i915/dp: Avoid vrr compute config for HDMI sink
Date: Mon,  3 Feb 2025 18:08:26 +0530
Message-ID: <20250203123840.3855874-15-ankit.k.nautiyal@intel.com>
X-Mailer: git-send-email 2.45.2
In-Reply-To: <20250203123840.3855874-1-ankit.k.nautiyal@intel.com>
References: <20250203123840.3855874-1-ankit.k.nautiyal@intel.com>
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

Currently we do not support VRR with HDMI so skip vrr compute
config step for DP with HDMI sink.

Signed-off-by: Ankit Nautiyal <ankit.k.nautiyal@intel.com>
---
 drivers/gpu/drm/i915/display/intel_dp.c | 8 +++++++-
 1 file changed, 7 insertions(+), 1 deletion(-)

diff --git a/drivers/gpu/drm/i915/display/intel_dp.c b/drivers/gpu/drm/i915/display/intel_dp.c
index 411df92df4a1..d493f7436848 100644
--- a/drivers/gpu/drm/i915/display/intel_dp.c
+++ b/drivers/gpu/drm/i915/display/intel_dp.c
@@ -3208,7 +3208,13 @@ intel_dp_compute_config(struct intel_encoder *encoder,
 	if (pipe_config->splitter.enable)
 		pipe_config->dp_m_n.data_m *= pipe_config->splitter.link_count;
 
-	intel_vrr_compute_config(pipe_config, conn_state);
+	/*
+	 * VRR via PCON is currently unsupported.
+	 * TODO: Add support for VRR for DP HDMI2.1 PCON.
+	 */
+	if (!intel_dp_has_hdmi_sink(intel_dp))
+		intel_vrr_compute_config(pipe_config, conn_state);
+
 	intel_dp_compute_as_sdp(intel_dp, pipe_config);
 	intel_psr_compute_config(intel_dp, pipe_config, conn_state);
 	intel_alpm_lobf_compute_config(intel_dp, pipe_config, conn_state);
-- 
2.45.2

