Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 43EC9501BC7
	for <lists+intel-gfx@lfdr.de>; Thu, 14 Apr 2022 21:22:43 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 7E8BB10E220;
	Thu, 14 Apr 2022 19:22:41 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga18.intel.com (mga18.intel.com [134.134.136.126])
 by gabe.freedesktop.org (Postfix) with ESMTPS id E705F10E1F8
 for <intel-gfx@lists.freedesktop.org>; Thu, 14 Apr 2022 19:22:37 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1649964157; x=1681500157;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=1JkQLmzKp6VVSrAGNLMotA6DLNxtUd9+rTIow2AFjC4=;
 b=S96H+JjVrQtmEACWcaWKDMHky9rtxEMI1WsUegeM50mZjBhiuvtZx8to
 g/apjN4K0Rt6J9+6Y4dgV9HvEcM+I+qpUlm96F5GEDbc4CAlo+US19aa8
 3U+Ftbhknvn8vHlOB5dnyQhy3n++6lZEOCqRwkHC4B98ZSIjGMOwXOYqQ
 o8nFVI7QxL4BC+4PTEeIMsjPNE+7LH+aK0vz1/v3tGakjFxC7GjmppUq+
 SW1hK596r6Zi8OMjOLWcz7UH67g5LfGxNeHNhtaHmPB7LCgnO07LB5N+A
 Zn5Mw8ZA8EU15ytE+9v5JVy8PTCfMwhby2wfhb2EqurTW6jl0G07QWud6 A==;
X-IronPort-AV: E=McAfee;i="6400,9594,10317"; a="244899950"
X-IronPort-AV: E=Sophos;i="5.90,260,1643702400"; d="scan'208";a="244899950"
Received: from orsmga006.jf.intel.com ([10.7.209.51])
 by orsmga106.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 14 Apr 2022 12:22:37 -0700
X-IronPort-AV: E=Sophos;i="5.90,260,1643702400"; d="scan'208";a="527521430"
Received: from mdroper-desk1.fm.intel.com ([10.1.27.134])
 by orsmga006-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 14 Apr 2022 12:22:37 -0700
From: Matt Roper <matthew.d.roper@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Thu, 14 Apr 2022 12:22:27 -0700
Message-Id: <20220414192230.749771-1-matthew.d.roper@intel.com>
X-Mailer: git-send-email 2.34.1
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [CI 1/4] drm/i915/doc: Convert
 drm_i915_query_topology_info comment to kerneldoc
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

This structure has a great comment describing the fields, but it's not
currently in kerneldoc form and does not show up in the generated
documentation.  Let's fix that and also clarify the description of what
"subslice" refers to on gen12 platforms and beyond and that "slice" is
no longer meaningful on Xe_HP and beyond.

Signed-off-by: Matt Roper <matthew.d.roper@intel.com>
Reviewed-by: Francisco Jerez <currojerez@riseup.net>
---
 include/uapi/drm/i915_drm.h | 110 +++++++++++++++++++++++++-----------
 1 file changed, 78 insertions(+), 32 deletions(-)

diff --git a/include/uapi/drm/i915_drm.h b/include/uapi/drm/i915_drm.h
index 9ab021c4d632..73e1c6180ddb 100644
--- a/include/uapi/drm/i915_drm.h
+++ b/include/uapi/drm/i915_drm.h
@@ -2775,66 +2775,112 @@ struct drm_i915_query {
 	__u64 items_ptr;
 };
 
-/*
- * Data written by the kernel with query DRM_I915_QUERY_TOPOLOGY_INFO :
- *
- * data: contains the 3 pieces of information :
- *
- * - the slice mask with one bit per slice telling whether a slice is
- *   available. The availability of slice X can be queried with the following
- *   formula :
- *
- *           (data[X / 8] >> (X % 8)) & 1
- *
- * - the subslice mask for each slice with one bit per subslice telling
- *   whether a subslice is available. Gen12 has dual-subslices, which are
- *   similar to two gen11 subslices. For gen12, this array represents dual-
- *   subslices. The availability of subslice Y in slice X can be queried
- *   with the following formula :
- *
- *           (data[subslice_offset +
- *                 X * subslice_stride +
- *                 Y / 8] >> (Y % 8)) & 1
- *
- * - the EU mask for each subslice in each slice with one bit per EU telling
- *   whether an EU is available. The availability of EU Z in subslice Y in
- *   slice X can be queried with the following formula :
+/**
+ * struct drm_i915_query_topology_info
  *
- *           (data[eu_offset +
- *                 (X * max_subslices + Y) * eu_stride +
- *                 Z / 8] >> (Z % 8)) & 1
+ * Describes slice/subslice/EU information queried by
+ * %DRM_I915_QUERY_TOPOLOGY_INFO
  */
 struct drm_i915_query_topology_info {
-	/*
+	/**
+	 * @flags:
+	 *
 	 * Unused for now. Must be cleared to zero.
 	 */
 	__u16 flags;
 
+	/**
+	 * @max_slices:
+	 *
+	 * The number of bits used to express the slice mask.
+	 */
 	__u16 max_slices;
+
+	/**
+	 * @max_subslices:
+	 *
+	 * The number of bits used to express the subslice mask.
+	 */
 	__u16 max_subslices;
+
+	/**
+	 * @max_eus_per_subslice:
+	 *
+	 * The number of bits in the EU mask that correspond to a single
+	 * subslice's EUs.
+	 */
 	__u16 max_eus_per_subslice;
 
-	/*
+	/**
+	 * @subslice_offset:
+	 *
 	 * Offset in data[] at which the subslice masks are stored.
 	 */
 	__u16 subslice_offset;
 
-	/*
+	/**
+	 * @subslice_stride:
+	 *
 	 * Stride at which each of the subslice masks for each slice are
 	 * stored.
 	 */
 	__u16 subslice_stride;
 
-	/*
+	/**
+	 * @eu_offset:
+	 *
 	 * Offset in data[] at which the EU masks are stored.
 	 */
 	__u16 eu_offset;
 
-	/*
+	/**
+	 * @eu_stride:
+	 *
 	 * Stride at which each of the EU masks for each subslice are stored.
 	 */
 	__u16 eu_stride;
 
+	/**
+	 * @data:
+	 *
+	 * Contains 3 pieces of information :
+	 *
+	 * - The slice mask with one bit per slice telling whether a slice is
+	 *   available. The availability of slice X can be queried with the
+	 *   following formula :
+	 *
+	 *   .. code:: c
+	 *
+	 *      (data[X / 8] >> (X % 8)) & 1
+	 *
+	 *   Starting with Xe_HP platforms, Intel hardware no longer has
+	 *   traditional slices so i915 will always report a single slice
+	 *   (hardcoded slicemask = 0x1) which contains all of the platform's
+	 *   subslices.  I.e., the mask here does not reflect any of the newer
+	 *   hardware concepts such as "gslices" or "cslices" since userspace
+	 *   is capable of inferring those from the subslice mask.
+	 *
+	 * - The subslice mask for each slice with one bit per subslice telling
+	 *   whether a subslice is available.  Starting with Gen12 we use the
+	 *   term "subslice" to refer to what the hardware documentation
+	 *   describes as a "dual-subslices."  The availability of subslice Y
+	 *   in slice X can be queried with the following formula :
+	 *
+	 *   .. code:: c
+	 *
+	 *      (data[subslice_offset + X * subslice_stride + Y / 8] >> (Y % 8)) & 1
+	 *
+	 * - The EU mask for each subslice in each slice, with one bit per EU
+	 *   telling whether an EU is available. The availability of EU Z in
+	 *   subslice Y in slice X can be queried with the following formula :
+	 *
+	 *   .. code:: c
+	 *
+	 *      (data[eu_offset +
+	 *            (X * max_subslices + Y) * eu_stride +
+	 *            Z / 8
+	 *       ] >> (Z % 8)) & 1
+	 */
 	__u8 data[];
 };
 
-- 
2.34.1

