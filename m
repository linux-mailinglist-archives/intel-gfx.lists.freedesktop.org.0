Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id C98888B6F49
	for <lists+intel-gfx@lfdr.de>; Tue, 30 Apr 2024 12:11:35 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 099CD10FB9B;
	Tue, 30 Apr 2024 10:11:34 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="iaUA4L/J";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.19])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 52F1A10FB57
 for <intel-gfx@lists.freedesktop.org>; Tue, 30 Apr 2024 10:11:32 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1714471892; x=1746007892;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=NUAzbhCeka5o15NZ0C7/WrvNj/56P0xk2RJEWT1uzOI=;
 b=iaUA4L/Jya6DZWkzMGffapp/hNMyhpmzrOdSFYy63k8/iQH14KAr4yeH
 SCDOsrGBK0DUZYtJNrbr26vLJ9yyWE+sk7vE3Rc0hgwcWJBEU0RyPMymy
 DrTe6yZds+RXuAqcMro8CYrERTmwSVPadm61+Bv7J2ctoNEO8qo64Wzvy
 muo0YJFMGlfy4FZ0NpCgSqdiuRLBrCarNqru/b0ypaosEZN5Ky4xCpHh9
 gx2IkkO+35HICf4rRX4KSrUlg57qURMVP7M05dvolgRsRJ7b1m84XuQ1Q
 qoBIvrPNYwq8axfF0QyUhVFW8emXomMRfGjQLbk1cFSUzDAQ0WoV0iAT7 A==;
X-CSE-ConnectionGUID: B8Z5Hse4QM6RI/tkdPDnDw==
X-CSE-MsgGUID: QxTbpTnuQ0mmC9ErorGHqA==
X-IronPort-AV: E=McAfee;i="6600,9927,11059"; a="10043869"
X-IronPort-AV: E=Sophos;i="6.07,241,1708416000"; d="scan'208";a="10043869"
Received: from orviesa010.jf.intel.com ([10.64.159.150])
 by fmvoesa113.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 30 Apr 2024 03:11:32 -0700
X-CSE-ConnectionGUID: Poi6toSWTRKaOCad8gWqyQ==
X-CSE-MsgGUID: 8G7O3X4mRIa0lEKqGcQOPQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.07,241,1708416000"; d="scan'208";a="26281468"
Received: from vkats-mobl2.ger.corp.intel.com (HELO localhost)
 ([10.252.33.167])
 by orviesa010-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 30 Apr 2024 03:11:30 -0700
From: Jani Nikula <jani.nikula@intel.com>
To: intel-gfx@lists.freedesktop.org
Cc: rodrigo.vivi@intel.com, jouni.hogander@intel.com,
 Jani Nikula <jani.nikula@intel.com>
Subject: [PATCH 16/19] drm/i915: pass dev_priv explicitly to ALPM_CTL
Date: Tue, 30 Apr 2024 13:10:10 +0300
Message-Id: <96da9be36dc93fa9a7c329f25ff963e4998998c1.1714471597.git.jani.nikula@intel.com>
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
explicitly to the ALPM_CTL register macro.

Signed-off-by: Jani Nikula <jani.nikula@intel.com>
---
 drivers/gpu/drm/i915/display/intel_psr.c      | 4 ++--
 drivers/gpu/drm/i915/display/intel_psr_regs.h | 2 +-
 2 files changed, 3 insertions(+), 3 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_psr.c b/drivers/gpu/drm/i915/display/intel_psr.c
index 37b85b721ddf..fad24b1e5ae2 100644
--- a/drivers/gpu/drm/i915/display/intel_psr.c
+++ b/drivers/gpu/drm/i915/display/intel_psr.c
@@ -1812,7 +1812,7 @@ static void lnl_alpm_configure(struct intel_dp *intel_dp)
 
 	alpm_ctl |= ALPM_CTL_ALPM_ENTRY_CHECK(psr->alpm_parameters.check_entry_lines);
 
-	intel_de_write(dev_priv, ALPM_CTL(cpu_transcoder), alpm_ctl);
+	intel_de_write(dev_priv, ALPM_CTL(dev_priv, cpu_transcoder), alpm_ctl);
 }
 
 static void intel_psr_enable_source(struct intel_dp *intel_dp,
@@ -2112,7 +2112,7 @@ static void intel_psr_disable_locked(struct intel_dp *intel_dp)
 
 	/* Panel Replay on eDP is always using ALPM aux less. */
 	if (intel_dp->psr.panel_replay_enabled && intel_dp_is_edp(intel_dp)) {
-		intel_de_rmw(dev_priv, ALPM_CTL(cpu_transcoder),
+		intel_de_rmw(dev_priv, ALPM_CTL(dev_priv, cpu_transcoder),
 			     ALPM_CTL_ALPM_ENABLE |
 			     ALPM_CTL_ALPM_AUX_LESS_ENABLE, 0);
 
diff --git a/drivers/gpu/drm/i915/display/intel_psr_regs.h b/drivers/gpu/drm/i915/display/intel_psr_regs.h
index 4ccbb651016f..4d950b22d4f1 100644
--- a/drivers/gpu/drm/i915/display/intel_psr_regs.h
+++ b/drivers/gpu/drm/i915/display/intel_psr_regs.h
@@ -297,7 +297,7 @@
 						  _SEL_FETCH_PLANE_BASE_1_A)
 
 #define _ALPM_CTL_A	0x60950
-#define ALPM_CTL(tran)	_MMIO_TRANS2(dev_priv, tran, _ALPM_CTL_A)
+#define ALPM_CTL(dev_priv, tran)	_MMIO_TRANS2(dev_priv, tran, _ALPM_CTL_A)
 #define  ALPM_CTL_ALPM_ENABLE				REG_BIT(31)
 #define  ALPM_CTL_ALPM_AUX_LESS_ENABLE			REG_BIT(30)
 #define  ALPM_CTL_LOBF_ENABLE				REG_BIT(29)
-- 
2.39.2

