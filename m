Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id C9869854BD5
	for <lists+intel-gfx@lfdr.de>; Wed, 14 Feb 2024 15:47:14 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id AD74010E092;
	Wed, 14 Feb 2024 14:47:12 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="oHAiosI+";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.20])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 2B5D410E092
 for <intel-gfx@lists.freedesktop.org>; Wed, 14 Feb 2024 14:47:11 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1707922032; x=1739458032;
 h=from:to:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=nGSVBIVfgSxMB1G3tutyQH2CTKiCU9n1Mxfa174UdUA=;
 b=oHAiosI+J4W11oA+VjlcnIW7C/4eHjucLQevBczSlmdNyv9SX2KUfnYM
 urB4Mc8JXQY+tRT9UVWb6/VfE8QflHcL0tzLA28Q2JI9h6KGFBJaK27jc
 qyAS9Y2msyoGxLvpO0rNY3U159IH0G8wT1kTEBOBY4dF9bH3GnXH0S/Sc
 lr6/5Iiin3JzpZPNDB/tDdc9VPZAAJfNNzTjyuvh8jx0CHbP2bfZanwkE
 2LFl/x+rijQUFZgOh/Jnu6SgUsWwP3bumwkADeeJd4IHaaE1TILzW1Rg4
 2GXykXEHi7WanleW0VvKS0w45ND8rtIcAhsIzQ0VFdqzLPFz1bDD+fbia A==;
X-IronPort-AV: E=McAfee;i="6600,9927,10982"; a="1837167"
X-IronPort-AV: E=Sophos;i="6.06,159,1705392000"; 
   d="scan'208";a="1837167"
Received: from orviesa009.jf.intel.com ([10.64.159.149])
 by orvoesa112.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 14 Feb 2024 06:47:06 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.06,159,1705392000"; 
   d="scan'208";a="3199445"
Received: from ctjurca-mobl1.amr.corp.intel.com (HELO gjsousa-mobl2.intel.com)
 ([10.125.161.170])
 by orviesa009-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 14 Feb 2024 06:47:05 -0800
From: Gustavo Sousa <gustavo.sousa@intel.com>
To: intel-gfx@lists.freedesktop.org
Subject: [PATCH] drm/i915: Update ADL-N PCI IDs
Date: Wed, 14 Feb 2024 11:46:30 -0300
Message-ID: <20240214144629.106702-2-gustavo.sousa@intel.com>
X-Mailer: git-send-email 2.43.0
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

Extend the list of ADL-N PCI IDs to contain two new entries.

Bspec: 68397
Signed-off-by: Gustavo Sousa <gustavo.sousa@intel.com>
---
 include/drm/i915_pciids.h | 4 +++-
 1 file changed, 3 insertions(+), 1 deletion(-)

diff --git a/include/drm/i915_pciids.h b/include/drm/i915_pciids.h
index 07779a11758e..28a96aa1e08f 100644
--- a/include/drm/i915_pciids.h
+++ b/include/drm/i915_pciids.h
@@ -672,7 +672,9 @@
 #define INTEL_ADLN_IDS(info) \
 	INTEL_VGA_DEVICE(0x46D0, info), \
 	INTEL_VGA_DEVICE(0x46D1, info), \
-	INTEL_VGA_DEVICE(0x46D2, info)
+	INTEL_VGA_DEVICE(0x46D2, info), \
+	INTEL_VGA_DEVICE(0x46D3, info), \
+	INTEL_VGA_DEVICE(0x46D4, info)
 
 /* RPL-S */
 #define INTEL_RPLS_IDS(info) \
-- 
2.43.0

