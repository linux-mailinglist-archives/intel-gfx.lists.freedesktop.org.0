Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 98A8F9D5E0F
	for <lists+intel-gfx@lfdr.de>; Fri, 22 Nov 2024 12:31:28 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 9C98C10E255;
	Fri, 22 Nov 2024 11:31:26 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="H2F1H44k";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.18])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 2BDE810E255
 for <intel-gfx@lists.freedesktop.org>; Fri, 22 Nov 2024 11:31:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1732275085; x=1763811085;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=0Qk0zeQPPD5OsR5t0S/WDBoGmpvDaRj8YAE3IJ3ISV0=;
 b=H2F1H44kO0tH8uCREuICjnyE5aDdAeky/71IedsZCyfxWHtyAEGjpcIz
 9QunU2wyQY08VFh4n0g6lQFVrhJOYsV+xD/SD/oj9PQFRtxp7juNlaWwu
 Ey36nVB/m9a963xiZzSmWsJqSpapyckElhmn1wTqFV3FIZgxEZr2bxsMm
 jcOiC1Bg+/HHHqlYTzm3uHiedVahct46014s1GezRzYDW/BM4m4UTq6Xc
 xjmZXHCyvVXICdu52WzZZWB+Skxfv6ha4p5HXB4IJZDPGhDEmAvhgAXHD
 XxaSmZVUZstlvxeWIQEaXtQ9fHht0ZGSMEvDCUvhmAXyadIER86GPgBDH Q==;
X-CSE-ConnectionGUID: QhXKtUflTVS1izsdlsf6ag==
X-CSE-MsgGUID: t2M+ub0ZSzaqK6E5Oz3o0Q==
X-IronPort-AV: E=McAfee;i="6700,10204,11263"; a="31783045"
X-IronPort-AV: E=Sophos;i="6.12,175,1728975600"; d="scan'208";a="31783045"
Received: from fmviesa001.fm.intel.com ([10.60.135.141])
 by fmvoesa112.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 22 Nov 2024 03:31:25 -0800
X-CSE-ConnectionGUID: Eid9/Dv5SQeQGinwcISpMA==
X-CSE-MsgGUID: ws1rmCGlR9SI4cgyjDq+kw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.12,175,1728975600"; d="scan'208";a="121510230"
Received: from vsrini4-xps-8920.iind.intel.com (HELO localhost.localdomain)
 ([10.99.123.50])
 by fmviesa001.fm.intel.com with ESMTP; 22 Nov 2024 03:31:23 -0800
From: Vidya Srinivas <vidya.srinivas@intel.com>
To: intel-gfx@lists.freedesktop.org
Cc: ville.syrjala@intel.com, ville.syrjala@linux.intel.com, bgeffon@google.com,
 shawn.c.lee@intel.com, Vidya Srinivas <vidya.srinivas@intel.com>
Subject: [PATCH] drm/i915/dpt: Restrict shrinker to DPT objects not mapped
Date: Fri, 22 Nov 2024 16:37:41 +0530
Message-Id: <20241122110741.405941-1-vidya.srinivas@intel.com>
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

Restricting all DPT objects as unshrinkable was causing
some chromebooks to run out of memory causing
DMA remap failures. Thanks to Brian Geffon for the
pointers on debug and suggesting usage of !obj->mm.mapping

Fixes: 43e2b37e2ab6 ("drm/i915/dpt: Make DPT object unshrinkable")

Credits-to: Brian Geffon <bgeffon@google.com>
Suggested-by: Ville Syrj_l_ <ville.syrjala@linux.intel.com>
Signed-off-by: Vidya Srinivas <vidya.srinivas@intel.com>
---
 drivers/gpu/drm/i915/gem/i915_gem_object.h | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/gpu/drm/i915/gem/i915_gem_object.h b/drivers/gpu/drm/i915/gem/i915_gem_object.h
index 3dc61cbd2e11..b155f0139d4e 100644
--- a/drivers/gpu/drm/i915/gem/i915_gem_object.h
+++ b/drivers/gpu/drm/i915/gem/i915_gem_object.h
@@ -285,7 +285,7 @@ i915_gem_object_is_shrinkable(const struct drm_i915_gem_object *obj)
 {
 	/* TODO: make DPT shrinkable when it has no bound vmas */
 	return i915_gem_object_type_has(obj, I915_GEM_OBJECT_IS_SHRINKABLE) &&
-		!obj->is_dpt;
+		!(obj->is_dpt && obj->mm.mapping);
 }
 
 static inline bool
-- 
2.34.1

