Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 9F52B908D4B
	for <lists+intel-gfx@lfdr.de>; Fri, 14 Jun 2024 16:23:20 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id CE5FA10ED6A;
	Fri, 14 Jun 2024 14:23:18 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="UkaHwEx0";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.17])
 by gabe.freedesktop.org (Postfix) with ESMTPS id D774F10ED6A;
 Fri, 14 Jun 2024 14:23:17 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1718374998; x=1749910998;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=WKTZfkq4hlNpel0YHX7G79geSr2AykTXKrvuJ0NvrrI=;
 b=UkaHwEx0+bKNTsC9o0tdG73yX+XbEIYI0fRifluvy8o71Bu1B0SFTWm5
 dZZ2zdYpghyQHkxbfPy5ngncPAFSSgWbeQ5uCiN9LIowH4BP2kvWBZj7q
 uZk8mN7BB2G1ItCWMW5hOJp31M32EpxFGwV/1OmHoScJcxwZWLDd9VUHP
 uFBeFK6o9GQMnMnGjCDrk+D3R1Wjc+huGOlSZBLQKvF5315iFhg0DdU3e
 6HdcAdecK8yh23kd7B0fPLnJb7yS2S/1F1wweZ3/w9dkz57Y9Y30cqN2l
 k1hT/mgF8DoexBhdw7DzL9OWyIPZg9iyqLMkXDdvnljb+Jx+DTGpDhPxs A==;
X-CSE-ConnectionGUID: mLrJo/5AQkqeKW6Qa0Q7aw==
X-CSE-MsgGUID: +Rfb2Lv5T4ehIu3cl1Jtsg==
X-IronPort-AV: E=McAfee;i="6700,10204,11103"; a="15387296"
X-IronPort-AV: E=Sophos;i="6.08,237,1712646000"; d="scan'208";a="15387296"
Received: from orviesa006.jf.intel.com ([10.64.159.146])
 by orvoesa109.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 14 Jun 2024 07:23:17 -0700
X-CSE-ConnectionGUID: FLvJheGrRyG+AzbwYKmxqA==
X-CSE-MsgGUID: +FRZ0bViQAei76umXpESXg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.08,237,1712646000"; d="scan'208";a="41020131"
Received: from klitkey1-mobl1.ger.corp.intel.com (HELO localhost)
 ([10.245.246.221])
 by orviesa006-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 14 Jun 2024 07:23:15 -0700
From: Jani Nikula <jani.nikula@intel.com>
To: intel-gfx@lists.freedesktop.org,
	intel-xe@lists.freedesktop.org
Cc: jani.nikula@intel.com, ville.syrjala@linux.intel.com,
 stable@vger.kernel.org
Subject: [PATCH] drm/i915/mso: using joiner is not possible with eDP MSO
Date: Fri, 14 Jun 2024 17:23:11 +0300
Message-Id: <20240614142311.589089-1-jani.nikula@intel.com>
X-Mailer: git-send-email 2.39.2
MIME-Version: 1.0
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

It's not possible to use the joiner at the same time with eDP MSO. When
a panel needs MSO, it's not optional, so MSO trumps joiner.

v3: Only change intel_dp_has_joiner(), leave debugfs alone (Ville)

Cc: stable@vger.kernel.org
Cc: Ville Syrjala <ville.syrjala@linux.intel.com>
Closes: https://gitlab.freedesktop.org/drm/xe/kernel/-/issues/1668
Signed-off-by: Jani Nikula <jani.nikula@intel.com>

---

Just the minimal fix for starters to move things along.
---
 drivers/gpu/drm/i915/display/intel_dp.c | 4 ++++
 1 file changed, 4 insertions(+)

diff --git a/drivers/gpu/drm/i915/display/intel_dp.c b/drivers/gpu/drm/i915/display/intel_dp.c
index 9a9bb0f5b7fe..ab33c9de393a 100644
--- a/drivers/gpu/drm/i915/display/intel_dp.c
+++ b/drivers/gpu/drm/i915/display/intel_dp.c
@@ -465,6 +465,10 @@ bool intel_dp_has_joiner(struct intel_dp *intel_dp)
 	struct intel_encoder *encoder = &intel_dig_port->base;
 	struct drm_i915_private *dev_priv = to_i915(encoder->base.dev);
 
+	/* eDP MSO is not compatible with joiner */
+	if (intel_dp->mso_link_count)
+		return false;
+
 	return DISPLAY_VER(dev_priv) >= 12 ||
 		(DISPLAY_VER(dev_priv) == 11 &&
 		 encoder->port != PORT_A);
-- 
2.39.2

