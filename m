Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 8ACFA8FB712
	for <lists+intel-gfx@lfdr.de>; Tue,  4 Jun 2024 17:28:31 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id C025D10E4EC;
	Tue,  4 Jun 2024 15:28:29 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="njZ9v27K";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.18])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 452FB10E4F2
 for <intel-gfx@lists.freedesktop.org>; Tue,  4 Jun 2024 15:28:24 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1717514904; x=1749050904;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=R1NSoOkmg9iNSdBAaT0rXXomAUiNSlBAFwEFQdGlLYs=;
 b=njZ9v27KqN7S0DGk4LtxuNAGRMEweydFjukAsn+rI5sLFjvc9AuNkFJU
 2Zu4O0ed5UiefG0OakTw6YpU+FCBEgXfwEyce8sudmU+16Zm2TR0QeRic
 VhzDOaf5oAGUW2Sjnw5rgJzRJUKqtVCroIfeEcjuh/MKkQzuXcBhPfteL
 W1HRTJ2ZPYB7oXsg0uFZsW4pMCuP+RKYJ2GkQZTxg6mXEAM1It0sXFhc4
 rFYeJIDud9wpXbdYElFtNzvxuMGXYEzlAsssmqAGNiWI2l4aJ67Y0w/cj
 wvZXO4GFXVI+D5aZGQ+yP79RXbJvpi5LoP5EvHCM7J+TK9nBBr1el7AzN A==;
X-CSE-ConnectionGUID: O5urgZ2dSm2Ra3Lsz+tFbw==
X-CSE-MsgGUID: Vb6xEy8NSJq6fUOmZZPfnw==
X-IronPort-AV: E=McAfee;i="6600,9927,11093"; a="14225645"
X-IronPort-AV: E=Sophos;i="6.08,214,1712646000"; d="scan'208";a="14225645"
Received: from fmviesa006.fm.intel.com ([10.60.135.146])
 by orvoesa110.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 04 Jun 2024 08:28:24 -0700
X-CSE-ConnectionGUID: VPJeHEicTuKXKPakzpG1fA==
X-CSE-MsgGUID: FuubqNraToqgHulU/dPknQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.08,214,1712646000"; d="scan'208";a="37278045"
Received: from mwiniars-desk2.ger.corp.intel.com (HELO localhost)
 ([10.245.246.123])
 by fmviesa006-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 04 Jun 2024 08:28:22 -0700
From: Jani Nikula <jani.nikula@intel.com>
To: intel-gfx@lists.freedesktop.org
Cc: jani.nikula@intel.com
Subject: [PATCH 24/65] drm/i915: pass dev_priv explicitly to ICL_PIPESTATUS
Date: Tue,  4 Jun 2024 18:25:42 +0300
Message-Id: <d9a7ef1ff8e848cd10729f4ee033d1ef55ee78cc.1717514638.git.jani.nikula@intel.com>
X-Mailer: git-send-email 2.39.2
In-Reply-To: <cover.1717514638.git.jani.nikula@intel.com>
References: <cover.1717514638.git.jani.nikula@intel.com>
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
explicitly to the ICL_PIPESTATUS register macro.

Signed-off-by: Jani Nikula <jani.nikula@intel.com>
---
 drivers/gpu/drm/i915/display/intel_fifo_underrun.c | 9 ++++++---
 drivers/gpu/drm/i915/i915_reg.h                    | 2 +-
 2 files changed, 7 insertions(+), 4 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_fifo_underrun.c b/drivers/gpu/drm/i915/display/intel_fifo_underrun.c
index 401726f466c0..e5e4ca7cc499 100644
--- a/drivers/gpu/drm/i915/display/intel_fifo_underrun.c
+++ b/drivers/gpu/drm/i915/display/intel_fifo_underrun.c
@@ -209,7 +209,8 @@ static void bdw_set_fifo_underrun_reporting(struct drm_device *dev,
 
 	if (enable) {
 		if (DISPLAY_VER(dev_priv) >= 11)
-			intel_de_write(dev_priv, ICL_PIPESTATUS(pipe),
+			intel_de_write(dev_priv,
+				       ICL_PIPESTATUS(dev_priv, pipe),
 				       icl_pipe_status_underrun_mask(dev_priv));
 
 		bdw_enable_pipe_irq(dev_priv, pipe, mask);
@@ -418,9 +419,11 @@ void intel_cpu_fifo_underrun_irq_handler(struct drm_i915_private *dev_priv,
 	 * the underrun was caused by the downstream port.
 	 */
 	if (DISPLAY_VER(dev_priv) >= 11) {
-		underruns = intel_de_read(dev_priv, ICL_PIPESTATUS(pipe)) &
+		underruns = intel_de_read(dev_priv,
+					  ICL_PIPESTATUS(dev_priv, pipe)) &
 			icl_pipe_status_underrun_mask(dev_priv);
-		intel_de_write(dev_priv, ICL_PIPESTATUS(pipe), underruns);
+		intel_de_write(dev_priv, ICL_PIPESTATUS(dev_priv, pipe),
+			       underruns);
 	}
 
 	if (intel_set_cpu_fifo_underrun_reporting(dev_priv, pipe, false)) {
diff --git a/drivers/gpu/drm/i915/i915_reg.h b/drivers/gpu/drm/i915/i915_reg.h
index 1b2c0d650bff..cbe109973f57 100644
--- a/drivers/gpu/drm/i915/i915_reg.h
+++ b/drivers/gpu/drm/i915/i915_reg.h
@@ -1927,7 +1927,7 @@
 #define PIPE_MISC2(pipe)		_MMIO_PIPE(pipe, _PIPE_MISC2_A, _PIPE_MISC2_B)
 
 #define _ICL_PIPE_A_STATUS			0x70058
-#define ICL_PIPESTATUS(pipe)			_MMIO_PIPE2(dev_priv, pipe, _ICL_PIPE_A_STATUS)
+#define ICL_PIPESTATUS(dev_priv, pipe)			_MMIO_PIPE2(dev_priv, pipe, _ICL_PIPE_A_STATUS)
 #define   PIPE_STATUS_UNDERRUN				REG_BIT(31)
 #define   PIPE_STATUS_SOFT_UNDERRUN_XELPD		REG_BIT(28)
 #define   PIPE_STATUS_HARD_UNDERRUN_XELPD		REG_BIT(27)
-- 
2.39.2

