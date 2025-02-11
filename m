Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 16B02A30910
	for <lists+intel-gfx@lfdr.de>; Tue, 11 Feb 2025 11:49:13 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id B72F010E654;
	Tue, 11 Feb 2025 10:49:11 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="j4Cr5tv7";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.10])
 by gabe.freedesktop.org (Postfix) with ESMTPS id C8D3010E657;
 Tue, 11 Feb 2025 10:49:09 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1739270950; x=1770806950;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=fg8cEgFYisPkNSqaF/Hm/1HPlMrARB7/MXIuC7WiI3A=;
 b=j4Cr5tv7teQ6zgVcBUS4a/vVtMiiyqL69w7cYngwRRLc1fYri4+OFT0y
 HzF7sP/ijpFbHX9kR0o7mTtyK73lqU9Xc1ADaqyRn9EAAZZCp/g3rFBNT
 AHI7+m13KA4M13ABYDQgpLkqcP47bperTB+0yYphtByCWtqjNIgKv47Ll
 ScRyZ2osMu66mEI7dCEYbeLiXKp5lKDoa/FaoEgNwd+0cFWkBDrtA0A6r
 PwW7BohWaJVfuXvySrzBxtS4IadS1TaO3Dg4tC7MYUSXf6u+JhTK7OQKz
 JA7BCganiXyKsB/6pAx2g+kEA3kONwtd56bnFkYJA1AlToV2nQ2VskjO/ A==;
X-CSE-ConnectionGUID: 1s0tc8iDQlim2m/3ct4xHQ==
X-CSE-MsgGUID: bOpNt/jNQ166aA8ogyTpow==
X-IronPort-AV: E=McAfee;i="6700,10204,11341"; a="57293169"
X-IronPort-AV: E=Sophos;i="6.13,277,1732608000"; d="scan'208";a="57293169"
Received: from fmviesa010.fm.intel.com ([10.60.135.150])
 by orvoesa102.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 11 Feb 2025 02:49:09 -0800
X-CSE-ConnectionGUID: frpDke5ZRuSbYfVOKOxurA==
X-CSE-MsgGUID: aZ5B9FP4SW6woRfmAokBFg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.13,277,1732608000"; d="scan'208";a="112991346"
Received: from kandpal-x299-ud4-pro.iind.intel.com ([10.190.239.10])
 by fmviesa010.fm.intel.com with ESMTP; 11 Feb 2025 02:49:08 -0800
From: Suraj Kandpal <suraj.kandpal@intel.com>
To: intel-xe@lists.freedesktop.org,
	intel-gfx@lists.freedesktop.org
Cc: ankit.k.nautiyal@intel.com, jani.nikula@intel.com,
 Suraj Kandpal <suraj.kandpal@intel.com>
Subject: [PATCH 2/9] drm/i915/display_debug_fs: Prefer using display->platform
Date: Tue, 11 Feb 2025 16:18:50 +0530
Message-Id: <20250211104857.3501566-3-suraj.kandpal@intel.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20250211104857.3501566-1-suraj.kandpal@intel.com>
References: <20250211104857.3501566-1-suraj.kandpal@intel.com>
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

Prefer using display->platform.xx instead of IS_PLATFORM() checks

Signed-off-by: Suraj Kandpal <suraj.kandpal@intel.com>
---
 drivers/gpu/drm/i915/display/intel_display_debugfs.c | 10 +++++-----
 1 file changed, 5 insertions(+), 5 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_display_debugfs.c b/drivers/gpu/drm/i915/display/intel_display_debugfs.c
index d85924caa26e..991c1726f522 100644
--- a/drivers/gpu/drm/i915/display/intel_display_debugfs.c
+++ b/drivers/gpu/drm/i915/display/intel_display_debugfs.c
@@ -96,14 +96,14 @@ static int i915_sr_status(struct seq_file *m, void *unused)
 		/* no global SR status; inspect per-plane WM */;
 	else if (HAS_PCH_SPLIT(dev_priv))
 		sr_enabled = intel_de_read(display, WM1_LP_ILK) & WM_LP_ENABLE;
-	else if (IS_I965GM(dev_priv) || IS_G4X(dev_priv) ||
-		 IS_I945G(dev_priv) || IS_I945GM(dev_priv))
+	else if (display->platform.i965gm || display->platform.g4x ||
+		 display->platform.i945g || display->platform.i945gm)
 		sr_enabled = intel_de_read(display, FW_BLC_SELF) & FW_BLC_SELF_EN;
-	else if (IS_I915GM(dev_priv))
+	else if (display->platform.i915gm)
 		sr_enabled = intel_de_read(display, INSTPM) & INSTPM_SELF_EN;
-	else if (IS_PINEVIEW(dev_priv))
+	else if (display->platform.pineview)
 		sr_enabled = intel_de_read(display, DSPFW3(dev_priv)) & PINEVIEW_SELF_REFRESH_EN;
-	else if (IS_VALLEYVIEW(dev_priv) || IS_CHERRYVIEW(dev_priv))
+	else if (display->platform.valleyview || display->platform.cherryview)
 		sr_enabled = intel_de_read(display, FW_BLC_SELF_VLV) & FW_CSPWRDWNEN;
 
 	intel_display_power_put(display, POWER_DOMAIN_INIT, wakeref);
-- 
2.34.1

