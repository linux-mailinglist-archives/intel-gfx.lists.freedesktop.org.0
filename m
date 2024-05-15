Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 61B9B8C6606
	for <lists+intel-gfx@lfdr.de>; Wed, 15 May 2024 13:57:37 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id BC9AA10E790;
	Wed, 15 May 2024 11:57:35 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="Auw0fVLc";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.17])
 by gabe.freedesktop.org (Postfix) with ESMTPS id D22BE10E790
 for <intel-gfx@lists.freedesktop.org>; Wed, 15 May 2024 11:57:34 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1715774255; x=1747310255;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=j033X4p1PdpFdICCMMCIYn64t4jXVZQZeXEb/zG7PjQ=;
 b=Auw0fVLc3zfrnzNDF7UiUEzF6uWJHV/boi0EJBnNaOsC41EFVn0x5s2a
 pwO3QUKj8a7LrdU5wvtzY12N9iWLN1s/BuwKuz644dM93u/yG8+bmh8px
 nbb6XtXqFjBIpYIlW87hKJCgvKjlb3B17Z3LeR2Jsz4D3+4PjWLkayMUG
 ezT6ZaU9ZtHRdTkhdFkQi4pi3Z9UNeM9wO3/aJ045H0N4jazjzs6iGWHg
 pWA5dUZYUdZX/qNzZf1ec4jINynqJt3yD+4fJ3mCmWcgw4CWTZKbHKn4m
 C20MI9XHTK3WZKRgoAJmmgl6NdaGOWX/mKAseu9zJqRBddf735TZvSfPC Q==;
X-CSE-ConnectionGUID: LYzN3EKgS+6re8tpwXYT9A==
X-CSE-MsgGUID: fj9UDKIrSH6JKBTPJS15Ug==
X-IronPort-AV: E=McAfee;i="6600,9927,11073"; a="11948037"
X-IronPort-AV: E=Sophos;i="6.08,161,1712646000"; d="scan'208";a="11948037"
Received: from fmviesa002.fm.intel.com ([10.60.135.142])
 by orvoesa109.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 15 May 2024 04:57:35 -0700
X-CSE-ConnectionGUID: KA3J2Jx+R7mjBTBo0G/jIw==
X-CSE-MsgGUID: b7wV/lq+ROCA+t6D0tGl0g==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.08,161,1712646000"; d="scan'208";a="54237641"
Received: from mwiniars-desk2.ger.corp.intel.com (HELO localhost)
 ([10.245.246.141])
 by fmviesa002-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 15 May 2024 04:57:33 -0700
From: Jani Nikula <jani.nikula@intel.com>
To: intel-gfx@lists.freedesktop.org
Cc: ville.syrjala@linux.intel.com,
	jani.nikula@intel.com
Subject: [PATCH 8/8] drm/i915: pass dev_priv explicitly to CURSURFLIVE
Date: Wed, 15 May 2024 14:56:48 +0300
Message-Id: <86aa98ad9f883681f5c2e3aba839d02d8591bfbf.1715774156.git.jani.nikula@intel.com>
X-Mailer: git-send-email 2.39.2
In-Reply-To: <cover.1715774156.git.jani.nikula@intel.com>
References: <cover.1715774156.git.jani.nikula@intel.com>
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
explicitly to the CURSURFLIVE register macro.

Signed-off-by: Jani Nikula <jani.nikula@intel.com>
---
 drivers/gpu/drm/i915/display/intel_cursor_regs.h |  2 +-
 drivers/gpu/drm/i915/display/intel_psr.c         | 13 +++++++++----
 2 files changed, 10 insertions(+), 5 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_cursor_regs.h b/drivers/gpu/drm/i915/display/intel_cursor_regs.h
index 3e948526e9ab..c2190af1e9f5 100644
--- a/drivers/gpu/drm/i915/display/intel_cursor_regs.h
+++ b/drivers/gpu/drm/i915/display/intel_cursor_regs.h
@@ -73,7 +73,7 @@
 #define CURSIZE(dev_priv, pipe) _MMIO_CURSOR2(dev_priv, pipe, _CURASIZE)
 #define CUR_FBC_CTL(dev_priv, pipe) _MMIO_CURSOR2(dev_priv, pipe, _CUR_FBC_CTL_A)
 #define CUR_CHICKEN(dev_priv, pipe) _MMIO_CURSOR2(dev_priv, pipe, _CUR_CHICKEN_A)
-#define CURSURFLIVE(pipe) _MMIO_CURSOR2(dev_priv, pipe, _CURASURFLIVE)
+#define CURSURFLIVE(dev_priv, pipe) _MMIO_CURSOR2(dev_priv, pipe, _CURASURFLIVE)
 
 /* skl+ */
 #define _CUR_WM_A_0		0x70140
diff --git a/drivers/gpu/drm/i915/display/intel_psr.c b/drivers/gpu/drm/i915/display/intel_psr.c
index 98dfd537070c..df0d14a5023f 100644
--- a/drivers/gpu/drm/i915/display/intel_psr.c
+++ b/drivers/gpu/drm/i915/display/intel_psr.c
@@ -2352,7 +2352,7 @@ static void psr_force_hw_tracking_exit(struct intel_dp *intel_dp)
 	 * but testing proved that it works for up display 13, for newer
 	 * than that testing will be needed.
 	 */
-	intel_de_write(dev_priv, CURSURFLIVE(intel_dp->psr.pipe), 0);
+	intel_de_write(dev_priv, CURSURFLIVE(dev_priv, intel_dp->psr.pipe), 0);
 }
 
 void intel_psr2_program_trans_man_trk_ctl(const struct intel_crtc_state *crtc_state)
@@ -3100,7 +3100,9 @@ static void _psr_invalidate_handle(struct intel_dp *intel_dp)
 
 		if (intel_dp->psr.psr2_sel_fetch_cff_enabled) {
 			/* Send one update otherwise lag is observed in screen */
-			intel_de_write(dev_priv, CURSURFLIVE(intel_dp->psr.pipe), 0);
+			intel_de_write(dev_priv,
+				       CURSURFLIVE(dev_priv, intel_dp->psr.pipe),
+				       0);
 			return;
 		}
 
@@ -3110,7 +3112,8 @@ static void _psr_invalidate_handle(struct intel_dp *intel_dp)
 		intel_de_write(dev_priv,
 			       PSR2_MAN_TRK_CTL(dev_priv, cpu_transcoder),
 			       val);
-		intel_de_write(dev_priv, CURSURFLIVE(intel_dp->psr.pipe), 0);
+		intel_de_write(dev_priv,
+			       CURSURFLIVE(dev_priv, intel_dp->psr.pipe), 0);
 		intel_dp->psr.psr2_sel_fetch_cff_enabled = true;
 	} else {
 		intel_psr_exit(intel_dp);
@@ -3210,7 +3213,9 @@ static void _psr_flush_handle(struct intel_dp *intel_dp)
 				intel_de_write(dev_priv,
 					       PSR2_MAN_TRK_CTL(dev_priv, cpu_transcoder),
 					       val);
-				intel_de_write(dev_priv, CURSURFLIVE(intel_dp->psr.pipe), 0);
+				intel_de_write(dev_priv,
+					       CURSURFLIVE(dev_priv, intel_dp->psr.pipe),
+					       0);
 				intel_dp->psr.psr2_sel_fetch_cff_enabled = false;
 			}
 		} else {
-- 
2.39.2

