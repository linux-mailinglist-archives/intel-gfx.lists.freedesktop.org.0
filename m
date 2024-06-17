Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 7745290B175
	for <lists+intel-gfx@lfdr.de>; Mon, 17 Jun 2024 16:19:33 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id C5E1410E3B9;
	Mon, 17 Jun 2024 14:19:31 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="QY9CUgna";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.16])
 by gabe.freedesktop.org (Postfix) with ESMTPS id CA79C10E3B9;
 Mon, 17 Jun 2024 14:19:30 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1718633971; x=1750169971;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=dJzV6LAVdMMWODOnRkeLY1jigUjq6n8CFWefMgDlCVw=;
 b=QY9CUgnafCzmb/8E+8RiaPac/Cle7jPwhthtbhybRteYoFdyfDx9S8md
 8Ry0zFOHhq7muVsfLYt7lSod/MHqIxCrXxTxgzfQXVxTW8n9EAPx4oq9s
 jLn6EbpOPFMoJk2UdwFXNL+ld2anRKvhwnSKwEtyJYHh95u8c+tFs2ngy
 CGMZ7dtikAKMQ1e1xw097onjT9cC3fm64tp8ZTPddG3yUZPxRGp/RFmJt
 px4EMzQytYsEVa7ZgxJdr9CL2YmAbQamRFpBftaU3U3wJh/2A63FYXoet
 FCmjixt6fpL+md5cXu7BaqpZQlC8K5k8XPfur7506+wu2df/z3wzAQnkZ g==;
X-CSE-ConnectionGUID: +HycxGXxRCiBz4wklM2xDw==
X-CSE-MsgGUID: QNLiPgGpRO2o1NVltCj0Kw==
X-IronPort-AV: E=McAfee;i="6700,10204,11105"; a="15593319"
X-IronPort-AV: E=Sophos;i="6.08,244,1712646000"; d="scan'208";a="15593319"
Received: from fmviesa006.fm.intel.com ([10.60.135.146])
 by orvoesa108.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 17 Jun 2024 07:19:31 -0700
X-CSE-ConnectionGUID: O8Tb7KMkTAeHQcSHbFrKeA==
X-CSE-MsgGUID: Q27b/WKxTYWbKD5BmP6lLg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.08,244,1712646000"; d="scan'208";a="41083540"
Received: from mjarzebo-mobl1.ger.corp.intel.com (HELO localhost)
 ([10.245.246.85])
 by fmviesa006-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 17 Jun 2024 07:19:29 -0700
From: Jani Nikula <jani.nikula@intel.com>
To: intel-gfx@lists.freedesktop.org,
	intel-xe@lists.freedesktop.org
Cc: jani.nikula@intel.com
Subject: [PATCH 3/5] drm/i915/frontbuffer: add low-level kref accessors
Date: Mon, 17 Jun 2024 17:19:00 +0300
Message-Id: <0c93a7e223b11d39af1dc6a1e195d2e1965c3e17.1718633874.git.jani.nikula@intel.com>
X-Mailer: git-send-email 2.39.2
In-Reply-To: <cover.1718633874.git.jani.nikula@intel.com>
References: <cover.1718633874.git.jani.nikula@intel.com>
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

Add _raw accessors for front->ref to avoid direct access from outside of
intel_frontbuffer.c, in preparation for making struct intel_frontbuffer
opaque.

Signed-off-by: Jani Nikula <jani.nikula@intel.com>
---
 drivers/gpu/drm/i915/display/intel_frontbuffer.c       | 10 ++++++++++
 drivers/gpu/drm/i915/display/intel_frontbuffer.h       |  3 +++
 drivers/gpu/drm/i915/gem/i915_gem_object_frontbuffer.h |  4 ++--
 3 files changed, 15 insertions(+), 2 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_frontbuffer.c b/drivers/gpu/drm/i915/display/intel_frontbuffer.c
index effb13e8a6bb..42defe2b7661 100644
--- a/drivers/gpu/drm/i915/display/intel_frontbuffer.c
+++ b/drivers/gpu/drm/i915/display/intel_frontbuffer.c
@@ -77,6 +77,16 @@ void intel_frontbuffer_bits_or(struct intel_frontbuffer *front, unsigned int bit
 	atomic_or(bits, &front->bits);
 }
 
+bool intel_frontbuffer_get_unless_zero_raw(struct intel_frontbuffer *front)
+{
+	return kref_get_unless_zero(&front->ref);
+}
+
+void intel_frontbuffer_get_raw(struct intel_frontbuffer *front)
+{
+	kref_get(&front->ref);
+}
+
 /**
  * frontbuffer_flush - flush frontbuffer
  * @i915: i915 device
diff --git a/drivers/gpu/drm/i915/display/intel_frontbuffer.h b/drivers/gpu/drm/i915/display/intel_frontbuffer.h
index 827b0129da71..221f41096416 100644
--- a/drivers/gpu/drm/i915/display/intel_frontbuffer.h
+++ b/drivers/gpu/drm/i915/display/intel_frontbuffer.h
@@ -79,6 +79,9 @@ void intel_frontbuffer_flip(struct drm_i915_private *i915,
 
 void intel_frontbuffer_put(struct intel_frontbuffer *front);
 
+bool intel_frontbuffer_get_unless_zero_raw(struct intel_frontbuffer *front);
+void intel_frontbuffer_get_raw(struct intel_frontbuffer *front);
+
 struct intel_frontbuffer *
 intel_frontbuffer_get(struct drm_i915_gem_object *obj);
 
diff --git a/drivers/gpu/drm/i915/gem/i915_gem_object_frontbuffer.h b/drivers/gpu/drm/i915/gem/i915_gem_object_frontbuffer.h
index 9fbf14867a2a..22df3c70c8a6 100644
--- a/drivers/gpu/drm/i915/gem/i915_gem_object_frontbuffer.h
+++ b/drivers/gpu/drm/i915/gem/i915_gem_object_frontbuffer.h
@@ -56,7 +56,7 @@ i915_gem_object_get_frontbuffer(const struct drm_i915_gem_object *obj)
 		if (!front)
 			break;
 
-		if (unlikely(!kref_get_unless_zero(&front->ref)))
+		if (unlikely(!intel_frontbuffer_get_unless_zero_raw(front)))
 			continue;
 
 		if (likely(front == rcu_access_pointer(obj->frontbuffer)))
@@ -92,7 +92,7 @@ i915_gem_object_set_frontbuffer(struct drm_i915_gem_object *obj,
 		drm_gem_object_put(intel_bo_to_drm_bo(obj));
 	} else if (rcu_access_pointer(obj->frontbuffer)) {
 		cur = rcu_dereference_protected(obj->frontbuffer, true);
-		kref_get(&cur->ref);
+		intel_frontbuffer_get_raw(cur);
 	} else {
 		drm_gem_object_get(intel_bo_to_drm_bo(obj));
 		rcu_assign_pointer(obj->frontbuffer, front);
-- 
2.39.2

