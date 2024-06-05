Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 917CF8FC90F
	for <lists+intel-gfx@lfdr.de>; Wed,  5 Jun 2024 12:27:08 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id D71DA10E719;
	Wed,  5 Jun 2024 10:27:06 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="Dua8SLzF";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.21])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 592AB10E719
 for <intel-gfx@lists.freedesktop.org>; Wed,  5 Jun 2024 10:27:04 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1717583224; x=1749119224;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=b90fgyFR5s3KD0ajF2iEbGbCu7z2gm71T4dbszjxJk0=;
 b=Dua8SLzFPPNId0qkowPzqze//C48u4gpG+6QeOwO6Wqxr39nUk5Y6Y5u
 XRMwxXLCJMpYCqseVkhFNB6k6sI/v2ngJ5e76Rpgn6PJKGmCRE4kyl/6l
 aYrPgwQOQPxXNPCtJY83t2+qAb9nqm0R4nLaB7tgp97uYq5UV/qOQyMvn
 ue99OGHX2tWX62H/MDOvztNWZnOn1jbcviprWYePvoeV+eLWxSOpKSFmz
 OYz+QTqX/VUhMfsokaG42rnYwK+6gOY1oMSaW18/VWKld1GLtzJeVXv9Z
 KSHPyQA7ygVZiBRMDAFdFGn+k5jeklx/Tfbhstv+N8nu0EziuclqJRSHI w==;
X-CSE-ConnectionGUID: n92qaN5zQEaNXBssmEM7dg==
X-CSE-MsgGUID: eDPUojGRTAisj1Na9nS/eg==
X-IronPort-AV: E=McAfee;i="6600,9927,11093"; a="14136170"
X-IronPort-AV: E=Sophos;i="6.08,216,1712646000"; d="scan'208";a="14136170"
Received: from fmviesa001.fm.intel.com ([10.60.135.141])
 by orvoesa113.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 05 Jun 2024 03:27:04 -0700
X-CSE-ConnectionGUID: Az5xst2WTvehBp5saf8QxA==
X-CSE-MsgGUID: zvKceSQbR2entRZR1ykcvg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.08,216,1712646000"; d="scan'208";a="68686335"
Received: from amokrov-mobl1.ccr.corp.intel.com (HELO
 jhogande-mobl1.intel.com) ([10.249.37.49])
 by smtpauth.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 05 Jun 2024 03:27:03 -0700
From: =?UTF-8?q?Jouni=20H=C3=B6gander?= <jouni.hogander@intel.com>
To: intel-gfx@lists.freedesktop.org
Cc: animesh.manna@intel.com, mika.kahola@intel.com,
 =?UTF-8?q?Jouni=20H=C3=B6gander?= <jouni.hogander@intel.com>
Subject: [PATCH v6 26/26] Revert "drm/i915/psr: Disable early transport by
 default"
Date: Wed,  5 Jun 2024 13:25:53 +0300
Message-Id: <20240605102553.187309-27-jouni.hogander@intel.com>
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

This reverts commit f3c2031db7dfdf470a2d9bf3bd1efa6edfa72d8d.

We want to notice possible issues faced with PSR2 Region Early Transport as
early as possible -> let's revert patch disabling Region Early Transport by
default. Also eDP 1.5 Panel Replay requires Early Transport.

Signed-off-by: Jouni Högander <jouni.hogander@intel.com>
---
 drivers/gpu/drm/i915/display/intel_psr.c | 3 ---
 1 file changed, 3 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_psr.c b/drivers/gpu/drm/i915/display/intel_psr.c
index b4cd7a8b17bc..36dedd8e9a9c 100644
--- a/drivers/gpu/drm/i915/display/intel_psr.c
+++ b/drivers/gpu/drm/i915/display/intel_psr.c
@@ -3171,9 +3171,6 @@ void intel_psr_init(struct intel_dp *intel_dp)
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

