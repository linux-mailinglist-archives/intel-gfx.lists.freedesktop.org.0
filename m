Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id DA0CAB2D5FD
	for <lists+intel-gfx@lfdr.de>; Wed, 20 Aug 2025 10:18:56 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 6F3C710E6AA;
	Wed, 20 Aug 2025 08:18:55 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="V/3Kog+e";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.10])
 by gabe.freedesktop.org (Postfix) with ESMTPS id D537C10E6B4;
 Wed, 20 Aug 2025 08:18:51 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1755677932; x=1787213932;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=9OoyyHgUyza1aYvv2dcYoUP65mioIrVv+UIw6cS7uD0=;
 b=V/3Kog+eUwwcx1eep9Ppw0M59Gsva4kimP0DNHHAS3aL1eHxT3aPPrAQ
 7CwhB8MUNZOzhpacbv+MVCK1n5zRMxKREAnUSPqk9q6GDF0NV1JnTb0vO
 pkjeh7nvltYOS1a7aCrUPMQ8H1lSZaXsEaqh1R741uLkEN/EZUqLhuGeo
 zqGCL3VVFAxGQu0reOzlu9X6RZuJkFH9IOo9jzsbsndbeW0nINZ4vH18/
 wn4Fk+i6LDDzJpx/J9RYBWo1PBfxmompmrwPfu1clySfPfclwbHcM38DG
 gy6vMpC/f72s3iDxSFY39uOznAyB8qmwNHmixplmRGLyFd5eyJ5w711SM Q==;
X-CSE-ConnectionGUID: MtRyHAGzTi6zpx4dbJPgDA==
X-CSE-MsgGUID: Itt27DphSrSur8GJhNYQRQ==
X-IronPort-AV: E=McAfee;i="6800,10657,11527"; a="69316806"
X-IronPort-AV: E=Sophos;i="6.17,302,1747724400"; d="scan'208";a="69316806"
Received: from orviesa003.jf.intel.com ([10.64.159.143])
 by fmvoesa104.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 20 Aug 2025 01:18:51 -0700
X-CSE-ConnectionGUID: SX6eqRT3T8+Y7Lj5P8sI+A==
X-CSE-MsgGUID: dxs+/noWS/epiWzOC3KnzA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.17,302,1747724400"; d="scan'208";a="172292792"
Received: from srr4-3-linux-103-aknautiy.iind.intel.com ([10.223.34.160])
 by ORVIESA003-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 20 Aug 2025 01:18:50 -0700
From: Ankit Nautiyal <ankit.k.nautiyal@intel.com>
To: intel-gfx@lists.freedesktop.org,
	intel-xe@lists.freedesktop.org
Cc: ville.syrjala@linux.intel.com, Ankit Nautiyal <ankit.k.nautiyal@intel.com>,
 Mitul Golani <mitulkumar.ajitkumar.golani@intel.com>
Subject: [PATCH 06/12] drm/i915/alpm: Add function to compute max link-wake
 latency
Date: Wed, 20 Aug 2025 13:34:44 +0530
Message-ID: <20250820080451.2634888-7-ankit.k.nautiyal@intel.com>
X-Mailer: git-send-email 2.45.2
In-Reply-To: <20250820080451.2634888-1-ankit.k.nautiyal@intel.com>
References: <20250820080451.2634888-1-ankit.k.nautiyal@intel.com>
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

Introduce a helper to compute the max link wake latency when using
Auxless/Aux wake mechanism for PSR/Panel Replay/LOBF features.

This will be used to compute the minimum guardband so that the link wake
latencies are accounted and these features work smoothly for higher
refresh rate panels.

Bspec: 70151, 71477
Signed-off-by: Ankit Nautiyal <ankit.k.nautiyal@intel.com>
Reviewed-by: Mitul Golani <mitulkumar.ajitkumar.golani@intel.com>
---
 drivers/gpu/drm/i915/display/intel_alpm.c | 15 +++++++++++++++
 drivers/gpu/drm/i915/display/intel_alpm.h |  2 ++
 2 files changed, 17 insertions(+)

diff --git a/drivers/gpu/drm/i915/display/intel_alpm.c b/drivers/gpu/drm/i915/display/intel_alpm.c
index dfdde8e4eabe..42b4a0ceb53b 100644
--- a/drivers/gpu/drm/i915/display/intel_alpm.c
+++ b/drivers/gpu/drm/i915/display/intel_alpm.c
@@ -628,3 +628,18 @@ bool intel_alpm_get_error(struct intel_dp *intel_dp)
 
 	return false;
 }
+
+int intel_alpm_compute_max_link_wake_latency(struct intel_crtc_state *crtc_state,
+					     bool assume_all_enabled)
+{
+	int psr2_vblank_time = 0;
+	int auxless_wake_time = 0;
+
+	if (assume_all_enabled || crtc_state->has_sel_update)
+		psr2_vblank_time =  io_buffer_wake_time(crtc_state);
+
+	if (assume_all_enabled || crtc_state->has_panel_replay)
+		auxless_wake_time = _lnl_compute_aux_less_wake_time(crtc_state->port_clock);
+
+	return max(psr2_vblank_time, auxless_wake_time);
+}
diff --git a/drivers/gpu/drm/i915/display/intel_alpm.h b/drivers/gpu/drm/i915/display/intel_alpm.h
index a861c20b5d79..8f1db54eecf5 100644
--- a/drivers/gpu/drm/i915/display/intel_alpm.h
+++ b/drivers/gpu/drm/i915/display/intel_alpm.h
@@ -38,4 +38,6 @@ bool intel_alpm_is_alpm_aux_less(struct intel_dp *intel_dp,
 				 const struct intel_crtc_state *crtc_state);
 void intel_alpm_disable(struct intel_dp *intel_dp);
 bool intel_alpm_get_error(struct intel_dp *intel_dp);
+int intel_alpm_compute_max_link_wake_latency(struct intel_crtc_state *crtc_state,
+					     bool assume_all_enabled);
 #endif
-- 
2.45.2

