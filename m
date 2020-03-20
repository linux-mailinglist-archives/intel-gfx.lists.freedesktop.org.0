Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id CA0FD18D121
	for <lists+intel-gfx@lfdr.de>; Fri, 20 Mar 2020 15:37:45 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 3BE546EB59;
	Fri, 20 Mar 2020 14:37:44 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga14.intel.com (mga14.intel.com [192.55.52.115])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 172B26EB58
 for <intel-gfx@lists.freedesktop.org>; Fri, 20 Mar 2020 14:37:40 +0000 (UTC)
IronPort-SDR: 3ziJ38uQA493I60qIY8CXo7s6tibeKXL+Afpb8mjCE0ZCQYHgDJtwUqaHoz6w2CFl6rCIjjn/m
 MIoW66oaQBuQ==
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga006.fm.intel.com ([10.253.24.20])
 by fmsmga103.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 20 Mar 2020 07:37:39 -0700
IronPort-SDR: MOg9cI/JZ2rD8KWkG6ZQbkkO8VjcdLSl+hWCyhFEZ1qV7kdhMNt0PlcBhWXtJ5Pu/iRrs+3cRv
 YRXwPaEbetzg==
X-IronPort-AV: E=Sophos;i="5.72,284,1580803200"; d="scan'208";a="446666875"
Received: from rkamins1-mobl1.ger.corp.intel.com (HELO localhost)
 ([10.252.41.98])
 by fmsmga006-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 20 Mar 2020 07:37:38 -0700
From: Jani Nikula <jani.nikula@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Fri, 20 Mar 2020 16:36:38 +0200
Message-Id: <017d9bdc171481da13ba9492492625fc6878844d.1584714939.git.jani.nikula@intel.com>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <cover.1584714939.git.jani.nikula@intel.com>
References: <cover.1584714939.git.jani.nikula@intel.com>
MIME-Version: 1.0
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
Subject: [Intel-gfx] [PATCH 13/13] drm/i915/wopcm: convert to drm device
 based logging
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
Cc: jani.nikula@intel.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

Prefer drm_dbg() over DRM_DEV_DEBUG_DRIVER() and drm_err() over
dev_err().

Signed-off-by: Jani Nikula <jani.nikula@intel.com>
---
 drivers/gpu/drm/i915/intel_wopcm.c | 22 ++++++++++------------
 1 file changed, 10 insertions(+), 12 deletions(-)

diff --git a/drivers/gpu/drm/i915/intel_wopcm.c b/drivers/gpu/drm/i915/intel_wopcm.c
index 2bb9f9f9a50a..2186386a45c8 100644
--- a/drivers/gpu/drm/i915/intel_wopcm.c
+++ b/drivers/gpu/drm/i915/intel_wopcm.c
@@ -86,7 +86,7 @@ void intel_wopcm_init_early(struct intel_wopcm *wopcm)
 	else
 		wopcm->size = GEN9_WOPCM_SIZE;
 
-	DRM_DEV_DEBUG_DRIVER(i915->drm.dev, "WOPCM: %uK\n", wopcm->size / 1024);
+	drm_dbg(&i915->drm, "WOPCM: %uK\n", wopcm->size / 1024);
 }
 
 static inline u32 context_reserved_size(struct drm_i915_private *i915)
@@ -112,7 +112,7 @@ static inline bool gen9_check_dword_gap(struct drm_i915_private *i915,
 	offset = guc_wopcm_base + GEN9_GUC_WOPCM_OFFSET;
 	if (offset > guc_wopcm_size ||
 	    (guc_wopcm_size - offset) < sizeof(u32)) {
-		dev_err(i915->drm.dev,
+		drm_err(&i915->drm,
 			"WOPCM: invalid GuC region size: %uK < %uK\n",
 			guc_wopcm_size / SZ_1K,
 			(u32)(offset + sizeof(u32)) / SZ_1K);
@@ -131,7 +131,7 @@ static inline bool gen9_check_huc_fw_fits(struct drm_i915_private *i915,
 	 * firmware uploading would fail.
 	 */
 	if (huc_fw_size > guc_wopcm_size - GUC_WOPCM_RESERVED) {
-		dev_err(i915->drm.dev, "WOPCM: no space for %s: %uK < %uK\n",
+		drm_err(&i915->drm, "WOPCM: no space for %s: %uK < %uK\n",
 			intel_uc_fw_type_repr(INTEL_UC_FW_TYPE_HUC),
 			(guc_wopcm_size - GUC_WOPCM_RESERVED) / SZ_1K,
 			huc_fw_size / 1024);
@@ -166,7 +166,7 @@ static inline bool __check_layout(struct drm_i915_private *i915, u32 wopcm_size,
 
 	size = wopcm_size - ctx_rsvd;
 	if (unlikely(range_overflows(guc_wopcm_base, guc_wopcm_size, size))) {
-		dev_err(i915->drm.dev,
+		drm_err(&i915->drm,
 			"WOPCM: invalid GuC region layout: %uK + %uK > %uK\n",
 			guc_wopcm_base / SZ_1K, guc_wopcm_size / SZ_1K,
 			size / SZ_1K);
@@ -175,7 +175,7 @@ static inline bool __check_layout(struct drm_i915_private *i915, u32 wopcm_size,
 
 	size = guc_fw_size + GUC_WOPCM_RESERVED + GUC_WOPCM_STACK_RESERVED;
 	if (unlikely(guc_wopcm_size < size)) {
-		dev_err(i915->drm.dev, "WOPCM: no space for %s: %uK < %uK\n",
+		drm_err(&i915->drm, "WOPCM: no space for %s: %uK < %uK\n",
 			intel_uc_fw_type_repr(INTEL_UC_FW_TYPE_GUC),
 			guc_wopcm_size / SZ_1K, size / SZ_1K);
 		return false;
@@ -183,7 +183,7 @@ static inline bool __check_layout(struct drm_i915_private *i915, u32 wopcm_size,
 
 	size = huc_fw_size + WOPCM_RESERVED_SIZE;
 	if (unlikely(guc_wopcm_base < size)) {
-		dev_err(i915->drm.dev, "WOPCM: no space for %s: %uK < %uK\n",
+		drm_err(&i915->drm, "WOPCM: no space for %s: %uK < %uK\n",
 			intel_uc_fw_type_repr(INTEL_UC_FW_TYPE_HUC),
 			guc_wopcm_base / SZ_1K, size / SZ_1K);
 		return false;
@@ -242,10 +242,8 @@ void intel_wopcm_init(struct intel_wopcm *wopcm)
 		return;
 
 	if (__wopcm_regs_locked(gt->uncore, &guc_wopcm_base, &guc_wopcm_size)) {
-		DRM_DEV_DEBUG_DRIVER(i915->drm.dev,
-				     "GuC WOPCM is already locked [%uK, %uK)\n",
-				     guc_wopcm_base / SZ_1K,
-				     guc_wopcm_size / SZ_1K);
+		drm_dbg(&i915->drm, "GuC WOPCM is already locked [%uK, %uK)\n",
+			guc_wopcm_base / SZ_1K, guc_wopcm_size / SZ_1K);
 		goto check;
 	}
 
@@ -266,8 +264,8 @@ void intel_wopcm_init(struct intel_wopcm *wopcm)
 	guc_wopcm_size = wopcm->size - ctx_rsvd - guc_wopcm_base;
 	guc_wopcm_size &= GUC_WOPCM_SIZE_MASK;
 
-	DRM_DEV_DEBUG_DRIVER(i915->drm.dev, "Calculated GuC WOPCM [%uK, %uK)\n",
-			     guc_wopcm_base / SZ_1K, guc_wopcm_size / SZ_1K);
+	drm_dbg(&i915->drm, "Calculated GuC WOPCM [%uK, %uK)\n",
+		guc_wopcm_base / SZ_1K, guc_wopcm_size / SZ_1K);
 
 check:
 	if (__check_layout(i915, wopcm->size, guc_wopcm_base, guc_wopcm_size,
-- 
2.20.1

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
