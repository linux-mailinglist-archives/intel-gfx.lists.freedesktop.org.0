Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id E45819E366E
	for <lists+intel-gfx@lfdr.de>; Wed,  4 Dec 2024 10:24:05 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 8637610EC92;
	Wed,  4 Dec 2024 09:24:04 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="Mg6QAOGo";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.11])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 3082410EC92;
 Wed,  4 Dec 2024 09:24:03 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1733304244; x=1764840244;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=6/ep/5Sao+0qspuC9f6AFzzqKXUsix0ojwHosgoqY74=;
 b=Mg6QAOGooMR69oqxEFRmqlx7XonXxqlsxT6oI1gvTTaukEd8J5Jkqm5n
 EHsGRjOqaLMcwHVK+72/NeoNvbvOIU2w7OCON+EPQdrBP17GfNtPXZA5n
 ZoJZo0qJNurIGH6Igi+P8wdc+3fj04T+rQ39ri/nCtH3xpJAeJhgl4yk8
 5d7Ss4wFZCx96X02O5ryA4V9x5DTuSWUbqZA79evPnByQL7HpVux0LOta
 wxe5GKq3otQgn5cnRayMdPPK08Y22HgFfiVn7b85ixFdjLx7CtHVFGakm
 FU6Xo2wM1Vhcq1eJotPe+tdBCdp8HVggtex+8XQUo6qlLk/AKN+wxM1dg Q==;
X-CSE-ConnectionGUID: tZwuhDisQJu6BBG9tJzCMg==
X-CSE-MsgGUID: +3Dt/wSFSpCsCMfvX3CTUQ==
X-IronPort-AV: E=McAfee;i="6700,10204,11275"; a="44038456"
X-IronPort-AV: E=Sophos;i="6.12,207,1728975600"; d="scan'208";a="44038456"
Received: from orviesa010.jf.intel.com ([10.64.159.150])
 by orvoesa103.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 04 Dec 2024 01:24:03 -0800
X-CSE-ConnectionGUID: 0ZymIKSpTJqtK5UShnmCfg==
X-CSE-MsgGUID: OaHOJ2uTShGpWUrVM66f7w==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.12,207,1728975600"; d="scan'208";a="93555108"
Received: from srr4-3-linux-103-aknautiy.iind.intel.com ([10.223.34.160])
 by orviesa010-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 04 Dec 2024 01:24:01 -0800
From: Ankit Nautiyal <ankit.k.nautiyal@intel.com>
To: intel-gfx@lists.freedesktop.org
Cc: intel-xe@lists.freedesktop.org, suraj.kandpal@intel.com,
 jani.nikula@linux.intel.com, imre.deak@intel.com
Subject: [PATCH 04/14] drm/i915/dp: Drop check for FEC in
 intel_dp_fec_compute_config
Date: Wed,  4 Dec 2024 14:56:32 +0530
Message-ID: <20241204092642.1835807-5-ankit.k.nautiyal@intel.com>
X-Mailer: git-send-email 2.45.2
In-Reply-To: <20241204092642.1835807-1-ankit.k.nautiyal@intel.com>
References: <20241204092642.1835807-1-ankit.k.nautiyal@intel.com>
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

Support for FEC is already checked in intel_dp_supports_dsc().
Therefore the check can be dropped from the helper
intel_dp_fec_compute_config.

Signed-off-by: Ankit Nautiyal <ankit.k.nautiyal@intel.com>
---
 drivers/gpu/drm/i915/display/intel_dp.c | 6 +-----
 1 file changed, 1 insertion(+), 5 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_dp.c b/drivers/gpu/drm/i915/display/intel_dp.c
index ccc495842518..d48fa94b2705 100644
--- a/drivers/gpu/drm/i915/display/intel_dp.c
+++ b/drivers/gpu/drm/i915/display/intel_dp.c
@@ -2345,7 +2345,6 @@ static int intel_edp_dsc_compute_pipe_bpp(struct intel_dp *intel_dp,
 }
 
 static void intel_dp_fec_compute_config(struct intel_dp *intel_dp,
-					const struct intel_connector *connector,
 					struct intel_crtc_state *crtc_state)
 {
 	if (crtc_state->fec_enable)
@@ -2359,9 +2358,6 @@ static void intel_dp_fec_compute_config(struct intel_dp *intel_dp,
 	if (intel_dp_is_edp(intel_dp))
 		return;
 
-	if (!intel_dp_supports_fec(intel_dp, connector, crtc_state))
-		return;
-
 	if (intel_dp_is_uhbr(crtc_state))
 		return;
 
@@ -2384,7 +2380,7 @@ int intel_dp_dsc_compute_config(struct intel_dp *intel_dp,
 	int num_joined_pipes = intel_crtc_num_joined_pipes(pipe_config);
 	int ret;
 
-	intel_dp_fec_compute_config(intel_dp, connector, pipe_config);
+	intel_dp_fec_compute_config(intel_dp, pipe_config);
 
 	if (!intel_dp_dsc_supports_format(connector, pipe_config->output_format))
 		return -EINVAL;
-- 
2.45.2

