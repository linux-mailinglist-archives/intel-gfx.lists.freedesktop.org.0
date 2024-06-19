Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 9173190E359
	for <lists+intel-gfx@lfdr.de>; Wed, 19 Jun 2024 08:22:14 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id CE9BE10E8A4;
	Wed, 19 Jun 2024 06:22:12 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="gjS4unfQ";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.9])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 7621A10E8A4
 for <intel-gfx@lists.freedesktop.org>; Wed, 19 Jun 2024 06:22:11 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1718778131; x=1750314131;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=2zEBqKSlqtNXEqvES8K4yMOMeEsxr/OQg7rrwQh7ZWg=;
 b=gjS4unfQ76wLWU78uqHSg+GxB/vPOgH8E9M6qTZa1xUvSgvPIt/d7EnJ
 kndvwJUMvwn6FtsAvEfucCA1ZYxk9FNqbRVqr8mCtvAdeKULTlx/GjVH6
 tAxeigD328pHzmVYyfEXN5a8Oh/vIBbcyYjcpsDHUpk9KCTfYcjeGM5Gw
 EQOCGGu3/XiiEgZbfScYeAJ1uLUTtbfKoy/7WRwPk16a5BsRK4Wk516Q2
 QVKeWYJaM/G0AEfXEAov+uJBkpTzww5/7+OLX5kox465US85DlSKvk6UE
 cwfpk1kJct9Tjq+T+ssvNSizQtcmKtnlEzjHvhKjW/vXyqs2ERhZTgRQv Q==;
X-CSE-ConnectionGUID: hVnchhAQQMu+Yjhejxgi1Q==
X-CSE-MsgGUID: /943P8KDTpi7KN/KghE89w==
X-IronPort-AV: E=McAfee;i="6700,10204,11107"; a="26377388"
X-IronPort-AV: E=Sophos;i="6.08,249,1712646000"; d="scan'208";a="26377388"
Received: from fmviesa009.fm.intel.com ([10.60.135.149])
 by fmvoesa103.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 18 Jun 2024 23:22:11 -0700
X-CSE-ConnectionGUID: IaIv//EiRGyuZMcPKrEjYQ==
X-CSE-MsgGUID: wvunTHKVQrKXanNAZj2W/Q==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.08,249,1712646000"; d="scan'208";a="41906009"
Received: from unknown (HELO jhogande-mobl1..) ([10.245.245.109])
 by fmviesa009-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 18 Jun 2024 23:22:10 -0700
From: =?UTF-8?q?Jouni=20H=C3=B6gander?= <jouni.hogander@intel.com>
To: intel-gfx@lists.freedesktop.org
Cc: animesh.manna@intel.com, mika.kahola@intel.com,
 =?UTF-8?q?Jouni=20H=C3=B6gander?= <jouni.hogander@intel.com>
Subject: [PATCH v9 07/11] drm/i915/alpm: Make crtc_state as const in
 intel_alpm_compute_params
Date: Wed, 19 Jun 2024 09:21:27 +0300
Message-Id: <20240619062131.4021196-8-jouni.hogander@intel.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20240619062131.4021196-1-jouni.hogander@intel.com>
References: <20240619062131.4021196-1-jouni.hogander@intel.com>
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
index c7092af7da33..866b3b409c4d 100644
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

