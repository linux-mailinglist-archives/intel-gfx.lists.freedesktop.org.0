Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id D0CF37C4C88
	for <lists+intel-gfx@lfdr.de>; Wed, 11 Oct 2023 10:00:53 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 5480510E249;
	Wed, 11 Oct 2023 08:00:52 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [134.134.136.20])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 4670A10E249
 for <intel-gfx@lists.freedesktop.org>; Wed, 11 Oct 2023 08:00:50 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1697011250; x=1728547250;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=+1ocNnbh+8T53ryv2tOK+ZdvzALWJrSF5NXLp5rU8/A=;
 b=A6uK4xpKSoTfnYTzfRdx9xdjPlk87d/kTJd/P6tINZrvTaKFNVR2bWMo
 Og95IqKhZjrgDPQzeK/tTwb4ycv4c1KcoFoF2gxIiQ5yRphP10oMYmXHZ
 1jYhx0mPVdwClSVR9p0pnLhubvaSi0YT1zJgbmYKchAwuifv7TQSNU1RT
 Dx6EKCaPfRzJmRXs2sbzQdZQCBK8LcNSGECrQIkkutU0vxWsFysK9Vet2
 gorv0ZAqPUroGEiMp7gyDaQH5VetMgTV72u7V1LR5mwvhJvLz9B0ldTrQ
 6m2FqMaXhThVVw4SCjNc+wxfWIsfgSzjlP7ckQir1xKprzM6xjyLAuV6m g==;
X-IronPort-AV: E=McAfee;i="6600,9927,10859"; a="374947435"
X-IronPort-AV: E=Sophos;i="6.03,214,1694761200"; d="scan'208";a="374947435"
Received: from fmsmga005.fm.intel.com ([10.253.24.32])
 by orsmga101.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 11 Oct 2023 01:00:49 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10859"; a="1085126248"
X-IronPort-AV: E=Sophos;i="6.03,214,1694761200"; d="scan'208";a="1085126248"
Received: from shekharc-desk.iind.intel.com ([10.190.239.54])
 by fmsmga005-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 11 Oct 2023 01:00:48 -0700
From: Shekhar Chauhan <shekhar.chauhan@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Wed, 11 Oct 2023 13:30:39 +0530
Message-Id: <20231011080039.2781048-1-shekhar.chauhan@intel.com>
X-Mailer: git-send-email 2.34.1
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH v2] drm/i915: Add new DG2 PCI IDs
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

Add recently added PCI IDs for DG2

BSpec: 44477
Signed-off-by: Shekhar Chauhan <shekhar.chauhan@intel.com>
---
 include/drm/i915_pciids.h | 6 +++++-
 1 file changed, 5 insertions(+), 1 deletion(-)

diff --git a/include/drm/i915_pciids.h b/include/drm/i915_pciids.h
index 1256770d3827..1c9ea6ab3eb9 100644
--- a/include/drm/i915_pciids.h
+++ b/include/drm/i915_pciids.h
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

