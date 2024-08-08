Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 5967A94C0C3
	for <lists+intel-gfx@lfdr.de>; Thu,  8 Aug 2024 17:16:17 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id F248F10E769;
	Thu,  8 Aug 2024 15:16:15 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="W6Zkpjz8";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.18])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 589F510E768;
 Thu,  8 Aug 2024 15:16:15 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1723130175; x=1754666175;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=5dkG2dQqmxiM+Es/uyYRiC/7JRrrJ/RKIZVHK+Frn7g=;
 b=W6Zkpjz88vcBK3MKrONl7IO1n2/Sn85v3C7JIInCHEOWt9bAtYtgI8eH
 5USRXDBX5q0aJZujGcXBG63W0tLJzaswHV1Dv38ysrCgG4F1pE82i6DeZ
 3mg3fiQjr32wDU09Po0ZIr3x7wmMuI3v6FkuVGZoEb2h398rkkOUdCqOO
 Mx0igi6ODdS7Pz9uE8WXxGVrIT2yOZyly3hNGNChUgZOEoOfgHbtUtpWR
 cDKWx/oriiyF+VBk/7KKGdkLY0QREc3fEEjZk4P8TbcneEC2o3ZaQfG78
 sF/Sd4E2Q2+GI1t5G3pK71AHKgoii8SgITRC4hUg9XDmOR8SOB6310QJC A==;
X-CSE-ConnectionGUID: DWJChLlBTAuXejgAkFSrFQ==
X-CSE-MsgGUID: 2bEzezC/T2SnZx4wLhEpOg==
X-IronPort-AV: E=McAfee;i="6700,10204,11158"; a="20832181"
X-IronPort-AV: E=Sophos;i="6.09,273,1716274800"; d="scan'208";a="20832181"
Received: from fmviesa004.fm.intel.com ([10.60.135.144])
 by fmvoesa112.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 08 Aug 2024 08:16:15 -0700
X-CSE-ConnectionGUID: IMmAXITeSlSMPmunEdt6kA==
X-CSE-MsgGUID: tnWz2ghhQ3Kl4XN6cYPS+w==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.09,273,1716274800"; d="scan'208";a="61878381"
Received: from jnikula-mobl4.fi.intel.com (HELO localhost) ([10.237.66.160])
 by fmviesa004-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 08 Aug 2024 08:16:14 -0700
From: Jani Nikula <jani.nikula@intel.com>
To: intel-gfx@lists.freedesktop.org,
	intel-xe@lists.freedesktop.org
Cc: Gustavo Sousa <gustavo.sousa@intel.com>, lucas.demarchi@intel.com,
 jani.nikula@intel.com
Subject: [PATCH v2 03/10] drm/xe: add kdev_to_xe_device() helper and use it
Date: Thu,  8 Aug 2024 18:15:48 +0300
Message-Id: <cced115a271139cc2f960606a78cded6e175e27f.1723129920.git.jani.nikula@intel.com>
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

There are enough users for kernel device to xe device conversion, add a
helper for it.

Reviewed-by: Gustavo Sousa <gustavo.sousa@intel.com>
Signed-off-by: Jani Nikula <jani.nikula@intel.com>
---
 drivers/gpu/drm/xe/xe_device.h    | 5 +++++
 drivers/gpu/drm/xe/xe_gsc_proxy.c | 9 ++-------
 2 files changed, 7 insertions(+), 7 deletions(-)

diff --git a/drivers/gpu/drm/xe/xe_device.h b/drivers/gpu/drm/xe/xe_device.h
index db6cc8d0d6b8..2c96f1b2aafd 100644
--- a/drivers/gpu/drm/xe/xe_device.h
+++ b/drivers/gpu/drm/xe/xe_device.h
@@ -15,6 +15,11 @@ static inline struct xe_device *to_xe_device(const struct drm_device *dev)
 	return container_of(dev, struct xe_device, drm);
 }
 
+static inline struct xe_device *kdev_to_xe_device(struct device *kdev)
+{
+	return dev_get_drvdata(kdev);
+}
+
 static inline struct xe_device *pdev_to_xe_device(struct pci_dev *pdev)
 {
 	return pci_get_drvdata(pdev);
diff --git a/drivers/gpu/drm/xe/xe_gsc_proxy.c b/drivers/gpu/drm/xe/xe_gsc_proxy.c
index aa812a2bc3ed..28e6a7a1d282 100644
--- a/drivers/gpu/drm/xe/xe_gsc_proxy.c
+++ b/drivers/gpu/drm/xe/xe_gsc_proxy.c
@@ -62,11 +62,6 @@ gsc_to_gt(struct xe_gsc *gsc)
 	return container_of(gsc, struct xe_gt, uc.gsc);
 }
 
-static inline struct xe_device *kdev_to_xe(struct device *kdev)
-{
-	return dev_get_drvdata(kdev);
-}
-
 bool xe_gsc_proxy_init_done(struct xe_gsc *gsc)
 {
 	struct xe_gt *gt = gsc_to_gt(gsc);
@@ -345,7 +340,7 @@ void xe_gsc_proxy_irq_handler(struct xe_gsc *gsc, u32 iir)
 static int xe_gsc_proxy_component_bind(struct device *xe_kdev,
 				       struct device *mei_kdev, void *data)
 {
-	struct xe_device *xe = kdev_to_xe(xe_kdev);
+	struct xe_device *xe = kdev_to_xe_device(xe_kdev);
 	struct xe_gt *gt = xe->tiles[0].media_gt;
 	struct xe_gsc *gsc = &gt->uc.gsc;
 
@@ -360,7 +355,7 @@ static int xe_gsc_proxy_component_bind(struct device *xe_kdev,
 static void xe_gsc_proxy_component_unbind(struct device *xe_kdev,
 					  struct device *mei_kdev, void *data)
 {
-	struct xe_device *xe = kdev_to_xe(xe_kdev);
+	struct xe_device *xe = kdev_to_xe_device(xe_kdev);
 	struct xe_gt *gt = xe->tiles[0].media_gt;
 	struct xe_gsc *gsc = &gt->uc.gsc;
 
-- 
2.39.2

