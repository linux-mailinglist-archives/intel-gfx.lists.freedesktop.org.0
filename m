Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id BA75A8D5EE1
	for <lists+intel-gfx@lfdr.de>; Fri, 31 May 2024 11:51:13 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 7011010E5F0;
	Fri, 31 May 2024 09:51:11 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="K8uBLqqw";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.18])
 by gabe.freedesktop.org (Postfix) with ESMTPS id AE5AE10E5C1
 for <intel-gfx@lists.freedesktop.org>; Fri, 31 May 2024 09:50:48 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1717149049; x=1748685049;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=hhTbBnjts07Vpd1jWtpIVuhdDbUvTc38WxP5DVTPLaE=;
 b=K8uBLqqwmBxjt+6RgRyF37V4RKb9vZpl53aceuJF07EBFaWZiASJ9hMq
 ENkvfGpfye0Z4e9oqAn59W8FIRvyd95AOuB/7cf2YWA+aEfCRDz1uBCk4
 2tKC/XsME8FDqcQfvUdsz6Mnx+wylcBjDgt7zGdnL75ppMGI/QYddBkwu
 /8RSgRaGR6vys8+SYUxDTATDZDk+BuA/BwEy9XMRiISb5rB68MWgF4GG6
 1Ob5ofVeThge+17ZsKQsQk0MCyCZu0oXmrO/LuQJ7cNg419N70erd64CI
 GqYdd7VhqgzoSZLNz7Xn3UMGQsfZsGxHrnEAiXaljAmpvjQ7t0mYfi/D9 w==;
X-CSE-ConnectionGUID: ycZKhQJQRY2Y+/0zkHoYqw==
X-CSE-MsgGUID: yC4ARoN+R7mDbfetSUe07g==
X-IronPort-AV: E=McAfee;i="6600,9927,11088"; a="13446592"
X-IronPort-AV: E=Sophos;i="6.08,203,1712646000"; d="scan'208";a="13446592"
Received: from orviesa004.jf.intel.com ([10.64.159.144])
 by fmvoesa112.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 31 May 2024 02:50:49 -0700
X-CSE-ConnectionGUID: Tl6p7b3ZQ/iJwnoQUIwBVA==
X-CSE-MsgGUID: OJwv36v+RiSQ9hIyZfVeVw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.08,203,1712646000"; d="scan'208";a="41189320"
Received: from romanove-mobl.ger.corp.intel.com (HELO
 jhogande-mobl1.intel.com) ([10.249.36.204])
 by orviesa004-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 31 May 2024 02:50:47 -0700
From: =?UTF-8?q?Jouni=20H=C3=B6gander?= <jouni.hogander@intel.com>
To: intel-gfx@lists.freedesktop.org
Cc: animesh.manna@intel.com, mika.kahola@intel.com,
 =?UTF-8?q?Jouni=20H=C3=B6gander?= <jouni.hogander@intel.com>
Subject: [PATCH v4 19/19] Revert "drm/i915/psr: Disable early transport by
 default"
Date: Fri, 31 May 2024 12:49:53 +0300
Message-Id: <20240531094953.1797508-20-jouni.hogander@intel.com>
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

This reverts commit f3c2031db7dfdf470a2d9bf3bd1efa6edfa72d8d.

We want to notice possible issues faced with PSR2 Region Early Transport as
early as possible -> let's revert patch disabling Region Early Transport by
default. Also eDP 1.5 Panel Replay requires Early Transport.

Signed-off-by: Jouni Högander <jouni.hogander@intel.com>
---
 drivers/gpu/drm/i915/display/intel_psr.c | 3 ---
 1 file changed, 3 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_psr.c b/drivers/gpu/drm/i915/display/intel_psr.c
index 885c75c55f9a..0f58553049a0 100644
--- a/drivers/gpu/drm/i915/display/intel_psr.c
+++ b/drivers/gpu/drm/i915/display/intel_psr.c
@@ -3136,9 +3136,6 @@ void intel_psr_init(struct intel_dp *intel_dp)
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

