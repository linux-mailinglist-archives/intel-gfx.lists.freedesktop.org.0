Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 16E6CB05835
	for <lists+intel-gfx@lfdr.de>; Tue, 15 Jul 2025 12:55:43 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 587F710E37D;
	Tue, 15 Jul 2025 10:55:41 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="Iw2iurTB";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.12])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 2565110E379;
 Tue, 15 Jul 2025 10:55:39 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1752576939; x=1784112939;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=MclruSJMUh8/e3wtTltHSIBtlgF0+JyWQYhvZF5Fg+k=;
 b=Iw2iurTByq8sN0QEXBQMnikZehgWuqWuNxhbAl8VzuI/V5865EIpOjwV
 QAF7+zGOPLIPTGY23EFRcSklbCgA9KY0WkjAOW5sj5LJxAnpwCM6BSEUH
 dcFeFE/78anWGIpWSzanOPQFQ73jUJo+pHZ9eghrNrQZF+4vd04aI0oQp
 jRG7fF+C0XyIFdZlKoy0LbscTlGvxPqzMULMBCijmbm6U8Xu2ouh/I3XB
 G478IC1j/9ZehuRzoBag5/NkfeJgbCC9C4OW5B+IgEzwm1Zn54d1HSww0
 8Wznm5ps4uVVb+U+CRk9e76btyVxwn4gEhOA3xFW8cBVx6FDIkm1yKSGE w==;
X-CSE-ConnectionGUID: iuycrzRrQfS1gOo6L7wrrw==
X-CSE-MsgGUID: kPdeDEr4SAG5wDIEINJwKA==
X-IronPort-AV: E=McAfee;i="6800,10657,11491"; a="58598573"
X-IronPort-AV: E=Sophos;i="6.16,313,1744095600"; d="scan'208";a="58598573"
Received: from orviesa003.jf.intel.com ([10.64.159.143])
 by fmvoesa106.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 15 Jul 2025 03:55:39 -0700
X-CSE-ConnectionGUID: XRleNtEORY+4Pb0iACoAPQ==
X-CSE-MsgGUID: 2dfU8tK2Q/+5QPrpGn9exg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.16,313,1744095600"; d="scan'208";a="161509209"
Received: from bergbenj-mobl1.ger.corp.intel.com (HELO jhogande-mobl1..)
 ([10.245.244.221])
 by ORVIESA003-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 15 Jul 2025 03:55:37 -0700
From: =?UTF-8?q?Jouni=20H=C3=B6gander?= <jouni.hogander@intel.com>
To: intel-gfx@lists.freedesktop.org,
	intel-xe@lists.freedesktop.org
Cc: =?UTF-8?q?Jouni=20H=C3=B6gander?= <jouni.hogander@intel.com>
Subject: [PATCH v4 3/3] drm/i915/psr: Add enable_panel_replay module parameter
Date: Tue, 15 Jul 2025 13:55:09 +0300
Message-ID: <20250715105509.4146806-4-jouni.hogander@intel.com>
X-Mailer: git-send-email 2.43.0
In-Reply-To: <20250715105509.4146806-1-jouni.hogander@intel.com>
References: <20250715105509.4146806-1-jouni.hogander@intel.com>
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

Add new module parameter enable_panel_replay. This can be used to
enable/disable Panel Replay. 0=disabled, 1=enabled. -1=use per-chip default
(default).

Signed-off-by: Jouni Högander <jouni.hogander@intel.com>
---
 drivers/gpu/drm/i915/display/intel_display_params.c | 3 +++
 drivers/gpu/drm/i915/display/intel_display_params.h | 1 +
 drivers/gpu/drm/i915/display/intel_psr.c            | 5 ++++-
 3 files changed, 8 insertions(+), 1 deletion(-)

diff --git a/drivers/gpu/drm/i915/display/intel_display_params.c b/drivers/gpu/drm/i915/display/intel_display_params.c
index 75316247ee8a..2aed110c5b09 100644
--- a/drivers/gpu/drm/i915/display/intel_display_params.c
+++ b/drivers/gpu/drm/i915/display/intel_display_params.c
@@ -120,6 +120,9 @@ intel_display_param_named_unsafe(enable_psr, int, 0400,
 	"(0=disabled, 1=enable up to PSR1, 2=enable up to PSR2) "
 	"Default: -1 (use per-chip default)");
 
+intel_display_param_named_unsafe(enable_panel_replay, int, 0400,
+	"Enable Panel Replay (0=disabled, 1=enabled). Default: -1 (use per-chip default)");
+
 intel_display_param_named(psr_safest_params, bool, 0400,
 	"Replace PSR VBT parameters by the safest and not optimal ones. This "
 	"is helpful to detect if PSR issues are related to bad values set in "
diff --git a/drivers/gpu/drm/i915/display/intel_display_params.h b/drivers/gpu/drm/i915/display/intel_display_params.h
index 784e6bae8615..b01bc5700c52 100644
--- a/drivers/gpu/drm/i915/display/intel_display_params.h
+++ b/drivers/gpu/drm/i915/display/intel_display_params.h
@@ -46,6 +46,7 @@ struct drm_printer;
 	param(bool, enable_dp_mst, true, 0600) \
 	param(int, enable_fbc, -1, 0600) \
 	param(int, enable_psr, -1, 0600) \
+	param(int, enable_panel_replay, -1, 0600) \
 	param(bool, psr_safest_params, false, 0400) \
 	param(bool, enable_psr2_sel_fetch, true, 0400) \
 	param(int, enable_dmc_wl, -1, 0400) \
diff --git a/drivers/gpu/drm/i915/display/intel_psr.c b/drivers/gpu/drm/i915/display/intel_psr.c
index ee1f9a240283..6bd3454bb00e 100644
--- a/drivers/gpu/drm/i915/display/intel_psr.c
+++ b/drivers/gpu/drm/i915/display/intel_psr.c
@@ -259,7 +259,10 @@ static bool sel_update_global_enabled(struct intel_dp *intel_dp)
 
 static bool panel_replay_global_enabled(struct intel_dp *intel_dp)
 {
-	return !(intel_dp->psr.debug & I915_PSR_DEBUG_PANEL_REPLAY_DISABLE);
+	struct intel_display *display = to_intel_display(intel_dp);
+
+	return !(intel_dp->psr.debug & I915_PSR_DEBUG_PANEL_REPLAY_DISABLE) &&
+		display->params.enable_panel_replay;
 }
 
 static u32 psr_irq_psr_error_bit_get(struct intel_dp *intel_dp)
-- 
2.43.0

