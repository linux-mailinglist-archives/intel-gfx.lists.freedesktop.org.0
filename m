Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 979B28CC46B
	for <lists+intel-gfx@lfdr.de>; Wed, 22 May 2024 17:48:38 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 3896310E2E6;
	Wed, 22 May 2024 15:48:36 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="JKS0xP3t";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.18])
 by gabe.freedesktop.org (Postfix) with ESMTPS id ACB3710E2E6
 for <intel-gfx@lists.freedesktop.org>; Wed, 22 May 2024 15:48:34 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1716392915; x=1747928915;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=c3lwhsx8v5J7zTkRHTVoheJXRrnP8JRgkqZfDTZitpA=;
 b=JKS0xP3tshW/d77vdcpaSARhddgTc4nt3zN45k9Q7O/eJYYnxoFl6psk
 WVcfHSohQiTjxHQA7IUOULHmmHGspGuHr6rCR8iPsX9hMwK7tnWwiDq3g
 68qts1eVMJiE0ukkyRsPfP8DB3vylQv185WBiUzljbnm0WiAurlS0Fr9G
 OpG3tfifuPmrMdQktMcsR34JkxnRUw6vo+j8cBnzw0zoIoxAu+b/tPf7n
 J8qOBYoFggJ8BrgHZMzgDFhNXknyAKR0+cPSt/5NW8NvsppN7bI5ScKfu
 uXJ1snid+/47ct3juW+zrOSOCyAnsWvTIyPTRB3MQ8p4/M0ETC55Fma2A Q==;
X-CSE-ConnectionGUID: uQWeH62USVionpHsudFTRA==
X-CSE-MsgGUID: 0tfnK1f0TkGiLbUflwtHBw==
X-IronPort-AV: E=McAfee;i="6600,9927,11079"; a="12834943"
X-IronPort-AV: E=Sophos;i="6.08,181,1712646000"; d="scan'208";a="12834943"
Received: from fmviesa004.fm.intel.com ([10.60.135.144])
 by orvoesa110.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 22 May 2024 08:48:34 -0700
X-CSE-ConnectionGUID: BUAv5LjVSTS2SOGy7XZDAQ==
X-CSE-MsgGUID: FXsbVGXPQUqUqIXrx/ZqyA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.08,181,1712646000"; d="scan'208";a="37913283"
Received: from vsrini4-xps-8920.iind.intel.com ([10.99.123.50])
 by fmviesa004.fm.intel.com with ESMTP; 22 May 2024 08:48:32 -0700
From: Vidya Srinivas <vidya.srinivas@intel.com>
To: intel-gfx@lists.freedesktop.org
Cc: shawn.c.lee@intel.com, Vidya Srinivas <vidya.srinivas@intel.com>,
 Ville Syrjala <ville.syrjala@linux.intel.com>, stable@vger.kernel.org
Subject: [PATCH] drm/i915/dpt: Make DPT object unshrinkable
Date: Wed, 22 May 2024 20:59:16 +0530
Message-Id: <20240522152916.1702614-1-vidya.srinivas@intel.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20240520165634.1162470-1-vidya.srinivas@intel.com>
References: <20240520165634.1162470-1-vidya.srinivas@intel.com>
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

Suggested-by: Ville Syrjala <ville.syrjala@linux.intel.com>
Cc: stable@vger.kernel.org
Fixes: 0dc987b699ce ("drm/i915/display: Add smem fallback allocation for dpt")
Signed-off-by: Vidya Srinivas <vidya.srinivas@intel.com>
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

