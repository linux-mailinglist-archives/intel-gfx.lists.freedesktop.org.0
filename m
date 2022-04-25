Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 3058850E595
	for <lists+intel-gfx@lfdr.de>; Mon, 25 Apr 2022 18:23:55 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id AA37310E845;
	Mon, 25 Apr 2022 16:23:44 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
 by gabe.freedesktop.org (Postfix) with ESMTPS id F035510E7E4;
 Mon, 25 Apr 2022 16:23:42 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1650903823; x=1682439823;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=Hvgf+M/7SbHFav0/RuR27C0dZYU4H+m1q9kHGxJE5gs=;
 b=Oetqp7/s27JKtPsG+rwVMhugUieIev+uW7ypH0qJKot56QhPbhuskfKf
 RBpppzA8lsl3S3tRiPxSO/hnoq8f1F4Bw4tf+Q5kbuGNFrBL33ReYnpGD
 PtLtmCFIJOkVHzwhspHCe9hAp1b6Gd8MZx2xS1tHTmi3ZLclxpAi5tyMl
 QXiQfpa7ZvqJd4J9Xft4wi5O2EExA7fuVuCmZkPSvGJKovQz5CzEw9BBj
 M7kOs45jyQrCPCGbrq1ZedS8MyySkMwYF+L6Cp/YEPwjU/gp5U2zbyFmw
 LwUj4xOFkH5hvqNEpIHl5fnwzUcZqamPyEMg4ORMRdbyDekiJ89U7hDk3 A==;
X-IronPort-AV: E=McAfee;i="6400,9594,10328"; a="290434383"
X-IronPort-AV: E=Sophos;i="5.90,288,1643702400"; d="scan'208";a="290434383"
Received: from orsmga004.jf.intel.com ([10.7.209.38])
 by fmsmga101.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 25 Apr 2022 09:23:42 -0700
X-IronPort-AV: E=Sophos;i="5.90,288,1643702400"; d="scan'208";a="677290995"
Received: from ramaling-i9x.iind.intel.com ([10.203.144.108])
 by orsmga004-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 25 Apr 2022 09:23:40 -0700
From: Ramalingam C <ramalingam.c@intel.com>
To: intel-gfx <intel-gfx@lists.freedesktop.org>,
 dri-devel <dri-devel@lists.freedesktop.org>
Date: Mon, 25 Apr 2022 21:54:30 +0530
Message-Id: <20220425162430.28844-5-ramalingam.c@intel.com>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20220425162430.28844-1-ramalingam.c@intel.com>
References: <20220425162430.28844-1-ramalingam.c@intel.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH v2 4/4] uapi/drm/i915: Document memory residency
 and Flat-CCS capability of obj
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
Cc: Hellstrom Thomas <thomas.hellstrom@intel.com>,
 Matthew Auld <matthew.auld@intel.com>,
 Thomas Hellstrom <thomas.hellstrom@linux.intel.com>
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

Capture the impact of memory region preference list of an object, on
their memory residency and Flat-CCS capability of the objects.

v2:
  Fix the Flat-CCS capability of an obj with {lmem, smem} preference
  list [Thomas]

Signed-off-by: Ramalingam C <ramalingam.c@intel.com>
cc: Matthew Auld <matthew.auld@intel.com>
cc: Thomas Hellstrom <thomas.hellstrom@linux.intel.com>
---
 include/uapi/drm/i915_drm.h | 18 ++++++++++++++++++
 1 file changed, 18 insertions(+)

diff --git a/include/uapi/drm/i915_drm.h b/include/uapi/drm/i915_drm.h
index 35ca528803fd..ad191ed6547c 100644
--- a/include/uapi/drm/i915_drm.h
+++ b/include/uapi/drm/i915_drm.h
@@ -3393,6 +3393,24 @@ struct drm_i915_gem_create_ext {
  * At which point we get the object handle in &drm_i915_gem_create_ext.handle,
  * along with the final object size in &drm_i915_gem_create_ext.size, which
  * should account for any rounding up, if required.
+ *
+ * Objects with multiple memory regions in the preference list will be backed
+ * by one of the memory regions mentioned in the preference list. Though I915
+ * tries to honour the order of the memory regions in the preference list,
+ * based on the memory pressure of the regions, objects' backing region
+ * will be selected.
+ *
+ * Userspace has no means of knowing the backing region for such objects.
+ *
+ * On Flat-CCS capable HW, compression is supported for the objects residing
+ * in I915_MEMORY_CLASS_DEVICE. When such objects (compressed) has other
+ * memory class in preference list and migrated (by I915, due to memory
+ * constrain) to the non I915_MEMORY_CLASS_DEVICE region, then I915 needs to
+ * decompress the content. But I915 dont have the required information to
+ * decompress the userspace compressed objects.
+ *
+ * So I915 supports Flat-CCS, only on the objects which can reside only on
+ * I915_MEMORY_CLASS_DEVICE regions.
  */
 struct drm_i915_gem_create_ext_memory_regions {
 	/** @base: Extension link. See struct i915_user_extension. */
-- 
2.20.1

