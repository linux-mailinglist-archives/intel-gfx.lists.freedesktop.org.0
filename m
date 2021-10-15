Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id E756B42ED4A
	for <lists+intel-gfx@lfdr.de>; Fri, 15 Oct 2021 11:11:38 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 3A18B6ED0B;
	Fri, 15 Oct 2021 09:11:37 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga04.intel.com (mga04.intel.com [192.55.52.120])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 0EF906ED0B
 for <intel-gfx@lists.freedesktop.org>; Fri, 15 Oct 2021 09:11:36 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6200,9189,10137"; a="226654222"
X-IronPort-AV: E=Sophos;i="5.85,375,1624345200"; d="scan'208";a="226654222"
Received: from orsmga004.jf.intel.com ([10.7.209.38])
 by fmsmga104.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 15 Oct 2021 02:11:35 -0700
X-IronPort-AV: E=Sophos;i="5.85,375,1624345200"; d="scan'208";a="592921437"
Received: from rboyadji-mobl.amr.corp.intel.com (HELO rdvivi-mobl4.intel.com)
 ([10.213.161.67])
 by orsmga004-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 15 Oct 2021 02:11:34 -0700
From: Rodrigo Vivi <rodrigo.vivi@intel.com>
To: intel-gfx@lists.freedesktop.org
Cc: Rodrigo Vivi <rodrigo.vivi@intel.com>, Jani Nikula <jani.nikula@intel.com>,
 Matthew Brost <matthew.brost@intel.com>
Date: Fri, 15 Oct 2021 05:11:29 -0400
Message-Id: <20211015091129.83226-1-rodrigo.vivi@intel.com>
X-Mailer: git-send-email 2.31.1
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH] drm/i915: Clean-up bonding debug message.
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

We should stop using the gen name and the "+" to reference
the newer platforms.
And on this case specifically we can simplify the debug
message even further.

Cc: Jani Nikula <jani.nikula@intel.com>
Cc: Matthew Brost <matthew.brost@intel.com>
Signed-off-by: Rodrigo Vivi <rodrigo.vivi@intel.com>
---
 drivers/gpu/drm/i915/gem/i915_gem_context.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/gpu/drm/i915/gem/i915_gem_context.c b/drivers/gpu/drm/i915/gem/i915_gem_context.c
index d225d3dd0b40..30759b651180 100644
--- a/drivers/gpu/drm/i915/gem/i915_gem_context.c
+++ b/drivers/gpu/drm/i915/gem/i915_gem_context.c
@@ -479,7 +479,7 @@ set_proto_ctx_engines_bond(struct i915_user_extension __user *base, void *data)
 	if (GRAPHICS_VER(i915) >= 12 && !IS_TIGERLAKE(i915) &&
 	    !IS_ROCKETLAKE(i915) && !IS_ALDERLAKE_S(i915)) {
 		drm_dbg(&i915->drm,
-			"Bonding on gen12+ aside from TGL, RKL, and ADL_S not supported\n");
+			"Bonding not supported on this platform\n");
 		return -ENODEV;
 	}
 
-- 
2.31.1

