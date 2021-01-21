Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 6BBCE2FF004
	for <lists+intel-gfx@lfdr.de>; Thu, 21 Jan 2021 17:19:57 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id C56B96E90A;
	Thu, 21 Jan 2021 16:19:54 +0000 (UTC)
X-Original-To: Intel-gfx@lists.freedesktop.org
Delivered-To: Intel-gfx@lists.freedesktop.org
Received: from mga03.intel.com (mga03.intel.com [134.134.136.65])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 6173F6E90A
 for <Intel-gfx@lists.freedesktop.org>; Thu, 21 Jan 2021 16:19:53 +0000 (UTC)
IronPort-SDR: LvPnUl4rLCt5ak+o/dNK9YPQw+jgfxB3PLayYPWNmDjifcq4fcUol8o3IZXbWI0MiKkS7UbvfD
 jKws829j320g==
X-IronPort-AV: E=McAfee;i="6000,8403,9871"; a="179377925"
X-IronPort-AV: E=Sophos;i="5.79,364,1602572400"; d="scan'208";a="179377925"
Received: from orsmga008.jf.intel.com ([10.7.209.65])
 by orsmga103.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 21 Jan 2021 08:19:50 -0800
IronPort-SDR: 1BHGQIM1fRPnSAsEzKAHWALAHWJ/MM+qdyTFnQRiw3jjTs/t0pm5+jv+hRUxFFppDrVaX5BeZj
 zsHMh53oII+A==
X-IronPort-AV: E=Sophos;i="5.79,364,1602572400"; d="scan'208";a="385364569"
Received: from pscheper-mobl1.ger.corp.intel.com (HELO localhost.localdomain)
 ([10.252.50.106])
 by orsmga008-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 21 Jan 2021 08:19:49 -0800
From: Tvrtko Ursulin <tvrtko.ursulin@linux.intel.com>
To: Intel-gfx@lists.freedesktop.org
Date: Thu, 21 Jan 2021 16:19:35 +0000
Message-Id: <20210121161936.746591-1-tvrtko.ursulin@linux.intel.com>
X-Mailer: git-send-email 2.27.0
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH 1/2] drm/i915: Check for all subplatform bits
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

From: Umesh Nerlige Ramappa <umesh.nerlige.ramappa@intel.com>

Current code is checking only 2 bits in the subplatform, but actually 3
bits are allocated for the field. Check all 3 bits.

Fixes: 805446c8347c9 (drm/i915: Introduce concept of a sub-platform)
Cc: Tvrtko Ursulin <tvrtko.ursulin@intel.com>
Signed-off-by: Umesh Nerlige Ramappa <umesh.nerlige.ramappa@intel.com>
Reviewed-by: Tvrtko Ursulin <tvrtko.ursulin@intel.com>
---
 drivers/gpu/drm/i915/i915_drv.h | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/gpu/drm/i915/i915_drv.h b/drivers/gpu/drm/i915/i915_drv.h
index f0222de2d216..c31d2776134a 100644
--- a/drivers/gpu/drm/i915/i915_drv.h
+++ b/drivers/gpu/drm/i915/i915_drv.h
@@ -1343,7 +1343,7 @@ intel_subplatform(const struct intel_runtime_info *info, enum intel_platform p)
 {
 	const unsigned int pi = __platform_mask_index(info, p);
 
-	return info->platform_mask[pi] & INTEL_SUBPLATFORM_BITS;
+	return info->platform_mask[pi] & ((1 << INTEL_SUBPLATFORM_BITS) - 1);
 }
 
 static __always_inline bool
-- 
2.27.0

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
