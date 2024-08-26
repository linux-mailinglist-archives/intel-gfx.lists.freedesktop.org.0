Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 750B295F69A
	for <lists+intel-gfx@lfdr.de>; Mon, 26 Aug 2024 18:31:45 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 204A510E237;
	Mon, 26 Aug 2024 16:31:44 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="oK1gISVy";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.19])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 1D1F710E235;
 Mon, 26 Aug 2024 16:31:42 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1724689902; x=1756225902;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=7Pbmh7Z54ytoF1T9NaEGq48C2F02n5MGP13OjGlSA+s=;
 b=oK1gISVyirxly0nirCMYciAuKxnwEc5fHNkMcq9jsGVr47pKUCp6Xfvl
 e3ZpFwhAIApYyPTfhP//yNK7wrC91htaVvYLvcp5TbjWZaMckM5xtE5AP
 1A7UMN47AJT6GD3PHQspqR8+kB86cFINLpyZazA32UEyGvHfNP+iF2a99
 BrIkLX1ZvgqERR1VxhG2vcM31IsTLdBbDBHHY2m3HAhXV+jeSYmb0bau5
 c/Su/3G+Q9Z6wpjleNAmbjZZHHcRL6rk5cVtu2n7G/UbE8c5ngLhwVi1W
 rTMDBzv5zfm/PlDb/lYmciHORdToNFU5ZPyi0CkCAouJ6l7ZZhcKzUlVg Q==;
X-CSE-ConnectionGUID: 9UbuQVNAR+SWg57gpnz9NQ==
X-CSE-MsgGUID: Y0VJ036vRHagyuo4of6Qug==
X-IronPort-AV: E=McAfee;i="6700,10204,11176"; a="22991498"
X-IronPort-AV: E=Sophos;i="6.10,178,1719903600"; d="scan'208";a="22991498"
Received: from orviesa009.jf.intel.com ([10.64.159.149])
 by orvoesa111.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 26 Aug 2024 09:31:42 -0700
X-CSE-ConnectionGUID: zU0sAs+STCGHCC9UvH4HxQ==
X-CSE-MsgGUID: EjfxixHbSoa/prENN2cOVw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.10,178,1719903600"; d="scan'208";a="62529072"
Received: from slindbla-desk.ger.corp.intel.com (HELO localhost)
 ([10.245.246.169])
 by orviesa009-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 26 Aug 2024 09:31:39 -0700
From: Jani Nikula <jani.nikula@intel.com>
To: intel-gfx@lists.freedesktop.org,
	intel-xe@lists.freedesktop.org
Cc: jani.nikula@intel.com
Subject: [PATCH 1/7] drm/i915/wm: move struct intel_watermark_params to
 i9xx_wm.c
Date: Mon, 26 Aug 2024 19:31:14 +0300
Message-Id: <d7408290c909eb67fc7a935469a3c6287b58587d.1724689818.git.jani.nikula@intel.com>
X-Mailer: git-send-email 2.39.2
In-Reply-To: <cover.1724689818.git.jani.nikula@intel.com>
References: <cover.1724689818.git.jani.nikula@intel.com>
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

The definition is only used within i9xx_wm.c, hide it there.

Signed-off-by: Jani Nikula <jani.nikula@intel.com>
---
 drivers/gpu/drm/i915/display/i9xx_wm.c             | 8 ++++++++
 drivers/gpu/drm/i915/display/intel_display_types.h | 8 --------
 2 files changed, 8 insertions(+), 8 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/i9xx_wm.c b/drivers/gpu/drm/i915/display/i9xx_wm.c
index 15cda57fbc91..4e7ca5277bf1 100644
--- a/drivers/gpu/drm/i915/display/i9xx_wm.c
+++ b/drivers/gpu/drm/i915/display/i9xx_wm.c
@@ -14,6 +14,14 @@
 #include "skl_watermark.h"
 #include "vlv_sideband.h"
 
+struct intel_watermark_params {
+	u16 fifo_size;
+	u16 max_wm;
+	u8 default_wm;
+	u8 guard_size;
+	u8 cacheline_size;
+};
+
 /* used in computing the new watermarks state */
 struct intel_wm_config {
 	unsigned int num_pipes_active;
diff --git a/drivers/gpu/drm/i915/display/intel_display_types.h b/drivers/gpu/drm/i915/display/intel_display_types.h
index bd290536a1b7..b4755fb8b94a 100644
--- a/drivers/gpu/drm/i915/display/intel_display_types.h
+++ b/drivers/gpu/drm/i915/display/intel_display_types.h
@@ -1601,14 +1601,6 @@ struct intel_plane {
 	void (*disable_flip_done)(struct intel_plane *plane);
 };
 
-struct intel_watermark_params {
-	u16 fifo_size;
-	u16 max_wm;
-	u8 default_wm;
-	u8 guard_size;
-	u8 cacheline_size;
-};
-
 #define to_intel_atomic_state(x) container_of(x, struct intel_atomic_state, base)
 #define to_intel_crtc(x) container_of(x, struct intel_crtc, base)
 #define to_intel_connector(x) container_of(x, struct intel_connector, base)
-- 
2.39.2

