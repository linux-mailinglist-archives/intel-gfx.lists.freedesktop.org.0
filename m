Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 02DAB9A5D28
	for <lists+intel-gfx@lfdr.de>; Mon, 21 Oct 2024 09:34:18 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 16D2510E428;
	Mon, 21 Oct 2024 07:34:16 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="Q7/wbZxs";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.15])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 3394710E428
 for <intel-gfx@lists.freedesktop.org>; Mon, 21 Oct 2024 07:34:14 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1729496054; x=1761032054;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=QHgLFG8YQw1gcxjs/9UvA3hDXqHg96MaM0igbvo6rnQ=;
 b=Q7/wbZxs9KAX//2ttdFXf0NWYzbUFVtvO6BGYIRLSPdpWBTIbDIJu4hq
 Wfm+O8rZPYKII6KUnkX4dVLtm9HW6DpoSnhmHkcG+A4FhKnP46Rr8pP0y
 Ig4fsDQfwj+d0VZL9boZb+00sr8RdfRjYW0ybQjbxZsZ5Wh4usSx/1GKi
 NukMVgNr4Q/TiUhze74bdHHefVMYnMJl4nvaAdVlSbJ6JqLRfbVkLZpAB
 xQWS4KLbZ7mMkNuKlqDZZ9uewLMpkZ1GqRg7/KWp++9rh1nlbjsXtiQWb
 tPoSwJ0cETBFVq8eia3zaCei27/0BCT1SXzkM+oKxBI11Nj/tZrsnZv4I w==;
X-CSE-ConnectionGUID: BX0QOVPOT7mDhYRGlpTCLg==
X-CSE-MsgGUID: zyc/oXPrSOmI1SVSqNjapw==
X-IronPort-AV: E=McAfee;i="6700,10204,11222"; a="32651793"
X-IronPort-AV: E=Sophos;i="6.11,199,1725346800"; d="scan'208";a="32651793"
Received: from fmviesa005.fm.intel.com ([10.60.135.145])
 by orvoesa107.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 21 Oct 2024 00:34:14 -0700
X-CSE-ConnectionGUID: tAdDPXjeSgek0tthaZ6Iwg==
X-CSE-MsgGUID: dlpHkoYzR1u7F2C3+ECw1A==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.11,220,1725346800"; d="scan'208";a="84042601"
Received: from cpetruta-mobl1.ger.corp.intel.com (HELO jhogande-mobl1..)
 ([10.245.245.142])
 by fmviesa005-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 21 Oct 2024 00:34:12 -0700
From: =?UTF-8?q?Jouni=20H=C3=B6gander?= <jouni.hogander@intel.com>
To: intel-gfx@lists.freedesktop.org
Cc: ramanaidu.naladala@intel.com,
 =?UTF-8?q?Jouni=20H=C3=B6gander?= <jouni.hogander@intel.com>
Subject: [PATCH] drm/i915/psr: vbt.psr.enable is only for eDP panels
Date: Mon, 21 Oct 2024 10:33:49 +0300
Message-Id: <20241021073349.1222331-1-jouni.hogander@intel.com>
X-Mailer: git-send-email 2.34.1
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

We don't want to check vbt.psr.enable on DP Panel Replay as it is targeted
for eDP panel usage only.

Signed-off-by: Jouni Högander <jouni.hogander@intel.com>
---
 drivers/gpu/drm/i915/display/intel_psr.c | 4 +++-
 1 file changed, 3 insertions(+), 1 deletion(-)

diff --git a/drivers/gpu/drm/i915/display/intel_psr.c b/drivers/gpu/drm/i915/display/intel_psr.c
index 3b20325b3f6a..4176163ec19a 100644
--- a/drivers/gpu/drm/i915/display/intel_psr.c
+++ b/drivers/gpu/drm/i915/display/intel_psr.c
@@ -233,7 +233,9 @@ static bool psr_global_enabled(struct intel_dp *intel_dp)
 	switch (intel_dp->psr.debug & I915_PSR_DEBUG_MODE_MASK) {
 	case I915_PSR_DEBUG_DEFAULT:
 		if (display->params.enable_psr == -1)
-			return connector->panel.vbt.psr.enable;
+			return intel_dp_is_edp(intel_dp) ?
+				connector->panel.vbt.psr.enable :
+				true;
 		return display->params.enable_psr;
 	case I915_PSR_DEBUG_DISABLE:
 		return false;
-- 
2.34.1

