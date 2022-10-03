Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (unknown [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 745265F3412
	for <lists+intel-gfx@lfdr.de>; Mon,  3 Oct 2022 19:03:59 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id E2E5710E244;
	Mon,  3 Oct 2022 17:03:37 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga05.intel.com (mga05.intel.com [192.55.52.43])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 837B810E244
 for <intel-gfx@lists.freedesktop.org>; Mon,  3 Oct 2022 17:03:34 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1664816614; x=1696352614;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=dyeG/ZGg13odxJ8B3AhQRrlVySZj3TBnSUBSyHa6DH8=;
 b=O0NWtiIxhqsKtYdaWScE5EA4cTbGLGwo22sXvvZWnorksCZZHdXzB+xe
 /rQxEbGsZDi8ChK3orspD/ZajWlpT9wt8vGK8VGTmFojzpwf/C0JIIMzs
 7fLphrkE5B+ZrGg2ScnF7ulBJWh4l9xgwaUI9lRPhhtpwoyfsKwyLCBpZ
 sm1NAWrG+zTQQdUGEKRNABx25dvPbUBwZFMPivUiecDtJn1I2MOkxl7vq
 lhglq+fpoyWBSMIrBcanrAPxodv686BVWu/6BmuziC5g0z4cd4OtQbfhp
 pCnbvXHi6MS8LE1sMBZAgCoErxjouIhxIjB2gv52a1O5xEHwYlBqmR55N w==;
X-IronPort-AV: E=McAfee;i="6500,9779,10489"; a="388983672"
X-IronPort-AV: E=Sophos;i="5.93,366,1654585200"; d="scan'208";a="388983672"
Received: from orsmga002.jf.intel.com ([10.7.209.21])
 by fmsmga105.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 03 Oct 2022 10:02:58 -0700
X-IronPort-AV: E=McAfee;i="6500,9779,10489"; a="623609328"
X-IronPort-AV: E=Sophos;i="5.93,366,1654585200"; d="scan'208";a="623609328"
Received: from jjuchax-mobl.ger.corp.intel.com (HELO paris.ger.corp.intel.com)
 ([10.249.149.76])
 by orsmga002-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 03 Oct 2022 10:02:56 -0700
From: Gwan-gyeong Mun <gwan-gyeong.mun@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Mon,  3 Oct 2022 20:02:42 +0300
Message-Id: <20221003170242.1246830-1-gwan-gyeong.mun@intel.com>
X-Mailer: git-send-email 2.37.1
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH] drm/i915/gt: Remove unused function prototype
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

Remove unused function prototype; intel_gt_create_kobj()

Cc: Andi Shyti <andi.shyti@linux.intel.com>
Signed-off-by: Gwan-gyeong Mun <gwan-gyeong.mun@intel.com>
---
 drivers/gpu/drm/i915/gt/intel_gt_sysfs.h | 5 -----
 1 file changed, 5 deletions(-)

diff --git a/drivers/gpu/drm/i915/gt/intel_gt_sysfs.h b/drivers/gpu/drm/i915/gt/intel_gt_sysfs.h
index 6232923a420d..d637c6c3a69f 100644
--- a/drivers/gpu/drm/i915/gt/intel_gt_sysfs.h
+++ b/drivers/gpu/drm/i915/gt/intel_gt_sysfs.h
@@ -18,11 +18,6 @@ bool is_object_gt(struct kobject *kobj);
 
 struct drm_i915_private *kobj_to_i915(struct kobject *kobj);
 
-struct kobject *
-intel_gt_create_kobj(struct intel_gt *gt,
-		     struct kobject *dir,
-		     const char *name);
-
 static inline struct intel_gt *kobj_to_gt(struct kobject *kobj)
 {
 	return container_of(kobj, struct intel_gt, sysfs_gt);
-- 
2.37.1

