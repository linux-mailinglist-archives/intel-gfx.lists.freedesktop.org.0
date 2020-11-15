Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id BDBF12B3966
	for <lists+intel-gfx@lfdr.de>; Sun, 15 Nov 2020 22:08:46 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 3A62A6E9DB;
	Sun, 15 Nov 2020 21:08:42 +0000 (UTC)
X-Original-To: Intel-gfx@lists.freedesktop.org
Delivered-To: Intel-gfx@lists.freedesktop.org
Received: from mga18.intel.com (mga18.intel.com [134.134.136.126])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 428016E9CA
 for <Intel-gfx@lists.freedesktop.org>; Sun, 15 Nov 2020 21:08:18 +0000 (UTC)
IronPort-SDR: pdRAdFKsi5RTbcdeZtkNQMX/X9CrPxP2Z3MV9Ht1M+W5RyNzofua+lKW2u8pH/+Qr9mXPLfqER
 qxnNUbi/3prw==
X-IronPort-AV: E=McAfee;i="6000,8403,9806"; a="158455854"
X-IronPort-AV: E=Sophos;i="5.77,481,1596524400"; d="scan'208";a="158455854"
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
 by orsmga106.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 15 Nov 2020 13:08:16 -0800
IronPort-SDR: OOk2ZtWH56IMsNVTWUlAXfwyfrBbbMPg6C7zLmKNWp0AsG9OrD0TZAhLatUrWxPLhx0sCJnjRL
 +pvm4JMIONyQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.77,481,1596524400"; d="scan'208";a="430009573"
Received: from sean-virtualbox.fm.intel.com ([10.105.158.96])
 by fmsmga001.fm.intel.com with ESMTP; 15 Nov 2020 13:08:15 -0800
From: "Huang, Sean Z" <sean.z.huang@intel.com>
To: Intel-gfx@lists.freedesktop.org
Date: Sun, 15 Nov 2020 13:08:10 -0800
Message-Id: <20201115210815.5272-22-sean.z.huang@intel.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20201115210815.5272-1-sean.z.huang@intel.com>
References: <20201115210815.5272-1-sean.z.huang@intel.com>
Subject: [Intel-gfx] [PATCH 22/27] drm/i915/pxp: Expose session state for
 display protection flip
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
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

Implement the intel_pxp_gem_object_status() to allow ring0 i915
display querying the current PXP session state. In the design,
ring0 display should not perform protection flip on the protected
buffers if there is no PXP session alive.

Signed-off-by: Huang, Sean Z <sean.z.huang@intel.com>
---
 drivers/gpu/drm/i915/pxp/intel_pxp.c | 8 ++++++++
 drivers/gpu/drm/i915/pxp/intel_pxp.h | 2 ++
 2 files changed, 10 insertions(+)

diff --git a/drivers/gpu/drm/i915/pxp/intel_pxp.c b/drivers/gpu/drm/i915/pxp/intel_pxp.c
index 44d17ae27b94..05fe143675b1 100644
--- a/drivers/gpu/drm/i915/pxp/intel_pxp.c
+++ b/drivers/gpu/drm/i915/pxp/intel_pxp.c
@@ -334,3 +334,11 @@ void intel_pxp_irq_handler(struct intel_gt *gt, u16 iir)
 end:
 	return;
 }
+
+bool intel_pxp_gem_object_status(struct drm_i915_private *i915, u64 gem_object_metadata)
+{
+	if (i915->pxp.r0ctx && i915->pxp.r0ctx->flag_display_hm_surface_keys)
+		return true;
+	else
+		return false;
+}
diff --git a/drivers/gpu/drm/i915/pxp/intel_pxp.h b/drivers/gpu/drm/i915/pxp/intel_pxp.h
index c0119ccdab08..eb0e548ce434 100644
--- a/drivers/gpu/drm/i915/pxp/intel_pxp.h
+++ b/drivers/gpu/drm/i915/pxp/intel_pxp.h
@@ -111,4 +111,6 @@ int i915_pxp_global_terminate_complete_callback(struct drm_i915_private *i915);
 int intel_pxp_init(struct drm_i915_private *i915);
 void intel_pxp_uninit(struct drm_i915_private *i915);
 
+bool intel_pxp_gem_object_status(struct drm_i915_private *i915, u64 gem_object_metadata);
+
 #endif
-- 
2.17.1

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
