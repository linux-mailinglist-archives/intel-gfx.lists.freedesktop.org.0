Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id CDAC33174EB
	for <lists+intel-gfx@lfdr.de>; Thu, 11 Feb 2021 01:03:16 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 2BDDC6E0D7;
	Thu, 11 Feb 2021 00:03:15 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga05.intel.com (mga05.intel.com [192.55.52.43])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 081526E0D7
 for <intel-gfx@lists.freedesktop.org>; Thu, 11 Feb 2021 00:03:12 +0000 (UTC)
IronPort-SDR: PQ4sUjdArE9TePY4S/5wpaT/vQx0uZ13vTpwjLGYeIDMKpXpapKTzCRwykeZnzstyrWJAtlcbL
 79LvnL3kvl1Q==
X-IronPort-AV: E=McAfee;i="6000,8403,9891"; a="267013028"
X-IronPort-AV: E=Sophos;i="5.81,169,1610438400"; d="scan'208";a="267013028"
Received: from fmsmga004.fm.intel.com ([10.253.24.48])
 by fmsmga105.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 10 Feb 2021 16:03:12 -0800
IronPort-SDR: nmo1xcq3IO/qjWvmRgSDK89TKmSac0UG+E6dpoUEUd05TT8Mhz7VOg5BQowe9Eh7HKftGbCLCe
 iSUgBBDwjKIQ==
X-IronPort-AV: E=Sophos;i="5.81,169,1610438400"; d="scan'208";a="414267916"
Received: from sganes2-mobl1.amr.corp.intel.com (HELO ldmartin-desk1)
 ([10.212.30.225])
 by fmsmga004-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 10 Feb 2021 16:03:09 -0800
Date: Wed, 10 Feb 2021 16:03:09 -0800
From: Lucas De Marchi <lucas.demarchi@intel.com>
To: Matt Roper <matthew.d.roper@intel.com>
Message-ID: <20210211000309.aurwh4uyqpy5u23m@ldmartin-desk1>
X-Patchwork-Hint: comment
References: <20210128192413.1715802-1-matthew.d.roper@intel.com>
 <20210128192413.1715802-2-matthew.d.roper@intel.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20210128192413.1715802-2-matthew.d.roper@intel.com>
Subject: Re: [Intel-gfx] [PATCH 01/18] drm/i915/display13: add Display13
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
Cc: intel-gfx@lists.freedesktop.org
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Thu, Jan 28, 2021 at 11:23:56AM -0800, Matt Roper wrote:
>Let's start preparing for upcoming platforms that will use a Display13
>design.
>
>Signed-off-by: Matt Roper <matthew.d.roper@intel.com>
>---
> drivers/gpu/drm/i915/i915_drv.h          |  1 +
> drivers/gpu/drm/i915/i915_pci.c          | 11 +++++++++++
> drivers/gpu/drm/i915/intel_device_info.h |  2 ++
> 3 files changed, 14 insertions(+)
>
>diff --git a/drivers/gpu/drm/i915/i915_drv.h b/drivers/gpu/drm/i915/i915_drv.h
>index 9713ab963122..1c0fdbf800ac 100644
>--- a/drivers/gpu/drm/i915/i915_drv.h
>+++ b/drivers/gpu/drm/i915/i915_drv.h
>@@ -1778,6 +1778,7 @@ tgl_stepping_get(struct drm_i915_private *dev_priv)
> #define INTEL_NUM_PIPES(dev_priv) (hweight8(INTEL_INFO(dev_priv)->pipe_mask))
>
> #define HAS_DISPLAY(dev_priv) (INTEL_INFO(dev_priv)->pipe_mask != 0)
>+#define HAS_DISPLAY13(dev_priv) (INTEL_INFO(dev_priv)->has_display13)
>
> #define HAS_VRR(i915)	(INTEL_GEN(i915) >= 12)
>
>diff --git a/drivers/gpu/drm/i915/i915_pci.c b/drivers/gpu/drm/i915/i915_pci.c
>index 6cff7cf0f17b..e5e10484bf8d 100644
>--- a/drivers/gpu/drm/i915/i915_pci.c
>+++ b/drivers/gpu/drm/i915/i915_pci.c
>@@ -936,6 +936,17 @@ static const struct intel_device_info adl_s_info = {
> 	.dma_mask_size = 46,
> };
>
>+#define DISPLAY13_FEATURES \
>+	.has_display13 = 1,						\
>+	.display.has_psr_hw_tracking = 0,				\
>+	.abox_mask = GENMASK(1, 0),					\
>+	.pipe_mask = BIT(PIPE_A) | BIT(PIPE_B) | BIT(PIPE_C) | BIT(PIPE_D), \
>+	.cpu_transcoder_mask = BIT(TRANSCODER_A) | BIT(TRANSCODER_B) |	\
>+		BIT(TRANSCODER_C) | BIT(TRANSCODER_D),			\
>+	.ddb_size = 4096,						\
>+	.mbus_size = 2048,						\
>+	.num_supported_dbuf_slices = 4,
>+
> #undef GEN
> #undef PLATFORM
>
>diff --git a/drivers/gpu/drm/i915/intel_device_info.h b/drivers/gpu/drm/i915/intel_device_info.h
>index e6ca1023ffcf..ba44c2c10ad8 100644
>--- a/drivers/gpu/drm/i915/intel_device_info.h
>+++ b/drivers/gpu/drm/i915/intel_device_info.h
>@@ -116,6 +116,7 @@ enum intel_ppgtt_type {
> 	func(is_dgfx); \
> 	/* Keep has_* in alphabetical order */ \
> 	func(has_64bit_reloc); \
>+	func(has_display13); \

shouldn't this be inside display struct?

> 	func(gpu_reset_clobbers_display); \
> 	func(has_reset_engine); \
> 	func(has_fpga_dbg); \
>@@ -193,6 +194,7 @@ struct intel_device_info {
> 	} display;
>
> 	u16 ddb_size; /* in blocks */
>+	u16 mbus_size; /* total ddb size on one mbus */

this is unused and afaics never will. It'd be better if if this is
introduced only together with the feature.

Lucas De Marchi

> 	u8 num_supported_dbuf_slices; /* number of DBuf slices */
>
> 	/* Register offsets for the various display pipes and transcoders */
>-- 
>2.25.4
>
>_______________________________________________
>Intel-gfx mailing list
>Intel-gfx@lists.freedesktop.org
>https://lists.freedesktop.org/mailman/listinfo/intel-gfx
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
