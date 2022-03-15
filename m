Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 016104DA37B
	for <lists+intel-gfx@lfdr.de>; Tue, 15 Mar 2022 20:50:26 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 9BD7410E3E6;
	Tue, 15 Mar 2022 19:50:23 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga07.intel.com (mga07.intel.com [134.134.136.100])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 729DE8954A
 for <intel-gfx@lists.freedesktop.org>; Tue, 15 Mar 2022 19:50:12 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1647373812; x=1678909812;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=Mz72k3vBWkuZ7lO85znm6PbManTRiDujt+cET/kOaI8=;
 b=M1rIxx1//Yrioi+yS0v58hEZUiNV9lS+Q4v5vNY6ovCCGO2cV4DiwjdZ
 FH/xeOBY5LAnflF3DKquprUA3QUZxYN+7VcNbp9A3vKkimvJt7v9npsl5
 AdD4VxpOjuDTXuII8z+oQF9q2NWEkC3ing+GCgBr+KgUCgrgMRXYZHwkB
 nOExDg+1ziOE+2K5wDAiA9lXfug57rwzRZwLOAtuaIA8btvJy9SpefLzu
 kMaVMacWdjFEB0fyUwyZoFx6ehlFUozWNWaOPI2uMaI5r4rodiLJPX+o2
 XUfIQgu/TlvmpW9ms6edyJNpRfdOb1HDjyeSwijBicvVlZS5LdX9lzZpA Q==;
X-IronPort-AV: E=McAfee;i="6200,9189,10286"; a="319629257"
X-IronPort-AV: E=Sophos;i="5.90,184,1643702400"; d="scan'208";a="319629257"
Received: from orsmga005.jf.intel.com ([10.7.209.41])
 by orsmga105.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 15 Mar 2022 12:50:12 -0700
X-IronPort-AV: E=Sophos;i="5.90,184,1643702400"; d="scan'208";a="714312397"
Received: from anushasr-mobl6.jf.intel.com ([10.165.21.155])
 by orsmga005-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 15 Mar 2022 12:50:12 -0700
From: Anusha Srivatsa <anusha.srivatsa@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Tue, 15 Mar 2022 12:47:10 -0700
Message-Id: <20220315194712.2113450-3-anusha.srivatsa@intel.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20220315194712.2113450-1-anusha.srivatsa@intel.com>
References: <20220315194712.2113450-1-anusha.srivatsa@intel.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH 2/4] drm/i915/display:
 s/intel_cdclk_can_squash/intel_cdclk_squash
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

Apart from checking if squashing can be performed,
accommodate accessing in-flight cdclk state for any changes
that are needed during commit phase.

Cc: Jani Nikula <jani.nikula@intel.com>
Signed-off-by: Anusha Srivatsa <anusha.srivatsa@intel.com>
---
 drivers/gpu/drm/i915/display/intel_cdclk.c | 21 +++++++++++----------
 1 file changed, 11 insertions(+), 10 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_cdclk.c b/drivers/gpu/drm/i915/display/intel_cdclk.c
index 8888fda8b701..1f879af15d87 100644
--- a/drivers/gpu/drm/i915/display/intel_cdclk.c
+++ b/drivers/gpu/drm/i915/display/intel_cdclk.c
@@ -1973,10 +1973,11 @@ static bool intel_cdclk_can_crawl(struct drm_i915_private *dev_priv,
 		a->ref == b->ref;
 }
 
-static bool intel_cdclk_can_squash(struct drm_i915_private *dev_priv,
-				   const struct intel_cdclk_config *a,
-				   const struct intel_cdclk_config *b)
+static bool intel_cdclk_squash(struct drm_i915_private *dev_priv,
+			       const struct intel_cdclk_state *a,
+			       struct intel_cdclk_state *b)
 {
+
 	/*
 	 * FIXME should store a bit more state in intel_cdclk_config
 	 * to differentiate squasher vs. cd2x divider properly. For
@@ -1986,10 +1987,10 @@ static bool intel_cdclk_can_squash(struct drm_i915_private *dev_priv,
 	if (!has_cdclk_squasher(dev_priv))
 		return false;
 
-	return a->cdclk != b->cdclk &&
-		a->vco != 0 &&
-		a->vco == b->vco &&
-		a->ref == b->ref;
+	return a->actual.cdclk != b->actual.cdclk &&
+		a->actual.vco != 0 &&
+		a->actual.vco == b->actual.vco &&
+		a->actual.ref == b->actual.ref;
 }
 
 /**
@@ -2776,9 +2777,9 @@ int intel_modeset_calc_cdclk(struct intel_atomic_state *state)
 			pipe = INVALID_PIPE;
 	}
 
-	if (intel_cdclk_can_squash(dev_priv,
-				   &old_cdclk_state->actual,
-				   &new_cdclk_state->actual)) {
+	if (intel_cdclk_squash(dev_priv,
+			       old_cdclk_state,
+			       new_cdclk_state)) {
 		drm_dbg_kms(&dev_priv->drm,
 			    "Can change cdclk via squasher\n");
 	} else if (intel_cdclk_can_crawl(dev_priv,
-- 
2.25.1

