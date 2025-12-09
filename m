Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 77A61CAFC62
	for <lists+intel-gfx@lfdr.de>; Tue, 09 Dec 2025 12:31:02 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 0456F10E1CE;
	Tue,  9 Dec 2025 11:31:01 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="EobJc0yf";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.12])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 2C67510E524;
 Tue,  9 Dec 2025 11:31:00 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1765279860; x=1796815860;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=mM9K+UVR3qRZcmYCeWfsaLFUvdpRhilhTpbjK28nsK4=;
 b=EobJc0yf2H5zQqMWWjEv7X5V/N450HiSoThwWOyJYURMrjdtx8qlLZJR
 KXQR9Sa3zC7v1pa5zA4ZLsPHLlTY4baXmHRVO+UE+rGMSJi5FtzUKd+Hu
 z3BYOI1KW6F1ncLOhAZv2Jj3l01XYfmBEghZat5gFixwj7/FJIs/FI4KB
 xFXrkPiVP3F5luP1YylGwOhl2J09gVugez44gf6TfoL83fp5AgB8lNOWe
 1iBXMt2kJGU/tS9y9aONbn5SU1OVmuQ0zv6QBqdSGsoCoe7NRmF+kqe/h
 /UJ2jVoaxXzmMCqUE+n0567zV2g5Ef8xXv+ZFC/WPgElNpcAwXRB5izqY g==;
X-CSE-ConnectionGUID: KusiFuhLTHK74Nlbi+/FAw==
X-CSE-MsgGUID: kbIo6oa3SwKHWprMVHiq1A==
X-IronPort-AV: E=McAfee;i="6800,10657,11636"; a="78699649"
X-IronPort-AV: E=Sophos;i="6.20,261,1758610800"; d="scan'208";a="78699649"
Received: from orviesa007.jf.intel.com ([10.64.159.147])
 by orvoesa104.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 09 Dec 2025 03:31:00 -0800
X-CSE-ConnectionGUID: rcc4t38iRqmaRKjPc3PZPg==
X-CSE-MsgGUID: P6t+rW8bQYSaoFx/jkuMdg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.20,261,1758610800"; d="scan'208";a="196213366"
Received: from dibin-nuc7i7bnh.iind.intel.com ([10.190.239.19])
 by orviesa007-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 09 Dec 2025 03:30:58 -0800
From: Dibin Moolakadan Subrahmanian <dibin.moolakadan.subrahmanian@intel.com>
To: intel-gfx@lists.freedesktop.org,
	intel-xe@lists.freedesktop.org
Cc: animesh.manna@intel.com, uma.shankar@intel.com, imre.deak@intel.com,
 jouni.hogander@intel.com
Subject: [PATCH 5/9] drm/i915/display: Track DC3CO enable source
Date: Tue,  9 Dec 2025 17:03:28 +0530
Message-ID: <20251209113332.2770263-6-dibin.moolakadan.subrahmanian@intel.com>
X-Mailer: git-send-email 2.43.0
In-Reply-To: <20251209113332.2770263-1-dibin.moolakadan.subrahmanian@intel.com>
References: <20251209113332.2770263-1-dibin.moolakadan.subrahmanian@intel.com>
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

Introduce a bitmask enum intel_dc3co_source to record which display
features (PSR2, ALPM, LOBF) contribute to allowing DC3CO entry.
The source tracking is added here and will be integrated into the DC3CO
allow logic in follow-up commits.
Signed-off-by: Dibin Moolakadan Subrahmanian <dibin.moolakadan.subrahmanian@intel.com>
---
 drivers/gpu/drm/i915/display/intel_display.c       | 11 +++++++++++
 drivers/gpu/drm/i915/display/intel_display.h       |  4 +++-
 drivers/gpu/drm/i915/display/intel_display_core.h  |  1 +
 drivers/gpu/drm/i915/display/intel_display_power.h | 10 ++++++++++
 4 files changed, 25 insertions(+), 1 deletion(-)

diff --git a/drivers/gpu/drm/i915/display/intel_display.c b/drivers/gpu/drm/i915/display/intel_display.c
index 205f55a87736..b14a1c9f80bd 100644
--- a/drivers/gpu/drm/i915/display/intel_display.c
+++ b/drivers/gpu/drm/i915/display/intel_display.c
@@ -6300,6 +6300,16 @@ bool intel_dc3co_allowed(struct intel_display *display)
 	return display->power.dc3co_allow;
 }
 
+void intel_dc3co_source_set(struct intel_display *display, enum intel_dc3co_source source)
+{
+	display->power.dc3co_source |= source;
+}
+
+void intel_dc3co_source_unset(struct intel_display *display, enum intel_dc3co_source source)
+{
+	display->power.dc3co_source &= ~source;
+}
+
 static bool intel_dc3co_port_pipe_compatible(struct intel_dp *intel_dp,
 					     const struct intel_crtc_state *crtc_state)
 {
@@ -6330,6 +6340,7 @@ static void intel_dc3co_allow_check(struct intel_atomic_state *state)
 	bool allow = true;
 
 	display->power.dc3co_allow = 0;
+	intel_dc3co_source_unset(display, DC3CO_SOURCE_ALL);
 
 	if ((power_domains->allowed_dc_mask & DC_STATE_EN_UPTO_DC3CO) != DC_STATE_EN_UPTO_DC3CO)
 		return;
diff --git a/drivers/gpu/drm/i915/display/intel_display.h b/drivers/gpu/drm/i915/display/intel_display.h
index 97987f082560..87bbf1f66209 100644
--- a/drivers/gpu/drm/i915/display/intel_display.h
+++ b/drivers/gpu/drm/i915/display/intel_display.h
@@ -46,6 +46,7 @@ struct intel_link_m_n;
 struct intel_plane;
 struct intel_plane_state;
 struct intel_power_domain_mask;
+enum intel_dc3co_source;
 
 #define pipe_name(p) ((p) + 'A')
 
@@ -561,5 +562,6 @@ bool assert_port_valid(struct intel_display *display, enum port port);
 bool intel_scanout_needs_vtd_wa(struct intel_display *display);
 int intel_crtc_num_joined_pipes(const struct intel_crtc_state *crtc_state);
 bool intel_dc3co_allowed(struct intel_display *display);
-
+void intel_dc3co_source_set(struct intel_display *display, enum intel_dc3co_source source);
+void intel_dc3co_source_unset(struct intel_display *display, enum intel_dc3co_source source);
 #endif
diff --git a/drivers/gpu/drm/i915/display/intel_display_core.h b/drivers/gpu/drm/i915/display/intel_display_core.h
index fa567c95029c..4ce34c567dbd 100644
--- a/drivers/gpu/drm/i915/display/intel_display_core.h
+++ b/drivers/gpu/drm/i915/display/intel_display_core.h
@@ -541,6 +541,7 @@ struct intel_display {
 
 		/* mark dc3co entry is allowed*/
 		bool dc3co_allow;
+		u32 dc3co_source;
 	} power;
 
 	struct {
diff --git a/drivers/gpu/drm/i915/display/intel_display_power.h b/drivers/gpu/drm/i915/display/intel_display_power.h
index d616d5d09cbe..dde07f931963 100644
--- a/drivers/gpu/drm/i915/display/intel_display_power.h
+++ b/drivers/gpu/drm/i915/display/intel_display_power.h
@@ -131,6 +131,16 @@ struct intel_power_domain_mask {
 	DECLARE_BITMAP(bits, POWER_DOMAIN_NUM);
 };
 
+enum intel_dc3co_source {
+	DC3CO_SOURCE_NONE = 0,
+	DC3CO_SOURCE_PSR2 = BIT(0),
+	DC3CO_SOURCE_ALPM = BIT(1),
+	DC3CO_SOURCE_LOBF = BIT(2),
+	DC3CO_SOURCE_ALL  = DC3CO_SOURCE_PSR2 |
+			    DC3CO_SOURCE_ALPM |
+			    DC3CO_SOURCE_LOBF,
+};
+
 struct i915_power_domains {
 	/*
 	 * Power wells needed for initialization at driver init and suspend
-- 
2.43.0

