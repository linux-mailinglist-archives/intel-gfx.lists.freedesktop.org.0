Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id E71E79068D6
	for <lists+intel-gfx@lfdr.de>; Thu, 13 Jun 2024 11:33:22 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id B1E3E10E9E3;
	Thu, 13 Jun 2024 09:33:20 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="JYj/FD2R";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.18])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 449ED10E9DE
 for <intel-gfx@lists.freedesktop.org>; Thu, 13 Jun 2024 09:33:18 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1718271198; x=1749807198;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=WyRC3VStDi6vY0Se4E3lEqh58Z7RUzKrmLPAbiYKakk=;
 b=JYj/FD2RJyardDC4s8+XDnEz7p2jAhdsKGkAcrAsbHVQz7GQn1YSdL4b
 GJkI0IGTNvhAZSIKzMUJUEvFWcdCbR8PkYNZQWa4dEXHnRuMWflDhhwgH
 bRwYnSTgqn8GyH0LwDR6hJkK6y4fmXjKRUTxgdvK9hsQ1j9W/3Rm1X9Kt
 dbcKO4kWCoRWd6QfdAc60i/ttcMSKAySdbWHSCkCg/cvCnVDCoDRb6n2h
 3ZvC7oRZcTSpqiSCnMXm/BO8tBfxceeZyZMB2YIjX/at+3tVZVq4Gg8/d
 zsdXx7/3A4Fn0nryiPjlIdveCJ2bOIkMzJzYFknFPuTKEa1+jTBvPJNti Q==;
X-CSE-ConnectionGUID: wlgZ9G9jR6WfEXc9Ae50/w==
X-CSE-MsgGUID: IZG5KZ34TFGH1j69UucT6Q==
X-IronPort-AV: E=McAfee;i="6700,10204,11101"; a="14802520"
X-IronPort-AV: E=Sophos;i="6.08,234,1712646000"; d="scan'208";a="14802520"
Received: from fmviesa005.fm.intel.com ([10.60.135.145])
 by fmvoesa112.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 13 Jun 2024 02:33:18 -0700
X-CSE-ConnectionGUID: yyHr3wHgSlyzLwF3jbRzuA==
X-CSE-MsgGUID: SEF6+rExS1SRulBeJM+R5A==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.08,234,1712646000"; d="scan'208";a="44523467"
Received: from pgcooper-mobl3.ger.corp.intel.com (HELO jhogande-mobl1..)
 ([10.245.244.31])
 by fmviesa005-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 13 Jun 2024 02:33:17 -0700
From: =?UTF-8?q?Jouni=20H=C3=B6gander?= <jouni.hogander@intel.com>
To: intel-gfx@lists.freedesktop.org
Cc: animesh.manna@intel.com, mika.kahola@intel.com,
 =?UTF-8?q?Jouni=20H=C3=B6gander?= <jouni.hogander@intel.com>
Subject: [PATCH v8 16/20] drm/i915/alpm: Make crtc_state as const in
 intel_alpm_compute_params
Date: Thu, 13 Jun 2024 12:32:35 +0300
Message-Id: <20240613093239.1293629-17-jouni.hogander@intel.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20240613093239.1293629-1-jouni.hogander@intel.com>
References: <20240613093239.1293629-1-jouni.hogander@intel.com>
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
index 67848fc1e24d..80fc1ef7552b 100644
--- a/drivers/gpu/drm/i915/display/intel_alpm.c
+++ b/drivers/gpu/drm/i915/display/intel_alpm.c
@@ -135,8 +135,9 @@ static int _lnl_compute_aux_less_wake_time(int port_clock)
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
@@ -168,7 +169,7 @@ static int _lnl_compute_aux_less_alpm_params(struct intel_dp *intel_dp,
 }
 
 static bool _lnl_compute_alpm_params(struct intel_dp *intel_dp,
-				     struct intel_crtc_state *crtc_state)
+				     const struct intel_crtc_state *crtc_state)
 {
 	struct drm_i915_private *i915 = dp_to_i915(intel_dp);
 	int check_entry_lines;
@@ -220,7 +221,7 @@ static int io_buffer_wake_time(const struct intel_crtc_state *crtc_state)
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

