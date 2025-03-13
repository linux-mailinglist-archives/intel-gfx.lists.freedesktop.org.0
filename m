Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id CEA9CA5F746
	for <lists+intel-gfx@lfdr.de>; Thu, 13 Mar 2025 15:09:23 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 53CF010E8A2;
	Thu, 13 Mar 2025 14:09:22 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="Lqmkati/";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.19])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 6FC7310E178
 for <intel-gfx@lists.freedesktop.org>; Thu, 13 Mar 2025 14:09:21 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1741874961; x=1773410961;
 h=from:to:subject:date:message-id:in-reply-to:references:
 mime-version:content-transfer-encoding;
 bh=iD5y75D4hnstMvyLuPru7dlqIQ0aYUdRaSa2OOIclzc=;
 b=Lqmkati/Ndwr/XRdeSKerdXlcexPp+cYKh36X0Ek1sK8gtSvzoh+ZgKs
 fhyrxzNUOaq6vm2X0oHqZkyHPtNktstdzFjDGLfMaSpd7M0RPjXFSqX7f
 yMutIguUG+CPx54soTWFZzKzRth8l6JpKo4DRhvl/2y8mRsZ5SOY3EZrn
 6HrmhhkWuPhcf6G0Emag3Cuu29AY8BzUlfSapWv4/XhDiSMBbEdDoyh/w
 Bzc6HvGDa+FlHUFL9v2sTzZSenaLOMBzxosT57irzE9bmuU9DQv8U6AvZ
 +a/9lvG4GIPuwjslcSqNe9NE+n8b2lLlqJys/wK7woCsL9lf+SziCYS95 A==;
X-CSE-ConnectionGUID: DZRT5/WGT/mCQos2tSkp7Q==
X-CSE-MsgGUID: uAvXk9dcQAaonulLimPSPA==
X-IronPort-AV: E=McAfee;i="6700,10204,11372"; a="42854857"
X-IronPort-AV: E=Sophos;i="6.14,244,1736841600"; d="scan'208";a="42854857"
Received: from orviesa005.jf.intel.com ([10.64.159.145])
 by orvoesa111.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 13 Mar 2025 07:08:43 -0700
X-CSE-ConnectionGUID: CVWU25SbRB+qms7xlVErvQ==
X-CSE-MsgGUID: R1mQx/8+QT2fhjGBUXjc5A==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.14,244,1736841600"; d="scan'208";a="126138395"
Received: from stinkpipe.fi.intel.com (HELO stinkbox) ([10.237.72.74])
 by orviesa005.jf.intel.com with SMTP; 13 Mar 2025 07:08:42 -0700
Received: by stinkbox (sSMTP sendmail emulation);
 Thu, 13 Mar 2025 16:08:41 +0200
From: Ville Syrjala <ville.syrjala@linux.intel.com>
To: intel-gfx@lists.freedesktop.org
Subject: [PATCH 01/10] drm/i915: Extract intel_memory_type_is_local()
Date: Thu, 13 Mar 2025 16:08:29 +0200
Message-ID: <20250313140838.29742-2-ville.syrjala@linux.intel.com>
X-Mailer: git-send-email 2.45.3
In-Reply-To: <20250313140838.29742-1-ville.syrjala@linux.intel.com>
References: <20250313140838.29742-1-ville.syrjala@linux.intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
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

From: Ville Syrjälä <ville.syrjala@linux.intel.com>

Extract the "is this memory region local?" check into a helper.
I'll have another use for this in the BIOS FB takeover.

Signed-off-by: Ville Syrjälä <ville.syrjala@linux.intel.com>
---
 drivers/gpu/drm/i915/gem/i915_gem_lmem.c   |  3 +--
 drivers/gpu/drm/i915/intel_memory_region.c | 11 +++++++++++
 drivers/gpu/drm/i915/intel_memory_region.h |  2 ++
 3 files changed, 14 insertions(+), 2 deletions(-)

diff --git a/drivers/gpu/drm/i915/gem/i915_gem_lmem.c b/drivers/gpu/drm/i915/gem/i915_gem_lmem.c
index 388f90784d8a..f566191d843b 100644
--- a/drivers/gpu/drm/i915/gem/i915_gem_lmem.c
+++ b/drivers/gpu/drm/i915/gem/i915_gem_lmem.c
@@ -48,8 +48,7 @@ bool i915_gem_object_is_lmem(struct drm_i915_gem_object *obj)
 	    i915_gem_object_evictable(obj))
 		assert_object_held(obj);
 #endif
-	return mr && (mr->type == INTEL_MEMORY_LOCAL ||
-		      mr->type == INTEL_MEMORY_STOLEN_LOCAL);
+	return mr && intel_memory_type_is_local(mr->type);
 }
 
 /**
diff --git a/drivers/gpu/drm/i915/intel_memory_region.c b/drivers/gpu/drm/i915/intel_memory_region.c
index d40ee1b42110..d2abc0315ba1 100644
--- a/drivers/gpu/drm/i915/intel_memory_region.c
+++ b/drivers/gpu/drm/i915/intel_memory_region.c
@@ -171,6 +171,17 @@ intel_memory_region_by_type(struct drm_i915_private *i915,
 	return NULL;
 }
 
+bool intel_memory_type_is_local(enum intel_memory_type mem_type)
+{
+	switch (mem_type) {
+	case INTEL_MEMORY_LOCAL:
+	case INTEL_MEMORY_STOLEN_LOCAL:
+		return true;
+	default:
+		return false;
+	}
+}
+
 /**
  * intel_memory_region_reserve - Reserve a memory range
  * @mem: The region for which we want to reserve a range.
diff --git a/drivers/gpu/drm/i915/intel_memory_region.h b/drivers/gpu/drm/i915/intel_memory_region.h
index 5973b6fe13cf..bfa1697b9566 100644
--- a/drivers/gpu/drm/i915/intel_memory_region.h
+++ b/drivers/gpu/drm/i915/intel_memory_region.h
@@ -85,6 +85,8 @@ struct intel_memory_region {
 	void *region_private;
 };
 
+bool intel_memory_type_is_local(enum intel_memory_type mem_type);
+
 struct intel_memory_region *
 intel_memory_region_lookup(struct drm_i915_private *i915,
 			   u16 class, u16 instance);
-- 
2.45.3

