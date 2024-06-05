Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id A99468FC8FF
	for <lists+intel-gfx@lfdr.de>; Wed,  5 Jun 2024 12:26:37 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id E8FA910E749;
	Wed,  5 Jun 2024 10:26:34 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="IV6XPHVg";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.21])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 46DB110E3D8
 for <intel-gfx@lists.freedesktop.org>; Wed,  5 Jun 2024 10:26:32 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1717583192; x=1749119192;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=DLILt3vu71GnTq6TnlvRGvLelgQWDeFC7XE6xHbLukU=;
 b=IV6XPHVg5xMhTVn3VOLQOUloridG0F6e4Vly30lSwuA3gT24YfxjJN8I
 IA1AhuQsEWOuu3ub+zBgdbMJwpvDwn5xk71YyQr54rhtt+Q/KyF3YYhEC
 uux6TlS++XCDy3KRGRjghHTYKGBEBtCbmtduRzP/wvwZCZ/iKJm+vf/mj
 pmGyB7r11OpcNq4yNroOAwHCipZ4pOR6eTgOfQWoI80St1Vjtsr14G9+H
 kC8O1/wMoGb7KhwcmWMq/BRvShMkUf8N0YsxnVfYYeDXkTYEVj/9CIOeE
 v+tJmzBerDaKGka/22fb9Uq9XQK65VlM9fWlTX/BqOCnbgU9M0kY8qz0/ w==;
X-CSE-ConnectionGUID: CnT/T+epQtSqOrEMg6RD6Q==
X-CSE-MsgGUID: sedN9fGbSXyznJUoXVIDcQ==
X-IronPort-AV: E=McAfee;i="6600,9927,11093"; a="14136098"
X-IronPort-AV: E=Sophos;i="6.08,216,1712646000"; d="scan'208";a="14136098"
Received: from fmviesa001.fm.intel.com ([10.60.135.141])
 by orvoesa113.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 05 Jun 2024 03:26:32 -0700
X-CSE-ConnectionGUID: SLuCDrlzRHyHbaY5O0+i1A==
X-CSE-MsgGUID: a1tPiYPMTx+KuJIeNVc32w==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.08,216,1712646000"; d="scan'208";a="68686139"
Received: from amokrov-mobl1.ccr.corp.intel.com (HELO
 jhogande-mobl1.intel.com) ([10.249.37.49])
 by smtpauth.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 05 Jun 2024 03:26:31 -0700
From: =?UTF-8?q?Jouni=20H=C3=B6gander?= <jouni.hogander@intel.com>
To: intel-gfx@lists.freedesktop.org
Cc: animesh.manna@intel.com, mika.kahola@intel.com,
 =?UTF-8?q?Jouni=20H=C3=B6gander?= <jouni.hogander@intel.com>
Subject: [PATCH v6 07/26] drm/i915/alpm: Make alpm support checks non-static
Date: Wed,  5 Jun 2024 13:25:34 +0300
Message-Id: <20240605102553.187309-8-jouni.hogander@intel.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20240605102553.187309-1-jouni.hogander@intel.com>
References: <20240605102553.187309-1-jouni.hogander@intel.com>
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
index 18c1c5803670..90072f6e3a33 100644
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

