Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 0C04A8D5ED1
	for <lists+intel-gfx@lfdr.de>; Fri, 31 May 2024 11:50:32 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 235F410E3EB;
	Fri, 31 May 2024 09:50:29 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="BuCO//0n";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.18])
 by gabe.freedesktop.org (Postfix) with ESMTPS id CA30510E2A5
 for <intel-gfx@lists.freedesktop.org>; Fri, 31 May 2024 09:50:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1717149026; x=1748685026;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=WcSShjXSB9d5zNL5EK1n0puukbwDav4fJXBOT61kjaw=;
 b=BuCO//0nP/QbD39m6wDXL5Iaxw4oayTsQb1Mw4rLWx5uCuMh0KuPdaOp
 AFnr4sJXEBPAGouOSoiz/Mjjh6ewRVxLnPK2Kmgu+lNEbbEnUsr5TnZgQ
 tXZwMR7An9Lno8agwrfMgYV5eIaq7wqfPucd0kBF5+kAgP6k5WMwYKXfE
 raW1NqkkiLy+2DQazU+m0cM1oQbjk7gRGlwJqKtbbCwO9nFssV21TeY17
 ZONNoQ6atLhqkBrGbN79NYulFJUrsGRYsBY6ArNJhFnRgstmp80diSnUA
 Mvacyse2UadXKhlzOr1ZcI/46BwP5FtG64rSkMl1itLT0/XV1duWB/znU A==;
X-CSE-ConnectionGUID: oOr5V63dSdC2ZYclUkJ/rA==
X-CSE-MsgGUID: cERLouHPQNqXO7uT+Dzgig==
X-IronPort-AV: E=McAfee;i="6600,9927,11088"; a="13446563"
X-IronPort-AV: E=Sophos;i="6.08,203,1712646000"; d="scan'208";a="13446563"
Received: from orviesa004.jf.intel.com ([10.64.159.144])
 by fmvoesa112.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 31 May 2024 02:50:25 -0700
X-CSE-ConnectionGUID: I/Z/NYx3Q4m2MY/sZh6FgA==
X-CSE-MsgGUID: AioYINSjTiClNLqikLm7yQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.08,203,1712646000"; d="scan'208";a="41189224"
Received: from romanove-mobl.ger.corp.intel.com (HELO
 jhogande-mobl1.intel.com) ([10.249.36.204])
 by orviesa004-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 31 May 2024 02:50:24 -0700
From: =?UTF-8?q?Jouni=20H=C3=B6gander?= <jouni.hogander@intel.com>
To: intel-gfx@lists.freedesktop.org
Cc: animesh.manna@intel.com, mika.kahola@intel.com,
 =?UTF-8?q?Jouni=20H=C3=B6gander?= <jouni.hogander@intel.com>
Subject: [PATCH v4 06/19] drm/i915/alpm: Make alpm support checks non-static
Date: Fri, 31 May 2024 12:49:40 +0300
Message-Id: <20240531094953.1797508-7-jouni.hogander@intel.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20240531094953.1797508-1-jouni.hogander@intel.com>
References: <20240531094953.1797508-1-jouni.hogander@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
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

We want to use intel_alpm_aux_wake_supported and
intel_alpm_aux_less_wake_supported in intel_psr.c. Convert them as
non-static.

Signed-off-by: Jouni Högander <jouni.hogander@intel.com>
---
 drivers/gpu/drm/i915/display/intel_alpm.c | 4 ++--
 drivers/gpu/drm/i915/display/intel_alpm.h | 2 ++
 2 files changed, 4 insertions(+), 2 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_alpm.c b/drivers/gpu/drm/i915/display/intel_alpm.c
index fd35056237e5..5f766d8be63a 100644
--- a/drivers/gpu/drm/i915/display/intel_alpm.c
+++ b/drivers/gpu/drm/i915/display/intel_alpm.c
@@ -11,12 +11,12 @@
 #include "intel_dp_aux.h"
 #include "intel_psr_regs.h"
 
-static bool intel_alpm_aux_wake_supported(struct intel_dp *intel_dp)
+bool intel_alpm_aux_wake_supported(struct intel_dp *intel_dp)
 {
 	return intel_dp->alpm_dpcd & DP_ALPM_CAP;
 }
 
-static bool intel_alpm_aux_less_wake_supported(struct intel_dp *intel_dp)
+bool intel_alpm_aux_less_wake_supported(struct intel_dp *intel_dp)
 {
 	return intel_dp->alpm_dpcd & DP_ALPM_AUX_LESS_CAP;
 }
diff --git a/drivers/gpu/drm/i915/display/intel_alpm.h b/drivers/gpu/drm/i915/display/intel_alpm.h
index c82ecc7b4001..d4fb60393c91 100644
--- a/drivers/gpu/drm/i915/display/intel_alpm.h
+++ b/drivers/gpu/drm/i915/display/intel_alpm.h
@@ -22,4 +22,6 @@ void intel_alpm_lobf_compute_config(struct intel_dp *intel_dp,
 void intel_alpm_configure(struct intel_dp *intel_dp,
 			  const struct intel_crtc_state *crtc_state);
 void intel_alpm_lobf_debugfs_add(struct intel_connector *connector);
+bool intel_alpm_aux_wake_supported(struct intel_dp *intel_dp);
+bool intel_alpm_aux_less_wake_supported(struct intel_dp *intel_dp);
 #endif
-- 
2.34.1

