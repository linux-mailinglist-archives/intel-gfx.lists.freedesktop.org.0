Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id BC5FD8C7336
	for <lists+intel-gfx@lfdr.de>; Thu, 16 May 2024 10:50:40 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 13D1010EC40;
	Thu, 16 May 2024 08:50:39 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="bu4deiIA";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.18])
 by gabe.freedesktop.org (Postfix) with ESMTPS id C906810EC32
 for <intel-gfx@lists.freedesktop.org>; Thu, 16 May 2024 08:50:35 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1715849436; x=1747385436;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=X17wD/BZSrHR/I64N04m5VQHiM/a6cDVvf1tTPS1y6c=;
 b=bu4deiIAVAEq8aES0vWwnvFV+qP9HwhtemvWJFMc4OrHZVAhJ8zLMArs
 FaPjEMCqU8Ci0bPgqhhJPf4AlSApvY5Nt1jc8ZS3Ih4uKHtir0HnW6vFj
 Qq+kORarU9amkpaPlTCwIXYJpfpxNSKo81TOh8y5IBH8SoVrfCvpXMOw4
 r2GZr0kmWXmxlG8ZrT0mc6EeUx7V2mA6kK6uEyHFp2NsprL3lhCP+hcyj
 i+RR2No90EoePukhqk22diF2JTyFeVcduQA/Dqpeu8pxFgp1rSIF/uDBP
 6hJHGWqvgVeToRtAs0IW10G0Iy4tAqeLGCyWLmvVjpfsAyugEhHcnG0bZ w==;
X-CSE-ConnectionGUID: E9n72EFTSROT5tD6K5NkSA==
X-CSE-MsgGUID: ZEStopqSTg21OD5e4Z33pg==
X-IronPort-AV: E=McAfee;i="6600,9927,11074"; a="11756107"
X-IronPort-AV: E=Sophos;i="6.08,164,1712646000"; d="scan'208";a="11756107"
Received: from fmviesa006.fm.intel.com ([10.60.135.146])
 by fmvoesa112.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 16 May 2024 01:50:36 -0700
X-CSE-ConnectionGUID: Jf+WEMXxTTqNxdFxtKrsQA==
X-CSE-MsgGUID: /1KFzXaiS1us6yOARhGWmg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.08,164,1712646000"; d="scan'208";a="31398251"
Received: from tlonnber-mobl3.ger.corp.intel.com (HELO
 jhogande-mobl1.intel.com) ([10.251.211.12])
 by fmviesa006-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 16 May 2024 01:50:34 -0700
From: =?UTF-8?q?Jouni=20H=C3=B6gander?= <jouni.hogander@intel.com>
To: intel-gfx@lists.freedesktop.org
Cc: animesh.manna@intel.com,
 =?UTF-8?q?Jouni=20H=C3=B6gander?= <jouni.hogander@intel.com>
Subject: [PATCH 17/17] Revert "drm/i915/psr: Disable early transport by
 default"
Date: Thu, 16 May 2024 11:49:57 +0300
Message-Id: <20240516084957.1557028-18-jouni.hogander@intel.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20240516084957.1557028-1-jouni.hogander@intel.com>
References: <20240516084957.1557028-1-jouni.hogander@intel.com>
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

This reverts commit f3c2031db7dfdf470a2d9bf3bd1efa6edfa72d8d.

We want to notice possible issues faced with PSR2 Region Early Transport as
early as possible -> let's revert patch disabling Region Early Transport by
default. Also eDP 1.5 Panel Replay requires Early Transport.

Signed-off-by: Jouni Högander <jouni.hogander@intel.com>
---
 drivers/gpu/drm/i915/display/intel_psr.c | 3 ---
 1 file changed, 3 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_psr.c b/drivers/gpu/drm/i915/display/intel_psr.c
index 6a66e738aeb3..e7d04ce371ab 100644
--- a/drivers/gpu/drm/i915/display/intel_psr.c
+++ b/drivers/gpu/drm/i915/display/intel_psr.c
@@ -3372,9 +3372,6 @@ void intel_psr_init(struct intel_dp *intel_dp)
 	if (HAS_PSR(dev_priv) && intel_dp_is_edp(intel_dp))
 		intel_dp->psr.source_support = true;
 
-	/* Disable early transport for now */
-	intel_dp->psr.debug |= I915_PSR_DEBUG_SU_REGION_ET_DISABLE;
-
 	/* Set link_standby x link_off defaults */
 	if (DISPLAY_VER(dev_priv) < 12)
 		/* For new platforms up to TGL let's respect VBT back again */
-- 
2.34.1

