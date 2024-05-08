Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id BD9C18C0161
	for <lists+intel-gfx@lfdr.de>; Wed,  8 May 2024 17:48:34 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 095F71126DB;
	Wed,  8 May 2024 15:48:33 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="g9OKbyRm";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.10])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 784081126DB
 for <intel-gfx@lists.freedesktop.org>; Wed,  8 May 2024 15:48:31 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1715183311; x=1746719311;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=2DtiU+3wf4v3iXkL3UMDQXsu831it//HO/25tScKmsU=;
 b=g9OKbyRmvQxr9/ILxjdKQYI+n+oGe0PEnl6IYapfVipgsXuZliXqY+cw
 7HljuaPuYVRL+7fnLG3/Uije2yTbvIeClmsO9QB+bl3a6r0lf5u7+rDka
 7DA9ohioZP5SwDn1vdog/ZjsBvjgkl4HDAAJHT/eNepSNySc/6csedVnn
 RhVZZe7wFFCm441yk3Lj8DaplDERJiF4VHoJ8ZWCi5xB/9O3RhOJyrSt8
 52Hbkz8PqftSERcI6Gbxwd3hm68yrynM1sC4GkcYt+wEglM9XzcYXJs1A
 nq6aQ8poYotZaEzgJ8isHkLgkVYxbMJ6r8qByo8R6az61IMr/MJbNleFf Q==;
X-CSE-ConnectionGUID: bOsKKi3YRDySQutXhj3DYA==
X-CSE-MsgGUID: DuW+i8IdTdWRWvAwMhDs0w==
X-IronPort-AV: E=McAfee;i="6600,9927,11067"; a="28532136"
X-IronPort-AV: E=Sophos;i="6.08,145,1712646000"; d="scan'208";a="28532136"
Received: from orviesa007.jf.intel.com ([10.64.159.147])
 by orvoesa102.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 08 May 2024 08:48:31 -0700
X-CSE-ConnectionGUID: vJ5OexJrTGCitk6J2xdAtw==
X-CSE-MsgGUID: tfV7i3FKRoG2udr4om1Jhw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.08,145,1712646000"; d="scan'208";a="29447143"
Received: from mklonows-mobl1.ger.corp.intel.com (HELO localhost)
 ([10.245.246.105])
 by orviesa007-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 08 May 2024 08:48:30 -0700
From: Jani Nikula <jani.nikula@intel.com>
To: intel-gfx@lists.freedesktop.org
Cc: jani.nikula@intel.com
Subject: [PATCH 07/10] drm/i915: pass dev_priv explicitly to TRANS_VRR_FLIPLINE
Date: Wed,  8 May 2024 18:47:53 +0300
Message-Id: <fd8b6a7c71ba908a55a7b40dc54a1d4cf920056c.1715183162.git.jani.nikula@intel.com>
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
explicitly to the TRANS_VRR_FLIPLINE register macro.

Signed-off-by: Jani Nikula <jani.nikula@intel.com>
---
 drivers/gpu/drm/i915/display/intel_vrr.c | 6 ++++--
 drivers/gpu/drm/i915/i915_reg.h          | 2 +-
 2 files changed, 5 insertions(+), 3 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_vrr.c b/drivers/gpu/drm/i915/display/intel_vrr.c
index 05cbd6e4fc60..e7709b06b92c 100644
--- a/drivers/gpu/drm/i915/display/intel_vrr.c
+++ b/drivers/gpu/drm/i915/display/intel_vrr.c
@@ -224,7 +224,8 @@ void intel_vrr_set_transcoder_timings(const struct intel_crtc_state *crtc_state)
 		       crtc_state->vrr.vmax - 1);
 	intel_de_write(dev_priv, TRANS_VRR_CTL(dev_priv, cpu_transcoder),
 		       trans_vrr_ctl(crtc_state));
-	intel_de_write(dev_priv, TRANS_VRR_FLIPLINE(cpu_transcoder), crtc_state->vrr.flipline - 1);
+	intel_de_write(dev_priv, TRANS_VRR_FLIPLINE(dev_priv, cpu_transcoder),
+		       crtc_state->vrr.flipline - 1);
 }
 
 void intel_vrr_send_push(const struct intel_crtc_state *crtc_state)
@@ -311,7 +312,8 @@ void intel_vrr_get_config(struct intel_crtc_state *crtc_state)
 				REG_FIELD_GET(VRR_CTL_PIPELINE_FULL_MASK, trans_vrr_ctl);
 
 	if (trans_vrr_ctl & VRR_CTL_FLIP_LINE_EN) {
-		crtc_state->vrr.flipline = intel_de_read(dev_priv, TRANS_VRR_FLIPLINE(cpu_transcoder)) + 1;
+		crtc_state->vrr.flipline = intel_de_read(dev_priv,
+							 TRANS_VRR_FLIPLINE(dev_priv, cpu_transcoder)) + 1;
 		crtc_state->vrr.vmax = intel_de_read(dev_priv,
 						     TRANS_VRR_VMAX(dev_priv, cpu_transcoder)) + 1;
 		crtc_state->vrr.vmin = intel_de_read(dev_priv,
diff --git a/drivers/gpu/drm/i915/i915_reg.h b/drivers/gpu/drm/i915/i915_reg.h
index 745ef9a32d88..9f63d68eb9a0 100644
--- a/drivers/gpu/drm/i915/i915_reg.h
+++ b/drivers/gpu/drm/i915/i915_reg.h
@@ -1302,7 +1302,7 @@
 #define _TRANS_VRR_FLIPLINE_B		0x61438
 #define _TRANS_VRR_FLIPLINE_C		0x62438
 #define _TRANS_VRR_FLIPLINE_D		0x63438
-#define TRANS_VRR_FLIPLINE(trans)	_MMIO_TRANS2(dev_priv, trans, \
+#define TRANS_VRR_FLIPLINE(dev_priv, trans)	_MMIO_TRANS2(dev_priv, trans, \
 					_TRANS_VRR_FLIPLINE_A)
 #define   VRR_FLIPLINE_MASK		REG_GENMASK(19, 0)
 
-- 
2.39.2

