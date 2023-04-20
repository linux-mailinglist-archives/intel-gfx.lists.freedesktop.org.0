Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id E7E986E9EA4
	for <lists+intel-gfx@lfdr.de>; Fri, 21 Apr 2023 00:14:14 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 5CF6E10ED07;
	Thu, 20 Apr 2023 22:14:13 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 4778910ED0F
 for <intel-gfx@lists.freedesktop.org>; Thu, 20 Apr 2023 22:14:11 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1682028851; x=1713564851;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=XrBg/53hph3OU+hXNkIM5sTcZAy1gzWPC7jgl5I8ICE=;
 b=CKFwPeH5SBCkxQV0QmHYU0Q8pF3jFuYLWJIlCuXfFo/fko6HHWnz64xK
 DsZch/o1H94B4GOQPvJJvYn4eQ0lwqh0cW3p9pUlEZyb3DVFP5TN6FUwu
 5TLsAXuLMNH405A5JdHIH2iJzWuNlGF77equwpah32arudSIPE/qgAIZs
 FNJMSh58F/HhVTVE24Zg1jktrb9y8OhAD+ztji7fua577KHCUz6KcPzQg
 K7q0QMqsrJBgfFRpmxfzjQLARuUQjOXPgSPLnlkI10iqIAx4a9t2mbFfw
 AObTrKIMDkhUgye3uTl0cY0NPfqMfah53bGNnXRZWp72nKmx5IecPjRxG Q==;
X-IronPort-AV: E=McAfee;i="6600,9927,10686"; a="373780997"
X-IronPort-AV: E=Sophos;i="5.99,213,1677571200"; d="scan'208";a="373780997"
Received: from fmsmga007.fm.intel.com ([10.253.24.52])
 by fmsmga101.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 20 Apr 2023 15:14:11 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10686"; a="694744398"
X-IronPort-AV: E=Sophos;i="5.99,213,1677571200"; d="scan'208";a="694744398"
Received: from invictus.jf.intel.com ([10.165.21.201])
 by fmsmga007-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 20 Apr 2023 15:14:10 -0700
From: Radhakrishna Sripada <radhakrishna.sripada@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Thu, 20 Apr 2023 15:12:48 -0700
Message-Id: <20230420221248.2511314-2-radhakrishna.sripada@intel.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20230420221248.2511314-1-radhakrishna.sripada@intel.com>
References: <20230420221248.2511314-1-radhakrishna.sripada@intel.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH 2/2] drm/i915/mtl: Copy c10 phy pll sw state
 from master to slave for bigjoiner
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

From: Stanislav Lisovskiy <stanislav.lisovskiy@intel.com>

We try to verify pll registers in sw state for slave crtc with the hw state.
However in case of bigjoiner we don't calculate those at all, so this verification
will then always fail.
So we should either skip the verification for Bigjoiner slave crtc or copy sw state
from master crtc.

Signed-off-by: Stanislav Lisovskiy <stanislav.lisovskiy@intel.com>
Signed-off-by: Radhakrishna Sripada <radhakrishna.sripada@intel.com>
---
 drivers/gpu/drm/i915/display/intel_display.c | 1 +
 1 file changed, 1 insertion(+)

diff --git a/drivers/gpu/drm/i915/display/intel_display.c b/drivers/gpu/drm/i915/display/intel_display.c
index bf391a6cd8d6..83c98791fea3 100644
--- a/drivers/gpu/drm/i915/display/intel_display.c
+++ b/drivers/gpu/drm/i915/display/intel_display.c
@@ -4556,6 +4556,7 @@ copy_bigjoiner_crtc_state_modeset(struct intel_atomic_state *state,
 	drm_mode_copy(&slave_crtc_state->hw.adjusted_mode,
 		      &master_crtc_state->hw.adjusted_mode);
 	slave_crtc_state->hw.scaling_filter = master_crtc_state->hw.scaling_filter;
+	slave_crtc_state->cx0pll_state = master_crtc_state->cx0pll_state;
 
 	copy_bigjoiner_crtc_state_nomodeset(state, slave_crtc);
 
-- 
2.34.1

