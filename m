Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id E615712D03B
	for <lists+intel-gfx@lfdr.de>; Mon, 30 Dec 2019 14:24:39 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 2D92589D02;
	Mon, 30 Dec 2019 13:24:38 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga18.intel.com (mga18.intel.com [134.134.136.126])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 2A51F89CDF
 for <intel-gfx@lists.freedesktop.org>; Mon, 30 Dec 2019 13:24:31 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
 by orsmga106.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 30 Dec 2019 05:24:30 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.69,375,1571727600"; d="scan'208";a="251375503"
Received: from ramaling-i9x.iind.intel.com ([10.99.66.154])
 by fmsmga002.fm.intel.com with ESMTP; 30 Dec 2019 05:24:29 -0800
From: Ramalingam C <ramalingam.c@intel.com>
To: intel-gfx <intel-gfx@lists.freedesktop.org>,
 Chris Wilson <chris@chris-wilson.co.uk>
Date: Mon, 30 Dec 2019 18:53:49 +0530
Message-Id: <20191230132351.17487-2-ramalingam.c@intel.com>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20191230132351.17487-1-ramalingam.c@intel.com>
References: <20191230132351.17487-1-ramalingam.c@intel.com>
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH 1/3] drm/i915: lookup for mem_region of a
 mem_type
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
Cc: Matthew Auld <matthew.auld@intel.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

Lookup function to retrieve the pointer to a memory region of
a mem_type.

v2:
  for_each_memory_region is used.

Signed-off-by: Ramalingam C <ramalingam.c@intel.com>
cc: Matthew Auld <matthew.auld@intel.com>
Reviewed-by: Matthew Auld <matthew.auld@intel.com> [v1]
---
 drivers/gpu/drm/i915/intel_memory_region.c | 13 +++++++++++++
 drivers/gpu/drm/i915/intel_memory_region.h |  3 +++
 2 files changed, 16 insertions(+)

diff --git a/drivers/gpu/drm/i915/intel_memory_region.c b/drivers/gpu/drm/i915/intel_memory_region.c
index a6211cbec71e..7cb009a16b03 100644
--- a/drivers/gpu/drm/i915/intel_memory_region.c
+++ b/drivers/gpu/drm/i915/intel_memory_region.c
@@ -16,6 +16,19 @@ const u32 intel_region_map[] = {
 	[INTEL_REGION_STOLEN] = REGION_MAP(INTEL_MEMORY_STOLEN, 0),
 };
 
+struct intel_memory_region *
+intel_memory_region_by_type(struct drm_i915_private *i915,
+			    enum intel_memory_type mem_type)
+{
+	struct intel_memory_region *mr;
+	int id;
+
+	for_each_memory_region(mr, i915, id)
+		if (mr->type == mem_type)
+			return mr;
+	return NULL;
+}
+
 static u64
 intel_memory_region_free_pages(struct intel_memory_region *mem,
 			       struct list_head *blocks)
diff --git a/drivers/gpu/drm/i915/intel_memory_region.h b/drivers/gpu/drm/i915/intel_memory_region.h
index 7f4bff8f8be1..232490d89a83 100644
--- a/drivers/gpu/drm/i915/intel_memory_region.h
+++ b/drivers/gpu/drm/i915/intel_memory_region.h
@@ -132,6 +132,9 @@ void intel_memory_region_put(struct intel_memory_region *mem);
 
 int intel_memory_regions_hw_probe(struct drm_i915_private *i915);
 void intel_memory_regions_driver_release(struct drm_i915_private *i915);
+struct intel_memory_region *
+intel_memory_region_by_type(struct drm_i915_private *i915,
+			    enum intel_memory_type mem_type);
 
 __printf(2, 3) void
 intel_memory_region_set_name(struct intel_memory_region *mem,
-- 
2.20.1

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
