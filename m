Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 577B6903BA3
	for <lists+intel-gfx@lfdr.de>; Tue, 11 Jun 2024 14:13:25 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 249F110E613;
	Tue, 11 Jun 2024 12:13:23 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="FgZ+FInB";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.10])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 2D30110E612
 for <intel-gfx@lists.freedesktop.org>; Tue, 11 Jun 2024 12:13:19 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1718107999; x=1749643999;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=9PpjthPOoIbAJQN7RtkISV4LAWJleepeBWQJy1b1uIU=;
 b=FgZ+FInBl6iv/J2d+Aaj5XZ4ymLAwXm/LJHbnam4K/hrg62/01mkilTy
 toWT2TFp81RW/MnFWzZ0D1OH7PbexWnmsuigaIUpt4LBIGG7yInEKqjJX
 ni0Eig5RdRlSG0huK38HRsqeOW9W7GITS5Hlu8lbCghxqMWCwwxwZthWg
 h11CR4ubVMwaBXgqpsj8CKXkPTuBD0DgjLHvXUuJJnNZUbETT1shC8JPG
 kQsL6gR9t347CoKuuIWFE/RtEYp2j2/O1tZnIcuoCW6cUP7FfVmO33hu/
 By6hd4QF+dV0Kizie7YA/fAfHdo753ovLKaRehlyCp7rpkLQZhZiTwYOk w==;
X-CSE-ConnectionGUID: 4W8rpt8kRku90w33FjDP3g==
X-CSE-MsgGUID: XUysDC5bSZerohGjnBbv3g==
X-IronPort-AV: E=McAfee;i="6600,9927,11099"; a="32296851"
X-IronPort-AV: E=Sophos;i="6.08,230,1712646000"; d="scan'208";a="32296851"
Received: from orviesa007.jf.intel.com ([10.64.159.147])
 by orvoesa102.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 11 Jun 2024 05:13:19 -0700
X-CSE-ConnectionGUID: lPVapar/Qsm0E+AsEh6pvA==
X-CSE-MsgGUID: 1Uk9esxYR92Or9Rr43sucw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.08,230,1712646000"; d="scan'208";a="40118734"
Received: from dalessan-mobl3.ger.corp.intel.com (HELO jhogande-mobl1..)
 ([10.245.245.164])
 by orviesa007-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 11 Jun 2024 05:13:17 -0700
From: =?UTF-8?q?Jouni=20H=C3=B6gander?= <jouni.hogander@intel.com>
To: intel-gfx@lists.freedesktop.org
Cc: animesh.manna@intel.com, mika.kahola@intel.com,
 =?UTF-8?q?Jouni=20H=C3=B6gander?= <jouni.hogander@intel.com>
Subject: [PATCH v7 10/18] drm/i915/alpm: Make crtc_state as const in
 intel_alpm_compute_params
Date: Tue, 11 Jun 2024 15:12:35 +0300
Message-Id: <20240611121243.3366990-11-jouni.hogander@intel.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20240611121243.3366990-1-jouni.hogander@intel.com>
References: <20240611121243.3366990-1-jouni.hogander@intel.com>
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

Intel_alpm_compute_params doesn't change crtc_state. Let's convert it as
const.

Signed-off-by: Jouni Högander <jouni.hogander@intel.com>
---
 drivers/gpu/drm/i915/display/intel_alpm.c | 9 +++++----
 drivers/gpu/drm/i915/display/intel_alpm.h | 2 +-
 2 files changed, 6 insertions(+), 5 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_alpm.c b/drivers/gpu/drm/i915/display/intel_alpm.c
index 90072f6e3a33..daf2541cbccc 100644
--- a/drivers/gpu/drm/i915/display/intel_alpm.c
+++ b/drivers/gpu/drm/i915/display/intel_alpm.c
@@ -134,8 +134,9 @@ static int _lnl_compute_aux_less_wake_time(int port_clock)
 			    t1 + tcds, 1000);
 }
 
-static int _lnl_compute_aux_less_alpm_params(struct intel_dp *intel_dp,
-					     struct intel_crtc_state *crtc_state)
+static int
+_lnl_compute_aux_less_alpm_params(struct intel_dp *intel_dp,
+				  const struct intel_crtc_state *crtc_state)
 {
 	struct drm_i915_private *i915 = dp_to_i915(intel_dp);
 	int aux_less_wake_time, aux_less_wake_lines, silence_period,
@@ -167,7 +168,7 @@ static int _lnl_compute_aux_less_alpm_params(struct intel_dp *intel_dp,
 }
 
 static bool _lnl_compute_alpm_params(struct intel_dp *intel_dp,
-				     struct intel_crtc_state *crtc_state)
+				     const struct intel_crtc_state *crtc_state)
 {
 	struct drm_i915_private *i915 = dp_to_i915(intel_dp);
 	int check_entry_lines;
@@ -219,7 +220,7 @@ static int io_buffer_wake_time(const struct intel_crtc_state *crtc_state)
 }
 
 bool intel_alpm_compute_params(struct intel_dp *intel_dp,
-				      struct intel_crtc_state *crtc_state)
+			       const struct intel_crtc_state *crtc_state)
 {
 	struct drm_i915_private *i915 = dp_to_i915(intel_dp);
 	int io_wake_lines, io_wake_time, fast_wake_lines, fast_wake_time;
diff --git a/drivers/gpu/drm/i915/display/intel_alpm.h b/drivers/gpu/drm/i915/display/intel_alpm.h
index d4fb60393c91..8c409b10dce6 100644
--- a/drivers/gpu/drm/i915/display/intel_alpm.h
+++ b/drivers/gpu/drm/i915/display/intel_alpm.h
@@ -15,7 +15,7 @@ struct intel_connector;
 
 void intel_alpm_init_dpcd(struct intel_dp *intel_dp);
 bool intel_alpm_compute_params(struct intel_dp *intel_dp,
-			       struct intel_crtc_state *crtc_state);
+			       const struct intel_crtc_state *crtc_state);
 void intel_alpm_lobf_compute_config(struct intel_dp *intel_dp,
 				    struct intel_crtc_state *crtc_state,
 				    struct drm_connector_state *conn_state);
-- 
2.34.1

