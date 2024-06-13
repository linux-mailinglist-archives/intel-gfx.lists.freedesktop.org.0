Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id D99CA9068CB
	for <lists+intel-gfx@lfdr.de>; Thu, 13 Jun 2024 11:33:04 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id E7D6810E9DB;
	Thu, 13 Jun 2024 09:33:01 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="WnMikHrB";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.18])
 by gabe.freedesktop.org (Postfix) with ESMTPS id A8CAC10E9D6
 for <intel-gfx@lists.freedesktop.org>; Thu, 13 Jun 2024 09:32:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1718271180; x=1749807180;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=GyBmFnXAvmVruOLKfEUEer6EMJNZ5gf+4J4S9CkIeVw=;
 b=WnMikHrBFjicKag2XQgsVcBa09bKxT2zW63fTsLbhNb0bUxnOHhpw8E9
 +mB0KIoQ+qSSlaoDf3Ncckor6lHpmKUanQMZZkTNKKSy0PExGPAVGzLB6
 oC8TCR3xPY+MU6sZWRZ640QlI19l0Mt5nMQ6GnOZ1y4V1GagLKREehQaG
 AM4eJDi7wMcaN21LQal+yDPViTNpG+6XglJfCABojfF1NnIHGyNC3pcMg
 y+5cP4EW9QQEDj223KkJmMZjhiwUqYqw3Mrwo66GFWbU34Os7upf1Xj4B
 iIDjGjB5mwyIbj229xffdD1YRCTBUHA3/DcurK+qAlQgBEukk0ZwaCRJK g==;
X-CSE-ConnectionGUID: gs88q/sbSLuOEnviwVwm4w==
X-CSE-MsgGUID: k1qdMP4uQRqtPeeRVJSUHA==
X-IronPort-AV: E=McAfee;i="6700,10204,11101"; a="14802483"
X-IronPort-AV: E=Sophos;i="6.08,234,1712646000"; d="scan'208";a="14802483"
Received: from fmviesa005.fm.intel.com ([10.60.135.145])
 by fmvoesa112.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 13 Jun 2024 02:32:59 -0700
X-CSE-ConnectionGUID: MJ0DjxwfT3y/MePzknMBKw==
X-CSE-MsgGUID: 2kSFYa5ASW2uTs4S1ka9bQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.08,234,1712646000"; d="scan'208";a="44523375"
Received: from pgcooper-mobl3.ger.corp.intel.com (HELO jhogande-mobl1..)
 ([10.245.244.31])
 by fmviesa005-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 13 Jun 2024 02:32:58 -0700
From: =?UTF-8?q?Jouni=20H=C3=B6gander?= <jouni.hogander@intel.com>
To: intel-gfx@lists.freedesktop.org
Cc: animesh.manna@intel.com, mika.kahola@intel.com,
 =?UTF-8?q?Jouni=20H=C3=B6gander?= <jouni.hogander@intel.com>
Subject: [PATCH v8 05/20] drm/i915/psr: Disable Panel Replay if PSR mode is
 set via module parameter
Date: Thu, 13 Jun 2024 12:32:24 +0300
Message-Id: <20240613093239.1293629-6-jouni.hogander@intel.com>
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

If enable_psr module parameter is set as disabled, PSR1 or PSR2: Panel
Replay is disabled.

Signed-off-by: Jouni Högander <jouni.hogander@intel.com>
---
 .../gpu/drm/i915/display/intel_display_params.c  |  3 +--
 drivers/gpu/drm/i915/display/intel_psr.c         | 16 ++++++++++++++++
 2 files changed, 17 insertions(+), 2 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_display_params.c b/drivers/gpu/drm/i915/display/intel_display_params.c
index aebdb7b59dbf..79107607a6ff 100644
--- a/drivers/gpu/drm/i915/display/intel_display_params.c
+++ b/drivers/gpu/drm/i915/display/intel_display_params.c
@@ -106,8 +106,7 @@ intel_display_param_named_unsafe(enable_fbc, int, 0400,
 
 intel_display_param_named_unsafe(enable_psr, int, 0400,
 	"Enable PSR "
-	"(0=disabled, 1=enable up to PSR1 and Panel Replay full frame update, "
-	"2=enable up to PSR2 and Panel Replay Selective Update) "
+	"(0=disabled, 1=enable up to PSR1, 2=enable up to PSR2) "
 	"Default: -1 (use per-chip default)");
 
 intel_display_param_named(psr_safest_params, bool, 0400,
diff --git a/drivers/gpu/drm/i915/display/intel_psr.c b/drivers/gpu/drm/i915/display/intel_psr.c
index f8e746e476e9..0df557676e08 100644
--- a/drivers/gpu/drm/i915/display/intel_psr.c
+++ b/drivers/gpu/drm/i915/display/intel_psr.c
@@ -235,6 +235,15 @@ static bool psr2_global_enabled(struct intel_dp *intel_dp)
 	}
 }
 
+static bool panel_replay_global_enabled(struct intel_dp *intel_dp)
+{
+	struct drm_i915_private *i915 = dp_to_i915(intel_dp);
+
+	if (i915->display.params.enable_psr != -1)
+		return false;
+	return true;
+}
+
 static u32 psr_irq_psr_error_bit_get(struct intel_dp *intel_dp)
 {
 	struct drm_i915_private *dev_priv = dp_to_i915(intel_dp);
@@ -1457,9 +1466,16 @@ static bool _psr_compute_config(struct intel_dp *intel_dp,
 
 static bool _panel_replay_compute_config(struct intel_dp *intel_dp)
 {
+	struct drm_i915_private *i915 = dp_to_i915(intel_dp);
+
 	if (!CAN_PANEL_REPLAY(intel_dp))
 		return false;
 
+	if (!panel_replay_global_enabled(intel_dp)) {
+		drm_dbg_kms(&i915->drm, "Panel Replay disabled by flag\n");
+		return false;
+	}
+
 	return true;
 }
 
-- 
2.34.1

