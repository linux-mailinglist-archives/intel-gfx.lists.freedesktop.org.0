Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id BED528C0164
	for <lists+intel-gfx@lfdr.de>; Wed,  8 May 2024 17:48:47 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 32A211130EB;
	Wed,  8 May 2024 15:48:46 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="U1/TLkJh";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.15])
 by gabe.freedesktop.org (Postfix) with ESMTPS id DE9281130BD
 for <intel-gfx@lists.freedesktop.org>; Wed,  8 May 2024 15:48:44 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1715183325; x=1746719325;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=SWe5zljzs+nCEIilkhn/BpBrtyfvbKMqOIksiMX0MOA=;
 b=U1/TLkJhlHmImYc3UX0T+IAwlBX/vxVSc1gKmUDoQoCEo6QmjNIx5wLt
 DB3Lw5Wly4oSbcmrpAq9K8Fu5xyiVscz2IuE6bBf346cbTNm0wjO2hCD3
 CfU6WEvV1BXnRN2w2APM9LzWtrz7HMrQCPSezxMHB9eufn953JSPi70vP
 gnunZiKGOabgSGQRbHgbW/KDV/uGN5BfS/tlqhBT+NQxYtgU+rlUS4/pe
 DqSSVva/VRy7413SjIhuo4qkbEOrEfDRZmQGd+kqOLSFuqooo0jhrjBQB
 j6WYorfVdUuFMu1OLhJM4xIN6Ng76NQcZIgC729IMLTnI3lnCIE2rG6eY A==;
X-CSE-ConnectionGUID: foF5EPvZSW+KdZgRwbyp9w==
X-CSE-MsgGUID: WqEIKaUaQbar1D1hHiiAbw==
X-IronPort-AV: E=McAfee;i="6600,9927,11067"; a="11215390"
X-IronPort-AV: E=Sophos;i="6.08,145,1712646000"; d="scan'208";a="11215390"
Received: from fmviesa007.fm.intel.com ([10.60.135.147])
 by fmvoesa109.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 08 May 2024 08:48:45 -0700
X-CSE-ConnectionGUID: Uj+IaJjGTp6bcHBQSlWO7Q==
X-CSE-MsgGUID: CUbaPNy5RYaZL40lkLvEHQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.08,145,1712646000"; d="scan'208";a="28884914"
Received: from mklonows-mobl1.ger.corp.intel.com (HELO localhost)
 ([10.245.246.105])
 by fmviesa007-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 08 May 2024 08:48:44 -0700
From: Jani Nikula <jani.nikula@intel.com>
To: intel-gfx@lists.freedesktop.org
Cc: jani.nikula@intel.com
Subject: [PATCH 10/10] drm/i915: pass dev_priv explicitly to TRANS_VRR_VSYNC
Date: Wed,  8 May 2024 18:47:56 +0300
Message-Id: <61b464bedfd75a97ca214e066be5417d790ccb26.1715183162.git.jani.nikula@intel.com>
X-Mailer: git-send-email 2.39.2
In-Reply-To: <cover.1715183162.git.jani.nikula@intel.com>
References: <cover.1715183162.git.jani.nikula@intel.com>
MIME-Version: 1.0
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

Avoid the implicit dev_priv local variable use, and pass dev_priv
explicitly to the TRANS_VRR_VSYNC register macro.

Signed-off-by: Jani Nikula <jani.nikula@intel.com>
---
 drivers/gpu/drm/i915/display/intel_vrr.c | 9 ++++++---
 drivers/gpu/drm/i915/i915_reg.h          | 2 +-
 2 files changed, 7 insertions(+), 4 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_vrr.c b/drivers/gpu/drm/i915/display/intel_vrr.c
index 5031b7ac8007..fbfece3f687c 100644
--- a/drivers/gpu/drm/i915/display/intel_vrr.c
+++ b/drivers/gpu/drm/i915/display/intel_vrr.c
@@ -265,7 +265,8 @@ void intel_vrr_enable(const struct intel_crtc_state *crtc_state)
 		       TRANS_PUSH_EN);
 
 	if (HAS_AS_SDP(dev_priv))
-		intel_de_write(dev_priv, TRANS_VRR_VSYNC(cpu_transcoder),
+		intel_de_write(dev_priv,
+			       TRANS_VRR_VSYNC(dev_priv, cpu_transcoder),
 			       VRR_VSYNC_END(crtc_state->vrr.vsync_end) |
 			       VRR_VSYNC_START(crtc_state->vrr.vsync_start));
 
@@ -290,7 +291,8 @@ void intel_vrr_disable(const struct intel_crtc_state *old_crtc_state)
 	intel_de_write(dev_priv, TRANS_PUSH(dev_priv, cpu_transcoder), 0);
 
 	if (HAS_AS_SDP(dev_priv))
-		intel_de_write(dev_priv, TRANS_VRR_VSYNC(cpu_transcoder), 0);
+		intel_de_write(dev_priv,
+		               TRANS_VRR_VSYNC(dev_priv, cpu_transcoder), 0);
 }
 
 void intel_vrr_get_config(struct intel_crtc_state *crtc_state)
@@ -326,7 +328,8 @@ void intel_vrr_get_config(struct intel_crtc_state *crtc_state)
 
 		if (HAS_AS_SDP(dev_priv)) {
 			trans_vrr_vsync =
-				intel_de_read(dev_priv, TRANS_VRR_VSYNC(cpu_transcoder));
+				intel_de_read(dev_priv,
+					      TRANS_VRR_VSYNC(dev_priv, cpu_transcoder));
 			crtc_state->vrr.vsync_start =
 				REG_FIELD_GET(VRR_VSYNC_START_MASK, trans_vrr_vsync);
 			crtc_state->vrr.vsync_end =
diff --git a/drivers/gpu/drm/i915/i915_reg.h b/drivers/gpu/drm/i915/i915_reg.h
index 9d443365b85a..7af0623bb9b5 100644
--- a/drivers/gpu/drm/i915/i915_reg.h
+++ b/drivers/gpu/drm/i915/i915_reg.h
@@ -1322,7 +1322,7 @@
 #define   TRANS_PUSH_SEND		REG_BIT(30)
 
 #define _TRANS_VRR_VSYNC_A		0x60078
-#define TRANS_VRR_VSYNC(trans)		_MMIO_TRANS2(dev_priv, trans, _TRANS_VRR_VSYNC_A)
+#define TRANS_VRR_VSYNC(dev_priv, trans)		_MMIO_TRANS2(dev_priv, trans, _TRANS_VRR_VSYNC_A)
 #define VRR_VSYNC_END_MASK		REG_GENMASK(28, 16)
 #define VRR_VSYNC_END(vsync_end)	REG_FIELD_PREP(VRR_VSYNC_END_MASK, (vsync_end))
 #define VRR_VSYNC_START_MASK		REG_GENMASK(12, 0)
-- 
2.39.2

