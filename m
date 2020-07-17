Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 07926223B38
	for <lists+intel-gfx@lfdr.de>; Fri, 17 Jul 2020 14:16:08 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 3AEF46ED9E;
	Fri, 17 Jul 2020 12:16:06 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 156EF6ED9E
 for <intel-gfx@lists.freedesktop.org>; Fri, 17 Jul 2020 12:16:05 +0000 (UTC)
IronPort-SDR: UJ1/yMVKu6iUNP5US+Ix+u6aG7j0tAn6xGYt54D2PIVwGk+1KObRmqIvsaXCB2bmBEk3oRnwPg
 pXM8hr0AJHOQ==
X-IronPort-AV: E=McAfee;i="6000,8403,9684"; a="167709562"
X-IronPort-AV: E=Sophos;i="5.75,362,1589266800"; d="scan'208";a="167709562"
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
 by fmsmga101.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 17 Jul 2020 05:16:04 -0700
IronPort-SDR: Lc82KRMMcUVvBpf3FDkPcGN8cXA7CHRsqg1oCDGu3B3cerGamq1JDKjBjcRZqksFnrJDQ3Vs6Y
 1BIfrAh5tv6Q==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.75,362,1589266800"; d="scan'208";a="318759950"
Received: from unknown (HELO genxfsim-desktop.iind.intel.com) ([10.223.74.178])
 by fmsmga002.fm.intel.com with ESMTP; 17 Jul 2020 05:16:03 -0700
From: Anshuman Gupta <anshuman.gupta@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Fri, 17 Jul 2020 17:34:25 +0530
Message-Id: <20200717120425.20947-1-anshuman.gupta@intel.com>
X-Mailer: git-send-email 2.26.2
MIME-Version: 1.0
Subject: [Intel-gfx] [RFC] drm/i915: Disable connector polling at runtime
 suspend
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

While i915 device is in runtime suspend, DRM connector polling
causing device to wakeup from runtime suspend.
This harm overall cpu idle statistics, therefore
disabling polling while in runtime suspend.

Cc: Imre Deak <imre.deak@intel.com>
Signed-off-by: Anshuman Gupta <anshuman.gupta@intel.com>
---
 drivers/gpu/drm/i915/i915_drv.c | 4 ++++
 1 file changed, 4 insertions(+)

diff --git a/drivers/gpu/drm/i915/i915_drv.c b/drivers/gpu/drm/i915/i915_drv.c
index 5fd5af4bc855..1229c72f19c9 100644
--- a/drivers/gpu/drm/i915/i915_drv.c
+++ b/drivers/gpu/drm/i915/i915_drv.c
@@ -1595,6 +1595,8 @@ static int intel_runtime_suspend(struct device *kdev)
 
 	disable_rpm_wakeref_asserts(rpm);
 
+	drm_kms_helper_poll_disable(&dev_priv->drm);
+
 	/*
 	 * We are safe here against re-faults, since the fault handler takes
 	 * an RPM reference.
@@ -1699,6 +1701,8 @@ static int intel_runtime_resume(struct device *kdev)
 	 */
 	intel_gt_runtime_resume(&dev_priv->gt);
 
+	drm_kms_helper_poll_enable(&dev_priv->drm);
+
 	/*
 	 * On VLV/CHV display interrupts are part of the display
 	 * power well, so hpd is reinitialized from there. For
-- 
2.26.2

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
