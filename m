Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id E773612A46B
	for <lists+intel-gfx@lfdr.de>; Wed, 25 Dec 2019 00:15:31 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id C161589C60;
	Tue, 24 Dec 2019 23:15:28 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
 by gabe.freedesktop.org (Postfix) with ESMTPS id D965289C52
 for <intel-gfx@lists.freedesktop.org>; Tue, 24 Dec 2019 23:15:26 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga003.fm.intel.com ([10.253.24.29])
 by fmsmga101.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 24 Dec 2019 15:15:26 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.69,353,1571727600"; d="scan'208";a="268512862"
Received: from mdroper-desk1.fm.intel.com ([10.1.27.64])
 by FMSMGA003.fm.intel.com with ESMTP; 24 Dec 2019 15:15:26 -0800
From: Matt Roper <matthew.d.roper@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Tue, 24 Dec 2019 15:15:21 -0800
Message-Id: <20191224231521.3430660-1-matthew.d.roper@intel.com>
X-Mailer: git-send-email 2.23.0
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH] drm/i915/tgl: Assume future platforms will
 inherit TGL's SFC capability
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
Cc: Lucas De Marchi <lucas.demarchi@intel.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

Our usual i915 convention is to assume that future platforms will follow
the same behavior as the latest platform of today.  The VDBOX/SFC
capabilities described here don't seem like something that should be
specific to TGL, so let's future-proof by making the test apply to all
gen12+ platforms.

Cc: Lucas De Marchi <lucas.demarchi@intel.com>
Signed-off-by: Matt Roper <matthew.d.roper@intel.com>
---
 drivers/gpu/drm/i915/intel_device_info.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/gpu/drm/i915/intel_device_info.c b/drivers/gpu/drm/i915/intel_device_info.c
index 1acb5db77431..bb709a08bd3c 100644
--- a/drivers/gpu/drm/i915/intel_device_info.c
+++ b/drivers/gpu/drm/i915/intel_device_info.c
@@ -1093,7 +1093,7 @@ void intel_device_info_init_mmio(struct drm_i915_private *dev_priv)
 		 * hooked up to an SFC (Scaler & Format Converter) unit.
 		 * In TGL each VDBOX has access to an SFC.
 		 */
-		if (IS_TIGERLAKE(dev_priv) || logical_vdbox++ % 2 == 0)
+		if (INTEL_GEN(dev_priv) >= 12 || logical_vdbox++ % 2 == 0)
 			RUNTIME_INFO(dev_priv)->vdbox_sfc_access |= BIT(i);
 	}
 	DRM_DEBUG_DRIVER("vdbox enable: %04x, instances: %04lx\n",
-- 
2.23.0

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
