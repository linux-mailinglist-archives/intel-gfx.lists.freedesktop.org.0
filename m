Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 5D89DB3B29F
	for <lists+intel-gfx@lfdr.de>; Fri, 29 Aug 2025 07:39:51 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 4F0DA10E1F9;
	Fri, 29 Aug 2025 05:39:49 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="gMUNtKnZ";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.16])
 by gabe.freedesktop.org (Postfix) with ESMTPS id DBFF310E1F6;
 Fri, 29 Aug 2025 05:39:47 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1756445988; x=1787981988;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=gdra0nedDsybhVkCvRjUjsHZOE9mY51Dryu03nW2R1w=;
 b=gMUNtKnZnJ89BNf6HAoPomRDHa74XK7ing8RtEA4N7yCeVt/mvFunO8B
 fhLWyWz+Fy3Orm73A2IaeRMLtZxJltFySZ/HlToHPRQT7sXKBZzIybR0D
 ANim7qAzRgvEGYmKsW8Aks4An/Jv7wqqB0LAj2P7V5ZAoThwWSoYlpaRf
 HrhsAK9dBexyrCf1jU+NioqxnteDGDEIBX9+U7aWW/FNwoUrFxsRHSUuw
 qrC8enJo3efuO+mOaMN/oxKjBXewAVXTPinB17LewMzg4GYSoBNo9Z5+m
 73uKtTRxueEPGEZE/DxpULBGjyv9ESQnf8kdvhgd/oM88RID9Pb145hSy w==;
X-CSE-ConnectionGUID: eI928v2KSA2/IH4AGbkysQ==
X-CSE-MsgGUID: fPLqYnMBTRmCTCAjV/RyhA==
X-IronPort-AV: E=McAfee;i="6800,10657,11536"; a="58874485"
X-IronPort-AV: E=Sophos;i="6.18,221,1751266800"; d="scan'208";a="58874485"
Received: from fmviesa002.fm.intel.com ([10.60.135.142])
 by orvoesa108.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 28 Aug 2025 22:39:47 -0700
X-CSE-ConnectionGUID: kAUnUYLKS7i4w/gaTHd8mg==
X-CSE-MsgGUID: Kz7KIABBS7esX33qxXilEw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.18,221,1751266800"; d="scan'208";a="193963826"
Received: from ncintean-mobl1.ger.corp.intel.com (HELO jhogande-mobl1..)
 ([10.245.245.172])
 by fmviesa002-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 28 Aug 2025 22:39:46 -0700
From: =?UTF-8?q?Jouni=20H=C3=B6gander?= <jouni.hogander@intel.com>
To: intel-gfx@lists.freedesktop.org,
	intel-xe@lists.freedesktop.org
Cc: =?UTF-8?q?Jouni=20H=C3=B6gander?= <jouni.hogander@intel.com>,
 Animesh Manna <animesh.manna@intel.com>
Subject: [PATCH v2 2/4] drm/i915/alpm: Add own define for LFPS count
Date: Fri, 29 Aug 2025 08:39:26 +0300
Message-ID: <20250829053929.3585636-3-jouni.hogander@intel.com>
X-Mailer: git-send-email 2.43.0
In-Reply-To: <20250829053929.3585636-1-jouni.hogander@intel.com>
References: <20250829053929.3585636-1-jouni.hogander@intel.com>
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

Add own define for LFPS count and use it for the configuration. This new
define will be used for calculating ALPM parameters as well.

Signed-off-by: Jouni Högander <jouni.hogander@intel.com>
Reviewed-by: Animesh Manna <animesh.manna@intel.com>
---
 drivers/gpu/drm/i915/display/intel_alpm.c | 4 +++-
 1 file changed, 3 insertions(+), 1 deletion(-)

diff --git a/drivers/gpu/drm/i915/display/intel_alpm.c b/drivers/gpu/drm/i915/display/intel_alpm.c
index e48a4218c163..ae556a885c2a 100644
--- a/drivers/gpu/drm/i915/display/intel_alpm.c
+++ b/drivers/gpu/drm/i915/display/intel_alpm.c
@@ -22,6 +22,8 @@
 				(SILENCE_PERIOD_MAX_TIME -	\
 				 SILENCE_PERIOD_MIN_TIME) / 2)
 
+#define LFPS_CYCLE_COUNT 10
+
 bool intel_alpm_aux_wake_supported(struct intel_dp *intel_dp)
 {
 	return intel_dp->alpm_dpcd & DP_ALPM_CAP;
@@ -403,7 +405,7 @@ void intel_alpm_port_configure(struct intel_dp *intel_dp,
 			PORT_ALPM_CTL_MAX_PHY_SWING_HOLD(0) |
 			PORT_ALPM_CTL_SILENCE_PERIOD(
 				intel_dp->alpm_parameters.silence_period_sym_clocks);
-		lfps_ctl_val = PORT_ALPM_LFPS_CTL_LFPS_CYCLE_COUNT(10) |
+		lfps_ctl_val = PORT_ALPM_LFPS_CTL_LFPS_CYCLE_COUNT(LFPS_CYCLE_COUNT) |
 			PORT_ALPM_LFPS_CTL_LFPS_HALF_CYCLE_DURATION(
 				intel_dp->alpm_parameters.lfps_half_cycle_num_of_syms) |
 			PORT_ALPM_LFPS_CTL_FIRST_LFPS_HALF_CYCLE_DURATION(
-- 
2.43.0

