Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 82A9A8CAA52
	for <lists+intel-gfx@lfdr.de>; Tue, 21 May 2024 10:47:50 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 6994810E785;
	Tue, 21 May 2024 08:47:47 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="JUiC3RGU";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.19])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 348DA10E776
 for <intel-gfx@lists.freedesktop.org>; Tue, 21 May 2024 08:47:39 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1716281259; x=1747817259;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=fnM6raBeKWXHvF75x000vpcjumfTVh2iWBSkvXEx1B0=;
 b=JUiC3RGUZbrjl9TXQGYrt/qw6svJR+FPOSZY59P56I9w0BOe8/eZ9xuI
 2mXzPVNP7q0oMApKAd/+zgNOpNJDJ6NUy0saQCY4yGnCB+pY6CmF9Cr/c
 uZwij4YPxDie9ipISJ7HXkJHXYnQhgAUyzlYTkm3Tc8rBQhpbhpAR/KpC
 mo9q6tTKIhFP4OkKhptWmIES429t71ZdO8qDuGBMtSMSt+nTi0ddxFqXg
 n2EaqjWQtgDnOYy+cf9Wd2k7ba2f6W1YbV4a/j683HPtSC60YcB8PqnwT
 nE97A+b4IRmt2VOYixV4O/CPcXLbSxvRlHdnVfoDwD6luW7enD775e55W g==;
X-CSE-ConnectionGUID: aYDACzrBTGyBjTmB4yOzTw==
X-CSE-MsgGUID: kxF5pR0MStKBTXWc5mWXFg==
X-IronPort-AV: E=McAfee;i="6600,9927,11078"; a="12297869"
X-IronPort-AV: E=Sophos;i="6.08,177,1712646000"; d="scan'208";a="12297869"
Received: from orviesa006.jf.intel.com ([10.64.159.146])
 by fmvoesa113.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 21 May 2024 01:47:39 -0700
X-CSE-ConnectionGUID: g4Um9NN5TaeeSxdJqfoVNQ==
X-CSE-MsgGUID: HSeU/vMfTYijoxgTL/6ymw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.08,177,1712646000"; d="scan'208";a="33272577"
Received: from mathiasj-mobl.amr.corp.intel.com (HELO
 jhogande-mobl1.intel.com) ([10.251.211.157])
 by orviesa006-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 21 May 2024 01:47:38 -0700
From: =?UTF-8?q?Jouni=20H=C3=B6gander?= <jouni.hogander@intel.com>
To: intel-gfx@lists.freedesktop.org
Cc: animesh.manna@intel.com, mika.kahola@intel.com,
 =?UTF-8?q?Jouni=20H=C3=B6gander?= <jouni.hogander@intel.com>
Subject: [PATCH v2 17/17] Revert "drm/i915/psr: Disable early transport by
 default"
Date: Tue, 21 May 2024 11:46:48 +0300
Message-Id: <20240521084648.1987837-18-jouni.hogander@intel.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20240521084648.1987837-1-jouni.hogander@intel.com>
References: <20240521084648.1987837-1-jouni.hogander@intel.com>
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
index c9b1a5d367e2..d68b8d03a2d4 100644
--- a/drivers/gpu/drm/i915/display/intel_psr.c
+++ b/drivers/gpu/drm/i915/display/intel_psr.c
@@ -3384,9 +3384,6 @@ void intel_psr_init(struct intel_dp *intel_dp)
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

