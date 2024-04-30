Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 6DADA8B6F39
	for <lists+intel-gfx@lfdr.de>; Tue, 30 Apr 2024 12:10:27 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id BAFB410FA69;
	Tue, 30 Apr 2024 10:10:25 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="V2y3UV1c";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.20])
 by gabe.freedesktop.org (Postfix) with ESMTPS id C349110FA08
 for <intel-gfx@lists.freedesktop.org>; Tue, 30 Apr 2024 10:10:23 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1714471824; x=1746007824;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=JtJt7VHePrqkxXyoZKosmANAv4rfWRZwGzazG/0Mz+E=;
 b=V2y3UV1c9telWUBOj/Whq3/WbXzZV3av47yoTHaNR7MxC0EyszRHT8F3
 UvUByGYwU0CBdEVFjhDj1VBIY69a5YEZEYyJpeYi+zuMOvOGlGGS8TqPB
 3VsnJqqHkDF+6IJxgva7rm1Ka1C73sJokDu7eJR1pvZEJVNrXHwwW4hUA
 0iaG4QLOTgCMDmSQgLviCYx45INco7F5ThfmB1H+5QaHzgvJUkvPYmmir
 Wz5793pkfZyfABINX3G7pec1AyWC7tLgXnRMKKjC6tt8Phj1JSlLg8tdm
 fn7UWmqsKD0Lp7aPr5aEhSlTVNvOjqv9QjG/uFEFk0QGD5WKbH8IXI5K0 A==;
X-CSE-ConnectionGUID: OtGpG4mSTMeVNKaCudv5Fg==
X-CSE-MsgGUID: 0zWNM14YQy24rmcJzJf2gg==
X-IronPort-AV: E=McAfee;i="6600,9927,11059"; a="10003446"
X-IronPort-AV: E=Sophos;i="6.07,241,1708416000"; d="scan'208";a="10003446"
Received: from fmviesa003.fm.intel.com ([10.60.135.143])
 by orvoesa112.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 30 Apr 2024 03:10:24 -0700
X-CSE-ConnectionGUID: RlcwNNOvTpadADne96VqEA==
X-CSE-MsgGUID: 0fwXGI92QkyWN/fYY6kPQw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.07,241,1708416000"; d="scan'208";a="30871177"
Received: from vkats-mobl2.ger.corp.intel.com (HELO localhost)
 ([10.252.33.167])
 by fmviesa003-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 30 Apr 2024 03:10:22 -0700
From: Jani Nikula <jani.nikula@intel.com>
To: intel-gfx@lists.freedesktop.org
Cc: rodrigo.vivi@intel.com, jouni.hogander@intel.com,
 Jani Nikula <jani.nikula@intel.com>
Subject: [PATCH 01/19] drm/i915: pass dev_priv explicitly to TRANS_EXITLINE
Date: Tue, 30 Apr 2024 13:09:55 +0300
Message-Id: <eb1e5fe155daf2d271af76e683a1f3f33e34403a.1714471597.git.jani.nikula@intel.com>
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
explicitly to the TRANS_EXITLINE register macro.

Signed-off-by: Jani Nikula <jani.nikula@intel.com>
---
 drivers/gpu/drm/i915/display/intel_psr.c      | 7 +++++--
 drivers/gpu/drm/i915/display/intel_psr_regs.h | 2 +-
 2 files changed, 6 insertions(+), 3 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_psr.c b/drivers/gpu/drm/i915/display/intel_psr.c
index f5b33335a9ae..1cbd8c6714b1 100644
--- a/drivers/gpu/drm/i915/display/intel_psr.c
+++ b/drivers/gpu/drm/i915/display/intel_psr.c
@@ -1685,7 +1685,8 @@ void intel_psr_get_config(struct intel_encoder *encoder,
 	}
 
 	if (DISPLAY_VER(dev_priv) >= 12) {
-		val = intel_de_read(dev_priv, TRANS_EXITLINE(cpu_transcoder));
+		val = intel_de_read(dev_priv,
+				    TRANS_EXITLINE(dev_priv, cpu_transcoder));
 		pipe_config->dc3co_exitline = REG_FIELD_GET(EXITLINE_MASK, val);
 	}
 unlock:
@@ -1877,7 +1878,9 @@ static void intel_psr_enable_source(struct intel_dp *intel_dp,
 	 * transcoder, EXITLINE will need to be unset when disabling PSR
 	 */
 	if (intel_dp->psr.dc3co_exitline)
-		intel_de_rmw(dev_priv, TRANS_EXITLINE(cpu_transcoder), EXITLINE_MASK,
+		intel_de_rmw(dev_priv,
+			     TRANS_EXITLINE(dev_priv, cpu_transcoder),
+			     EXITLINE_MASK,
 			     intel_dp->psr.dc3co_exitline << EXITLINE_SHIFT | EXITLINE_ENABLE);
 
 	if (HAS_PSR_HW_TRACKING(dev_priv) && HAS_PSR2_SEL_FETCH(dev_priv))
diff --git a/drivers/gpu/drm/i915/display/intel_psr_regs.h b/drivers/gpu/drm/i915/display/intel_psr_regs.h
index ebc22999572c..0e0c71ea9fe3 100644
--- a/drivers/gpu/drm/i915/display/intel_psr_regs.h
+++ b/drivers/gpu/drm/i915/display/intel_psr_regs.h
@@ -9,7 +9,7 @@
 #include "intel_display_reg_defs.h"
 #include "intel_dp_aux_regs.h"
 
-#define TRANS_EXITLINE(trans)	_MMIO_TRANS2(dev_priv, (trans), _TRANS_EXITLINE_A)
+#define TRANS_EXITLINE(dev_priv, trans)	_MMIO_TRANS2(dev_priv, (trans), _TRANS_EXITLINE_A)
 #define   EXITLINE_ENABLE	REG_BIT(31)
 #define   EXITLINE_MASK		REG_GENMASK(12, 0)
 #define   EXITLINE_SHIFT	0
-- 
2.39.2

