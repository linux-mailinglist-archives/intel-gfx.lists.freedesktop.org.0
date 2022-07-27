Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id E498B5835A1
	for <lists+intel-gfx@lfdr.de>; Thu, 28 Jul 2022 01:28:19 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id CA32E10ED9F;
	Wed, 27 Jul 2022 23:28:01 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga14.intel.com (mga14.intel.com [192.55.52.115])
 by gabe.freedesktop.org (Postfix) with ESMTPS id BFBBD10F0A0
 for <intel-gfx@lists.freedesktop.org>; Wed, 27 Jul 2022 23:27:30 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1658964450; x=1690500450;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=mXLQJEnWvhKsyzqQrzUvOWo/d1uH21ZcEBUgnLU3LgI=;
 b=aaIkCP4hrQzylHugOIehanqagGKtbyHfP/vWq9CmGYJOV7T++dENJs0y
 Xxc5d0bZaknz3hJFfl+yAU52CzVdR9HL0TnwoQ6Ou8JFsExTpJ5ESmv6T
 NzMrXVWpUpOUvWHnDyf75Nynn02Wi1ArODWe1MicE6K71fXZKhHIxa9+j
 BC9WIRz9eKitHIXLDRrUwcR3ZkNqmV6N2RXvquhLcQhuQPCECCwNQSL26
 GIrz+k4ZJoH7b+zFzWEMOruCPKFvyye4dr9VgS2d++yMLiezhET410ojb
 UyXXkyz7KA0RF/rS3k+zB/JIHOP7xNHgj9hsuFONLHwVv6+IlhcpxMion A==;
X-IronPort-AV: E=McAfee;i="6400,9594,10421"; a="288384982"
X-IronPort-AV: E=Sophos;i="5.93,196,1654585200"; d="scan'208";a="288384982"
Received: from orsmga007.jf.intel.com ([10.7.209.58])
 by fmsmga103.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 27 Jul 2022 16:27:30 -0700
X-IronPort-AV: E=Sophos;i="5.93,196,1654585200"; d="scan'208";a="597595493"
Received: from unknown (HELO anushasr-mobl7.intel.com) ([10.212.185.30])
 by orsmga007-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 27 Jul 2022 16:27:30 -0700
From: Anusha Srivatsa <anusha.srivatsa@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Wed, 27 Jul 2022 16:26:42 -0700
Message-Id: <20220727232643.533884-4-anusha.srivatsa@intel.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20220727232643.533884-1-anusha.srivatsa@intel.com>
References: <20220727232643.533884-1-anusha.srivatsa@intel.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH 3/4] drm/i915/display:
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
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

Apart from checking if crawling can be performed,
accommodate accessing in-flight cdclk state for any changes
that are needed during commit phase.

Cc: Matt Roper <matthew.d.roper@intel.com>
Signed-off-by: Anusha Srivatsa <anusha.srivatsa@intel.com>
---
 drivers/gpu/drm/i915/display/intel_cdclk.c | 22 +++++++++++-----------
 1 file changed, 11 insertions(+), 11 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_cdclk.c b/drivers/gpu/drm/i915/display/intel_cdclk.c
index 4081b880a6ef..cb6e419562dd 100644
--- a/drivers/gpu/drm/i915/display/intel_cdclk.c
+++ b/drivers/gpu/drm/i915/display/intel_cdclk.c
@@ -1944,9 +1944,9 @@ void intel_cdclk_uninit_hw(struct drm_i915_private *i915)
 		skl_cdclk_uninit_hw(i915);
 }
 
-static bool intel_cdclk_can_crawl(struct drm_i915_private *dev_priv,
-				  const struct intel_cdclk_config *a,
-				  const struct intel_cdclk_config *b)
+static bool intel_cdclk_crawl(struct drm_i915_private *dev_priv,
+				  const struct intel_cdclk_state *a,
+				  struct intel_cdclk_state *b)
 {
 	int a_div, b_div;
 
@@ -1957,13 +1957,13 @@ static bool intel_cdclk_can_crawl(struct drm_i915_private *dev_priv,
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
@@ -2764,9 +2764,9 @@ int intel_modeset_calc_cdclk(struct intel_atomic_state *state)
 			       new_cdclk_state)) {
 		drm_dbg_kms(&dev_priv->drm,
 			    "Can change cdclk via squasher\n");
-	} else if (intel_cdclk_can_crawl(dev_priv,
-					 &old_cdclk_state->actual,
-					 &new_cdclk_state->actual)) {
+	} else if (intel_cdclk_crawl(dev_priv,
+				     old_cdclk_state,
+				     new_cdclk_state)) {
 		drm_dbg_kms(&dev_priv->drm,
 			    "Can change cdclk via crawl\n");
 	} else if (pipe != INVALID_PIPE) {
-- 
2.25.1

