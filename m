Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id D08B94D5C03
	for <lists+intel-gfx@lfdr.de>; Fri, 11 Mar 2022 08:07:32 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 0833810E1AD;
	Fri, 11 Mar 2022 07:07:30 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga05.intel.com (mga05.intel.com [192.55.52.43])
 by gabe.freedesktop.org (Postfix) with ESMTPS id C6C2F10E1A5
 for <intel-gfx@lists.freedesktop.org>; Fri, 11 Mar 2022 07:07:23 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1646982443; x=1678518443;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=Mz72k3vBWkuZ7lO85znm6PbManTRiDujt+cET/kOaI8=;
 b=AoAAav6e+D9iTBGlbNGgRgaaxlac8uRxsUtuWbamBfi2GS4RXczTtDWT
 Nj/7q1gf9wn2WgXn1IddEsbhvjER+AAw5VUAULyFEErLNKyqVnYhzKVf9
 g2VPskhzrdUhqLNhrbTpJBVSvhPdkNJlfnb0bqHASm6IfHdsH85blVf0T
 5hFAib+JIl1+DCYElHW8rJf0ymwW/kqVEKNMkx2VpBG6XS5UUBovG3s2m
 5tzrRfO2AI5eeVG27E8iMQtfnj/pGECFDU8GcjJ1d7S1bbfJ22HOFp38s
 J0oKFjd44dq7gvD42jVoXn7VKJod9gTG3OMejWMba+A+J1+kEeuLkLyEf Q==;
X-IronPort-AV: E=McAfee;i="6200,9189,10282"; a="341944526"
X-IronPort-AV: E=Sophos;i="5.90,173,1643702400"; d="scan'208";a="341944526"
Received: from orsmga008.jf.intel.com ([10.7.209.65])
 by fmsmga105.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 10 Mar 2022 23:07:23 -0800
X-IronPort-AV: E=Sophos;i="5.90,173,1643702400"; d="scan'208";a="555186351"
Received: from anushasr-mobl6.jf.intel.com ([10.165.21.155])
 by orsmga008-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 10 Mar 2022 23:07:23 -0800
From: Anusha Srivatsa <anusha.srivatsa@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Thu, 10 Mar 2022 23:04:27 -0800
Message-Id: <20220311070429.1993708-3-anusha.srivatsa@intel.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20220311070429.1993708-1-anusha.srivatsa@intel.com>
References: <20220311070429.1993708-1-anusha.srivatsa@intel.com>
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

