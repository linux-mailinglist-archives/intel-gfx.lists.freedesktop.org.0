Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id DC7B04C59FE
	for <lists+intel-gfx@lfdr.de>; Sun, 27 Feb 2022 09:18:52 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 69DC210E605;
	Sun, 27 Feb 2022 08:18:41 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
 by gabe.freedesktop.org (Postfix) with ESMTPS id DE2D710E4C2;
 Sun, 27 Feb 2022 08:18:39 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1645949919; x=1677485919;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=BmTSmK0cYrOL9g1jVQKmFZCOfv2IVnFLbt7I6N8ZtV0=;
 b=CXzGbg0PJLJ7YH4tg/ZOEmm+m/3esl7wf2QJeSHi7/OcmQ3lIof974R3
 ZfgTHMOk5R+Bcn62b2Lk435xtnofSQC8fLYJBAT0ESR7UszLeiQCokAwo
 S3/N3ZU5RfFfrh46B0YktZ4D0i4T8zMFyGr6/tgdR0b+35YmikjLiGEiw
 aUif3iYwZgT27CeNB1I41eb/0y2tMrHrjqJEY/WrANLBQ/73mssn2K+AY
 kvIj+mwH3D0+SPFCB2gGR3ZjAZqyb6ZiXtIs9QyA1gLdpK2hkei8ircCv
 E1TRujxrNjlQQQ993Om6iaP0sFu7NRpqg1mSxmV5tDzuQ0JrgndUUORwZ w==;
X-IronPort-AV: E=McAfee;i="6200,9189,10270"; a="250296017"
X-IronPort-AV: E=Sophos;i="5.90,140,1643702400"; d="scan'208";a="250296017"
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
 by fmsmga102.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 27 Feb 2022 00:18:39 -0800
X-IronPort-AV: E=Sophos;i="5.90,140,1643702400"; d="scan'208";a="685041172"
Received: from jingyiji-mobl.amr.corp.intel.com (HELO localhost)
 ([10.209.25.43])
 by fmsmga001-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 27 Feb 2022 00:18:36 -0800
From: Jordan Justen <jordan.l.justen@intel.com>
To: intel-gfx <intel-gfx@lists.freedesktop.org>
Date: Sun, 27 Feb 2022 00:18:31 -0800
Message-Id: <20220227081831.1089720-5-jordan.l.justen@intel.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20220227081831.1089720-1-jordan.l.justen@intel.com>
References: <20220227081831.1089720-1-jordan.l.justen@intel.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH v6 4/4] drm/i915/guc: Verify hwconfig blob
 matches supported format
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
Cc: dri-devel <dri-devel@lists.freedesktop.org>
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

i915_drm.h now defines the format of the returned
DRM_I915_QUERY_HWCONFIG_BLOB query item. Since i915 receives this from
the black box GuC software, it should verify that the data matches
that format before sending it to user-space.

The verification makes a single simple pass through the blob contents,
so this verification step should not add a significant amount of init
time to i915.

v3:
 * Add various changes suggested by Tvrtko

v4:
 * Rewrite verify_hwconfig_blob() to hopefully be clearer without
   relying on comments so much, and add various suggestions from
   Michal.

v6:
 * Rework based on John's updated "drm/i915/guc: Add fetch of hwconfig
   table" v2 which stores the hwconfig blob at the GT level.

Signed-off-by: Jordan Justen <jordan.l.justen@intel.com>
Acked-by: Jon Bloomfield <jon.bloomfield@intel.com>
Reviewed-by: Tvrtko Ursulin <tvrtko.ursulin@intel.com>
---
 .../gpu/drm/i915/gt/uc/intel_guc_hwconfig.c   | 43 ++++++++++++++++++-
 1 file changed, 42 insertions(+), 1 deletion(-)

diff --git a/drivers/gpu/drm/i915/gt/uc/intel_guc_hwconfig.c b/drivers/gpu/drm/i915/gt/uc/intel_guc_hwconfig.c
index e0f65bdd1c84..1a3134d3d434 100644
--- a/drivers/gpu/drm/i915/gt/uc/intel_guc_hwconfig.c
+++ b/drivers/gpu/drm/i915/gt/uc/intel_guc_hwconfig.c
@@ -68,8 +68,44 @@ static int guc_hwconfig_discover_size(struct intel_guc *guc, struct intel_hwconf
 	return 0;
 }
 
+static int verify_hwconfig_blob(struct intel_guc *guc, struct intel_hwconfig *hwconfig)
+{
+	struct drm_device *drm = &guc_to_gt(guc)->i915->drm;
+	struct drm_i915_query_hwconfig_blob_item *item = hwconfig->ptr;
+	u64 offset = 0;
+	u64 remaining = hwconfig->size;
+	/* Everything before the data field is required */
+	u64 min_item_size = offsetof(struct drm_i915_query_hwconfig_blob_item, data);
+	u64 item_size;
+
+	if (!IS_ALIGNED(hwconfig->size, sizeof(u32))) {
+		drm_err(drm, "hwconfig blob size (%d) is not u32 aligned\n", hwconfig->size);
+		return -EINVAL;
+	}
+
+	while (offset < hwconfig->size) {
+		if (remaining < min_item_size) {
+			drm_err(drm, "hwconfig blob invalid (no room for item required fields at offset %lld)\n",
+				offset);
+			return -EINVAL;
+		}
+		item_size = min_item_size + sizeof(u32) * item->length;
+		if (item_size > remaining) {
+			drm_err(drm, "hwconfig blob invalid (no room for data array of item at offset %lld)\n",
+				offset);
+			return -EINVAL;
+		}
+		offset += item_size;
+		remaining -= item_size;
+		item = (void *)&item->data[item->length];
+	}
+
+	return 0;
+}
+
 static int guc_hwconfig_fill_buffer(struct intel_guc *guc, struct intel_hwconfig *hwconfig)
 {
+	struct drm_device *drm = &guc_to_gt(guc)->i915->drm;
 	struct i915_vma *vma;
 	u32 ggtt_offset;
 	void *vaddr;
@@ -84,8 +120,13 @@ static int guc_hwconfig_fill_buffer(struct intel_guc *guc, struct intel_hwconfig
 	ggtt_offset = intel_guc_ggtt_offset(guc, vma);
 
 	ret = __guc_action_get_hwconfig(guc, ggtt_offset, hwconfig->size);
-	if (ret >= 0)
+	if (ret >= 0) {
 		memcpy(hwconfig->ptr, vaddr, hwconfig->size);
+		if (verify_hwconfig_blob(guc, hwconfig)) {
+			drm_err(drm, "Ignoring invalid hwconfig blob received from GuC!\n");
+			ret = -EINVAL;
+		}
+	}
 
 	i915_vma_unpin_and_release(&vma, I915_VMA_RELEASE_MAP);
 
-- 
2.34.1

