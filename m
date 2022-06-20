Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id D3AC755133B
	for <lists+intel-gfx@lfdr.de>; Mon, 20 Jun 2022 10:49:51 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 2539D10E5FC;
	Mon, 20 Jun 2022 08:49:50 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga17.intel.com (mga17.intel.com [192.55.52.151])
 by gabe.freedesktop.org (Postfix) with ESMTPS id A5B1D10E5E8
 for <intel-gfx@lists.freedesktop.org>; Mon, 20 Jun 2022 08:49:48 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1655714988; x=1687250988;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=PXbTlnwRusnjQwfqwoVZiVFyj6ode+wCNVQN89YH0l8=;
 b=nbYIqASZwAKL4YBT2frUZ+szMNXvlcxeYdttFmfq0BlTV3ki3svcZOnq
 q4RlobFc8TBh1AT0HLWzk5kJvkFrsmvsLIM61RA509wufBvlHIVebx5Km
 9RqaNl/EQxqzhRUZcejIy9gak2VWhSVTR6CWrRDeCXmJ8b6YceJjCoo4V
 ZPBWqnAVr8eWUDU5gH7angrS+7KlvAgMmtg2x3Z9SSx8NQeEtTFG/ZA1t
 FEh4oXRojdub3Kj6NK77BdPXpjEL+TcslPv6umGKqxwbRf/w9CK3hDKN0
 6xrMV70HiAkpQA+n5Xez36b8nysd6SleQqvjLIW/xZJPSpgk8LY+A2Emo Q==;
X-IronPort-AV: E=McAfee;i="6400,9594,10380"; a="260273590"
X-IronPort-AV: E=Sophos;i="5.92,306,1650956400"; d="scan'208";a="260273590"
Received: from fmsmga007.fm.intel.com ([10.253.24.52])
 by fmsmga107.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 20 Jun 2022 01:49:48 -0700
X-IronPort-AV: E=Sophos;i="5.92,306,1650956400"; d="scan'208";a="591080100"
Received: from hkanchar-mobl.gar.corp.intel.com (HELO localhost)
 ([10.252.36.6])
 by fmsmga007-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 20 Jun 2022 01:49:47 -0700
From: Jani Nikula <jani.nikula@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Mon, 20 Jun 2022 11:49:32 +0300
Message-Id: <585c26a98650514c3a19539bf41c8b3cad067d0e.1655712106.git.jani.nikula@intel.com>
X-Mailer: git-send-email 2.30.2
In-Reply-To: <cover.1655712106.git.jani.nikula@intel.com>
References: <cover.1655712106.git.jani.nikula@intel.com>
MIME-Version: 1.0
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH 12/16] drm/i915: move has_hdcp to runtime info
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
Cc: jani.nikula@intel.com
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

If it's	modified runtime, it's runtime info.

Signed-off-by: Jani Nikula <jani.nikula@intel.com>
---
 drivers/gpu/drm/i915/display/intel_hdcp.c | 4 ++--
 drivers/gpu/drm/i915/i915_pci.c           | 6 +++---
 drivers/gpu/drm/i915/intel_device_info.c  | 4 +++-
 drivers/gpu/drm/i915/intel_device_info.h  | 3 ++-
 4 files changed, 10 insertions(+), 7 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_hdcp.c b/drivers/gpu/drm/i915/display/intel_hdcp.c
index 8ea66a2e1b09..123aecde7a2a 100644
--- a/drivers/gpu/drm/i915/display/intel_hdcp.c
+++ b/drivers/gpu/drm/i915/display/intel_hdcp.c
@@ -1109,8 +1109,8 @@ static void intel_hdcp_prop_work(struct work_struct *work)
 
 bool is_hdcp_supported(struct drm_i915_private *dev_priv, enum port port)
 {
-	return INTEL_INFO(dev_priv)->display.has_hdcp &&
-			(DISPLAY_VER(dev_priv) >= 12 || port < PORT_E);
+	return RUNTIME_INFO(dev_priv)->has_hdcp &&
+		(DISPLAY_VER(dev_priv) >= 12 || port < PORT_E);
 }
 
 static int
diff --git a/drivers/gpu/drm/i915/i915_pci.c b/drivers/gpu/drm/i915/i915_pci.c
index e9e036bec732..11c236b6a017 100644
--- a/drivers/gpu/drm/i915/i915_pci.c
+++ b/drivers/gpu/drm/i915/i915_pci.c
@@ -652,7 +652,7 @@ static const struct intel_device_info chv_info = {
 	GEN9_DEFAULT_PAGE_SIZES, \
 	.display.has_dmc = 1, \
 	.has_gt_uc = 1, \
-	.display.has_hdcp = 1, \
+	.__runtime.has_hdcp = 1, \
 	.display.has_ipc = 1, \
 	.display.has_psr = 1, \
 	.display.has_psr_hw_tracking = 1, \
@@ -704,7 +704,7 @@ static const struct intel_device_info skl_gt4_info = {
 	.display.has_ddi = 1, \
 	.display.has_fpga_dbg = 1, \
 	.__runtime.fbc_mask = BIT(INTEL_FBC_A), \
-	.display.has_hdcp = 1, \
+	.__runtime.has_hdcp = 1, \
 	.display.has_psr = 1, \
 	.display.has_psr_hw_tracking = 1, \
 	.has_runtime_pm = 1, \
@@ -961,7 +961,7 @@ static const struct intel_device_info adl_s_info = {
 	.display.has_dsc = 1,							\
 	.__runtime.fbc_mask = BIT(INTEL_FBC_A),					\
 	.display.has_fpga_dbg = 1,						\
-	.display.has_hdcp = 1,							\
+	.__runtime.has_hdcp = 1,						\
 	.display.has_hotplug = 1,						\
 	.display.has_ipc = 1,							\
 	.display.has_psr = 1,							\
diff --git a/drivers/gpu/drm/i915/intel_device_info.c b/drivers/gpu/drm/i915/intel_device_info.c
index 166d1d74b885..26c883c05e44 100644
--- a/drivers/gpu/drm/i915/intel_device_info.c
+++ b/drivers/gpu/drm/i915/intel_device_info.c
@@ -125,6 +125,8 @@ void intel_device_info_print(const struct intel_device_info *info,
 	DEV_INFO_DISPLAY_FOR_EACH_FLAG(PRINT_FLAG);
 #undef PRINT_FLAG
 
+	drm_printf(p, "has_hdcp: %s\n", str_yes_no(runtime->has_hdcp));
+
 	drm_printf(p, "rawclk rate: %u kHz\n", runtime->rawclk_freq);
 }
 
@@ -380,7 +382,7 @@ void intel_device_info_runtime_init(struct drm_i915_private *dev_priv)
 		}
 
 		if (dfsm & SKL_DFSM_DISPLAY_HDCP_DISABLE)
-			info->display.has_hdcp = 0;
+			runtime->has_hdcp = 0;
 
 		if (dfsm & SKL_DFSM_DISPLAY_PM_DISABLE)
 			runtime->fbc_mask = 0;
diff --git a/drivers/gpu/drm/i915/intel_device_info.h b/drivers/gpu/drm/i915/intel_device_info.h
index d78fe045a499..76317db394b7 100644
--- a/drivers/gpu/drm/i915/intel_device_info.h
+++ b/drivers/gpu/drm/i915/intel_device_info.h
@@ -180,7 +180,6 @@ enum intel_ppgtt_type {
 	func(has_dsc); \
 	func(has_fpga_dbg); \
 	func(has_gmch); \
-	func(has_hdcp); \
 	func(has_hotplug); \
 	func(has_hti); \
 	func(has_ipc); \
@@ -235,6 +234,8 @@ struct intel_runtime_info {
 		u8 num_scalers[I915_MAX_PIPES];
 
 		u8 fbc_mask;
+
+		bool has_hdcp;
 	};
 };
 
-- 
2.30.2

