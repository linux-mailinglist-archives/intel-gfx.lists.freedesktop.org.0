Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id B40518A2B69
	for <lists+intel-gfx@lfdr.de>; Fri, 12 Apr 2024 11:42:16 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 0870910F55A;
	Fri, 12 Apr 2024 09:42:15 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="m4dE/pOA";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.15])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 1209810F559;
 Fri, 12 Apr 2024 09:42:07 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1712914927; x=1744450927;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=W6C7lFSI0GLlIn0oBOVorj4ypTbrtX53MAXREDB736A=;
 b=m4dE/pOA9HJC3pf9xleR2DDVgdiIbZgAqO+pKUZQCLOoEUysw4MtYB52
 DvMbBhfFVxM3NbB9s4ZkGo/y4Z6bum3gfxg+4EffWMv1BhlW2g8zwJ2fP
 k/TVJ37eu16CQ0sqsWFk/2B0ArKHW7nN+Ptybl7l3locaQxrMQq8z9FLF
 PddUJkMap2fsoYtenZ4zmHLGQWP2AoieIbrBFM2Jw3ejdwIzTpO0Em0ak
 N8+NYK4Xuha7/OfwEpoHYm4PPG5xSfyT7AfCW8n1DV2bZ2H0YYuxzSY0T
 REUex5AtLSuoH+JgGQ9xQoQGMpsnUiSKUM9ifzsU3ZDREQwlAMJtyOoNL w==;
X-CSE-ConnectionGUID: U03oisZKQ2qNoPJOxt9IRg==
X-CSE-MsgGUID: /cT/bUJgSm2K91K7F+Fj8A==
X-IronPort-AV: E=McAfee;i="6600,9927,11041"; a="12156400"
X-IronPort-AV: E=Sophos;i="6.07,195,1708416000"; d="scan'208";a="12156400"
Received: from fmviesa004.fm.intel.com ([10.60.135.144])
 by orvoesa107.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 12 Apr 2024 02:42:07 -0700
X-CSE-ConnectionGUID: eQKM8EatTdWtECnp6s/B0Q==
X-CSE-MsgGUID: oHYKpel8SU+P6K2iiXM3JQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.07,195,1708416000"; d="scan'208";a="25841384"
Received: from swilyman-mobl1.ger.corp.intel.com (HELO
 hazy.ger.corp.intel.com) ([10.251.215.209])
 by fmviesa004-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 12 Apr 2024 02:42:05 -0700
From: Luca Coelho <luciano.coelho@intel.com>
To: intel-gfx@lists.freedesktop.org
Cc: intel-xe@lists.freedesktop.org, uma.shankar@intel.com,
 ville.syrjala@linux.intel.com, jani.nikula@intel.com
Subject: [PATCH v5 3/4] drm/i915/display: add module parameter to enable DMC
 wakelock
Date: Fri, 12 Apr 2024 12:41:47 +0300
Message-Id: <20240412094148.808179-4-luciano.coelho@intel.com>
X-Mailer: git-send-email 2.39.2
In-Reply-To: <20240412094148.808179-1-luciano.coelho@intel.com>
References: <20240412094148.808179-1-luciano.coelho@intel.com>
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
index bc3f3d6dfe10..30f8905fae41 100644
--- a/drivers/gpu/drm/i915/display/intel_dmc_wl.c
+++ b/drivers/gpu/drm/i915/display/intel_dmc_wl.c
@@ -109,7 +109,8 @@ static bool intel_dmc_wl_check_range(u32 address)
 static bool __intel_dmc_wl_supported(struct drm_i915_private *i915)
 {
 	if (DISPLAY_VER(i915) < 20 ||
-	    !intel_dmc_has_payload(i915))
+	    !intel_dmc_has_payload(i915) ||
+	    !i915->display.params.enable_dmc_wl)
 		return false;
 
 	return true;
@@ -120,7 +121,8 @@ void intel_dmc_wl_init(struct drm_i915_private *i915)
 	struct intel_dmc_wl *wl = &i915->display.wl;
 
 	/* don't call __intel_dmc_wl_supported(), DMC is not loaded yet */
-	if (DISPLAY_VER(i915) < 20)
+	if (DISPLAY_VER(i915) < 20 ||
+	    !i915->display.params.enable_dmc_wl)
 		return;
 
 	INIT_DELAYED_WORK(&wl->work, intel_dmc_wl_work);
-- 
2.39.2

