Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id F2306968148
	for <lists+intel-gfx@lfdr.de>; Mon,  2 Sep 2024 10:05:02 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 7264510E066;
	Mon,  2 Sep 2024 08:05:01 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="KIzTy1pn";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.18])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 8F55510E066
 for <intel-gfx@lists.freedesktop.org>; Mon,  2 Sep 2024 08:05:00 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1725264301; x=1756800301;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=y4KWHN0eVGQmVQYusn/c+IIKbezsIJPuSYNJw+39bFc=;
 b=KIzTy1pn8Rp85kdwHVaCkPe4IAMlIUm2T/D60BBxPmi86MnF6vbvzbO2
 h7ekuEySb8LSVG5lupi2cd9V5yCnATuhs5JFlIwB1VxbU5GpMMWKaDoA2
 5bAd9GIBb2d/LgFP1oJS4o0UG6irJ22gnlaDPDZVqWwzutjxPOIWslmWd
 j/kebRDjfp4C6nI5/Zx1hMUlpmA6j7d75t04R/ZcRKFeeoi6y+R9eXfi9
 wVlDe0C3slGGxhDpklKE8+9sd0+m44Kj0S9rFfCkT8c+p3yjzq77bF7DM
 aYPnUOvONYUy2E0tvXfeVCIVCwnME7T0B5InnpsyciyyooYo/k3ed1+77 A==;
X-CSE-ConnectionGUID: Kt1Ks2lGQMWC+64kMkyXlQ==
X-CSE-MsgGUID: vVemSH4tRluKo8ch++XDtg==
X-IronPort-AV: E=McAfee;i="6700,10204,11182"; a="23967380"
X-IronPort-AV: E=Sophos;i="6.10,195,1719903600"; d="scan'208";a="23967380"
Received: from orviesa007.jf.intel.com ([10.64.159.147])
 by orvoesa110.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 02 Sep 2024 01:05:01 -0700
X-CSE-ConnectionGUID: 98zN5inkTQeEtjYn+9ha6A==
X-CSE-MsgGUID: g/C16rF+TpGbtIlIAGFoow==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.10,195,1719903600"; d="scan'208";a="65039798"
Received: from srr4-3-linux-103-aknautiy.iind.intel.com ([10.223.34.160])
 by orviesa007-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 02 Sep 2024 01:04:59 -0700
From: Ankit Nautiyal <ankit.k.nautiyal@intel.com>
To: intel-gfx@lists.freedesktop.org
Cc: jani.nikula@linux.intel.com, ville.syrjala@linux.intel.com,
 mitulkumar.ajitkumar.golani@intel.com
Subject: [PATCH 01/13] drm/i915/dp: Avoid vrr compute config for HDMI sink
Date: Mon,  2 Sep 2024 13:36:22 +0530
Message-ID: <20240902080635.2946858-2-ankit.k.nautiyal@intel.com>
X-Mailer: git-send-email 2.45.2
In-Reply-To: <20240902080635.2946858-1-ankit.k.nautiyal@intel.com>
References: <20240902080635.2946858-1-ankit.k.nautiyal@intel.com>
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
 drivers/gpu/drm/i915/display/intel_dp.c | 7 ++++++-
 1 file changed, 6 insertions(+), 1 deletion(-)

diff --git a/drivers/gpu/drm/i915/display/intel_dp.c b/drivers/gpu/drm/i915/display/intel_dp.c
index 789c2f78826d..4fc60149f5ed 100644
--- a/drivers/gpu/drm/i915/display/intel_dp.c
+++ b/drivers/gpu/drm/i915/display/intel_dp.c
@@ -3101,7 +3101,12 @@ intel_dp_compute_config(struct intel_encoder *encoder,
 	if (!HAS_DDI(dev_priv))
 		g4x_dp_set_clock(encoder, pipe_config);
 
-	intel_vrr_compute_config(pipe_config, conn_state);
+	/*
+	 * VRR via PCON is currently unsupported.
+	 * TODO: Add support for VRR for DP HDMI2.1 PCON.
+	 */
+	if (!intel_dp_has_hdmi_sink(intel_dp))
+		intel_vrr_compute_config(pipe_config, conn_state);
 	intel_dp_compute_as_sdp(intel_dp, pipe_config);
 	intel_psr_compute_config(intel_dp, pipe_config, conn_state);
 	intel_alpm_lobf_compute_config(intel_dp, pipe_config, conn_state);
-- 
2.45.2

