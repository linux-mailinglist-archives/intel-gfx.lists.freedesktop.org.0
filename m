Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 75CBA68F897
	for <lists+intel-gfx@lfdr.de>; Wed,  8 Feb 2023 21:09:34 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id B7BB210E85E;
	Wed,  8 Feb 2023 20:09:32 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 0DBD810E85E
 for <intel-gfx@lists.freedesktop.org>; Wed,  8 Feb 2023 20:09:31 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1675886971; x=1707422971;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=97HT++LLfGkk04VA6a0XkRwnLLESEx3mQY50kEgkpG8=;
 b=Dxj0Rrzl4CqwLsz/GN7wZ1ZtNtvHFhtyC1DdPC3lbK3YuGk0VgtwsE6l
 0MuYc1jNgmc2Rpfg1XGjknOlLP1+t/4AOVZd2Xc/uI/pTFIjBWDUcEQhj
 j0BrS81cCGzf2NdtiyCxJVPrYv2EiT8R4RSP6uga6ZHzGOImUQyenF1zc
 Fw49h41XQW0abS3DJ61tNJvd6yDm4UUF0V/mgKkNhQv0gXUrS9cpozKaE
 Y7KD3zQ93TaXKq5gCMa/JslmqHQoc4MJ4wx4CDCtB89Amofr75IalZUJI
 pu3oI1c8a61CJtoH//nvCImoO7PkKfCLzEdTxDZykJ/XdevwgKng2w+MV w==;
X-IronPort-AV: E=McAfee;i="6500,9779,10615"; a="327605954"
X-IronPort-AV: E=Sophos;i="5.97,281,1669104000"; d="scan'208";a="327605954"
Received: from fmsmga006.fm.intel.com ([10.253.24.20])
 by fmsmga102.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 08 Feb 2023 12:09:18 -0800
X-IronPort-AV: E=McAfee;i="6500,9779,10615"; a="912846138"
X-IronPort-AV: E=Sophos;i="5.97,281,1669104000"; d="scan'208";a="912846138"
Received: from mdroper-desk1.fm.intel.com ([10.1.27.134])
 by fmsmga006-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 08 Feb 2023 12:09:18 -0800
From: Matt Roper <matthew.d.roper@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Wed,  8 Feb 2023 12:09:05 -0800
Message-Id: <20230208200905.680865-1-matthew.d.roper@intel.com>
X-Mailer: git-send-email 2.39.1
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH] drm/i915/dg2: Drop one PCI ID
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

The bspec was recently updated to remove PCI ID 0x5698; this ID is
actually reserved for future use and should not be treated as DG2-G11.

Bspec: 44477
Fixes: 8618b8489ba6 ("drm/i915: DG2 and ATS-M device ID updates")
Signed-off-by: Matt Roper <matthew.d.roper@intel.com>
---
 include/drm/i915_pciids.h | 1 -
 1 file changed, 1 deletion(-)

diff --git a/include/drm/i915_pciids.h b/include/drm/i915_pciids.h
index 92205054e542..9c325c6b8df9 100644
--- a/include/drm/i915_pciids.h
+++ b/include/drm/i915_pciids.h
@@ -707,7 +707,6 @@
 	INTEL_VGA_DEVICE(0x5693, info), \
 	INTEL_VGA_DEVICE(0x5694, info), \
 	INTEL_VGA_DEVICE(0x5695, info), \
-	INTEL_VGA_DEVICE(0x5698, info), \
 	INTEL_VGA_DEVICE(0x56A5, info), \
 	INTEL_VGA_DEVICE(0x56A6, info), \
 	INTEL_VGA_DEVICE(0x56B0, info), \
-- 
2.39.1

