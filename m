Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 871437BFA19
	for <lists+intel-gfx@lfdr.de>; Tue, 10 Oct 2023 13:43:30 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id DF7E210E34C;
	Tue, 10 Oct 2023 11:43:28 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.55.52.43])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 0868E10E346
 for <intel-gfx@lists.freedesktop.org>; Tue, 10 Oct 2023 11:43:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1696938205; x=1728474205;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=Hpyg+jwTWqn9ARQnQG9ym/gZzyY2mDOd85qbZ4k7Sqo=;
 b=PieFFawLe6Ogrxwg76bYlXw7xpUB/3wGjNxH+nN/MucaDM1Sc1rSdxni
 EClzceax5T0cQyhyTgPEfmvqyq86Lbr2JQQZaVJSqAhAvPQyO5HhU9QTl
 IShQ1ZxBKTJ2Hz2f7zmriu7ui1to7YRImXKPnkqz+QuXznWNNdc0wDFH3
 CWd1O9Y00bLbQ5AHOCZEDMslCzOZ9yLDsSVusfw0sK8/sQ5v7n/bWHnoo
 gxyVEYUxq+p5lsAl5J/AwHpGnQMKOKBK8UGOdnYnIXYyxfQQwOSxNavVW
 wVHFADO5MKR9lwJe1XuQxTersjaoZgkwnRo2n2ZOvdUeftkiiLOdJPMG2 Q==;
X-IronPort-AV: E=McAfee;i="6600,9927,10858"; a="470635486"
X-IronPort-AV: E=Sophos;i="6.03,212,1694761200"; d="scan'208";a="470635486"
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
 by fmsmga105.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 10 Oct 2023 04:43:24 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10858"; a="869655428"
X-IronPort-AV: E=Sophos;i="6.03,212,1694761200"; d="scan'208";a="869655428"
Received: from snutt-mobl1.ger.corp.intel.com (HELO jhogande-mobl1.intel.com)
 ([10.252.57.138])
 by fmsmga002-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 10 Oct 2023 04:43:23 -0700
From: =?UTF-8?q?Jouni=20H=C3=B6gander?= <jouni.hogander@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Tue, 10 Oct 2023 14:41:19 +0300
Message-Id: <20231010114120.2504103-25-jouni.hogander@intel.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20231010114120.2504103-1-jouni.hogander@intel.com>
References: <20231010114120.2504103-1-jouni.hogander@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH 24/25] drm/i915/display: Move enable_dp_mst
 under display
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

Signed-off-by: Jouni Högander <jouni.hogander@intel.com>
---
 drivers/gpu/drm/i915/display/intel_display_params.c | 3 +++
 drivers/gpu/drm/i915/display/intel_display_params.h | 1 +
 drivers/gpu/drm/i915/display/intel_dp.c             | 6 +++---
 drivers/gpu/drm/i915/i915_params.c                  | 3 ---
 drivers/gpu/drm/i915/i915_params.h                  | 1 -
 5 files changed, 7 insertions(+), 7 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_display_params.c b/drivers/gpu/drm/i915/display/intel_display_params.c
index 88e385f2a47a..ab52f7031a4d 100644
--- a/drivers/gpu/drm/i915/display/intel_display_params.c
+++ b/drivers/gpu/drm/i915/display/intel_display_params.c
@@ -98,6 +98,9 @@ intel_display_param_named(verbose_state_checks, bool, 0400,
 intel_display_param_named_unsafe(nuclear_pageflip, bool, 0400,
 	"Force enable atomic functionality on platforms that don't have full support yet.");
 
+intel_display_param_named_unsafe(enable_dp_mst, bool, 0400,
+	"Enable multi-stream transport (MST) for new DisplayPort sinks. (default: true)");
+
 intel_display_param_named_unsafe(enable_fbc, int, 0400,
 	"Enable frame buffer compression for power savings "
 	"(default: -1 (use per-chip default))");
diff --git a/drivers/gpu/drm/i915/display/intel_display_params.h b/drivers/gpu/drm/i915/display/intel_display_params.h
index 3c58ad95c2e2..1c60ad3e29cd 100644
--- a/drivers/gpu/drm/i915/display/intel_display_params.h
+++ b/drivers/gpu/drm/i915/display/intel_display_params.h
@@ -42,6 +42,7 @@ struct drm_i915_private;
 	param(bool, disable_display, false, 0400) \
 	param(bool, verbose_state_checks, true, 0) \
 	param(bool, nuclear_pageflip, false, 0400) \
+	param(bool, enable_dp_mst, true, 0600) \
 	param(int, enable_fbc, -1, 0600)	\
 	param(int, enable_psr, -1, 0600) \
 	param(bool, psr_safest_params, false, 0400) \
diff --git a/drivers/gpu/drm/i915/display/intel_dp.c b/drivers/gpu/drm/i915/display/intel_dp.c
index 0ef7cb8134b6..5b5987539479 100644
--- a/drivers/gpu/drm/i915/display/intel_dp.c
+++ b/drivers/gpu/drm/i915/display/intel_dp.c
@@ -3749,7 +3749,7 @@ intel_dp_can_mst(struct intel_dp *intel_dp)
 {
 	struct drm_i915_private *i915 = dp_to_i915(intel_dp);
 
-	return i915->params.enable_dp_mst &&
+	return i915->display.params.enable_dp_mst &&
 		intel_dp_mst_source_support(intel_dp) &&
 		drm_dp_read_mst_cap(&intel_dp->aux, intel_dp->dpcd);
 }
@@ -3767,13 +3767,13 @@ intel_dp_configure_mst(struct intel_dp *intel_dp)
 		    encoder->base.base.id, encoder->base.name,
 		    str_yes_no(intel_dp_mst_source_support(intel_dp)),
 		    str_yes_no(sink_can_mst),
-		    str_yes_no(i915->params.enable_dp_mst));
+		    str_yes_no(i915->display.params.enable_dp_mst));
 
 	if (!intel_dp_mst_source_support(intel_dp))
 		return;
 
 	intel_dp->is_mst = sink_can_mst &&
-		i915->params.enable_dp_mst;
+		i915->display.params.enable_dp_mst;
 
 	drm_dp_mst_topology_mgr_set_mst(&intel_dp->mst_mgr,
 					intel_dp->is_mst);
diff --git a/drivers/gpu/drm/i915/i915_params.c b/drivers/gpu/drm/i915/i915_params.c
index 18424873442d..de43048543e8 100644
--- a/drivers/gpu/drm/i915/i915_params.c
+++ b/drivers/gpu/drm/i915/i915_params.c
@@ -114,9 +114,6 @@ i915_param_named_unsafe(dmc_firmware_path, charp, 0400,
 i915_param_named_unsafe(gsc_firmware_path, charp, 0400,
 	"GSC firmware path to use instead of the default one");
 
-i915_param_named_unsafe(enable_dp_mst, bool, 0400,
-	"Enable multi-stream transport (MST) for new DisplayPort sinks. (default: true)");
-
 #if IS_ENABLED(CONFIG_DRM_I915_DEBUG)
 i915_param_named_unsafe(inject_probe_failure, uint, 0400,
 	"Force an error after a number of failure check points (0:disabled (default), N:force failure at the Nth failure check point)");
diff --git a/drivers/gpu/drm/i915/i915_params.h b/drivers/gpu/drm/i915/i915_params.h
index c7fff571db2c..1315d7fac850 100644
--- a/drivers/gpu/drm/i915/i915_params.h
+++ b/drivers/gpu/drm/i915/i915_params.h
@@ -64,7 +64,6 @@ struct drm_printer;
 	/* leave bools at the end to not create holes */ \
 	param(bool, enable_hangcheck, true, 0600) \
 	param(bool, error_capture, true, IS_ENABLED(CONFIG_DRM_I915_CAPTURE_ERROR) ? 0600 : 0) \
-	param(bool, enable_dp_mst, true, 0600) \
 	param(bool, enable_gvt, false, IS_ENABLED(CONFIG_DRM_I915_GVT) ? 0400 : 0)
 
 #define MEMBER(T, member, ...) T member;
-- 
2.34.1

