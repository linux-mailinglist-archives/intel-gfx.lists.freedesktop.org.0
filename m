Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 67DC68B6F42
	for <lists+intel-gfx@lfdr.de>; Tue, 30 Apr 2024 12:11:03 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id BC6F510FAFB;
	Tue, 30 Apr 2024 10:11:01 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="JFV2jU5C";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.10])
 by gabe.freedesktop.org (Postfix) with ESMTPS id E37EA10FAF6
 for <intel-gfx@lists.freedesktop.org>; Tue, 30 Apr 2024 10:10:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1714471860; x=1746007860;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=rshVhOc07mYZqUyZO6li+HNKT3y2Qc4s2v5W7Bp8KuA=;
 b=JFV2jU5CGJbE19f+R7d/OlvHSgilQLy9Av7o75ZyDsa8PLzF95ezP5PZ
 pheF228x+7IUTudPe2fu3MNEl1oXdo0OdUfO65bNgKJyqhwC7jW9B0gsM
 EpqmqAPJuJwWGOjn/d8m7NkFjT3sF2ZA/QspCg8dLlhxE4HzxB1V7pOyz
 FWEnIzgH165eNI5LStXNejMIeEWnvR+hDM73Z4V0tcFXiOmvBkuKnH7Hp
 /+Se3oJb6VmOjyRwMdjQSIMe52gyzKDCUbn01tBa2eF1a7EbHfF6e4gM4
 ppJVxmPgTbAv51GweJTscLgeahcmay+gTHQP9wkbg6p972e5hH1BQVGY1 Q==;
X-CSE-ConnectionGUID: XwdPLHDAThiZGq8asYZ7TA==
X-CSE-MsgGUID: X7F2i/cvRui+GIPe1wm5/Q==
X-IronPort-AV: E=McAfee;i="6600,9927,11059"; a="27619604"
X-IronPort-AV: E=Sophos;i="6.07,241,1708416000"; d="scan'208";a="27619604"
Received: from fmviesa008.fm.intel.com ([10.60.135.148])
 by orvoesa102.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 30 Apr 2024 03:11:00 -0700
X-CSE-ConnectionGUID: HrLPXJITQbyWow/egU29cg==
X-CSE-MsgGUID: em/vj9+oTn6XXDdqXaZ8aQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.07,241,1708416000"; d="scan'208";a="26424813"
Received: from vkats-mobl2.ger.corp.intel.com (HELO localhost)
 ([10.252.33.167])
 by fmviesa008-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 30 Apr 2024 03:10:58 -0700
From: Jani Nikula <jani.nikula@intel.com>
To: intel-gfx@lists.freedesktop.org
Cc: rodrigo.vivi@intel.com, jouni.hogander@intel.com,
 Jani Nikula <jani.nikula@intel.com>
Subject: [PATCH 09/19] drm/i915: pass dev_priv explicitly to EDP_PSR_DEBUG
Date: Tue, 30 Apr 2024 13:10:03 +0300
Message-Id: <187dd49632d46e67705bd258ed7f9eabdeb108b2.1714471597.git.jani.nikula@intel.com>
X-Mailer: git-send-email 2.39.2
In-Reply-To: <cover.1714471597.git.jani.nikula@intel.com>
References: <cover.1714471597.git.jani.nikula@intel.com>
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
explicitly to the EDP_PSR_DEBUG register macro.

Signed-off-by: Jani Nikula <jani.nikula@intel.com>
---
 drivers/gpu/drm/i915/display/intel_psr.c      | 2 +-
 drivers/gpu/drm/i915/display/intel_psr_regs.h | 2 +-
 2 files changed, 2 insertions(+), 2 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_psr.c b/drivers/gpu/drm/i915/display/intel_psr.c
index 162dd07c243f..fa1fd04d3b4a 100644
--- a/drivers/gpu/drm/i915/display/intel_psr.c
+++ b/drivers/gpu/drm/i915/display/intel_psr.c
@@ -278,7 +278,7 @@ static i915_reg_t psr_debug_reg(struct drm_i915_private *dev_priv,
 				enum transcoder cpu_transcoder)
 {
 	if (DISPLAY_VER(dev_priv) >= 8)
-		return EDP_PSR_DEBUG(cpu_transcoder);
+		return EDP_PSR_DEBUG(dev_priv, cpu_transcoder);
 	else
 		return HSW_SRD_DEBUG;
 }
diff --git a/drivers/gpu/drm/i915/display/intel_psr_regs.h b/drivers/gpu/drm/i915/display/intel_psr_regs.h
index ef7f32c98d55..a74705aedbb5 100644
--- a/drivers/gpu/drm/i915/display/intel_psr_regs.h
+++ b/drivers/gpu/drm/i915/display/intel_psr_regs.h
@@ -133,7 +133,7 @@
 #define HSW_SRD_DEBUG				_MMIO(0x64860)
 #define _SRD_DEBUG_A				0x60860
 #define _SRD_DEBUG_EDP				0x6f860
-#define EDP_PSR_DEBUG(tran)			_MMIO_TRANS2(dev_priv, tran, _SRD_DEBUG_A)
+#define EDP_PSR_DEBUG(dev_priv, tran)			_MMIO_TRANS2(dev_priv, tran, _SRD_DEBUG_A)
 #define   EDP_PSR_DEBUG_MASK_MAX_SLEEP		REG_BIT(28)
 #define   EDP_PSR_DEBUG_MASK_LPSP		REG_BIT(27)
 #define   EDP_PSR_DEBUG_MASK_MEMUP		REG_BIT(26)
-- 
2.39.2

