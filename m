Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 2B54D7F125C
	for <lists+intel-gfx@lfdr.de>; Mon, 20 Nov 2023 12:43:38 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 1342710E3A6;
	Mon, 20 Nov 2023 11:43:36 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [134.134.136.65])
 by gabe.freedesktop.org (Postfix) with ESMTPS id DF0E010E3A6
 for <intel-gfx@lists.freedesktop.org>; Mon, 20 Nov 2023 11:43:34 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1700480614; x=1732016614;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=Zqa4n35b41A/kH4yBrMcQUMQ3SMs7mYuaaalh3dz7tk=;
 b=DRM7PPRIr895+A21ITYKSPPXKUGvq8ACw2nDfiDUu/utx0HXm3EKyWLG
 Ge4aQJSN3J0CBpWwBkFkEEuFRdufpEGpfCK0bvO/6WBAwpfruPT6hyexJ
 a1nc49oVf2XZ6GmOHOXoaPhBsrlkfk994+IVlia5oV1zc80WlLiHctzeN
 id+iFP60wbwa1URjuMl5+BgCo9KLCzsLA61K1ZC9btxzJNCOiRZ3TGGil
 GctC8xIGr0q20RBiS+I/g2XQ87H2vQq0FNJD4UXZJgcESeBLYDnK7FLaR
 IASYEMBWZj8Ri49i2szLunXlpO/rfWQFBqGBB86CWcTtg/YSXR9BcWR0V w==;
X-IronPort-AV: E=McAfee;i="6600,9927,10899"; a="395530514"
X-IronPort-AV: E=Sophos;i="6.04,213,1695711600"; d="scan'208";a="395530514"
Received: from orsmga002.jf.intel.com ([10.7.209.21])
 by orsmga103.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 20 Nov 2023 03:43:34 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10899"; a="766251290"
X-IronPort-AV: E=Sophos;i="6.04,213,1695711600"; d="scan'208";a="766251290"
Received: from haridhar-ms-7d25.iind.intel.com ([10.190.238.53])
 by orsmga002-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 20 Nov 2023 03:43:33 -0800
From: Haridhar Kalvala <haridhar.kalvala@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Mon, 20 Nov 2023 17:07:31 +0530
Message-Id: <20231120113731.1570589-1-haridhar.kalvala@intel.com>
X-Mailer: git-send-email 2.25.1
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH] drm/i915: ATS-M device ID update
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

ATS-M device ID update.

BSpec: 44477

Signed-off-by: Haridhar Kalvala <haridhar.kalvala@intel.com>
---
 include/drm/i915_pciids.h | 3 ++-
 1 file changed, 2 insertions(+), 1 deletion(-)

diff --git a/include/drm/i915_pciids.h b/include/drm/i915_pciids.h
index 1c9ea6ab3eb9..fcf1849aa47c 100644
--- a/include/drm/i915_pciids.h
+++ b/include/drm/i915_pciids.h
@@ -738,7 +738,8 @@
 	INTEL_DG2_G12_IDS(info)
 
 #define INTEL_ATS_M150_IDS(info) \
-	INTEL_VGA_DEVICE(0x56C0, info)
+	INTEL_VGA_DEVICE(0x56C0, info), \
+	INTEL_VGA_DEVICE(0x56C2, info)
 
 #define INTEL_ATS_M75_IDS(info) \
 	INTEL_VGA_DEVICE(0x56C1, info)
-- 
2.25.1

