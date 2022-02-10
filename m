Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id A578C4B11FF
	for <lists+intel-gfx@lfdr.de>; Thu, 10 Feb 2022 16:47:08 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id C194310E89E;
	Thu, 10 Feb 2022 15:47:06 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga07.intel.com (mga07.intel.com [134.134.136.100])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 6CCD310E89D
 for <intel-gfx@lists.freedesktop.org>; Thu, 10 Feb 2022 15:47:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1644508025; x=1676044025;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=i6YkjIpLSjmam10uyk8dcq8NKlI2iTOGZ8ll6wwUbe0=;
 b=ifp83F0OoX9TxUX2dTbBR1HN8H53iRiGVBxx1TyQnWlnIGb7zGSqoryJ
 Z7uOSlHGI00BKA7IwALA5b3CNP3UUo/x+c2RsP9zoJ9AYi9gBvslbxKai
 XCPjhlwElayj8EV9s7DoiVa0bZrtlXMHBtawzcxGBhU4aNMZuAzHSDwO8
 foHSiHKaaACzi27/87S4pLjij/N83Dnv6qjhMgDX/mOx6IthnVe6Y9WJW
 JuuLukm/8ifNchJlbb3T0xtAGfgWXlwReyIMHs02mrIFshgnSfMAXHV9J
 7BNGL6T0vnjeQbaIYobXtTaRjzzNrL8V3k+GWsUIxOsoRYJdfCMLVjbcH g==;
X-IronPort-AV: E=McAfee;i="6200,9189,10254"; a="312802974"
X-IronPort-AV: E=Sophos;i="5.88,359,1635231600"; d="scan'208";a="312802974"
Received: from orsmga003.jf.intel.com ([10.7.209.27])
 by orsmga105.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 10 Feb 2022 07:47:02 -0800
X-IronPort-AV: E=Sophos;i="5.88,359,1635231600"; d="scan'208";a="482800660"
Received: from dhogarty-mobl1.ger.corp.intel.com (HELO localhost)
 ([10.252.10.221])
 by orsmga003-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 10 Feb 2022 07:47:00 -0800
From: Jani Nikula <jani.nikula@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Thu, 10 Feb 2022 17:45:50 +0200
Message-Id: <b03711b2286396b2e9d5822f6adef4e7a6dc0f7b.1644507885.git.jani.nikula@intel.com>
X-Mailer: git-send-email 2.30.2
In-Reply-To: <cover.1644507885.git.jani.nikula@intel.com>
References: <cover.1644507885.git.jani.nikula@intel.com>
MIME-Version: 1.0
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH v4 12/14] drm/i915: include some drm headers
 only where needed
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
Cc: jani.nikula@intel.com, Daniel Vetter <daniel.vetter@ffwll.ch>
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

Include drm_fourcc.h, drm_plane.h, and drm_color_mgmt.h where needed, so
we can drop the includes for drm_atomic.h and drm_fourcc.h from
i915_drv.h, reducing the build dependencies.

Cc: Tvrtko Ursulin <tvrtko.ursulin@linux.intel.com>
Cc: Daniel Vetter <daniel.vetter@ffwll.ch>
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
index 893206a92002..c95c25d2addb 100644
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
index 233e16916a78..6d28f16f71e6 100644
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
index 467252f885c2..8246cbe9b01d 100644
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

