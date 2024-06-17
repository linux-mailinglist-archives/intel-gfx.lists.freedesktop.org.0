Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id C37AC90B176
	for <lists+intel-gfx@lfdr.de>; Mon, 17 Jun 2024 16:19:38 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 0C68E10E3E2;
	Mon, 17 Jun 2024 14:19:37 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="LyXjMa2Z";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.16])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 9BE8310E3E2;
 Mon, 17 Jun 2024 14:19:35 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1718633976; x=1750169976;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=0Yn3khoseLunC6aRDinvmUwl8RNSOSrvBcYvLU4D3vc=;
 b=LyXjMa2Z6cdRafn0uoDFJky0g2Ggqx45fVF7Q4O1gpOP6FmvPEuOvs5C
 kDxMmLty+EFI8Ik9jjBn4wdNKCUCWRQoYl4laMk+LeUSmx4fUksEaG7uX
 n1jxZ0zxiJyB7RY1KZt9aVAEeXdPKSqJUQ4jRSx4YL6JoXQDkT2RWjQHq
 nNp/1N9HDtLO4dNMjqH+nmRVU+GO91OESAq1vQ1IZxnFNxLJZ+TIqONWc
 KmomAViTk9EzwyVrlXFt0q+RIVLtubst47sHIROCyUkNZP6gKnLIWFh0g
 +4C8vwEZrlkkEFfsRIp4wJjkB0evBtqCVzVSMG4ftdYYGqyOBToqdbqwx g==;
X-CSE-ConnectionGUID: CLhXvjX2TqKDzvmgjEye6w==
X-CSE-MsgGUID: jU4moI3ZRzSkSPTD3gVqyw==
X-IronPort-AV: E=McAfee;i="6700,10204,11105"; a="15593327"
X-IronPort-AV: E=Sophos;i="6.08,244,1712646000"; d="scan'208";a="15593327"
Received: from fmviesa006.fm.intel.com ([10.60.135.146])
 by orvoesa108.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 17 Jun 2024 07:19:35 -0700
X-CSE-ConnectionGUID: AaPDnSE2RwGzRDvWCV8CEw==
X-CSE-MsgGUID: QES4aZV3TrWui6fflAidxQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.08,244,1712646000"; d="scan'208";a="41083544"
Received: from mjarzebo-mobl1.ger.corp.intel.com (HELO localhost)
 ([10.245.246.85])
 by fmviesa006-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 17 Jun 2024 07:19:34 -0700
From: Jani Nikula <jani.nikula@intel.com>
To: intel-gfx@lists.freedesktop.org,
	intel-xe@lists.freedesktop.org
Cc: jani.nikula@intel.com
Subject: [PATCH 4/5] drm/i915/frontbuffer: hide ->write
Date: Mon, 17 Jun 2024 17:19:01 +0300
Message-Id: <926007fda6f9d9f57d7c84bdeb891cabf4aafac7.1718633874.git.jani.nikula@intel.com>
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

Add accessor to frontbuffer ->write to avoid direct access from outside
of intel_frontbuffer.c in preparation for making struct
intel_frontbuffer opaque.

Signed-off-by: Jani Nikula <jani.nikula@intel.com>
---
 drivers/gpu/drm/i915/display/intel_frontbuffer.c | 5 +++++
 drivers/gpu/drm/i915/display/intel_frontbuffer.h | 2 ++
 drivers/gpu/drm/i915/i915_vma.c                  | 2 +-
 3 files changed, 8 insertions(+), 1 deletion(-)

diff --git a/drivers/gpu/drm/i915/display/intel_frontbuffer.c b/drivers/gpu/drm/i915/display/intel_frontbuffer.c
index 42defe2b7661..dd5fd1e2859e 100644
--- a/drivers/gpu/drm/i915/display/intel_frontbuffer.c
+++ b/drivers/gpu/drm/i915/display/intel_frontbuffer.c
@@ -87,6 +87,11 @@ void intel_frontbuffer_get_raw(struct intel_frontbuffer *front)
 	kref_get(&front->ref);
 }
 
+struct i915_active *intel_frontbuffer_active(struct intel_frontbuffer *front)
+{
+	return &front->write;
+}
+
 /**
  * frontbuffer_flush - flush frontbuffer
  * @i915: i915 device
diff --git a/drivers/gpu/drm/i915/display/intel_frontbuffer.h b/drivers/gpu/drm/i915/display/intel_frontbuffer.h
index 221f41096416..62d6e3cedea4 100644
--- a/drivers/gpu/drm/i915/display/intel_frontbuffer.h
+++ b/drivers/gpu/drm/i915/display/intel_frontbuffer.h
@@ -134,4 +134,6 @@ void intel_frontbuffer_track(struct intel_frontbuffer *old,
 			     struct intel_frontbuffer *new,
 			     unsigned int frontbuffer_bits);
 
+struct i915_active *intel_frontbuffer_active(struct intel_frontbuffer *front);
+
 #endif /* __INTEL_FRONTBUFFER_H__ */
diff --git a/drivers/gpu/drm/i915/i915_vma.c b/drivers/gpu/drm/i915/i915_vma.c
index d2f064d2525c..2b5cc7af19c5 100644
--- a/drivers/gpu/drm/i915/i915_vma.c
+++ b/drivers/gpu/drm/i915/i915_vma.c
@@ -1975,7 +1975,7 @@ int _i915_vma_move_to_active(struct i915_vma *vma,
 		front = i915_gem_object_get_frontbuffer(obj);
 		if (unlikely(front)) {
 			if (intel_frontbuffer_invalidate(front, ORIGIN_CS))
-				i915_active_add_request(&front->write, rq);
+				i915_active_add_request(intel_frontbuffer_active(front), rq);
 			intel_frontbuffer_put(front);
 		}
 	}
-- 
2.39.2

