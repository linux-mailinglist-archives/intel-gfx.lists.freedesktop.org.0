Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 0EBE6A05FD1
	for <lists+intel-gfx@lfdr.de>; Wed,  8 Jan 2025 16:18:33 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id A769610EBE3;
	Wed,  8 Jan 2025 15:18:31 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="fiJxBIM2";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.18])
 by gabe.freedesktop.org (Postfix) with ESMTPS id C736910EBE3
 for <intel-gfx@lists.freedesktop.org>; Wed,  8 Jan 2025 15:18:30 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1736349510; x=1767885510;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=3jJAv6/bd9Xo5D5HTo+23KkCeRopSMzughvjQP6VKZg=;
 b=fiJxBIM2jrl59HWPSBBQPcVAk4HFjjrTendqn/aHxRNGlSZLRPRMwAjt
 VIOYfqBjN2xODb1ZtPtlepBd5OgvVYy8CpXdDkejMD+27UD+cWImR6cME
 AO4y+3IAHpgwK7ROfqLF4H7KfrTNX5uuqPqGyEqgJlLq1o04uHherJgh7
 iirw+OgB7Qxx2VMF1JN97hmXpkZCiJaR3DR8dAAqhqncZAoDefoAhuxwn
 svQAn670yCs73vk3XYJBJx5IICL9VfJ0E4HS4w0lLP6YBOEcFWY4gDdbO
 IG3gSr/oqtG+pLUWXzsg9FYjKSTjXL63n84GTPwmx7cosgYoOrPOf5lta g==;
X-CSE-ConnectionGUID: 3p5jpR9pT76wOusXrrQ37w==
X-CSE-MsgGUID: rLpjlsL5SWOzGyfnYwnSWw==
X-IronPort-AV: E=McAfee;i="6700,10204,11309"; a="36694390"
X-IronPort-AV: E=Sophos;i="6.12,298,1728975600"; d="scan'208";a="36694390"
Received: from fmviesa009.fm.intel.com ([10.60.135.149])
 by orvoesa110.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 08 Jan 2025 07:18:30 -0800
X-CSE-ConnectionGUID: /fv0ptsETWuJzAszhu13IQ==
X-CSE-MsgGUID: tuOaIjDnSsaJllAdc27NwA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.12,298,1728975600"; d="scan'208";a="103626821"
Received: from ideak-desk.fi.intel.com ([10.237.72.78])
 by fmviesa009-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 08 Jan 2025 07:18:29 -0800
From: Imre Deak <imre.deak@intel.com>
To: intel-gfx@lists.freedesktop.org
Cc: Jani Nikula <jani.nikula@intel.com>
Subject: [PATCH 3/5] drm/i915/dp_mst: Simplify using to_intel_display()
 passing it an intel_connector pointer
Date: Wed,  8 Jan 2025 17:19:14 +0200
Message-ID: <20250108151916.491113-4-imre.deak@intel.com>
X-Mailer: git-send-email 2.44.2
In-Reply-To: <20250108151916.491113-1-imre.deak@intel.com>
References: <20250108151916.491113-1-imre.deak@intel.com>
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

Simplify the use of to_intel_display() in intel_dp_mst.c passing it the
already available intel_connector pointer, instead of looking up a
drm_device pointer for the same purpose.

Suggested-by: Jani Nikula <jani.nikula@intel.com>
Signed-off-by: Imre Deak <imre.deak@intel.com>
---
 drivers/gpu/drm/i915/display/intel_dp_mst.c | 6 +++---
 1 file changed, 3 insertions(+), 3 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_dp_mst.c b/drivers/gpu/drm/i915/display/intel_dp_mst.c
index a7bfedc5945ea..85f451c986ae8 100644
--- a/drivers/gpu/drm/i915/display/intel_dp_mst.c
+++ b/drivers/gpu/drm/i915/display/intel_dp_mst.c
@@ -1351,7 +1351,7 @@ static bool mst_stream_initial_fastset_check(struct intel_encoder *encoder,
 static int mst_connector_get_ddc_modes(struct drm_connector *_connector)
 {
 	struct intel_connector *connector = to_intel_connector(_connector);
-	struct intel_display *display = to_intel_display(connector->base.dev);
+	struct intel_display *display = to_intel_display(connector);
 	struct intel_dp *intel_dp = connector->mst_port;
 	const struct drm_edid *drm_edid;
 	int ret;
@@ -1422,7 +1422,7 @@ mst_connector_mode_valid_ctx(struct drm_connector *_connector,
 			     enum drm_mode_status *status)
 {
 	struct intel_connector *connector = to_intel_connector(_connector);
-	struct intel_display *display = to_intel_display(connector->base.dev);
+	struct intel_display *display = to_intel_display(connector);
 	struct drm_i915_private *dev_priv = to_i915(connector->base.dev);
 	struct intel_dp *intel_dp = connector->mst_port;
 	struct drm_dp_mst_topology_mgr *mgr = &intel_dp->mst_mgr;
@@ -1548,7 +1548,7 @@ mst_connector_detect_ctx(struct drm_connector *_connector,
 			 struct drm_modeset_acquire_ctx *ctx, bool force)
 {
 	struct intel_connector *connector = to_intel_connector(_connector);
-	struct intel_display *display = to_intel_display(connector->base.dev);
+	struct intel_display *display = to_intel_display(connector);
 	struct intel_dp *intel_dp = connector->mst_port;
 
 	if (!intel_display_device_enabled(display))
-- 
2.44.2

