Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id C5870898637
	for <lists+intel-gfx@lfdr.de>; Thu,  4 Apr 2024 13:42:13 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 469EE11B49F;
	Thu,  4 Apr 2024 11:42:11 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="FloeEHLl";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.12])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 093AC11B499;
 Thu,  4 Apr 2024 11:42:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1712230928; x=1743766928;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=aL0N3kBr9I0C43P0zsaPAISV6iJ4pl4pYLiv29wbb68=;
 b=FloeEHLl7h+v1G5qLCIOvfCYsSVWm1rkdraQ47GY4nHXewnt/tAnQBZd
 hNzuuJtn9R0A0k/Er0YumuBeXFRlrhVVAUjMqe0fcvQIrCeyro222vLtT
 yawc9Xm+kFWLxG81c74MINeQgFNP4n3PDnUsKfU4tGurA+1b0VgLlNc3D
 ghKUropEgfZnYKpbct0+72tJjyaPKppfGySgOAaQJcvA7KNnL9OFIsR0s
 lFV7NjEyhC+P/DTagByv0tKvKYQAgXg9FtzNYRxfyW7oeeLFRb34kQ/gz
 VivUif6nZYhotKiFmyyZrOJgDhvBlj9IcN4+Pxs6vaVIjZ32+uHd1cbN5 A==;
X-CSE-ConnectionGUID: 1x38029dTpao4C1RlGJz5A==
X-CSE-MsgGUID: JgZ9SBKkSyqDzU3WFX5PGA==
X-IronPort-AV: E=McAfee;i="6600,9927,11033"; a="11279860"
X-IronPort-AV: E=Sophos;i="6.07,179,1708416000"; d="scan'208";a="11279860"
Received: from orviesa007.jf.intel.com ([10.64.159.147])
 by fmvoesa106.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 04 Apr 2024 04:42:08 -0700
X-CSE-ConnectionGUID: us1AQAxgQkiDwZKYZWP2/g==
X-CSE-MsgGUID: qL+tefdpSK6YLe5P9dD3Zg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.07,178,1708416000"; d="scan'208";a="19199794"
Received: from tsonono-mobl.ger.corp.intel.com (HELO hazy.ger.corp.intel.com)
 ([10.252.41.97])
 by orviesa007-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 04 Apr 2024 04:42:06 -0700
From: Luca Coelho <luciano.coelho@intel.com>
To: intel-gfx@lists.freedesktop.org
Cc: intel-xe@lists.freedesktop.org, uma.shankar@intel.com,
 ville.syrjala@linux.intel.com, jani.nikula@intel.com
Subject: [PATCH v4 3/4] drm/i915/display: add module parameter to enable DMC
 wakelock
Date: Thu,  4 Apr 2024 14:41:46 +0300
Message-Id: <20240404114147.236316-4-luciano.coelho@intel.com>
X-Mailer: git-send-email 2.39.2
In-Reply-To: <20240404114147.236316-1-luciano.coelho@intel.com>
References: <20240404114147.236316-1-luciano.coelho@intel.com>
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

This feature should be disabled by default until properly tested and
mature.  Add a module parameter to enable the feature for testing,
while keeping it disabled by default for now.

Reviewed-by: Uma Shankar <uma.shankar@intel.com>
Signed-off-by: Luca Coelho <luciano.coelho@intel.com>
---
 drivers/gpu/drm/i915/display/intel_display_params.c | 5 +++++
 drivers/gpu/drm/i915/display/intel_display_params.h | 1 +
 drivers/gpu/drm/i915/display/intel_dmc_wl.c         | 6 ++++--
 3 files changed, 10 insertions(+), 2 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_display_params.c b/drivers/gpu/drm/i915/display/intel_display_params.c
index 11e03cfb774d..f40b223cc8a1 100644
--- a/drivers/gpu/drm/i915/display/intel_display_params.c
+++ b/drivers/gpu/drm/i915/display/intel_display_params.c
@@ -116,6 +116,11 @@ intel_display_param_named_unsafe(enable_psr2_sel_fetch, bool, 0400,
 	"(0=disabled, 1=enabled) "
 	"Default: 1");
 
+intel_display_param_named_unsafe(enable_dmc_wl, bool, 0400,
+	"Enable DMC wakelock "
+	"(0=disabled, 1=enabled) "
+	"Default: 0");
+
 __maybe_unused
 static void _param_print_bool(struct drm_printer *p, const char *driver_name,
 			      const char *name, bool val)
diff --git a/drivers/gpu/drm/i915/display/intel_display_params.h b/drivers/gpu/drm/i915/display/intel_display_params.h
index 6206cc51df04..bf8dbbdb20a1 100644
--- a/drivers/gpu/drm/i915/display/intel_display_params.h
+++ b/drivers/gpu/drm/i915/display/intel_display_params.h
@@ -46,6 +46,7 @@ struct drm_i915_private;
 	param(int, enable_psr, -1, 0600) \
 	param(bool, psr_safest_params, false, 0400) \
 	param(bool, enable_psr2_sel_fetch, true, 0400) \
+	param(bool, enable_dmc_wl, false, 0400) \
 
 #define MEMBER(T, member, ...) T member;
 struct intel_display_params {
diff --git a/drivers/gpu/drm/i915/display/intel_dmc_wl.c b/drivers/gpu/drm/i915/display/intel_dmc_wl.c
index 065652fc475c..6f05e377b8b6 100644
--- a/drivers/gpu/drm/i915/display/intel_dmc_wl.c
+++ b/drivers/gpu/drm/i915/display/intel_dmc_wl.c
@@ -114,7 +114,8 @@ static bool intel_dmc_wl_check_range(u32 address)
 static bool __intel_dmc_wl_supported(struct drm_i915_private *i915)
 {
 	if (DISPLAY_VER(i915) < 20 ||
-	    !intel_dmc_has_payload(i915))
+	    !intel_dmc_has_payload(i915) ||
+	    !i915->display.params.enable_dmc_wl)
 		return false;
 
 	return true;
@@ -125,7 +126,8 @@ void intel_dmc_wl_init(struct drm_i915_private *i915)
 	struct intel_dmc_wl *wl = &i915->display.wl;
 
 	/* don't call __intel_dmc_wl_supported(), DMC is not loaded yet */
-	if (DISPLAY_VER(i915) < 20)
+	if (DISPLAY_VER(i915) < 20 ||
+	    !i915->display.params.enable_dmc_wl)
 		return;
 
 	INIT_DELAYED_WORK(&wl->work, intel_dmc_wl_work);
-- 
2.39.2

