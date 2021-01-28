Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id E4EC4307EA6
	for <lists+intel-gfx@lfdr.de>; Thu, 28 Jan 2021 20:24:54 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id D8AEF6E9DA;
	Thu, 28 Jan 2021 19:24:48 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga07.intel.com (mga07.intel.com [134.134.136.100])
 by gabe.freedesktop.org (Postfix) with ESMTPS id EB05B6E9CF
 for <intel-gfx@lists.freedesktop.org>; Thu, 28 Jan 2021 19:24:37 +0000 (UTC)
IronPort-SDR: GDrGFjeDgtqqTQjcjR2IPGjIWqeXZH9mt9dQKGxhLVXbVjN1p4jTWAAyrydFmP3MXPVnkkRhMK
 qnsA8oZwiEUw==
X-IronPort-AV: E=McAfee;i="6000,8403,9878"; a="244384029"
X-IronPort-AV: E=Sophos;i="5.79,383,1602572400"; d="scan'208";a="244384029"
Received: from fmsmga003.fm.intel.com ([10.253.24.29])
 by orsmga105.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 28 Jan 2021 11:24:37 -0800
IronPort-SDR: WbBgUeBIH5aeIC4YHzefXXsgvs0HDXHvqtYByWLeGtiMHy2lvIZN21fZcDe5XGQfZm7I/ETGvS
 0tNKPZtYGpdg==
X-IronPort-AV: E=Sophos;i="5.79,383,1602572400"; d="scan'208";a="411110141"
Received: from mdroper-desk1.fm.intel.com ([10.1.27.168])
 by fmsmga003-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 28 Jan 2021 11:24:36 -0800
From: Matt Roper <matthew.d.roper@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Thu, 28 Jan 2021 11:23:56 -0800
Message-Id: <20210128192413.1715802-2-matthew.d.roper@intel.com>
X-Mailer: git-send-email 2.25.4
In-Reply-To: <20210128192413.1715802-1-matthew.d.roper@intel.com>
References: <20210128192413.1715802-1-matthew.d.roper@intel.com>
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH 01/18] drm/i915/display13: add Display13
 characteristics
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

Let's start preparing for upcoming platforms that will use a Display13
design.

Signed-off-by: Matt Roper <matthew.d.roper@intel.com>
---
 drivers/gpu/drm/i915/i915_drv.h          |  1 +
 drivers/gpu/drm/i915/i915_pci.c          | 11 +++++++++++
 drivers/gpu/drm/i915/intel_device_info.h |  2 ++
 3 files changed, 14 insertions(+)

diff --git a/drivers/gpu/drm/i915/i915_drv.h b/drivers/gpu/drm/i915/i915_drv.h
index 9713ab963122..1c0fdbf800ac 100644
--- a/drivers/gpu/drm/i915/i915_drv.h
+++ b/drivers/gpu/drm/i915/i915_drv.h
@@ -1778,6 +1778,7 @@ tgl_stepping_get(struct drm_i915_private *dev_priv)
 #define INTEL_NUM_PIPES(dev_priv) (hweight8(INTEL_INFO(dev_priv)->pipe_mask))
 
 #define HAS_DISPLAY(dev_priv) (INTEL_INFO(dev_priv)->pipe_mask != 0)
+#define HAS_DISPLAY13(dev_priv) (INTEL_INFO(dev_priv)->has_display13)
 
 #define HAS_VRR(i915)	(INTEL_GEN(i915) >= 12)
 
diff --git a/drivers/gpu/drm/i915/i915_pci.c b/drivers/gpu/drm/i915/i915_pci.c
index 6cff7cf0f17b..e5e10484bf8d 100644
--- a/drivers/gpu/drm/i915/i915_pci.c
+++ b/drivers/gpu/drm/i915/i915_pci.c
@@ -936,6 +936,17 @@ static const struct intel_device_info adl_s_info = {
 	.dma_mask_size = 46,
 };
 
+#define DISPLAY13_FEATURES \
+	.has_display13 = 1,						\
+	.display.has_psr_hw_tracking = 0,				\
+	.abox_mask = GENMASK(1, 0),					\
+	.pipe_mask = BIT(PIPE_A) | BIT(PIPE_B) | BIT(PIPE_C) | BIT(PIPE_D), \
+	.cpu_transcoder_mask = BIT(TRANSCODER_A) | BIT(TRANSCODER_B) |	\
+		BIT(TRANSCODER_C) | BIT(TRANSCODER_D),			\
+	.ddb_size = 4096,						\
+	.mbus_size = 2048,						\
+	.num_supported_dbuf_slices = 4,
+
 #undef GEN
 #undef PLATFORM
 
diff --git a/drivers/gpu/drm/i915/intel_device_info.h b/drivers/gpu/drm/i915/intel_device_info.h
index e6ca1023ffcf..ba44c2c10ad8 100644
--- a/drivers/gpu/drm/i915/intel_device_info.h
+++ b/drivers/gpu/drm/i915/intel_device_info.h
@@ -116,6 +116,7 @@ enum intel_ppgtt_type {
 	func(is_dgfx); \
 	/* Keep has_* in alphabetical order */ \
 	func(has_64bit_reloc); \
+	func(has_display13); \
 	func(gpu_reset_clobbers_display); \
 	func(has_reset_engine); \
 	func(has_fpga_dbg); \
@@ -193,6 +194,7 @@ struct intel_device_info {
 	} display;
 
 	u16 ddb_size; /* in blocks */
+	u16 mbus_size; /* total ddb size on one mbus */
 	u8 num_supported_dbuf_slices; /* number of DBuf slices */
 
 	/* Register offsets for the various display pipes and transcoders */
-- 
2.25.4

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
