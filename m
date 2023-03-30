Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 1FB4F6D0903
	for <lists+intel-gfx@lfdr.de>; Thu, 30 Mar 2023 17:03:31 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 7B86E10EEBB;
	Thu, 30 Mar 2023 15:03:29 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 4886610EEBB
 for <intel-gfx@lists.freedesktop.org>; Thu, 30 Mar 2023 15:03:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1680188607; x=1711724607;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=EB4IcROu/Bbudj/12rNTSJg1SQU6r9r2SB+TIfUZgos=;
 b=IiGq9e88pwA4DUOYzQzjRHRSuK21JUZgYnvx8dP6ppXUzAF+7S+fp3K1
 z33hcVWEigCuJykB2W/036LXm5wv9Ft+6EndMhg7LmCQABf9bXaNuH5xw
 Frgm8X8msPdODcEpQX8pLV/YomekhjDPeIuuBjrDKEPdY05A6IIZqJz84
 ogNeoknGB/+/DdoxXNGIup4eWxSuTs6O1nley8XDYR564+AjDMKBMJG5t
 h4jFWOpYrRe02m7i+ff7OCE4JJ8VyZEiaD6SLkgfZWszwLTHPaa55Tdtb
 7E+te2ZCfct0VucJrZNNHOJreyE/20KYKAjatkh7H+WDfVAa0ScWbDHfw w==;
X-IronPort-AV: E=McAfee;i="6600,9927,10665"; a="329707358"
X-IronPort-AV: E=Sophos;i="5.98,303,1673942400"; d="scan'208";a="329707358"
Received: from fmsmga006.fm.intel.com ([10.253.24.20])
 by orsmga101.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 30 Mar 2023 08:02:08 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10665"; a="930750506"
X-IronPort-AV: E=Sophos;i="5.98,303,1673942400"; d="scan'208";a="930750506"
Received: from chaitanya.iind.intel.com (HELO DUT-2a59.iind.intel.com)
 ([10.190.239.113])
 by fmsmga006.fm.intel.com with ESMTP; 30 Mar 2023 08:02:06 -0700
From: Chaitanya Kumar Borah <chaitanya.kumar.borah@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Thu, 30 Mar 2023 20:31:04 +0530
Message-Id: <20230330150104.2923519-1-chaitanya.kumar.borah@intel.com>
X-Mailer: git-send-email 2.25.1
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH] drm/i915/color: Fix typo for Plane CSC indexes
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
Cc: stable@vger.kernel.org
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

Replace _PLANE_INPUT_CSC_RY_GY_2_* with _PLANE_CSC_RY_GY_2_*
for Plane CSC

Fixes: 6eba56f64d5d ("drm/i915/pxp: black pixels on pxp disabled")

Cc: <stable@vger.kernel.org>

Signed-off-by: Chaitanya Kumar Borah <chaitanya.kumar.borah@intel.com>
---
 drivers/gpu/drm/i915/i915_reg.h | 4 ++--
 1 file changed, 2 insertions(+), 2 deletions(-)

diff --git a/drivers/gpu/drm/i915/i915_reg.h b/drivers/gpu/drm/i915/i915_reg.h
index 8e4aca888b7a..85885b01e6ac 100644
--- a/drivers/gpu/drm/i915/i915_reg.h
+++ b/drivers/gpu/drm/i915/i915_reg.h
@@ -7496,8 +7496,8 @@ enum skl_power_gate {
 
 #define _PLANE_CSC_RY_GY_1(pipe)	_PIPE(pipe, _PLANE_CSC_RY_GY_1_A, \
 					      _PLANE_CSC_RY_GY_1_B)
-#define _PLANE_CSC_RY_GY_2(pipe)	_PIPE(pipe, _PLANE_INPUT_CSC_RY_GY_2_A, \
-					      _PLANE_INPUT_CSC_RY_GY_2_B)
+#define _PLANE_CSC_RY_GY_2(pipe)	_PIPE(pipe, _PLANE_CSC_RY_GY_2_A, \
+					      _PLANE_CSC_RY_GY_2_B)
 #define PLANE_CSC_COEFF(pipe, plane, index)	_MMIO_PLANE(plane, \
 							    _PLANE_CSC_RY_GY_1(pipe) +  (index) * 4, \
 							    _PLANE_CSC_RY_GY_2(pipe) + (index) * 4)
-- 
2.25.1

