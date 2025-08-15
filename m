Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 13414B27BAC
	for <lists+intel-gfx@lfdr.de>; Fri, 15 Aug 2025 10:52:21 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id A2D5610E372;
	Fri, 15 Aug 2025 08:52:19 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="RsAWeQAK";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.18])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 7F04410E36D;
 Fri, 15 Aug 2025 08:52:17 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1755247937; x=1786783937;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=OuS60H6aBUmZQL33PKyGDCtICofB5FlfqgCV+XwOFGw=;
 b=RsAWeQAKtRPQg4VlBQp5bpAVqnMqE3xq5qpZ5cfGMsL0GYIld6VzOtTu
 8F3ePIHooj9+TM3bSN+G5OikowJUnynT/rZVTbXCUkcLy5HH/Wy2vc5kf
 CG9OLgc49SBD48zK02WMOtXY60HEGkaq3qGTVmdkeaHTpk/gci40UeRc+
 whzBpdlaj39FT8yS+JNRxG1cMTjfqIHT1kGYQRN19r2s+5L6dfccVGoWh
 Lcx+18z6jr+6sGYFza77c3CU7g9QSnNLd3Vbd0hrT5QB1U4loTQhFlU5w
 HtGbX7u02CmL8DIgXTDL1bNje8a/COG66eflZ7Nc2/+/J3KQ6OKf+OdKj w==;
X-CSE-ConnectionGUID: /yo+XZtyRNCXklzrWh/EDg==
X-CSE-MsgGUID: WyWhkk96TWSdfvYJWf1H3g==
X-IronPort-AV: E=McAfee;i="6800,10657,11522"; a="57647498"
X-IronPort-AV: E=Sophos;i="6.17,290,1747724400"; d="scan'208";a="57647498"
Received: from orviesa008.jf.intel.com ([10.64.159.148])
 by orvoesa110.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 15 Aug 2025 01:52:17 -0700
X-CSE-ConnectionGUID: NpOMARF+R8WjaFTO0LqOXA==
X-CSE-MsgGUID: 63tJkUfXSHitZqj7MsmBcQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.17,290,1747724400"; d="scan'208";a="167233436"
Received: from dalessan-mobl3.ger.corp.intel.com (HELO jhogande-mobl1..)
 ([10.245.245.12])
 by orviesa008-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 15 Aug 2025 01:52:16 -0700
From: =?UTF-8?q?Jouni=20H=C3=B6gander?= <jouni.hogander@intel.com>
To: intel-gfx@lists.freedesktop.org,
	intel-xe@lists.freedesktop.org
Cc: =?UTF-8?q?Jouni=20H=C3=B6gander?= <jouni.hogander@intel.com>
Subject: [PATCH 1/3] drm/i915/psr: drm_WARN_ON when activating disabled PSR
Date: Fri, 15 Aug 2025 11:45:32 +0300
Message-ID: <20250815084534.1637030-2-jouni.hogander@intel.com>
X-Mailer: git-send-email 2.43.0
In-Reply-To: <20250815084534.1637030-1-jouni.hogander@intel.com>
References: <20250815084534.1637030-1-jouni.hogander@intel.com>
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

Add drm_WARN_ON for scenario where PSR is activated while it is disabled.

Signed-off-by: Jouni Högander <jouni.hogander@intel.com>
---
 drivers/gpu/drm/i915/display/intel_psr.c | 2 ++
 1 file changed, 2 insertions(+)

diff --git a/drivers/gpu/drm/i915/display/intel_psr.c b/drivers/gpu/drm/i915/display/intel_psr.c
index 8bea2b8188a7..226d4d1c7c82 100644
--- a/drivers/gpu/drm/i915/display/intel_psr.c
+++ b/drivers/gpu/drm/i915/display/intel_psr.c
@@ -1787,6 +1787,8 @@ static void intel_psr_activate(struct intel_dp *intel_dp)
 
 	drm_WARN_ON(display->drm, intel_dp->psr.active);
 
+	drm_WARN_ON(display->drm, !intel_dp->psr.enabled);
+
 	lockdep_assert_held(&intel_dp->psr.lock);
 
 	/* psr1, psr2 and panel-replay are mutually exclusive.*/
-- 
2.43.0

