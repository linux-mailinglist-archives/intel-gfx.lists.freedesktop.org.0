Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 737A07EDD66
	for <lists+intel-gfx@lfdr.de>; Thu, 16 Nov 2023 10:11:31 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id D97E810E259;
	Thu, 16 Nov 2023 09:11:29 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.55.52.93])
 by gabe.freedesktop.org (Postfix) with ESMTPS id C1BA810E2D0
 for <intel-gfx@lists.freedesktop.org>; Thu, 16 Nov 2023 09:11:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1700125887; x=1731661887;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=taH6POLar5xijHbeqjmknLM44o8XT0b984TIVG7K+0c=;
 b=ORpU0vH9Ig86B6Dh7oy6ttFdNEYTmOA5FhKCWZloFNFCa6BY6KtPlYkU
 kv4k/BdNChvhcKJu10rRkKeTD4hYIn4nr8shX1uHWwKeI+0/i75qhTrw5
 /kwMkrm3FKBut3BVwDxCRSW+OgERE5cANYsa7TmX4RURTN39Hu81y0xYc
 aj6tHEkI6DEcyHtDsFH5asIcbDAlvJXraRVKGOMgSZMmnLMqqvbOIRNFl
 u1WvZ+OJJs5RZN/nvtCYueFx/EMuU5uyv1ENATkcZdmy80YN+Af79hZEL
 +ZXgdvcZ188nEwNXRa1dRiXuNYy+RYGrTSMMo2IoNBe1zLKZHjjmevqGT Q==;
X-IronPort-AV: E=McAfee;i="6600,9927,10895"; a="388215566"
X-IronPort-AV: E=Sophos;i="6.03,307,1694761200"; d="scan'208";a="388215566"
Received: from orsmga004.jf.intel.com ([10.7.209.38])
 by fmsmga102.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 16 Nov 2023 01:11:26 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10895"; a="888853007"
X-IronPort-AV: E=Sophos;i="6.03,307,1694761200"; d="scan'208";a="888853007"
Received: from sorvi2.fi.intel.com ([10.237.72.194])
 by orsmga004.jf.intel.com with ESMTP; 16 Nov 2023 01:11:24 -0800
From: Mika Kahola <mika.kahola@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Thu, 16 Nov 2023 11:05:12 +0200
Message-Id: <20231116090512.480373-1-mika.kahola@intel.com>
X-Mailer: git-send-email 2.34.1
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH] drm/i915/display: Use int type for
 entry_setup_frames
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

entry_setup_frames variable is defined as u8. However, the
function call intel_psr_entry_setup_frames() can return
negative error code. There is a type mismatch here, so let's
switch to use int here as well.

Fixes: 2b981d57e480 ("drm/i915/display: Support PSR entry VSC packet to be transmitted one frame earlier")

Signed-off-by: Mika Kahola <mika.kahola@intel.com>
---
 drivers/gpu/drm/i915/display/intel_psr.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/gpu/drm/i915/display/intel_psr.c b/drivers/gpu/drm/i915/display/intel_psr.c
index 8d180132a74b..204da50e3f28 100644
--- a/drivers/gpu/drm/i915/display/intel_psr.c
+++ b/drivers/gpu/drm/i915/display/intel_psr.c
@@ -1319,7 +1319,7 @@ static bool _psr_compute_config(struct intel_dp *intel_dp,
 {
 	struct drm_i915_private *dev_priv = dp_to_i915(intel_dp);
 	const struct drm_display_mode *adjusted_mode = &crtc_state->hw.adjusted_mode;
-	u8 entry_setup_frames;
+	int entry_setup_frames;
 
 	/*
 	 * Current PSR panels don't work reliably with VRR enabled
-- 
2.34.1

