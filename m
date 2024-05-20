Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 2E2E48C9FDF
	for <lists+intel-gfx@lfdr.de>; Mon, 20 May 2024 17:43:26 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id A87DC891D7;
	Mon, 20 May 2024 15:43:24 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=fail reason="signature verification failed" (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="cR46irLT";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.19])
 by gabe.freedesktop.org (Postfix) with ESMTPS id AFF86891D7
 for <intel-gfx@lists.freedesktop.org>; Mon, 20 May 2024 15:43:23 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1716219804; x=1747755804;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=h3LSq93u8qqOLtPMVD6ngZ1xo5TgL+9T5blxSnTLDU0=;
 b=cR46irLTVZMXILKRPnDAAZnzh4L7bubwjzOIfKAlD6ugA6mLFchL/Q8T
 MvkHFPddxUXKFaVFCZ3M3FNvt5rfgXJ+xJirif7pA2lVQ+wulZO9EQxvd
 sDLQCd5ynma6fZ6gSE53jiU6JlAh3Pbb2dTjBSdDW8AgxQrr8gwMNc2BD
 6RBZbmbva0PW/NDwvbu6srBIh7f1oN8g5BJhBqJjcy3FejHBwoLjRa252
 +4ai72IGQWYRGSHra8eAM9OmPnvrW4RRIlaD2koYLPPO5AjPII8877uSU
 aqLapDPd3LQWmRRIU0okoY51KgsWPBTyZQGRuCGcfGRPYWdu1oLW8nLWt Q==;
X-CSE-ConnectionGUID: dRmyMYKpRdOYoDzhCps+nQ==
X-CSE-MsgGUID: W2KE/phNRpOGD2yfGqbZxg==
X-IronPort-AV: E=McAfee;i="6600,9927,11078"; a="12204938"
X-IronPort-AV: E=Sophos;i="6.08,175,1712646000"; d="scan'208";a="12204938"
Received: from orviesa009.jf.intel.com ([10.64.159.149])
 by fmvoesa113.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 20 May 2024 08:43:23 -0700
X-CSE-ConnectionGUID: pxMNUqDISO6RatUkMUIhtg==
X-CSE-MsgGUID: k9alW/A8Ty23vv1ROuCeMg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.08,175,1712646000"; d="scan'208";a="32741963"
Received: from vsrini4-xps-8920.iind.intel.com ([10.99.123.50])
 by orviesa009.jf.intel.com with ESMTP; 20 May 2024 08:43:21 -0700
From: "Srinivas, Vidya" <vidya.srinivas@intel.com>
To: intel-gfx@lists.freedesktop.org
Cc: ville.syrjala@intel.com, shawn.c.lee@intel.com,
	"Srinivas, Vidya" <vidya.srinivas@intel.com>,
	Srinivas@freedesktop.org
Subject: [PATCH] drm/i915/dpt: Make DPT object unshrinkable
Date: Mon, 20 May 2024 20:54:10 +0530
Message-Id: <20240520152410.1098393-1-vidya.srinivas@intel.com>
X-Mailer: git-send-email 2.34.1
MIME-Version: 1.0
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

In some scenarios, the DPT object gets shrunk but
the actual framebuffer did not and thus its still
there on the DPT's vm->bound_list. Then it tries to
rewrite the PTEs via a stale CPU mapping. This causes panic.

Credits-to: Ville Syrjala <ville.syrjala@linux.intel.com>
	    Shawn Lee <shawn.c.lee@intel.com>

Signed-off-by: Srinivas, Vidya <vidya.srinivas@intel.com>
---
 drivers/gpu/drm/i915/gem/i915_gem_object.h | 3 ++-
 1 file changed, 2 insertions(+), 1 deletion(-)

diff --git a/drivers/gpu/drm/i915/gem/i915_gem_object.h b/drivers/gpu/drm/i915/gem/i915_gem_object.h
index 3560a062d287..e6b485fc54d4 100644
--- a/drivers/gpu/drm/i915/gem/i915_gem_object.h
+++ b/drivers/gpu/drm/i915/gem/i915_gem_object.h
@@ -284,7 +284,8 @@ bool i915_gem_object_has_iomem(const struct drm_i915_gem_object *obj);
 static inline bool
 i915_gem_object_is_shrinkable(const struct drm_i915_gem_object *obj)
 {
-	return i915_gem_object_type_has(obj, I915_GEM_OBJECT_IS_SHRINKABLE);
+	return i915_gem_object_type_has(obj, I915_GEM_OBJECT_IS_SHRINKABLE) &&
+		!obj->is_dpt;
 }
 
 static inline bool
-- 
2.34.1

