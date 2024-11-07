Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 9576B9C110D
	for <lists+intel-gfx@lfdr.de>; Thu,  7 Nov 2024 22:37:35 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 3235710E8F0;
	Thu,  7 Nov 2024 21:37:34 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="U5OHeoof";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.7])
 by gabe.freedesktop.org (Postfix) with ESMTPS id B84E810E8F0;
 Thu,  7 Nov 2024 21:37:32 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1731015452; x=1762551452;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=CRLI6yTJA8/CnYA39Gd6bHSddsXCEvE656bU2GiuyBM=;
 b=U5OHeoofoNfGtdfrcmfLpbesILEVWqssrujYrmtVXzYhhYueGujpacIj
 A9VcHWxuSqG3CLPvJSd84aaOWL9mDeL5Rxy7sb1qtIw42LInN7XHVsJu6
 gwOu2oTADq+dxylO9ZkZLqvG2ZntDgPjBuou5N6rngzRuWaEVfDh96DMz
 QRL0DpMRH2YmeRQhL04HqCwd+LfNsz5nku6qGcx1HFDK4lRGPloA3qK8V
 rXD3+kB9V+zhSwLXTddwClDKegxGPPolTS9t/gW8UFwOZ4j7ZcncjrHtV
 D+StAoDGzdVm6H0YUPFsEDMmDDJDPf89ixaDWwNV23cmTNZuKCgQw6bC1 Q==;
X-CSE-ConnectionGUID: JI1EmK+WQz2vSwa54Sz6RQ==
X-CSE-MsgGUID: 9NisRGONSQyXJFs4vlt9qw==
X-IronPort-AV: E=McAfee;i="6700,10204,11249"; a="56282982"
X-IronPort-AV: E=Sophos;i="6.12,136,1728975600"; d="scan'208";a="56282982"
Received: from fmviesa010.fm.intel.com ([10.60.135.150])
 by fmvoesa101.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 07 Nov 2024 13:37:32 -0800
X-CSE-ConnectionGUID: 9EykScq+TxiuDAVV+YyOLw==
X-CSE-MsgGUID: xRm3Q8QkQCOzj8VYC3OXhA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.12,136,1728975600"; d="scan'208";a="85574833"
Received: from klitkey1-mobl1.ger.corp.intel.com (HELO localhost)
 ([10.245.246.233])
 by fmviesa010-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 07 Nov 2024 13:37:30 -0800
From: Jani Nikula <jani.nikula@intel.com>
To: intel-gfx@lists.freedesktop.org,
	intel-xe@lists.freedesktop.org
Cc: jani.nikula@intel.com, Vinod Govindapillai <vinod.govindapillai@intel.com>,
 Rodrigo Vivi <rodrigo.vivi@intel.com>
Subject: [CI v2 v2 07/15] drm/i915/display: convert HAS_IPS() to struct
 intel_display
Date: Thu,  7 Nov 2024 23:36:41 +0200
Message-Id: <3df934c5428213f44c19e86747b261c1afd85c50.1731015334.git.jani.nikula@intel.com>
X-Mailer: git-send-email 2.39.5
In-Reply-To: <cover.1731015333.git.jani.nikula@intel.com>
References: <cover.1731015333.git.jani.nikula@intel.com>
MIME-Version: 1.0
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

Convert HAS_IPS() to struct intel_display. Do minimal drive-by
conversions to struct intel_display in the callers while at it.

Reviewed-by: Vinod Govindapillai <vinod.govindapillai@intel.com>
Reviewed-by: Rodrigo Vivi <rodrigo.vivi@intel.com>
Signed-off-by: Jani Nikula <jani.nikula@intel.com>
---
 drivers/gpu/drm/i915/display/hsw_ips.c              | 4 +++-
 drivers/gpu/drm/i915/display/intel_display.c        | 3 ++-
 drivers/gpu/drm/i915/display/intel_display_device.h | 2 +-
 3 files changed, 6 insertions(+), 3 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/hsw_ips.c b/drivers/gpu/drm/i915/display/hsw_ips.c
index 405116100d67..d02c328bf902 100644
--- a/drivers/gpu/drm/i915/display/hsw_ips.c
+++ b/drivers/gpu/drm/i915/display/hsw_ips.c
@@ -185,7 +185,9 @@ void hsw_ips_post_update(struct intel_atomic_state *state,
 /* IPS only exists on ULT machines and is tied to pipe A. */
 bool hsw_crtc_supports_ips(struct intel_crtc *crtc)
 {
-	return HAS_IPS(to_i915(crtc->base.dev)) && crtc->pipe == PIPE_A;
+	struct intel_display *display = to_intel_display(crtc);
+
+	return HAS_IPS(display) && crtc->pipe == PIPE_A;
 }
 
 static bool hsw_crtc_state_ips_capable(const struct intel_crtc_state *crtc_state)
diff --git a/drivers/gpu/drm/i915/display/intel_display.c b/drivers/gpu/drm/i915/display/intel_display.c
index 4173738dd91a..04d9a176cb12 100644
--- a/drivers/gpu/drm/i915/display/intel_display.c
+++ b/drivers/gpu/drm/i915/display/intel_display.c
@@ -4545,6 +4545,7 @@ static int hsw_compute_linetime_wm(struct intel_atomic_state *state,
 static int intel_crtc_atomic_check(struct intel_atomic_state *state,
 				   struct intel_crtc *crtc)
 {
+	struct intel_display *display = to_intel_display(crtc);
 	struct drm_i915_private *dev_priv = to_i915(crtc->base.dev);
 	struct intel_crtc_state *crtc_state =
 		intel_atomic_get_new_crtc_state(state, crtc);
@@ -4586,7 +4587,7 @@ static int intel_crtc_atomic_check(struct intel_atomic_state *state,
 			return ret;
 	}
 
-	if (HAS_IPS(dev_priv)) {
+	if (HAS_IPS(display)) {
 		ret = hsw_ips_compute_config(state, crtc);
 		if (ret)
 			return ret;
diff --git a/drivers/gpu/drm/i915/display/intel_display_device.h b/drivers/gpu/drm/i915/display/intel_display_device.h
index f51c1daf0596..8c6ca92fe78e 100644
--- a/drivers/gpu/drm/i915/display/intel_display_device.h
+++ b/drivers/gpu/drm/i915/display/intel_display_device.h
@@ -165,7 +165,7 @@ struct intel_display_platforms {
 #define HAS_GMCH(i915)			(DISPLAY_INFO(i915)->has_gmch)
 #define HAS_HW_SAGV_WM(i915)		(DISPLAY_VER(i915) >= 13 && !IS_DGFX(i915))
 #define HAS_IPC(i915)			(DISPLAY_INFO(i915)->has_ipc)
-#define HAS_IPS(i915)			(IS_HASWELL_ULT(i915) || IS_BROADWELL(i915))
+#define HAS_IPS(__display)		((__display)->platform.haswell_ult || (__display)->platform.broadwell)
 #define HAS_LRR(i915)			(DISPLAY_VER(i915) >= 12)
 #define HAS_LSPCON(i915)		(IS_DISPLAY_VER(i915, 9, 10))
 #define HAS_MBUS_JOINING(i915)		(IS_ALDERLAKE_P(i915) || DISPLAY_VER(i915) >= 14)
-- 
2.39.5

