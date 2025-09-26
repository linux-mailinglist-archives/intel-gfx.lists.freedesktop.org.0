Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id D1DC8BA2819
	for <lists+intel-gfx@lfdr.de>; Fri, 26 Sep 2025 08:13:21 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 6A11610E33C;
	Fri, 26 Sep 2025 06:13:20 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="EGauUVUg";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.14])
 by gabe.freedesktop.org (Postfix) with ESMTPS id C5BAF10E339;
 Fri, 26 Sep 2025 06:13:18 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1758867199; x=1790403199;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=N5OHd6Rd3VoAeIhJLtHl1uiqiSBH2rQWJfNodbkXK6Y=;
 b=EGauUVUgDhK5/Wr/07a3F+0gVTlSSG6hk1LwU6xS2eiEUbcwZK1kKnq6
 H5ltZsspP7s3aivr0ow5ASE+ujzyVKsxxWqnt7R4YXB/TWUiETI2iA2Sp
 OmirAwA01XpLpLSMlo7YU/T7h70aKPn2795gXSvPowpVynG8K1sUi+tpM
 oQMN+hX/De1ZHMJRvNy0L8o20bZWv4mo3uwsKV0FTKTpGU02TgcwwpH02
 WKbPorYaO+M2K/9Z7CPvGqM736gvXMvOvolg6TAoUslpNe0SEt/JbZEcT
 Q+f/KX/mlrBDwhnVuqb88XIyJspfiZhNCpzprTXbHog9jO7gQ/AXWIPE3 Q==;
X-CSE-ConnectionGUID: xGtY5/97Q0ecopvcsy/e+g==
X-CSE-MsgGUID: f3QjqQ25RKmrgLbdh6BRtw==
X-IronPort-AV: E=McAfee;i="6800,10657,11531"; a="65007605"
X-IronPort-AV: E=Sophos;i="6.17,312,1747724400"; d="scan'208";a="65007605"
Received: from orviesa009.jf.intel.com ([10.64.159.149])
 by orvoesa106.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 25 Sep 2025 23:13:19 -0700
X-CSE-ConnectionGUID: FeSkvpaiROKEqCcLErlHsw==
X-CSE-MsgGUID: 795rbMdUSbKEWNhseH6AIg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.18,294,1751266800"; d="scan'208";a="177092923"
Received: from srr4-3-linux-103-aknautiy.iind.intel.com ([10.223.34.160])
 by orviesa009-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 25 Sep 2025 23:13:18 -0700
From: Ankit Nautiyal <ankit.k.nautiyal@intel.com>
To: intel-gfx@lists.freedesktop.org,
	intel-xe@lists.freedesktop.org
Cc: ville.syrjala@linux.intel.com, Ankit Nautiyal <ankit.k.nautiyal@intel.com>
Subject: [PATCH 11/14] drm/i915/vrr: Use optimized guardband when VRR TG is
 active
Date: Fri, 26 Sep 2025 11:29:32 +0530
Message-ID: <20250926055935.3532568-12-ankit.k.nautiyal@intel.com>
X-Mailer: git-send-email 2.45.2
In-Reply-To: <20250926055935.3532568-1-ankit.k.nautiyal@intel.com>
References: <20250926055935.3532568-1-ankit.k.nautiyal@intel.com>
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

We want to use the optimized/reduced guardband whenever we are using the
VRR timing generator, as the legacy timing generator doesn't need vrr
guardband.

On platforms where the VRR timing generator is always ON, we optimize the
guardband regardless of whether the display is operating in fixed or
variable refresh rate mode.

On platforms where the VRR timing generator is not always ON, we optimize
the guardband only when VRR is enabled.

Add a helper intel_vrr_use_optimized_guardband() to determine if the
optimized/reduced guardband should be used.

Signed-off-by: Ankit Nautiyal <ankit.k.nautiyal@intel.com>
---
 drivers/gpu/drm/i915/display/intel_vrr.c | 7 +++++++
 drivers/gpu/drm/i915/display/intel_vrr.h | 1 +
 2 files changed, 8 insertions(+)

diff --git a/drivers/gpu/drm/i915/display/intel_vrr.c b/drivers/gpu/drm/i915/display/intel_vrr.c
index 5c85d96e0f2c..00af11efe59a 100644
--- a/drivers/gpu/drm/i915/display/intel_vrr.c
+++ b/drivers/gpu/drm/i915/display/intel_vrr.c
@@ -959,3 +959,10 @@ int intel_vrr_compute_guardband(struct intel_crtc_state *crtc_state,
 
 	return guardband;
 }
+
+bool intel_vrr_use_optimized_guardband(const struct intel_crtc_state *crtc_state)
+{
+	struct intel_display *display = to_intel_display(crtc_state);
+
+	return intel_vrr_always_use_vrr_tg(display) || crtc_state->vrr.enable;
+}
diff --git a/drivers/gpu/drm/i915/display/intel_vrr.h b/drivers/gpu/drm/i915/display/intel_vrr.h
index d332e5a0a1c1..0c741c2a5bbd 100644
--- a/drivers/gpu/drm/i915/display/intel_vrr.h
+++ b/drivers/gpu/drm/i915/display/intel_vrr.h
@@ -44,5 +44,6 @@ int intel_vrr_safe_window_start(const struct intel_crtc_state *crtc_state);
 int intel_vrr_vmin_safe_window_end(const struct intel_crtc_state *crtc_state);
 int intel_vrr_compute_guardband(struct intel_crtc_state *crtc_state,
 				struct intel_connector *connector);
+bool intel_vrr_use_optimized_guardband(const struct intel_crtc_state *crtc_state);
 
 #endif /* __INTEL_VRR_H__ */
-- 
2.45.2

