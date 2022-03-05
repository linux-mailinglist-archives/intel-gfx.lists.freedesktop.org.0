Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 99F0A4CE08D
	for <lists+intel-gfx@lfdr.de>; Sat,  5 Mar 2022 00:07:05 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 2FA7F10F31E;
	Fri,  4 Mar 2022 23:07:00 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga17.intel.com (mga17.intel.com [192.55.52.151])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 6406D10F31E
 for <intel-gfx@lists.freedesktop.org>; Fri,  4 Mar 2022 23:06:58 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1646435218; x=1677971218;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=yaqYxsGeL8z5ZdXTD4QX6iBaByPV0/DZFaDRrSoYTRM=;
 b=oA5gMSA832hhfeXtGWjLXA/NjuaiiwMXi21AhgUmAMyb4VGUHzMXWKAJ
 bdIDEHEtVbcvwlFC5YvQ7RpwpCbXBUzXproO33x6NWLCYbf0lrai5PMGg
 hqYRAxHTNUmRHLI1ckwq3/gUaB62HBdEZSRSOLaPhHQOUJXRPCztZAZJE
 XTnH7EKZvk9549MiRvQ2qct8Rnntx4hT0qS6gi1ZM3n4V1gSMKTqZXRN2
 zgmReQynMKgdSxZRAOGb6PLxGCNL5akwWSP6ZqsA3xGwGCnkGPAs88kHG
 wR0nus+CPlYKK9kKH9JZuX3YXECVM9BYOJ1lUTtdpTNIIp48HyPoeTymc Q==;
X-IronPort-AV: E=McAfee;i="6200,9189,10276"; a="234688999"
X-IronPort-AV: E=Sophos;i="5.90,156,1643702400"; d="scan'208";a="234688999"
Received: from orsmga001.jf.intel.com ([10.7.209.18])
 by fmsmga107.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 04 Mar 2022 15:06:58 -0800
X-IronPort-AV: E=Sophos;i="5.90,156,1643702400"; d="scan'208";a="577022914"
Received: from anushasr-mobl6.jf.intel.com ([10.165.21.155])
 by orsmga001-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 04 Mar 2022 15:06:58 -0800
From: Anusha Srivatsa <anusha.srivatsa@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Fri,  4 Mar 2022 15:03:52 -0800
Message-Id: <20220304230354.1453629-4-anusha.srivatsa@intel.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20220304230354.1453629-1-anusha.srivatsa@intel.com>
References: <20220304230354.1453629-1-anusha.srivatsa@intel.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH 3/5] drm/i915/display:
 s/intel_cdclk_can_crawl/intel_cdclk_crawl
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
Cc: Jani Nikula <jani.nikula@intel.com>
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

Apart from checking if crawling can be performed,
accommodate accessing in-flight cdclk state for any changes
that are needed during commit phase.

Cc: Jani Nikula <jani.nikula@intel.com>
Signed-off-by: Anusha Srivatsa <anusha.srivatsa@intel.com>
---
 drivers/gpu/drm/i915/display/intel_cdclk.c | 18 +++++++++---------
 1 file changed, 9 insertions(+), 9 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_cdclk.c b/drivers/gpu/drm/i915/display/intel_cdclk.c
index 1f879af15d87..840d611197cf 100644
--- a/drivers/gpu/drm/i915/display/intel_cdclk.c
+++ b/drivers/gpu/drm/i915/display/intel_cdclk.c
@@ -1952,8 +1952,8 @@ void intel_cdclk_uninit_hw(struct drm_i915_private *i915)
 }
 
 static bool intel_cdclk_can_crawl(struct drm_i915_private *dev_priv,
-				  const struct intel_cdclk_config *a,
-				  const struct intel_cdclk_config *b)
+				  const struct intel_cdclk_state *a,
+				  struct intel_cdclk_state *b)
 {
 	int a_div, b_div;
 
@@ -1964,13 +1964,13 @@ static bool intel_cdclk_can_crawl(struct drm_i915_private *dev_priv,
 	 * The vco and cd2x divider will change independently
 	 * from each, so we disallow cd2x change when crawling.
 	 */
-	a_div = DIV_ROUND_CLOSEST(a->vco, a->cdclk);
-	b_div = DIV_ROUND_CLOSEST(b->vco, b->cdclk);
+	a_div = DIV_ROUND_CLOSEST(a->actual.vco, a->actual.cdclk);
+	b_div = DIV_ROUND_CLOSEST(b->actual.vco, b->actual.cdclk);
 
-	return a->vco != 0 && b->vco != 0 &&
-		a->vco != b->vco &&
+	return a->actual.vco != 0 && b->actual.vco != 0 &&
+		a->actual.vco != b->actual.vco &&
 		a_div == b_div &&
-		a->ref == b->ref;
+		a->actual.ref == b->actual.ref;
 }
 
 static bool intel_cdclk_squash(struct drm_i915_private *dev_priv,
@@ -2783,8 +2783,8 @@ int intel_modeset_calc_cdclk(struct intel_atomic_state *state)
 		drm_dbg_kms(&dev_priv->drm,
 			    "Can change cdclk via squasher\n");
 	} else if (intel_cdclk_can_crawl(dev_priv,
-					 &old_cdclk_state->actual,
-					 &new_cdclk_state->actual)) {
+					 old_cdclk_state,
+					 new_cdclk_state)) {
 		drm_dbg_kms(&dev_priv->drm,
 			    "Can change cdclk via crawl\n");
 	} else if (pipe != INVALID_PIPE) {
-- 
2.25.1

