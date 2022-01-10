Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 3982E4895D4
	for <lists+intel-gfx@lfdr.de>; Mon, 10 Jan 2022 10:58:00 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 3497112B6EF;
	Mon, 10 Jan 2022 09:57:58 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 8761B12B6EF
 for <intel-gfx@lists.freedesktop.org>; Mon, 10 Jan 2022 09:57:57 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1641808677; x=1673344677;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=pv+pMunMMcDiwKxXF8hDmRWlXTpEn2m2umq1sB6BZ7M=;
 b=PNAMl4QPLMGM6Jgbb//ml7GL2sqH/vfkTpb6YvR+8RvoBDuJlDSrLySK
 oSmvLmDqmHvDABLosa42O95n38s59jw/AxPFY7ZehMphNei3WZn6EK9S3
 x0hN+HsYgnjYvvguKgVW/fad+lV1lMMzKs2XzKJXCiLeAVQ0MUAJRXUD9
 MY/CNbk1NzjPupCOusttieC1Xw7ey1u8x/odj/XH9ZxA1s8arGtUeCaVf
 81Zn20Pu4/iM/E7NpM8UoOtaAh3sNzN1bhqayg+OSO7N6kpla2ZdzcLV3
 jG+qiJNQv+aPj//UpPp9wEzNLEgnhP1Yjp5VCcqdBKWagH0H2C1qc5wlM A==;
X-IronPort-AV: E=McAfee;i="6200,9189,10222"; a="267520947"
X-IronPort-AV: E=Sophos;i="5.88,276,1635231600"; d="scan'208";a="267520947"
Received: from orsmga002.jf.intel.com ([10.7.209.21])
 by fmsmga101.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 10 Jan 2022 01:57:57 -0800
X-IronPort-AV: E=Sophos;i="5.88,276,1635231600"; d="scan'208";a="489949537"
Received: from bdoyle2-mobl1.ger.corp.intel.com (HELO localhost)
 ([10.252.26.184])
 by orsmga002-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 10 Jan 2022 01:57:55 -0800
From: Jani Nikula <jani.nikula@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Mon, 10 Jan 2022 11:57:39 +0200
Message-Id: <20220110095740.166078-3-jani.nikula@intel.com>
X-Mailer: git-send-email 2.30.2
In-Reply-To: <20220110095740.166078-1-jani.nikula@intel.com>
References: <20220110095740.166078-1-jani.nikula@intel.com>
MIME-Version: 1.0
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH 3/4] drm/i915/vga: switch to use VGA definitions
 from video/vga.h
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

The video/vga.h has macros for the VGA registers. Switch to use them.

Suggested-by: Matt Roper <matthew.d.roper@intel.com>
Signed-off-by: Jani Nikula <jani.nikula@intel.com>
---
 drivers/gpu/drm/i915/display/intel_vga.c | 9 +++++----
 1 file changed, 5 insertions(+), 4 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_vga.c b/drivers/gpu/drm/i915/display/intel_vga.c
index fa779f7ea415..43c12036c1fa 100644
--- a/drivers/gpu/drm/i915/display/intel_vga.c
+++ b/drivers/gpu/drm/i915/display/intel_vga.c
@@ -7,6 +7,7 @@
 #include <linux/vgaarb.h>
 
 #include <drm/i915_drm.h>
+#include <video/vga.h>
 
 #include "i915_drv.h"
 #include "intel_de.h"
@@ -34,9 +35,9 @@ void intel_vga_disable(struct drm_i915_private *dev_priv)
 
 	/* WaEnableVGAAccessThroughIOPort:ctg,elk,ilk,snb,ivb,vlv,hsw */
 	vga_get_uninterruptible(pdev, VGA_RSRC_LEGACY_IO);
-	outb(SR01, VGA_SR_INDEX);
-	sr1 = inb(VGA_SR_DATA);
-	outb(sr1 | 1 << 5, VGA_SR_DATA);
+	outb(VGA_SEQ_CLOCK_MODE, VGA_SEQ_I);
+	sr1 = inb(VGA_SEQ_D);
+	outb(sr1 | VGA_SR01_SCREEN_OFF, VGA_SEQ_D);
 	vga_put(pdev, VGA_RSRC_LEGACY_IO);
 	udelay(300);
 
@@ -92,7 +93,7 @@ void intel_vga_reset_io_mem(struct drm_i915_private *i915)
 	 * and error messages.
 	 */
 	vga_get_uninterruptible(pdev, VGA_RSRC_LEGACY_IO);
-	outb(inb(VGA_MSR_READ), VGA_MSR_WRITE);
+	outb(inb(VGA_MIS_R), VGA_MIS_W);
 	vga_put(pdev, VGA_RSRC_LEGACY_IO);
 }
 
-- 
2.30.2

