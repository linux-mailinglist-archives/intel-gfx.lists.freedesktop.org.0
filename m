Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 30D61903BA7
	for <lists+intel-gfx@lfdr.de>; Tue, 11 Jun 2024 14:13:36 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id C370810E617;
	Tue, 11 Jun 2024 12:13:32 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="Xo8JpG28";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.10])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 0AA3010E60D
 for <intel-gfx@lists.freedesktop.org>; Tue, 11 Jun 2024 12:13:29 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1718108009; x=1749644009;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=2icYNo8y5DbI1/LRDkNQCuJfSTQheiIejSfY03M3p7I=;
 b=Xo8JpG28sNX8J85/GjbQej0XkqMR4Iik4/+fVVAl+DODMkcR3MH2qcKR
 TIn/dYjw9zD754uUqT8wH/GU/jjJfZb0MN1MnkGuZ8g2pl5fpZKtp9V7R
 7XNuHZdp8klfnYkJkEwx9lCVkUa5em8qMJqUxQNmD3Ng6jMfglhXDdo4y
 Tdbf89MqCbs2Ne8Q4AzNEySRHWIRIFspBpsNbkzKcTs2AIhoKFnLxdVQw
 m6GedA0Hdebyd/fw1MLjEIDgJPiWO7F/yf/dojHf7qOwBpudiVWRwh0yD
 m3Nce2WXjaaXx2UuWBqq+XzpMjxda96J/8u1FTyHFHMpgJYjvSBtXvWcn g==;
X-CSE-ConnectionGUID: 1j+MiRKzSIyu6zJJIEWrbA==
X-CSE-MsgGUID: Ixu0aSv2T+CErjQEKwI+Tw==
X-IronPort-AV: E=McAfee;i="6600,9927,11099"; a="32296868"
X-IronPort-AV: E=Sophos;i="6.08,230,1712646000"; d="scan'208";a="32296868"
Received: from orviesa007.jf.intel.com ([10.64.159.147])
 by orvoesa102.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 11 Jun 2024 05:13:28 -0700
X-CSE-ConnectionGUID: Jga5qrn9R5+t3H02H0m3BQ==
X-CSE-MsgGUID: xoY36590Qfi6KZBeYM1VEg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.08,230,1712646000"; d="scan'208";a="40118783"
Received: from dalessan-mobl3.ger.corp.intel.com (HELO jhogande-mobl1..)
 ([10.245.245.164])
 by orviesa007-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 11 Jun 2024 05:13:26 -0700
From: =?UTF-8?q?Jouni=20H=C3=B6gander?= <jouni.hogander@intel.com>
To: intel-gfx@lists.freedesktop.org
Cc: animesh.manna@intel.com, mika.kahola@intel.com,
 =?UTF-8?q?Jouni=20H=C3=B6gander?= <jouni.hogander@intel.com>
Subject: [PATCH v7 15/18] drm/i915/psr: Disable Panel Replay if PSR mode is
 set via module parameter
Date: Tue, 11 Jun 2024 15:12:40 +0300
Message-Id: <20240611121243.3366990-16-jouni.hogander@intel.com>
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

If enable_psr module parameter is set as disabled, PSR1 or PSR2: Panel
Replay is disabled.

Signed-off-by: Jouni Högander <jouni.hogander@intel.com>
---
 .../gpu/drm/i915/display/intel_display_params.c    |  3 +--
 drivers/gpu/drm/i915/display/intel_psr.c           | 14 ++++++++++++++
 2 files changed, 15 insertions(+), 2 deletions(-)

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
index bf34f26fa528..ad13324b4781 100644
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
@@ -1529,6 +1538,11 @@ _panel_replay_compute_config(struct intel_dp *intel_dp,
 	if (!CAN_PANEL_REPLAY(intel_dp))
 		return false;
 
+	if (!panel_replay_global_enabled(intel_dp)) {
+		drm_dbg_kms(&i915->drm, "Panel Replay disabled by flag\n");
+		return false;
+	}
+
 	if (!intel_dp_is_edp(intel_dp))
 		return true;
 
-- 
2.34.1

