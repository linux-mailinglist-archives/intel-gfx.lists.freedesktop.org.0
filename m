Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id 2p7lGS06I2qtlAEAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Fri, 05 Jun 2026 23:05:49 +0200
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 34AB764B4AA
	for <lists+intel-gfx@lfdr.de>; Fri, 05 Jun 2026 23:05:49 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=intel.com header.s=Intel header.b=PSTq31uD;
	spf=pass (mail.lfdr.de: domain of intel-gfx-bounces@lists.freedesktop.org designates 131.252.210.177 as permitted sender) smtp.mailfrom=intel-gfx-bounces@lists.freedesktop.org;
	dmarc=pass (policy=none) header.from=intel.com
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id B7E0E112C20;
	Fri,  5 Jun 2026 21:05:47 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.16])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 1F1F9112C20;
 Fri,  5 Jun 2026 21:05:47 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1780693547; x=1812229547;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=n+pmT9aLIgIWmdlRu6E2QHM/4DPYbUSAGm4f0ZJ4Hj4=;
 b=PSTq31uDEN7WhUOcCECe6lYAhd0puvfpSEtbCXRuxQbWsqKbFUSrCnqR
 mUj9gYEG/oYfo3PRMMnmmVhojsFy0L7rGOSekeb2mfVrBibxwZE8lGBFo
 QNON1Ejfr9Ex4QWoTTZvCMRgUM7Rl111UMfB+YeZ8xkRih0u4cZJbajzY
 A+RNuHhx6yC5hUCfiyfFTIkwHgyqCw7znDQxyuI6ZTxBEq2wkJI9g82uo
 T3xvV2sID+xOVYPZKrRbLe1nHEPQYQ0n0JTgATZJeHRfZS1RvIp+fC3hx
 4vyEtqxTXy6JbUkosif1+Px9/p2lKly6NYwEg88Qp3HwDiAZkJxjHo41c w==;
X-CSE-ConnectionGUID: f1VQjwlRRVWFDlp5CtkdfQ==
X-CSE-MsgGUID: cqwyh+a/SJWEj8zFXDMpzQ==
X-IronPort-AV: E=McAfee;i="6800,10657,11808"; a="69064565"
X-IronPort-AV: E=Sophos;i="6.24,189,1774335600"; d="scan'208";a="69064565"
Received: from orviesa009.jf.intel.com ([10.64.159.149])
 by fmvoesa110.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 05 Jun 2026 14:05:46 -0700
X-CSE-ConnectionGUID: yo8rwZWrQ2mIwsSV0eXoWg==
X-CSE-MsgGUID: R647S36uS/qyDUD2q+b8Gg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.24,189,1774335600"; d="scan'208";a="244994705"
Received: from osgc-sh-dragon.sh.intel.com ([10.239.81.44])
 by orviesa009-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 05 Jun 2026 14:05:45 -0700
From: Jonathan Cavitt <jonathan.cavitt@intel.com>
To: intel-xe@lists.freedesktop.org,
	intel-gfx@lists.freedesktop.org
Cc: saurabhg.gupta@intel.com, alex.zuo@intel.com, jonathan.cavitt@intel.com,
 raag.jadav@intel.com, Michal.Wajdeczko@intel.com
Subject: [PATCH v3 3/5] drm/xe/i2c: Use xe print functions in xe_i2c.c
Date: Sat,  6 Jun 2026 05:05:32 +0800
Message-ID: <20260605210534.3843211-4-jonathan.cavitt@intel.com>
X-Mailer: git-send-email 2.53.0
In-Reply-To: <20260605210534.3843211-1-jonathan.cavitt@intel.com>
References: <20260605210534.3843211-1-jonathan.cavitt@intel.com>
MIME-Version: 1.0
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
X-Rspamd-Action: no action
X-Spamd-Result: default: False [0.19 / 15.00];
	MID_CONTAINS_FROM(1.00)[];
	R_MISSING_CHARSET(0.50)[];
	DMARC_POLICY_ALLOW(-0.50)[intel.com,none];
	R_DKIM_ALLOW(-0.20)[intel.com:s=Intel];
	MAILLIST(-0.20)[mailman];
	R_SPF_ALLOW(-0.20)[+ip4:131.252.210.177:c];
	MIME_GOOD(-0.10)[text/plain];
	RWL_MAILSPIKE_GOOD(-0.10)[131.252.210.177:from];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	RCVD_COUNT_THREE(0.00)[4];
	MIME_TRACE(0.00)[0:+];
	ARC_NA(0.00)[];
	DKIM_TRACE(0.00)[intel.com:+];
	ASN(0.00)[asn:6366, ipnet:131.252.0.0/16, country:US];
	FORGED_SENDER_MAILLIST(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[jonathan.cavitt@intel.com,intel-gfx-bounces@lists.freedesktop.org];
	FROM_HAS_DN(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	TO_DN_NONE(0.00)[];
	RCPT_COUNT_SEVEN(0.00)[7];
	ALIAS_RESOLVED(0.00)[];
	TAGGED_RCPT(0.00)[intel-gfx];
	DBL_BLOCKED_OPENRESOLVER(0.00)[lists.freedesktop.org:from_smtp,gabe.freedesktop.org:helo,gabe.freedesktop.org:rdns,intel.com:mid,intel.com:dkim,intel.com:from_mime,intel.com:email]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: 34AB764B4AA

Update xe_i2c.c to use the xe error reporting helper functions in
xe_printk.h instead of directly calling the associated drm print
functions from drm_print.h

Signed-off-by: Jonathan Cavitt <jonathan.cavitt@intel.com>
---
 drivers/gpu/drm/xe/xe_i2c.c | 6 +++---
 1 file changed, 3 insertions(+), 3 deletions(-)

diff --git a/drivers/gpu/drm/xe/xe_i2c.c b/drivers/gpu/drm/xe/xe_i2c.c
index 706783863d07..148e82e01ae8 100644
--- a/drivers/gpu/drm/xe/xe_i2c.c
+++ b/drivers/gpu/drm/xe/xe_i2c.c
@@ -5,7 +5,6 @@
  * Copyright (C) 2025 Intel Corporation.
  */
 
-#include <drm/drm_print.h>
 #include <linux/array_size.h>
 #include <linux/container_of.h>
 #include <linux/device.h>
@@ -30,6 +29,7 @@
 #include "xe_device.h"
 #include "xe_i2c.h"
 #include "xe_mmio.h"
+#include "xe_printk.h"
 #include "xe_sriov.h"
 #include "xe_survivability_mode.h"
 
@@ -285,7 +285,7 @@ void xe_i2c_pm_suspend(struct xe_device *xe)
 		return;
 
 	xe_mmio_rmw32(mmio, I2C_CONFIG_PMCSR, PCI_PM_CTRL_STATE_MASK, (__force u32)PCI_D3hot);
-	drm_dbg(&xe->drm, "pmcsr: 0x%08x\n", xe_mmio_read32(mmio, I2C_CONFIG_PMCSR));
+	xe_dbg(xe, "pmcsr: 0x%08x\n", xe_mmio_read32(mmio, I2C_CONFIG_PMCSR));
 }
 
 void xe_i2c_pm_resume(struct xe_device *xe, bool d3cold)
@@ -299,7 +299,7 @@ void xe_i2c_pm_resume(struct xe_device *xe, bool d3cold)
 		xe_mmio_rmw32(mmio, I2C_CONFIG_CMD, 0, PCI_COMMAND_MEMORY | PCI_COMMAND_MASTER);
 
 	xe_mmio_rmw32(mmio, I2C_CONFIG_PMCSR, PCI_PM_CTRL_STATE_MASK, (__force u32)PCI_D0);
-	drm_dbg(&xe->drm, "pmcsr: 0x%08x\n", xe_mmio_read32(mmio, I2C_CONFIG_PMCSR));
+	xe_dbg(xe, "pmcsr: 0x%08x\n", xe_mmio_read32(mmio, I2C_CONFIG_PMCSR));
 }
 
 static void xe_i2c_remove(void *data)
-- 
2.53.0

