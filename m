Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 3DFC43AF9B8
	for <lists+intel-gfx@lfdr.de>; Tue, 22 Jun 2021 01:45:22 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id A0B796E44E;
	Mon, 21 Jun 2021 23:45:20 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga12.intel.com (mga12.intel.com [192.55.52.136])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 3F6D76E44C
 for <intel-gfx@lists.freedesktop.org>; Mon, 21 Jun 2021 23:45:17 +0000 (UTC)
IronPort-SDR: FwMoEZQJzV6/o53sa6hi70b5QGkR8h6hCuEMk+cpn8S13jsgPUr1mVsFq/acYYFjc1dvNBkTsD
 HiwtLUpwlnPA==
X-IronPort-AV: E=McAfee;i="6200,9189,10022"; a="186643974"
X-IronPort-AV: E=Sophos;i="5.83,290,1616482800"; d="scan'208";a="186643974"
Received: from fmsmga004.fm.intel.com ([10.253.24.48])
 by fmsmga106.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 21 Jun 2021 16:45:17 -0700
IronPort-SDR: 5OA7DA5GdGddevHL4PSIEME92TEJNnT5SpcuBJ4t83fy5BgWrAp4JR6dU7vnwJOr4gpLcqiWo7
 CQ7f2ehD+ffA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.83,290,1616482800"; d="scan'208";a="473582524"
Received: from anushasr-mobl6.jf.intel.com ([10.165.21.155])
 by fmsmga004.fm.intel.com with ESMTP; 21 Jun 2021 16:45:16 -0700
From: Anusha Srivatsa <anusha.srivatsa@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Mon, 21 Jun 2021 16:45:14 -0700
Message-Id: <20210621234515.9433-2-anusha.srivatsa@intel.com>
X-Mailer: git-send-email 2.32.0
In-Reply-To: <20210621234515.9433-1-anusha.srivatsa@intel.com>
References: <20210621234515.9433-1-anusha.srivatsa@intel.com>
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH 1/2] drm/i915/firmware: Update to DMC v2.12 on
 TGL
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

Add support to the latest DMC firmware.

Cc: Madhunitha Pradeep <madhumitha.tolakanahalli.pradeep@intel.com>
Signed-off-by: Anusha Srivatsa <anusha.srivatsa@intel.com>
---
 drivers/gpu/drm/i915/display/intel_dmc.c | 4 ++--
 1 file changed, 2 insertions(+), 2 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_dmc.c b/drivers/gpu/drm/i915/display/intel_dmc.c
index 97308da28059..1d47f43ada51 100644
--- a/drivers/gpu/drm/i915/display/intel_dmc.c
+++ b/drivers/gpu/drm/i915/display/intel_dmc.c
@@ -57,8 +57,8 @@ MODULE_FIRMWARE(DG1_DMC_PATH);
 #define RKL_DMC_VERSION_REQUIRED	DMC_VERSION(2, 2)
 MODULE_FIRMWARE(RKL_DMC_PATH);
 
-#define TGL_DMC_PATH			DMC_PATH(tgl, 2, 08)
-#define TGL_DMC_VERSION_REQUIRED	DMC_VERSION(2, 8)
+#define TGL_DMC_PATH			DMC_PATH(tgl, 2, 12)
+#define TGL_DMC_VERSION_REQUIRED	DMC_VERSION(2, 12)
 MODULE_FIRMWARE(TGL_DMC_PATH);
 
 #define ICL_DMC_PATH			DMC_PATH(icl, 1, 09)
-- 
2.32.0

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
