Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 4C0444AD5CF
	for <lists+intel-gfx@lfdr.de>; Tue,  8 Feb 2022 11:49:58 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 6582010E702;
	Tue,  8 Feb 2022 10:49:45 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga06.intel.com (mga06.intel.com [134.134.136.31])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 5204610E6B8;
 Tue,  8 Feb 2022 10:49:41 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1644317381; x=1675853381;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=TSGUJguinxNypQynb8SI7RiU6gpxYvWLy1ybvcBgvu8=;
 b=V3fMqbTcrpN++DtLIS9WRKg3dFT99w+xqs1Y3ZvrOdrgOz0xWIDAgLcc
 /f9AYaQfcthLQNJWguskUpks4NUT/0BzE27GFa+BLnUA8kaRuxPt7AM3I
 x2W2wabW0tnGWoXwAacp0CjwWkAORNuU64Lm+Rfl5hw8PO2Um8uNlcsZn
 cohvx0nbXIGXNX7KEyEVMvK0OS8E/zddwFJ0JOOHC9kIxEXOnMogo+SKr
 gSW/27Vt3mTTiINukcCt4fnk6VojflT6Hz6kd2kRlFLllsyRJU8kD0a13
 eOHF0izJmZ1vgQ/KybG6omuHbcQAM+Cg0JMrsXz6s5J1Cbx+Sjyojn8wb A==;
X-IronPort-AV: E=McAfee;i="6200,9189,10251"; a="309667903"
X-IronPort-AV: E=Sophos;i="5.88,352,1635231600"; d="scan'208";a="309667903"
Received: from fmsmga006.fm.intel.com ([10.253.24.20])
 by orsmga104.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 08 Feb 2022 02:49:39 -0800
X-IronPort-AV: E=Sophos;i="5.88,352,1635231600"; d="scan'208";a="770949457"
Received: from fpaillet-mobl.amr.corp.intel.com (HELO localhost)
 ([10.209.65.117])
 by fmsmga006-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 08 Feb 2022 02:49:38 -0800
From: Jordan Justen <jordan.l.justen@intel.com>
To: intel-gfx <intel-gfx@lists.freedesktop.org>
Date: Tue,  8 Feb 2022 02:49:33 -0800
Message-Id: <20220208104933.867812-5-jordan.l.justen@intel.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20220208104933.867812-1-jordan.l.justen@intel.com>
References: <20220208104933.867812-1-jordan.l.justen@intel.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH v2 4/4] drm/i915/guc: Verify hwconfig blob
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

Signed-off-by: Jordan Justen <jordan.l.justen@intel.com>
---
 .../gpu/drm/i915/gt/uc/intel_guc_hwconfig.c   | 29 +++++++++++++++++++
 1 file changed, 29 insertions(+)

diff --git a/drivers/gpu/drm/i915/gt/uc/intel_guc_hwconfig.c b/drivers/gpu/drm/i915/gt/uc/intel_guc_hwconfig.c
index ce6088f112d4..6208246d4209 100644
--- a/drivers/gpu/drm/i915/gt/uc/intel_guc_hwconfig.c
+++ b/drivers/gpu/drm/i915/gt/uc/intel_guc_hwconfig.c
@@ -71,6 +71,29 @@ static int guc_hwconfig_discover_size(struct intel_guc_hwconfig *hwconfig)
 	return 0;
 }
 
+static int verify_hwconfig_blob(const struct intel_guc_hwconfig *hwconfig)
+{
+	struct drm_i915_query_hwconfig_blob_item *pos;
+	u32 remaining;
+
+	if (hwconfig->size % 4 != 0 || hwconfig->ptr == NULL)
+		return -EINVAL;
+
+	pos = hwconfig->ptr;
+	remaining = (hwconfig->size / 4);
+	while (remaining > 0) {
+		if (remaining < 2)
+			return -EINVAL;
+		if (pos->length > remaining - 2)
+			return -EINVAL;
+		remaining -= 2 + pos->length;
+		pos = (void *)&pos->data[pos->length];
+	}
+
+	DRM_INFO("hwconfig blob format appears valid\n");
+	return 0;
+}
+
 static int guc_hwconfig_fill_buffer(struct intel_guc_hwconfig *hwconfig)
 {
 	struct intel_guc *guc = hwconfig_to_guc(hwconfig);
@@ -91,6 +114,12 @@ static int guc_hwconfig_fill_buffer(struct intel_guc_hwconfig *hwconfig)
 	if (ret >= 0)
 		memcpy(hwconfig->ptr, vaddr, hwconfig->size);
 
+	if (verify_hwconfig_blob(hwconfig)) {
+		DRM_ERROR("Ignoring invalid hwconfig blob received from "
+			  "GuC!\n");
+		return -EINVAL;
+	}
+
 	i915_vma_unpin_and_release(&vma, I915_VMA_RELEASE_MAP);
 
 	return ret;
-- 
2.34.1

