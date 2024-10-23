Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id D25C49ABF43
	for <lists+intel-gfx@lfdr.de>; Wed, 23 Oct 2024 08:50:46 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 6717210E74A;
	Wed, 23 Oct 2024 06:50:44 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="XekNAQEw";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.13])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 8DFEB10E74A;
 Wed, 23 Oct 2024 06:50:43 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1729666244; x=1761202244;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=es/HjCAJYCzwCPU7dULSoJgOHBK4YaktiMq3kR5cz+I=;
 b=XekNAQEwtbzTwPHqf4jeyyRIrp1QCQc5aLImsjoPZCWefpQldWfa3h6D
 kJzhc3XMwNZ67MQC4Z75TRPdrjZYijt3pfwdgOJoqt7cLqI2lFCJ81TCx
 G3/QZfGAQ+Z0PSbzDcOMF/4Rr8UTica+qg3jCAibSeJNJNtbBx308kHyO
 DE8Xgv8ugq3zpDwMoOuYpWkYTpwwTYA5vqI5sI7pBOcLegcT3dH0S5Nha
 NX4dZLCrLJrOj5G/n0BTQ2A1tEVCVixjIUrCeciXocJEPbXcFPfHtdyou
 nMMatsa7tBzbCcBU6u5o1wlfk2x+S/ds5pyAFoMV5qMkSEo47eZCES2mz g==;
X-CSE-ConnectionGUID: gpDxQ8fYTnOaPBr7Sdy3KA==
X-CSE-MsgGUID: 68Syqr21T6yW0TDbh58pag==
X-IronPort-AV: E=McAfee;i="6700,10204,11233"; a="32097460"
X-IronPort-AV: E=Sophos;i="6.11,225,1725346800"; d="scan'208";a="32097460"
Received: from fmviesa005.fm.intel.com ([10.60.135.145])
 by fmvoesa107.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 22 Oct 2024 23:50:43 -0700
X-CSE-ConnectionGUID: zySYvNgFSOOxvxYtXPGmmw==
X-CSE-MsgGUID: 5khqJcAyR02lLIjj/6+fJg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.11,225,1725346800"; d="scan'208";a="84691481"
Received: from srr4-3-linux-103-aknautiy.iind.intel.com ([10.223.34.160])
 by fmviesa005-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 22 Oct 2024 23:50:42 -0700
From: Ankit Nautiyal <ankit.k.nautiyal@intel.com>
To: intel-gfx@lists.freedesktop.org
Cc: intel-xe@lists.freedesktop.org,
	suraj.kandpal@intel.com
Subject: [PATCH 01/16] drm/i915/dp: Update Comment for Valid DSC Slices per
 Line
Date: Wed, 23 Oct 2024 12:22:42 +0530
Message-ID: <20241023065257.190035-2-ankit.k.nautiyal@intel.com>
X-Mailer: git-send-email 2.45.2
In-Reply-To: <20241023065257.190035-1-ankit.k.nautiyal@intel.com>
References: <20241023065257.190035-1-ankit.k.nautiyal@intel.com>
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

For some platforms, the maximum slices per DSC engine is 4, while for
others it is 2. Update the comment to reflect this and clarify that
the 'valid_dsc_slicecount' list represents the valid number of slices
per pipe.

Currently, we are working with 1, and 2 slices per DSC engine,
which works for all platforms. With this the number of slices per pipe
can be 1,2 or 4 with different slice & DSC engine configuration.

Add a #TODO for adding support for 4 slices per DSC engine where
supported.

Signed-off-by: Ankit Nautiyal <ankit.k.nautiyal@intel.com>
Reviewed-by: Suraj Kandpal <suraj.kandpal@intel.com>
---
 drivers/gpu/drm/i915/display/intel_dp.c | 10 ++++++++--
 1 file changed, 8 insertions(+), 2 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_dp.c b/drivers/gpu/drm/i915/display/intel_dp.c
index 7e04913bc2ff..286b272aa98c 100644
--- a/drivers/gpu/drm/i915/display/intel_dp.c
+++ b/drivers/gpu/drm/i915/display/intel_dp.c
@@ -108,8 +108,14 @@
 /* Constants for DP DSC configurations */
 static const u8 valid_dsc_bpp[] = {6, 8, 10, 12, 15};
 
-/* With Single pipe configuration, HW is capable of supporting maximum
- * of 4 slices per line.
+/*
+ * With Single pipe configuration, HW is capable of supporting maximum of:
+ * 2 slices per line for ICL, BMG
+ * 4 slices per line for other platforms.
+ * For now consider a max of 2 slices per line, which works for all platforms.
+ * With this we can have max of 4 DSC Slices per pipe.
+ *
+ * #TODO Split this better to use 4 slices/dsc engine where supported.
  */
 static const u8 valid_dsc_slicecount[] = {1, 2, 4};
 
-- 
2.45.2

