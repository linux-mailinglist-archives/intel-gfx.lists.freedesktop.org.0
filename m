Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 4F77794C0C1
	for <lists+intel-gfx@lfdr.de>; Thu,  8 Aug 2024 17:16:12 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id D8D0510E75C;
	Thu,  8 Aug 2024 15:16:10 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="WeQBr0cq";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.18])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 3553410E75C;
 Thu,  8 Aug 2024 15:16:10 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1723130170; x=1754666170;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=pqWa2jyRWWeH1+8KI1R5j1+YRAncxI+UCfX6OpgmzLw=;
 b=WeQBr0cq0YITjzVPAY0RnV9Go3I47eqLNGhoOmF0GbrN58GaqvyO65Ht
 vK6WGNOlK2aGddtTWn1aTpVIRLPoE1hnK3RSibnBbXoL/5GCsOLH9aleN
 fL6vMGYCIx+TgWKk18pKREIbJHR24lOCuOVCUBJ6i1OCQZ1Ba35KBsB6x
 FEwag+uHeF409CW0P1H163MW1cecsg3A0S4bdmCIn3T9T1OD32d8CKYQz
 eFxau6Qdjy3e7YGOgG1V1Dj/BFbRHvY8OaNdoI3knwwZ5LD86A6zWOHM+
 YVAInhXQX4NJaPbPBbK7GnAypqJowa1pOjAcCx6+aX7F53xDP+Bovlr9a g==;
X-CSE-ConnectionGUID: VZe5Z6iwSZGiExcxWroMPg==
X-CSE-MsgGUID: rfTP9b2EQRiOPS/ky/dGSA==
X-IronPort-AV: E=McAfee;i="6700,10204,11158"; a="20832134"
X-IronPort-AV: E=Sophos;i="6.09,273,1716274800"; d="scan'208";a="20832134"
Received: from fmviesa004.fm.intel.com ([10.60.135.144])
 by fmvoesa112.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 08 Aug 2024 08:16:08 -0700
X-CSE-ConnectionGUID: gaxuRX2qQY+QUT0TLEQNIA==
X-CSE-MsgGUID: wfMGkaFdSBGsto37Fy9dww==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.09,273,1716274800"; d="scan'208";a="61878359"
Received: from jnikula-mobl4.fi.intel.com (HELO localhost) ([10.237.66.160])
 by fmviesa004-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 08 Aug 2024 08:16:05 -0700
From: Jani Nikula <jani.nikula@intel.com>
To: intel-gfx@lists.freedesktop.org,
	intel-xe@lists.freedesktop.org
Cc: Gustavo Sousa <gustavo.sousa@intel.com>, lucas.demarchi@intel.com,
 jani.nikula@intel.com
Subject: [PATCH v2 01/10] drm/xe/tests: remove unused leftover
 xe_call_for_each_device()
Date: Thu,  8 Aug 2024 18:15:46 +0300
Message-Id: <59a4d62438e529a398709d44d8fc7931f1d73822.1723129920.git.jani.nikula@intel.com>
X-Mailer: git-send-email 2.39.2
In-Reply-To: <cover.1723129920.git.jani.nikula@intel.com>
References: <cover.1723129920.git.jani.nikula@intel.com>
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

xe_call_for_each_device() has been unused since commit 57ecead343e7
("drm/xe/tests: Convert xe_mocs live tests"). Remove it and the related
dev_to_xe_device_fn() and struct kunit_test_data.

Cc: Gustavo Sousa <gustavo.sousa@intel.com>
Cc: Lucas De Marchi <lucas.demarchi@intel.com>
Signed-off-by: Jani Nikula <jani.nikula@intel.com>
---
 drivers/gpu/drm/xe/tests/xe_pci.c      | 52 --------------------------
 drivers/gpu/drm/xe/tests/xe_pci_test.h |  1 -
 2 files changed, 53 deletions(-)

diff --git a/drivers/gpu/drm/xe/tests/xe_pci.c b/drivers/gpu/drm/xe/tests/xe_pci.c
index 577ee7d14381..67404863087e 100644
--- a/drivers/gpu/drm/xe/tests/xe_pci.c
+++ b/drivers/gpu/drm/xe/tests/xe_pci.c
@@ -12,58 +12,6 @@
 #include <kunit/test-bug.h>
 #include <kunit/visibility.h>
 
-struct kunit_test_data {
-	int ndevs;
-	xe_device_fn xe_fn;
-};
-
-static int dev_to_xe_device_fn(struct device *dev, void *__data)
-
-{
-	struct drm_device *drm = dev_get_drvdata(dev);
-	struct kunit_test_data *data = __data;
-	int ret = 0;
-	int idx;
-
-	data->ndevs++;
-
-	if (drm_dev_enter(drm, &idx))
-		ret = data->xe_fn(to_xe_device(dev_get_drvdata(dev)));
-	drm_dev_exit(idx);
-
-	return ret;
-}
-
-/**
- * xe_call_for_each_device - Iterate over all devices this driver binds to
- * @xe_fn: Function to call for each device.
- *
- * This function iterated over all devices this driver binds to, and calls
- * @xe_fn: for each one of them. If the called function returns anything else
- * than 0, iteration is stopped and the return value is returned by this
- * function. Across each function call, drm_dev_enter() / drm_dev_exit() is
- * called for the corresponding drm device.
- *
- * Return: Number of devices iterated or
- *         the error code of a call to @xe_fn returning an error code.
- */
-int xe_call_for_each_device(xe_device_fn xe_fn)
-{
-	int ret;
-	struct kunit_test_data data = {
-	    .xe_fn = xe_fn,
-	    .ndevs = 0,
-	};
-
-	ret = driver_for_each_device(&xe_pci_driver.driver, NULL,
-				     &data, dev_to_xe_device_fn);
-
-	if (!data.ndevs)
-		kunit_skip(current->kunit_test, "test runs only on hardware\n");
-
-	return ret ?: data.ndevs;
-}
-
 /**
  * xe_call_for_each_graphics_ip - Iterate over all recognized graphics IPs
  * @xe_fn: Function to call for each device.
diff --git a/drivers/gpu/drm/xe/tests/xe_pci_test.h b/drivers/gpu/drm/xe/tests/xe_pci_test.h
index 3e2558bc3c90..ede46800aff1 100644
--- a/drivers/gpu/drm/xe/tests/xe_pci_test.h
+++ b/drivers/gpu/drm/xe/tests/xe_pci_test.h
@@ -19,7 +19,6 @@ typedef int (*xe_device_fn)(struct xe_device *);
 typedef void (*xe_graphics_fn)(const struct xe_graphics_desc *);
 typedef void (*xe_media_fn)(const struct xe_media_desc *);
 
-int xe_call_for_each_device(xe_device_fn xe_fn);
 void xe_call_for_each_graphics_ip(xe_graphics_fn xe_fn);
 void xe_call_for_each_media_ip(xe_media_fn xe_fn);
 
-- 
2.39.2

