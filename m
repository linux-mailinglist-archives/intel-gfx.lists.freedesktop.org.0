Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 3E384903BAA
	for <lists+intel-gfx@lfdr.de>; Tue, 11 Jun 2024 14:13:45 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 98E5910E616;
	Tue, 11 Jun 2024 12:13:43 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="h2oAArvK";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.10])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 5CEF410E616
 for <intel-gfx@lists.freedesktop.org>; Tue, 11 Jun 2024 12:13:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1718108014; x=1749644014;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=qMnmK9jpBDQtjC7bJlHoi09xzVdVRjp27nUq6y2w9IA=;
 b=h2oAArvKeB2pxtLoiBbHn6gZOZchwxr5jNZmczRftwNLVYbqCMCm0K7q
 0C2vnI2nC2TCqVw7hkdTBFGB9ZyCPfGuxCzmp3HFF7K4N9NH1hMVx/8KL
 RqEPP2YdUHXHbWQ+84PqcBmYYiWZD6nt1bc55IDytePqAo7sEMNHYeGuA
 y/airAytXIoqgGJIbisi2ikQmH3p62xKGrjwKJdGQS+K10JLn+FRFFiPZ
 8h53cGpkMct43WV+RLUR/ekoIjqNRJAvebm17giRo5+2iDQbI6SonUr+/
 SHYXYSc9KrZ+Y2lI4zG/eBaRAmtkNFn+pwLyDW8Zh8QvGdFWOLXjDHuOO g==;
X-CSE-ConnectionGUID: 2MpY3IbyQNaZgVNduGNtEg==
X-CSE-MsgGUID: bUFmHAmuSAKo4xopkBtTdA==
X-IronPort-AV: E=McAfee;i="6600,9927,11099"; a="32296873"
X-IronPort-AV: E=Sophos;i="6.08,230,1712646000"; d="scan'208";a="32296873"
Received: from orviesa007.jf.intel.com ([10.64.159.147])
 by orvoesa102.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 11 Jun 2024 05:13:34 -0700
X-CSE-ConnectionGUID: tvI3Z97CSJm7G2szylSnsw==
X-CSE-MsgGUID: 6yK8c5v2TtuBLtpL+zYG2w==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.08,230,1712646000"; d="scan'208";a="40118824"
Received: from dalessan-mobl3.ger.corp.intel.com (HELO jhogande-mobl1..)
 ([10.245.245.164])
 by orviesa007-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 11 Jun 2024 05:13:31 -0700
From: =?UTF-8?q?Jouni=20H=C3=B6gander?= <jouni.hogander@intel.com>
To: intel-gfx@lists.freedesktop.org
Cc: animesh.manna@intel.com, mika.kahola@intel.com,
 =?UTF-8?q?Jouni=20H=C3=B6gander?= <jouni.hogander@intel.com>
Subject: [PATCH v7 18/18] Revert "drm/i915/psr: Disable early transport by
 default"
Date: Tue, 11 Jun 2024 15:12:43 +0300
Message-Id: <20240611121243.3366990-19-jouni.hogander@intel.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20240611121243.3366990-1-jouni.hogander@intel.com>
References: <20240611121243.3366990-1-jouni.hogander@intel.com>
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
index ac37b2084390..8270fe849cc6 100644
--- a/drivers/gpu/drm/i915/display/intel_psr.c
+++ b/drivers/gpu/drm/i915/display/intel_psr.c
@@ -3213,9 +3213,6 @@ void intel_psr_init(struct intel_dp *intel_dp)
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

