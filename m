Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id EC57AB1731F
	for <lists+intel-gfx@lfdr.de>; Thu, 31 Jul 2025 16:21:53 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 84D1B10E7AE;
	Thu, 31 Jul 2025 14:21:52 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="j+tL1/Wa";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.9])
 by gabe.freedesktop.org (Postfix) with ESMTPS id F0FB810E7AD;
 Thu, 31 Jul 2025 14:21:44 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1753971705; x=1785507705;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=mg5s4oEOVbmVN6azEOkbBuWOiq5AVFg68GLpdgKz7Jc=;
 b=j+tL1/WabCK3WRjYFUtaAvJUWHi8DK7CCgzB1B3ID0skki6KulRFUJ+O
 H/dZY1dFLF/U30Rp6hUoqNJb2eZ0O7m0p6W5bOsSBzLj1B8+sJI8VueNk
 0n2URZlzO6fkypYv7w+pOxWXh0K5ACMxx1uuuaXf1khJCahV5SbeFxmxf
 xw2YQdPt6hiS2sCx6O8hW0u2deO2edu2DXHk1RNsFEFv/iMdqBfThBrOc
 H8bQRz40xi1I7+2GP3b96WO7vTokQwlHsVzQUkqiP/Am8cXnqMWBSaVfm
 rNJQILnp5JnG88+F/CGAWR6KeWFChbJ7mIyNjmHiwy73kJfqYc5yoiSLk Q==;
X-CSE-ConnectionGUID: a7mdy/yzQF6wLOEDfUpR4A==
X-CSE-MsgGUID: Y4q8f3KVT0G3yYGPoC7JNg==
X-IronPort-AV: E=McAfee;i="6800,10657,11508"; a="66992230"
X-IronPort-AV: E=Sophos;i="6.17,353,1747724400"; d="scan'208";a="66992230"
Received: from fmviesa003.fm.intel.com ([10.60.135.143])
 by fmvoesa103.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 31 Jul 2025 07:21:42 -0700
X-CSE-ConnectionGUID: RsJ38ifES4WiEJ20N97y3g==
X-CSE-MsgGUID: 2Z2NQqNDSQ2TSSinSjdH7g==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.17,353,1747724400"; d="scan'208";a="167453064"
Received: from mjarzebo-mobl1.ger.corp.intel.com (HELO localhost)
 ([10.245.246.108])
 by fmviesa003-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 31 Jul 2025 07:21:41 -0700
From: Jani Nikula <jani.nikula@intel.com>
To: intel-gfx@lists.freedesktop.org,
	intel-xe@lists.freedesktop.org
Cc: jani.nikula@intel.com
Subject: [PATCH 2/5] drm/i915/dram: add intel_mem_freq()
Date: Thu, 31 Jul 2025 17:21:22 +0300
Message-Id: <eeb7aa7e22e9b7eb68d958605650aeea1a6bbec4.1753971617.git.jani.nikula@intel.com>
X-Mailer: git-send-email 2.39.5
In-Reply-To: <cover.1753971617.git.jani.nikula@intel.com>
References: <cover.1753971617.git.jani.nikula@intel.com>
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

Add a more generic intel_mem_freq() function instead of platform
specific ones. Expose it for future use outside of intel_dram.c.

Signed-off-by: Jani Nikula <jani.nikula@intel.com>
---
 drivers/gpu/drm/i915/soc/intel_dram.c | 17 ++++++++++++-----
 drivers/gpu/drm/i915/soc/intel_dram.h |  1 +
 2 files changed, 13 insertions(+), 5 deletions(-)

diff --git a/drivers/gpu/drm/i915/soc/intel_dram.c b/drivers/gpu/drm/i915/soc/intel_dram.c
index 6be3618d4885..193e7f71a356 100644
--- a/drivers/gpu/drm/i915/soc/intel_dram.c
+++ b/drivers/gpu/drm/i915/soc/intel_dram.c
@@ -135,16 +135,23 @@ static unsigned int vlv_mem_freq(struct drm_i915_private *i915)
 	return 0;
 }
 
-static void detect_mem_freq(struct drm_i915_private *i915)
+unsigned int intel_mem_freq(struct drm_i915_private *i915)
 {
 	if (IS_PINEVIEW(i915))
-		i915->mem_freq = pnv_mem_freq(i915);
+		return pnv_mem_freq(i915);
 	else if (GRAPHICS_VER(i915) == 5)
-		i915->mem_freq = ilk_mem_freq(i915);
+		return ilk_mem_freq(i915);
 	else if (IS_CHERRYVIEW(i915))
-		i915->mem_freq = chv_mem_freq(i915);
+		return chv_mem_freq(i915);
 	else if (IS_VALLEYVIEW(i915))
-		i915->mem_freq = vlv_mem_freq(i915);
+		return vlv_mem_freq(i915);
+	else
+		return 0;
+}
+
+static void detect_mem_freq(struct drm_i915_private *i915)
+{
+	i915->mem_freq = intel_mem_freq(i915);
 
 	if (IS_PINEVIEW(i915))
 		i915->is_ddr3 = pnv_is_ddr3(i915);
diff --git a/drivers/gpu/drm/i915/soc/intel_dram.h b/drivers/gpu/drm/i915/soc/intel_dram.h
index 09a7a581d949..5ba75e279e84 100644
--- a/drivers/gpu/drm/i915/soc/intel_dram.h
+++ b/drivers/gpu/drm/i915/soc/intel_dram.h
@@ -34,6 +34,7 @@ struct dram_info {
 void intel_dram_edram_detect(struct drm_i915_private *i915);
 int intel_dram_detect(struct drm_i915_private *i915);
 unsigned int intel_fsb_freq(struct drm_i915_private *i915);
+unsigned int intel_mem_freq(struct drm_i915_private *i915);
 const struct dram_info *intel_dram_info(struct drm_device *drm);
 
 #endif /* __INTEL_DRAM_H__ */
-- 
2.39.5

