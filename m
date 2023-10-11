Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 456A37C48E9
	for <lists+intel-gfx@lfdr.de>; Wed, 11 Oct 2023 06:56:46 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id E599210E440;
	Wed, 11 Oct 2023 04:56:40 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.9])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 415E210E440
 for <intel-gfx@lists.freedesktop.org>; Wed, 11 Oct 2023 04:56:39 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1697000200; x=1728536200;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=okqV1J7r6VQ+e3ftFFh1xfzJa9NvqZx2KUs4E6GoP14=;
 b=MMkg1PDByG9PhI1mTcZtycLVMVDsnrp/ZQ9H1tQtrffJofiEFOJns5W4
 d5cvyNHFbqH0NgppKeNI2efC5y5rUzSV7Dbz5CBtQ8rL1sptNuoPm7pfg
 ejrSwbxXYh7iO5ELfcPQMmG6ApXRSJtWM9OJKkxMY8ZO7HNv2n3T2HyIF
 CJvRssEsYlNOQFx+1UaIKGDswgwvQET4C/EdjoYHEkKRTTUUO7mLi1xfg
 Cqy+C9s7Eo8E8pAhoXe9ExXbjI4Zw4qjGdkyfBpM2hzb0MAQR8ox1BSRT
 8UBUbvTwMvTXPn/KsFwdaQmVhBAbe+siXMt9TSRoRYNbiZDvfjsG3StcS A==;
X-IronPort-AV: E=McAfee;i="6600,9927,10859"; a="3170010"
X-IronPort-AV: E=Sophos;i="6.03,214,1694761200"; 
   d="scan'208";a="3170010"
Received: from orsmga004.jf.intel.com ([10.7.209.38])
 by orvoesa101.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 10 Oct 2023 21:56:39 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10859"; a="877525974"
X-IronPort-AV: E=Sophos;i="6.03,214,1694761200"; d="scan'208";a="877525974"
Received: from shekharc-desk.iind.intel.com ([10.190.239.54])
 by orsmga004-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 10 Oct 2023 21:56:37 -0700
From: Shekhar Chauhan <shekhar.chauhan@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Wed, 11 Oct 2023 10:26:00 +0530
Message-Id: <20231011045600.2710486-1-shekhar.chauhan@intel.com>
X-Mailer: git-send-email 2.34.1
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH] drm/i915: Add new DG2 PCI IDs
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
Cc: matthew.d.roper@intel.com
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

Add new PCI IDs which are recently added.

BSpec: 44477
Signed-off-by: Shekhar Chauhan <shekhar.chauhan@intel.com>
---
 include/drm/i915_pciids.h | 8 ++++++--
 1 file changed, 6 insertions(+), 2 deletions(-)

diff --git a/include/drm/i915_pciids.h b/include/drm/i915_pciids.h
index 1256770d3827..deb2eb0b4979 100644
--- a/include/drm/i915_pciids.h
+++ b/include/drm/i915_pciids.h
@@ -692,7 +692,7 @@
 	INTEL_VGA_DEVICE(0xA7A9, info), \
 	INTEL_VGA_DEVICE(0xA7AC, info), \
 	INTEL_VGA_DEVICE(0xA7AD, info)
-
+h
 /* RPL-P */
 #define INTEL_RPLP_IDS(info) \
 	INTEL_RPLU_IDS(info), \
@@ -718,7 +718,11 @@
 	INTEL_VGA_DEVICE(0x56A5, info), \
 	INTEL_VGA_DEVICE(0x56A6, info), \
 	INTEL_VGA_DEVICE(0x56B0, info), \
-	INTEL_VGA_DEVICE(0x56B1, info)
+	INTEL_VGA_DEVICE(0x56B1, info), \
+	INTEL_VGA_DEVICE(0x56BA, info), \
+	INTEL_VGA_DEVICE(0x56BB, info), \
+	INTEL_VGA_DEVICE(0x56BC, info), \
+	INTEL_VGA_DEVICE(0x56BD, info)
 
 #define INTEL_DG2_G12_IDS(info) \
 	INTEL_VGA_DEVICE(0x5696, info), \
-- 
2.34.1

