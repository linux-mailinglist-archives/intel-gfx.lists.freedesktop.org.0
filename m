Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 36279700644
	for <lists+intel-gfx@lfdr.de>; Fri, 12 May 2023 13:05:03 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 88E8A10E67E;
	Fri, 12 May 2023 11:05:01 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga17.intel.com (mga17.intel.com [192.55.52.151])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 4FA3910E67E
 for <intel-gfx@lists.freedesktop.org>; Fri, 12 May 2023 11:05:00 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1683889500; x=1715425500;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=Q4WzmUNDY7oEmM8ephmMaKCrEOMxIXMFuL5JeljRCCk=;
 b=ElqLt6BdCymmMxM+INyopCxnhFpSuDRbZ5CUqTnR94ZAFdwgeV++AwLA
 MZzsxFgleeHdDDMspMRJ68srzwF7RSKAv6UmoLehDhFfmLC9XutW7Ct16
 SrRXbJFYA/e/rr3lESEEBUeTqY9xk4iY2/6Qbf4qQLNSrehwEvYE1yxtO
 taLrm5qK2subUv6uBV5wWAuBoryv9ja3i4cXAh4/HLXv/qRmbG9Mc68OP
 4UEsLu/Z/eJZcgSq9ccLBfXX1B1eXht36H48jTd/gKcCeMUYrNCDv/CaA
 Z//Y6dTawZ4hZeHx5GRISar7C8iFXO20cDy44th/WbMmuaDwDqVT5orHk g==;
X-IronPort-AV: E=McAfee;i="6600,9927,10707"; a="331129561"
X-IronPort-AV: E=Sophos;i="5.99,269,1677571200"; d="scan'208";a="331129561"
Received: from orsmga006.jf.intel.com ([10.7.209.51])
 by fmsmga107.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 12 May 2023 04:04:59 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10707"; a="677625682"
X-IronPort-AV: E=Sophos;i="5.99,269,1677571200"; d="scan'208";a="677625682"
Received: from tsavina-mobl2.ger.corp.intel.com (HELO localhost)
 ([10.252.63.51])
 by orsmga006-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 12 May 2023 04:04:53 -0700
From: Jani Nikula <jani.nikula@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Fri, 12 May 2023 14:04:42 +0300
Message-Id: <20230512110444.1448231-2-jani.nikula@intel.com>
X-Mailer: git-send-email 2.39.2
In-Reply-To: <20230512110444.1448231-1-jani.nikula@intel.com>
References: <20230512110444.1448231-1-jani.nikula@intel.com>
MIME-Version: 1.0
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH 2/4] drm/i915/crtc: replace I915_STATE_WARN_ON()
 with I915_STATE_WARN()
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

Describe the assertion better.

Signed-off-by: Jani Nikula <jani.nikula@intel.com>
---
 drivers/gpu/drm/i915/display/intel_crtc.c | 4 +++-
 1 file changed, 3 insertions(+), 1 deletion(-)

diff --git a/drivers/gpu/drm/i915/display/intel_crtc.c b/drivers/gpu/drm/i915/display/intel_crtc.c
index df7d05f1e14b..1e3f88d00609 100644
--- a/drivers/gpu/drm/i915/display/intel_crtc.c
+++ b/drivers/gpu/drm/i915/display/intel_crtc.c
@@ -35,7 +35,9 @@
 
 static void assert_vblank_disabled(struct drm_crtc *crtc)
 {
-	if (I915_STATE_WARN_ON(drm_crtc_vblank_get(crtc) == 0))
+	if (I915_STATE_WARN(drm_crtc_vblank_get(crtc) == 0,
+			    "[CRTC:%d:%s] vblank assertion failure (expected off, current on)\n",
+			    crtc->base.id, crtc->name))
 		drm_crtc_vblank_put(crtc);
 }
 
-- 
2.39.2

