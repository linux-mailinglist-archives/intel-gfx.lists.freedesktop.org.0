Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id EF26393F7EF
	for <lists+intel-gfx@lfdr.de>; Mon, 29 Jul 2024 16:30:34 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 9ACD010E3ED;
	Mon, 29 Jul 2024 14:30:33 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="T+ZxWg3C";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.20])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 69B6910E3F4;
 Mon, 29 Jul 2024 14:30:32 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1722263432; x=1753799432;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=dvbThi7DW6BxJXayWTnvjuufwBUP2tBqvo4zo7OuV9A=;
 b=T+ZxWg3CJhVu6ZoG+Ed78J/OPkz7xQH5DLsbWKPrNGS9fBmN7IL+1Bfa
 iRZfm06Mb37jbHbzeACtFURJKZuaT5GAF3NEuIrGvbCsIbqD/UYrOEM2H
 c+LICbV+vpsJylX8DYm/VM789CXv4ciPi6h4igu3vLIedOK+DvqPePr9y
 x9jXlWmSRbfUKla537TkGFMoP+66LRHKM+W+qKEdXFXb69wQJynFK6jVs
 YjIb1RyR2VBT4ZaVSthuHciSKlQmJTHVDNd5Cs5/+3miIRcNNeE8z0kVl
 miETS/Og4YJ2myWNXFFVIOQoBHkHVcs1Z9DNXFELl8Ew+VAl7HJzpbKaU A==;
X-CSE-ConnectionGUID: 215fSe8sT+G+UOyyDfg/Og==
X-CSE-MsgGUID: iJmoH7H0Rh+rC9nD+VPPAg==
X-IronPort-AV: E=McAfee;i="6700,10204,11148"; a="19823089"
X-IronPort-AV: E=Sophos;i="6.09,246,1716274800"; d="scan'208";a="19823089"
Received: from fmviesa006.fm.intel.com ([10.60.135.146])
 by orvoesa112.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 29 Jul 2024 07:30:31 -0700
X-CSE-ConnectionGUID: RvIEmLipRVWWXRHb4jMAAw==
X-CSE-MsgGUID: 1Ex0j02hQCeYOY6Fcgu/uw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.09,246,1716274800"; d="scan'208";a="53651611"
Received: from fdefranc-mobl3.ger.corp.intel.com (HELO localhost)
 ([10.245.246.185])
 by fmviesa006-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 29 Jul 2024 07:30:31 -0700
From: Jani Nikula <jani.nikula@intel.com>
To: intel-gfx@lists.freedesktop.org,
	intel-xe@lists.freedesktop.org
Cc: jani.nikula@intel.com
Subject: [PATCH 03/10] drm/xe/tests: fix drvdata usage
Date: Mon, 29 Jul 2024 17:30:04 +0300
Message-Id: <66f8959522a679d80eb71ba8dae47b86d94e71d9.1722263308.git.jani.nikula@intel.com>
X-Mailer: git-send-email 2.39.2
In-Reply-To: <cover.1722263308.git.jani.nikula@intel.com>
References: <cover.1722263308.git.jani.nikula@intel.com>
MIME-Version: 1.0
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
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

The test code seems to assume struct drm_device * is stored in
drvdata. This is (currently) not the case. Use the proper helper to get
at the xe device.

This has not been an issue, because struct drm_device is embedded in
struct xe_device at offset 0.

Signed-off-by: Jani Nikula <jani.nikula@intel.com>
---
 drivers/gpu/drm/xe/tests/xe_pci.c | 6 +++---
 1 file changed, 3 insertions(+), 3 deletions(-)

diff --git a/drivers/gpu/drm/xe/tests/xe_pci.c b/drivers/gpu/drm/xe/tests/xe_pci.c
index 577ee7d14381..2046789f62bd 100644
--- a/drivers/gpu/drm/xe/tests/xe_pci.c
+++ b/drivers/gpu/drm/xe/tests/xe_pci.c
@@ -20,15 +20,15 @@ struct kunit_test_data {
 static int dev_to_xe_device_fn(struct device *dev, void *__data)
 
 {
-	struct drm_device *drm = dev_get_drvdata(dev);
+	struct xe_device *xe = kdev_to_xe_device(dev);
 	struct kunit_test_data *data = __data;
 	int ret = 0;
 	int idx;
 
 	data->ndevs++;
 
-	if (drm_dev_enter(drm, &idx))
-		ret = data->xe_fn(to_xe_device(dev_get_drvdata(dev)));
+	if (drm_dev_enter(&xe->drm, &idx))
+		ret = data->xe_fn(xe);
 	drm_dev_exit(idx);
 
 	return ret;
-- 
2.39.2

