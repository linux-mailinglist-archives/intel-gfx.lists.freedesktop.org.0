Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 3374397296F
	for <lists+intel-gfx@lfdr.de>; Tue, 10 Sep 2024 08:21:34 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id B8C1110E08D;
	Tue, 10 Sep 2024 06:21:32 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="BoG6eI2T";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.19])
 by gabe.freedesktop.org (Postfix) with ESMTPS id BB36210E08D
 for <intel-gfx@lists.freedesktop.org>; Tue, 10 Sep 2024 06:21:31 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1725949292; x=1757485292;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=nSL4veqcMzRjeR/CLxuVJL2ZHydzHPekdBXjNA8UoME=;
 b=BoG6eI2THlmmSay18c0ae6/F0DMCl/7CF23u+vtujbPhdNJqEK0AwlIE
 IR4gsyfXe8FtaR4lUk5NRirFEa8qy7O1c7uqAkDjDlJ7623B1MKNQ28HW
 vpWeFdlU2rUNfuWPjSNcVKBC3+7lzKqVZGzrKS5+lE2qMo/dXRgZYWs/e
 fh6VBfwdU9G9ti0EZTeoutA7pE1fO1D8xT3IRR+dyrKG23SoFaRBkjisr
 ZyRUjC2wjk4CC2ArFgT5AplgbNSz5aBsYC17DxmMxJS60nlEe80ZyyWtL
 7f+f1/MG6rPN56LoEXOp4e9ijZMVDREeZzPqRmbfvec9Zbm1K2LEdz7Oc A==;
X-CSE-ConnectionGUID: PxhsuUaeSbemGQNMmD8KEg==
X-CSE-MsgGUID: thOIC7TUSR+dZtJdPPytAw==
X-IronPort-AV: E=McAfee;i="6700,10204,11190"; a="24544876"
X-IronPort-AV: E=Sophos;i="6.10,216,1719903600"; d="scan'208";a="24544876"
Received: from fmviesa003.fm.intel.com ([10.60.135.143])
 by orvoesa111.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 09 Sep 2024 23:21:32 -0700
X-CSE-ConnectionGUID: /H7RjHDTSLyCQwv3C7JxnQ==
X-CSE-MsgGUID: bwaGYWGhQsG74+FFAQZ88g==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.10,216,1719903600"; d="scan'208";a="71049410"
Received: from pltuser2-ms-7d25.iind.intel.com ([10.190.239.58])
 by fmviesa003.fm.intel.com with ESMTP; 09 Sep 2024 23:21:30 -0700
From: Dnyaneshwar Bhadane <dnyaneshwar.bhadane@intel.com>
To: intel-gfx@lists.freedesktop.org
Cc: Dnyaneshwar Bhadane <dnyaneshwar.bhadane@intel.com>
Subject: [PATCH] drm/i915/pciid: Add new PCI id for ARL
Date: Tue, 10 Sep 2024 11:53:01 +0530
Message-Id: <20240910062301.2006782-1-dnyaneshwar.bhadane@intel.com>
X-Mailer: git-send-email 2.34.1
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
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

Add new PCI id for ARL platform.

Signed-off-by: Dnyaneshwar Bhadane <dnyaneshwar.bhadane@intel.com>
---
 include/drm/intel/i915_pciids.h | 3 ++-
 1 file changed, 2 insertions(+), 1 deletion(-)

diff --git a/include/drm/intel/i915_pciids.h b/include/drm/intel/i915_pciids.h
index cbb12fdbcb7f..02156c6f79b6 100644
--- a/include/drm/intel/i915_pciids.h
+++ b/include/drm/intel/i915_pciids.h
@@ -769,7 +769,8 @@
 	MACRO__(0x7D41, ## __VA_ARGS__), \
 	MACRO__(0x7D51, ## __VA_ARGS__), \
 	MACRO__(0x7D67, ## __VA_ARGS__), \
-	MACRO__(0x7DD1, ## __VA_ARGS__)
+	MACRO__(0x7DD1, ## __VA_ARGS__), \
+	MACRO__(0xB640, ## __VA_ARGS__)
 
 /* MTL */
 #define INTEL_MTL_IDS(MACRO__, ...) \
-- 
2.34.1

