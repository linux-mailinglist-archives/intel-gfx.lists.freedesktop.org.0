Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 139367E38B7
	for <lists+intel-gfx@lfdr.de>; Tue,  7 Nov 2023 11:18:25 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 0638910E50B;
	Tue,  7 Nov 2023 10:18:19 +0000 (UTC)
X-Original-To: Intel-gfx@lists.freedesktop.org
Delivered-To: Intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.9])
 by gabe.freedesktop.org (Postfix) with ESMTPS id C1E9B10E508
 for <Intel-gfx@lists.freedesktop.org>; Tue,  7 Nov 2023 10:18:17 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1699352297; x=1730888297;
 h=from:to:subject:date:message-id:in-reply-to:references:
 mime-version:content-transfer-encoding;
 bh=vOSjxxSOK1zv287zbRh6ewhylMLtFduGVoCrCqa70s8=;
 b=S7E0hkI2ei7eugvGB1/3sEvQW5wO7bG+qsNSSzQYS4GncK7YJMYqMLcO
 619jbiDU944zMAcEQHeMa/atw0ZgQPq30i7+fKoMUsAQPt4tpTukA3JTk
 3zehuskjAF+YGRspcjwTM6BWcK6yhIb7zy+iGaTQk8O12oqLSiZtPGymz
 VGife6vddWfdXROzsC+shZm/6GbwoSAmb8EvO2T7tftxWLjfAf91Jm92f
 oviEP+0l1TRW5jvZ6Jtvu22lWP5s4+UVE/hjmcA1eKjWIKKcIjXan9fl9
 YLte5/wrQRx0ZOHEgvVZyNppGheDuPCVp3xWvFus2QEio9xo8+Di5qwQo Q==;
X-IronPort-AV: E=McAfee;i="6600,9927,10886"; a="8127419"
X-IronPort-AV: E=Sophos;i="6.03,283,1694761200"; 
   d="scan'208";a="8127419"
Received: from orsmga006.jf.intel.com ([10.7.209.51])
 by orvoesa101.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 07 Nov 2023 02:18:17 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10886"; a="739083131"
X-IronPort-AV: E=Sophos;i="6.03,283,1694761200"; d="scan'208";a="739083131"
Received: from nchauh1x-mobl.ger.corp.intel.com (HELO localhost.localdomain)
 ([10.213.235.212])
 by orsmga006-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 07 Nov 2023 02:18:16 -0800
From: Tvrtko Ursulin <tvrtko.ursulin@linux.intel.com>
To: Intel-gfx@lists.freedesktop.org
Date: Tue,  7 Nov 2023 10:18:05 +0000
Message-Id: <20231107101806.608990-5-tvrtko.ursulin@linux.intel.com>
X-Mailer: git-send-email 2.39.2
In-Reply-To: <20231107101806.608990-1-tvrtko.ursulin@linux.intel.com>
References: <20231107101806.608990-1-tvrtko.ursulin@linux.intel.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [CI 5/6] drm/i915: Add stable memory region names
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

From: Tvrtko Ursulin <tvrtko.ursulin@intel.com>

At the moment memory region names are a bit too varied and too
inconsistent to be used for ABI purposes, like for upcoming fdinfo
memory stats.

System memory can be either system or system-ttm. Local memory has the
instance number appended, others do not. Not only incosistent but thi
kind of implementation detail is uninteresting for intended users of
fdinfo memory stats.

Add a stable name always formed as $type$instance. Could have chosen a
different stable scheme, but I think any consistent and stable scheme
should do just fine.

Signed-off-by: Tvrtko Ursulin <tvrtko.ursulin@intel.com>
Reviewed-by: Aravind Iddamsetty <aravind.iddamsetty@intel.com>
---
 drivers/gpu/drm/i915/intel_memory_region.c | 19 +++++++++++++++++++
 drivers/gpu/drm/i915/intel_memory_region.h |  1 +
 2 files changed, 20 insertions(+)

diff --git a/drivers/gpu/drm/i915/intel_memory_region.c b/drivers/gpu/drm/i915/intel_memory_region.c
index 3d1fdea9811d..60a03340bbd4 100644
--- a/drivers/gpu/drm/i915/intel_memory_region.c
+++ b/drivers/gpu/drm/i915/intel_memory_region.c
@@ -216,6 +216,22 @@ static int intel_memory_region_memtest(struct intel_memory_region *mem,
 	return err;
 }
 
+static const char *region_type_str(u16 type)
+{
+	switch (type) {
+	case INTEL_MEMORY_SYSTEM:
+		return "system";
+	case INTEL_MEMORY_LOCAL:
+		return "local";
+	case INTEL_MEMORY_STOLEN_LOCAL:
+		return "stolen-local";
+	case INTEL_MEMORY_STOLEN_SYSTEM:
+		return "stolen-system";
+	default:
+		return "unknown";
+	}
+}
+
 struct intel_memory_region *
 intel_memory_region_create(struct drm_i915_private *i915,
 			   resource_size_t start,
@@ -244,6 +260,9 @@ intel_memory_region_create(struct drm_i915_private *i915,
 	mem->type = type;
 	mem->instance = instance;
 
+	snprintf(mem->uabi_name, sizeof(mem->uabi_name), "%s%u",
+		 region_type_str(type), instance);
+
 	mutex_init(&mem->objects.lock);
 	INIT_LIST_HEAD(&mem->objects.list);
 
diff --git a/drivers/gpu/drm/i915/intel_memory_region.h b/drivers/gpu/drm/i915/intel_memory_region.h
index 2953ed5c3248..9ba36454e51b 100644
--- a/drivers/gpu/drm/i915/intel_memory_region.h
+++ b/drivers/gpu/drm/i915/intel_memory_region.h
@@ -80,6 +80,7 @@ struct intel_memory_region {
 	u16 instance;
 	enum intel_region_id id;
 	char name[16];
+	char uabi_name[16];
 	bool private; /* not for userspace */
 
 	struct {
-- 
2.39.2

