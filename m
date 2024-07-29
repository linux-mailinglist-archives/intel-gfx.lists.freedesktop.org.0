Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 0B55E93F7EE
	for <lists+intel-gfx@lfdr.de>; Mon, 29 Jul 2024 16:30:31 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id ABDE710E3EF;
	Mon, 29 Jul 2024 14:30:29 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="IkBE0qjX";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.20])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 7A35F10E3EE;
 Mon, 29 Jul 2024 14:30:28 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1722263428; x=1753799428;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=lbg2RQ3Ur5nDKCQf9O7s5+QVvV9uBAw3dDwT8I5+FQk=;
 b=IkBE0qjXRZNj/MQ3OCJIM89SCUl3Atqrax6bhSznZ+1N/GywjuTvsWpC
 lscWRXAWAUg01P/KSP5JeFxZ4nqmToqCEavrTi8PYMFZPWr2A2WctoB22
 b36uGueAuRO1aTd7o/JNA2I59V9FD+T0YmCoVcPqKHvkEQpswtBTQJgGF
 v3uH9AqGS+HGE+XTiqIPvTkLRGOe1peBTmAFHpxlBaIFngPAPqW/UcZyx
 eFuIcqCMcWOH+QKioAP2nXhs3LdmwnNwUfWURBCOyDxVRmqGyy9G2wLSF
 GvwGOByFISMMKan983OuySjeQsfwTN9xD5c2zBvAW2lbvq4jltquAC4AG g==;
X-CSE-ConnectionGUID: 6Ar0pMnKRVqhsyi+EBjA4A==
X-CSE-MsgGUID: T5pt2ympSoafMXs0Mw7kWg==
X-IronPort-AV: E=McAfee;i="6700,10204,11148"; a="19823082"
X-IronPort-AV: E=Sophos;i="6.09,246,1716274800"; d="scan'208";a="19823082"
Received: from fmviesa006.fm.intel.com ([10.60.135.146])
 by orvoesa112.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 29 Jul 2024 07:30:27 -0700
X-CSE-ConnectionGUID: a2Og1y5lRQSXVoC4Zhxmog==
X-CSE-MsgGUID: 4N2gfiG1SqCqppTUCAyWtw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.09,246,1716274800"; d="scan'208";a="53651585"
Received: from fdefranc-mobl3.ger.corp.intel.com (HELO localhost)
 ([10.245.246.185])
 by fmviesa006-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 29 Jul 2024 07:30:26 -0700
From: Jani Nikula <jani.nikula@intel.com>
To: intel-gfx@lists.freedesktop.org,
	intel-xe@lists.freedesktop.org
Cc: jani.nikula@intel.com
Subject: [PATCH 02/10] drm/xe: add kdev_to_xe_device() helper and use it
Date: Mon, 29 Jul 2024 17:30:03 +0300
Message-Id: <55d57008c0f9bcfc089cf8b940e531c770f43454.1722263308.git.jani.nikula@intel.com>
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

There are enough users for kernel device to xe device conversion, add a
helper for it.

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

