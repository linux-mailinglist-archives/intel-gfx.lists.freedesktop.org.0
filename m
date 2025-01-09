Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 68267A0735F
	for <lists+intel-gfx@lfdr.de>; Thu,  9 Jan 2025 11:35:53 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id EA09510ED5D;
	Thu,  9 Jan 2025 10:35:51 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="TO/MuPR5";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.12])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 002ED10ED59;
 Thu,  9 Jan 2025 10:35:50 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1736418951; x=1767954951;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=4TsDjtS8yTMLjjAUclP9EGVd4u0ZoIc4M3nEUDHdSjI=;
 b=TO/MuPR5VM2u8zcwOtC8z+MTMCh3rW++k27y81xTQ9ScZu1H0Hr+HuLD
 k1PfIXE6ORjjGQaQGQ640vM5YfCJmfD64A6oiy3cOF/Fyceavm77fmAZw
 fsMRkLAD0CshACQ/TjNHKHKIL5e23OGJhgdaDwX9hpyHy72Een2o6wGeq
 LniBw7DavWg4WqI11PGfRKI/mMnCmiT04Po4sSzSwCUPzATBHewOHIdqw
 jyELYl2GUSGuHTtMMUO+j85zTzeUO19oJ9/5Ac1q4wsWyYaXfdFPlUFHm
 /odiROOPTzFtEtDimj4cwHQ6AnDIvLPOYEiuVZ1uk04rt/eu82jixq1+6 Q==;
X-CSE-ConnectionGUID: S7j6eiIgQL2AMYRrSQrl1Q==
X-CSE-MsgGUID: WdKaD3GBRRqtZMYPUi+Lbw==
X-IronPort-AV: E=McAfee;i="6700,10204,11309"; a="48034989"
X-IronPort-AV: E=Sophos;i="6.12,301,1728975600"; d="scan'208";a="48034989"
Received: from fmviesa007.fm.intel.com ([10.60.135.147])
 by orvoesa104.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 09 Jan 2025 02:35:51 -0800
X-CSE-ConnectionGUID: ZaUFEn/STlWYjzP4qYl/qg==
X-CSE-MsgGUID: FeJ/YAQvSOGZtL/qzOjH5g==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.12,301,1728975600"; d="scan'208";a="103333028"
Received: from fpallare-mobl4.ger.corp.intel.com (HELO jhogande-mobl1..)
 ([10.245.245.185])
 by fmviesa007-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 09 Jan 2025 02:35:50 -0800
From: =?UTF-8?q?Jouni=20H=C3=B6gander?= <jouni.hogander@intel.com>
To: intel-gfx@lists.freedesktop.org,
	intel-xe@lists.freedesktop.org
Cc: =?UTF-8?q?Jouni=20H=C3=B6gander?= <jouni.hogander@intel.com>
Subject: [PATCH 3/4] drm/i915/psr: Make intel_psr_enable_sink as local static
 function
Date: Thu,  9 Jan 2025 12:35:31 +0200
Message-ID: <20250109103532.2093356-4-jouni.hogander@intel.com>
X-Mailer: git-send-email 2.43.0
In-Reply-To: <20250109103532.2093356-1-jouni.hogander@intel.com>
References: <20250109103532.2093356-1-jouni.hogander@intel.com>
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

Intel_psr_enable_sink is not used outside intel_psr.c. Convert it as local
static function.

Signed-off-by: Jouni Högander <jouni.hogander@intel.com>
---
 drivers/gpu/drm/i915/display/intel_psr.c | 4 ++--
 drivers/gpu/drm/i915/display/intel_psr.h | 2 --
 2 files changed, 2 insertions(+), 4 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_psr.c b/drivers/gpu/drm/i915/display/intel_psr.c
index e592bc01c7fb..f969abc56256 100644
--- a/drivers/gpu/drm/i915/display/intel_psr.c
+++ b/drivers/gpu/drm/i915/display/intel_psr.c
@@ -814,8 +814,8 @@ static void intel_psr_enable_sink_alpm(struct intel_dp *intel_dp,
 	drm_dp_dpcd_writeb(&intel_dp->aux, DP_RECEIVER_ALPM_CONFIG, val);
 }
 
-void intel_psr_enable_sink(struct intel_dp *intel_dp,
-			   const struct intel_crtc_state *crtc_state)
+static void intel_psr_enable_sink(struct intel_dp *intel_dp,
+				  const struct intel_crtc_state *crtc_state)
 {
 	intel_psr_enable_sink_alpm(intel_dp, crtc_state);
 
diff --git a/drivers/gpu/drm/i915/display/intel_psr.h b/drivers/gpu/drm/i915/display/intel_psr.h
index 3b2643b83e06..5f1671d02d76 100644
--- a/drivers/gpu/drm/i915/display/intel_psr.h
+++ b/drivers/gpu/drm/i915/display/intel_psr.h
@@ -28,8 +28,6 @@ bool intel_encoder_can_psr(struct intel_encoder *encoder);
 bool intel_psr_needs_aux_io_power(struct intel_encoder *encoder,
 				  const struct intel_crtc_state *crtc_state);
 void intel_psr_init_dpcd(struct intel_dp *intel_dp);
-void intel_psr_enable_sink(struct intel_dp *intel_dp,
-			   const struct intel_crtc_state *crtc_state);
 void intel_psr_panel_replay_enable_sink(struct intel_dp *intel_dp);
 void intel_psr_pre_plane_update(struct intel_atomic_state *state,
 				struct intel_crtc *crtc);
-- 
2.34.1

