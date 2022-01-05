Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 8C7144859AD
	for <lists+intel-gfx@lfdr.de>; Wed,  5 Jan 2022 20:58:30 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 6430810E405;
	Wed,  5 Jan 2022 19:58:28 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 9B92610E397
 for <intel-gfx@lists.freedesktop.org>; Wed,  5 Jan 2022 19:58:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1641412707; x=1672948707;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=sHGsFIVn0C8roJWpLFREd1s4BRfpGyI86Hsj29kl7SI=;
 b=J8SUdE8YPGTAaerKoeLSntVd4LxgF560IiLPshXJYKOVo+gr3esLEKTL
 yyS8T4kKs8o3yP5fx/0PMaQM2gIM4pTfp0He3vsPdFoQKC8o7pPdz1Plw
 MMKsSHt4S27bVHppyhXD6fiiGd3FHoQKH307tqSEOAxIbAtt64ccWYHvP
 1arS81m6KCqGgNmPWDNZNB6QdKKCkPvFEwRQd8KUuThZ03mOUxsRyNHkV
 zhx/byQ7guGj0R5LoejuadSq6KKbYHoVrCN2mQauDkeA/vtBMXwjY5C7C
 BzPJmkPDzXA4dWfa+GUjLadezIHYgqAsHUfmrHrJsybjE2c9V4q5URinE g==;
X-IronPort-AV: E=McAfee;i="6200,9189,10217"; a="266808612"
X-IronPort-AV: E=Sophos;i="5.88,264,1635231600"; d="scan'208";a="266808612"
Received: from fmsmga007.fm.intel.com ([10.253.24.52])
 by fmsmga101.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 05 Jan 2022 11:58:20 -0800
X-IronPort-AV: E=Sophos;i="5.88,264,1635231600"; d="scan'208";a="526730667"
Received: from menright-mobl1.amr.corp.intel.com (HELO localhost)
 ([10.252.25.244])
 by fmsmga007-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 05 Jan 2022 11:58:18 -0800
From: Jani Nikula <jani.nikula@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Wed,  5 Jan 2022 21:56:34 +0200
Message-Id: <f4d1d16ebd275db7fea2c3055acdc0753518bb5a.1641411696.git.jani.nikula@intel.com>
X-Mailer: git-send-email 2.30.2
In-Reply-To: <cover.1641411696.git.jani.nikula@intel.com>
References: <cover.1641411696.git.jani.nikula@intel.com>
MIME-Version: 1.0
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH 18/21] drm/i915: include some drm headers only
 where needed
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
Cc: jani.nikula@intel.com
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

Include drm_fourcc.h, drm_plane.h, and drm_color_mgmt.h where needed, so
we can drop the includes for drm_atomic.h and drm_fourcc.h from
i915_drv.h, reducing the build dependencies.

Signed-off-by: Jani Nikula <jani.nikula@intel.com>
---
 drivers/gpu/drm/i915/gem/i915_gem_create.c | 2 ++
 drivers/gpu/drm/i915/gvt/dmabuf.c          | 3 +++
 drivers/gpu/drm/i915/i915_drv.h            | 2 --
 drivers/gpu/drm/i915/i915_pci.c            | 1 +
 4 files changed, 6 insertions(+), 2 deletions(-)

diff --git a/drivers/gpu/drm/i915/gem/i915_gem_create.c b/drivers/gpu/drm/i915/gem/i915_gem_create.c
index 0deff550d324..c6eb023d3d86 100644
--- a/drivers/gpu/drm/i915/gem/i915_gem_create.c
+++ b/drivers/gpu/drm/i915/gem/i915_gem_create.c
@@ -3,6 +3,8 @@
  * Copyright © 2020 Intel Corporation
  */
 
+#include <drm/drm_fourcc.h>
+
 #include "gem/i915_gem_ioctls.h"
 #include "gem/i915_gem_lmem.h"
 #include "gem/i915_gem_region.h"
diff --git a/drivers/gpu/drm/i915/gvt/dmabuf.c b/drivers/gpu/drm/i915/gvt/dmabuf.c
index 509b6fed0b5b..32d95e2cd51a 100644
--- a/drivers/gpu/drm/i915/gvt/dmabuf.c
+++ b/drivers/gpu/drm/i915/gvt/dmabuf.c
@@ -31,6 +31,9 @@
 #include <linux/dma-buf.h>
 #include <linux/vfio.h>
 
+#include <drm/drm_fourcc.h>
+#include <drm/drm_plane.h>
+
 #include "gem/i915_gem_dmabuf.h"
 
 #include "i915_drv.h"
diff --git a/drivers/gpu/drm/i915/i915_drv.h b/drivers/gpu/drm/i915/i915_drv.h
index 30533862c10c..4421bfd3fe2f 100644
--- a/drivers/gpu/drm/i915/i915_drv.h
+++ b/drivers/gpu/drm/i915/i915_drv.h
@@ -31,7 +31,6 @@
 #define _I915_DRV_H_
 
 #include <uapi/drm/i915_drm.h>
-#include <uapi/drm/drm_fourcc.h>
 
 #include <asm/hypervisor.h>
 
@@ -52,7 +51,6 @@
 #include <drm/drm_auth.h>
 #include <drm/drm_util.h>
 #include <drm/drm_dsc.h>
-#include <drm/drm_atomic.h>
 #include <drm/drm_connector.h>
 #include <drm/i915_mei_hdcp_interface.h>
 #include <drm/ttm/ttm_device.h>
diff --git a/drivers/gpu/drm/i915/i915_pci.c b/drivers/gpu/drm/i915/i915_pci.c
index 8261b6455747..b3b72acb76d2 100644
--- a/drivers/gpu/drm/i915/i915_pci.c
+++ b/drivers/gpu/drm/i915/i915_pci.c
@@ -22,6 +22,7 @@
  *
  */
 
+#include <drm/drm_color_mgmt.h>
 #include <drm/drm_drv.h>
 #include <drm/i915_pciids.h>
 
-- 
2.30.2

