Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id C03A3A5F745
	for <lists+intel-gfx@lfdr.de>; Thu, 13 Mar 2025 15:09:23 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 53F7710E8A3;
	Thu, 13 Mar 2025 14:09:22 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="SZ9W39CN";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.19])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 8EA9310E178
 for <intel-gfx@lists.freedesktop.org>; Thu, 13 Mar 2025 14:09:20 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1741874960; x=1773410960;
 h=from:to:subject:date:message-id:in-reply-to:references:
 mime-version:content-transfer-encoding;
 bh=MkAQ5JiJWVKyPCMXdWVEwhfd5BV9fHgBP2rfyqcQHLQ=;
 b=SZ9W39CNkIEqiwq3S0mJAwCb1Pqybyu6e5YE91arXqmq45IhudOam23m
 4OP7zPgHRgdTuv6b5lv4tjnR1f3mbN/PLs2Hs4MSp6Vgbd2NdJQcrP/xT
 T+qifIvqPqFWO6bCpqG4xrRHmn79GAcaXg5rupYPFl4ZlCVo9U+uyg5/k
 1h6XlGx3GzYuqiR5IXCUfCTICOHgmNpYqaO/7yLuAzr+sB3NFtrJXAVN8
 pnonxuP5O9SpWEWR+quxuxIjPrLIo/wiCZdCGMQGpmK7wPp5ZtlyavIlg
 0QzcHHe0VZF+MfNYYSUq1kYYI6BVyvWeP7W4uoWGvcpzkMxlYJ5mPoHuR w==;
X-CSE-ConnectionGUID: QSjDqxiPSbS+5eIAy8jCJw==
X-CSE-MsgGUID: 1t9VfULRRNWaDUjKjNnt4w==
X-IronPort-AV: E=McAfee;i="6700,10204,11372"; a="42854875"
X-IronPort-AV: E=Sophos;i="6.14,244,1736841600"; d="scan'208";a="42854875"
Received: from orviesa005.jf.intel.com ([10.64.159.145])
 by orvoesa111.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 13 Mar 2025 07:08:46 -0700
X-CSE-ConnectionGUID: q5V5SIchQwGhksXsFb8BfA==
X-CSE-MsgGUID: f4mQu4vqTp6GJtGBroyRlw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.14,244,1736841600"; d="scan'208";a="126138414"
Received: from stinkpipe.fi.intel.com (HELO stinkbox) ([10.237.72.74])
 by orviesa005.jf.intel.com with SMTP; 13 Mar 2025 07:08:44 -0700
Received: by stinkbox (sSMTP sendmail emulation);
 Thu, 13 Mar 2025 16:08:43 +0200
From: Ville Syrjala <ville.syrjala@linux.intel.com>
To: intel-gfx@lists.freedesktop.org
Subject: [PATCH 02/10] drm/i915: Expose intel_memory_type_str()
Date: Thu, 13 Mar 2025 16:08:30 +0200
Message-ID: <20250313140838.29742-3-ville.syrjala@linux.intel.com>
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

Rename region_type_str() into intel_memory_type_str() and
expose it outside intel_memory_region.c. I'll have another
use for this in the BIOS FB takeover code.

Signed-off-by: Ville Syrjälä <ville.syrjala@linux.intel.com>
---
 drivers/gpu/drm/i915/intel_memory_region.c | 4 ++--
 drivers/gpu/drm/i915/intel_memory_region.h | 1 +
 2 files changed, 3 insertions(+), 2 deletions(-)

diff --git a/drivers/gpu/drm/i915/intel_memory_region.c b/drivers/gpu/drm/i915/intel_memory_region.c
index d2abc0315ba1..59bd603e6deb 100644
--- a/drivers/gpu/drm/i915/intel_memory_region.c
+++ b/drivers/gpu/drm/i915/intel_memory_region.c
@@ -227,7 +227,7 @@ static int intel_memory_region_memtest(struct intel_memory_region *mem,
 	return err;
 }
 
-static const char *region_type_str(u16 type)
+const char *intel_memory_type_str(enum intel_memory_type type)
 {
 	switch (type) {
 	case INTEL_MEMORY_SYSTEM:
@@ -271,7 +271,7 @@ intel_memory_region_create(struct drm_i915_private *i915,
 	mem->instance = instance;
 
 	snprintf(mem->uabi_name, sizeof(mem->uabi_name), "%s%u",
-		 region_type_str(type), instance);
+		 intel_memory_type_str(type), instance);
 
 	mutex_init(&mem->objects.lock);
 	INIT_LIST_HEAD(&mem->objects.list);
diff --git a/drivers/gpu/drm/i915/intel_memory_region.h b/drivers/gpu/drm/i915/intel_memory_region.h
index bfa1697b9566..b3b75be9ced5 100644
--- a/drivers/gpu/drm/i915/intel_memory_region.h
+++ b/drivers/gpu/drm/i915/intel_memory_region.h
@@ -109,6 +109,7 @@ void intel_memory_regions_driver_release(struct drm_i915_private *i915);
 struct intel_memory_region *
 intel_memory_region_by_type(struct drm_i915_private *i915,
 			    enum intel_memory_type mem_type);
+const char *intel_memory_type_str(enum intel_memory_type type);
 
 __printf(2, 3) void
 intel_memory_region_set_name(struct intel_memory_region *mem,
-- 
2.45.3

