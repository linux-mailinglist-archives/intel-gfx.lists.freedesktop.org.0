Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id E4005671D51
	for <lists+intel-gfx@lfdr.de>; Wed, 18 Jan 2023 14:16:23 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 5DB8F10E746;
	Wed, 18 Jan 2023 13:16:22 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 9F48510E74A
 for <intel-gfx@lists.freedesktop.org>; Wed, 18 Jan 2023 13:16:15 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1674047775; x=1705583775;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=tCD5fm43ms1etShhWs6Ngo5+kr9FAwsTFeuX7tKo5a4=;
 b=K8svf5c3PiJCry/MrbLgFBEczvPbFQ7CVC8CFfF7We+Fgrg/AbK4ukYN
 oahkWgWr0gMVtygYpWGIwLLBeDnfeu2/a9SCqbdbUEYkXDlNZJmfKaHjl
 AKnYbPtYVBUYxquOE5pwrzAOgNTu7T4NRBlz/nlCLyD2yStwboYWvyGs6
 pF6IenUdpG8N//49OSzyvHSdoXW1o/MabZN2kI/JTl2MhpSQX23svkbJd
 DQ6pp2PVUpGrAr6eIej0sgQI/K9mhdde9HKqmaHzylss2YDEf84GUvqCY
 E5E8mzNOqMVISfPPJYDXOPjJzDR8Rq31WKr9gnIwXxTPVzDaiTmXetg4/ A==;
X-IronPort-AV: E=McAfee;i="6500,9779,10593"; a="312857674"
X-IronPort-AV: E=Sophos;i="5.97,226,1669104000"; d="scan'208";a="312857674"
Received: from orsmga007.jf.intel.com ([10.7.209.58])
 by orsmga101.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 18 Jan 2023 05:16:15 -0800
X-IronPort-AV: E=McAfee;i="6500,9779,10593"; a="652934113"
X-IronPort-AV: E=Sophos;i="5.97,226,1669104000"; d="scan'208";a="652934113"
Received: from kozlovdm-mobl3.ger.corp.intel.com (HELO localhost)
 ([10.252.28.132])
 by orsmga007-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 18 Jan 2023 05:16:10 -0800
From: Jani Nikula <jani.nikula@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Wed, 18 Jan 2023 15:15:38 +0200
Message-Id: <20230118131538.3558599-7-jani.nikula@intel.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20230118131538.3558599-1-jani.nikula@intel.com>
References: <20230118131538.3558599-1-jani.nikula@intel.com>
MIME-Version: 1.0
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH 7/7] drm/i915: move GT_FREQUENCY_MULTIPLIER and
 GEN9_FREQ_SCALER to intel_rps.h
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
Cc: jani.nikula@intel.com
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

Declutter i915_drv.h.

Signed-off-by: Jani Nikula <jani.nikula@intel.com>
---
 drivers/gpu/drm/i915/gt/intel_rps.h | 3 +++
 drivers/gpu/drm/i915/i915_drv.h     | 3 ---
 2 files changed, 3 insertions(+), 3 deletions(-)

diff --git a/drivers/gpu/drm/i915/gt/intel_rps.h b/drivers/gpu/drm/i915/gt/intel_rps.h
index 9e1cad9ba0e9..c622962c6bef 100644
--- a/drivers/gpu/drm/i915/gt/intel_rps.h
+++ b/drivers/gpu/drm/i915/gt/intel_rps.h
@@ -12,6 +12,9 @@
 struct i915_request;
 struct drm_printer;
 
+#define GT_FREQUENCY_MULTIPLIER 50
+#define GEN9_FREQ_SCALER 3
+
 void intel_rps_init_early(struct intel_rps *rps);
 void intel_rps_init(struct intel_rps *rps);
 void intel_rps_sanitize(struct intel_rps *rps);
diff --git a/drivers/gpu/drm/i915/i915_drv.h b/drivers/gpu/drm/i915/i915_drv.h
index d12c7932677a..2a6e212f8824 100644
--- a/drivers/gpu/drm/i915/i915_drv.h
+++ b/drivers/gpu/drm/i915/i915_drv.h
@@ -904,9 +904,6 @@ IS_SUBPLATFORM(const struct drm_i915_private *i915,
 #define NUM_L3_SLICES(dev_priv) (IS_HSW_GT3(dev_priv) ? \
 				 2 : HAS_L3_DPF(dev_priv))
 
-#define GT_FREQUENCY_MULTIPLIER 50
-#define GEN9_FREQ_SCALER 3
-
 #define INTEL_NUM_PIPES(dev_priv) (hweight8(RUNTIME_INFO(dev_priv)->pipe_mask))
 
 #define HAS_DISPLAY(dev_priv) (RUNTIME_INFO(dev_priv)->pipe_mask != 0)
-- 
2.34.1

