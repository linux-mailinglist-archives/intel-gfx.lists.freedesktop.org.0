Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 504F943BD75
	for <lists+intel-gfx@lfdr.de>; Wed, 27 Oct 2021 00:51:27 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 5AEFA6E4D4;
	Tue, 26 Oct 2021 22:51:20 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 48ED26E4CB
 for <intel-gfx@lists.freedesktop.org>; Tue, 26 Oct 2021 22:51:12 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6200,9189,10149"; a="217203169"
X-IronPort-AV: E=Sophos;i="5.87,184,1631602800"; d="scan'208";a="217203169"
Received: from orsmga008.jf.intel.com ([10.7.209.65])
 by orsmga101.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 26 Oct 2021 15:51:12 -0700
X-IronPort-AV: E=Sophos;i="5.87,184,1631602800"; d="scan'208";a="497574326"
Received: from ideak-desk.fi.intel.com ([10.237.68.141])
 by orsmga008-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 26 Oct 2021 15:51:11 -0700
From: Imre Deak <imre.deak@intel.com>
To: intel-gfx@lists.freedesktop.org
Cc: Juha-Pekka Heikkila <juhapekka.heikkila@gmail.com>
Date: Wed, 27 Oct 2021 01:51:00 +0300
Message-Id: <20211026225105.2783797-3-imre.deak@intel.com>
X-Mailer: git-send-email 2.27.0
In-Reply-To: <20211026225105.2783797-1-imre.deak@intel.com>
References: <20211026225105.2783797-1-imre.deak@intel.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH 2/7] drm/i915/adlp/fb: Prevent the mapping of
 redundant trailing padding NULL pages
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

So far the remapped view size in GTT/DPT was padded to the next aligned
offset unnecessarily after the last color plane with an unaligned size.
Remove the unnecessary padding.

Cc: Juha-Pekka Heikkila <juhapekka.heikkila@gmail.com>
Fixes: 3d1adc3d64cf ("drm/i915/adlp: Add support for remapping CCS FBs")
Signed-off-by: Imre Deak <imre.deak@intel.com>
---
 drivers/gpu/drm/i915/display/intel_display.c | 9 ++++++++-
 drivers/gpu/drm/i915/gt/intel_ggtt.c         | 3 +++
 2 files changed, 11 insertions(+), 1 deletion(-)

diff --git a/drivers/gpu/drm/i915/display/intel_display.c b/drivers/gpu/drm/i915/display/intel_display.c
index 2b97c87971773..f9c6d5aab8bf3 100644
--- a/drivers/gpu/drm/i915/display/intel_display.c
+++ b/drivers/gpu/drm/i915/display/intel_display.c
@@ -612,9 +612,16 @@ unsigned int intel_remapped_info_size(const struct intel_remapped_info *rem_info
 	int i;
 
 	for (i = 0 ; i < ARRAY_SIZE(rem_info->plane); i++) {
+		unsigned int plane_size;
+
+		plane_size = rem_info->plane[i].dst_stride * rem_info->plane[i].height;
+		if (plane_size == 0)
+			continue;
+
 		if (rem_info->plane_alignment)
 			size = ALIGN(size, rem_info->plane_alignment);
-		size += rem_info->plane[i].dst_stride * rem_info->plane[i].height;
+
+		size += plane_size;
 	}
 
 	return size;
diff --git a/drivers/gpu/drm/i915/gt/intel_ggtt.c b/drivers/gpu/drm/i915/gt/intel_ggtt.c
index f17383e76eb71..57c97554393b9 100644
--- a/drivers/gpu/drm/i915/gt/intel_ggtt.c
+++ b/drivers/gpu/drm/i915/gt/intel_ggtt.c
@@ -1396,6 +1396,9 @@ remap_pages(struct drm_i915_gem_object *obj,
 {
 	unsigned int row;
 
+	if (!width || !height)
+		return sg;
+
 	if (alignment_pad) {
 		st->nents++;
 
-- 
2.27.0

