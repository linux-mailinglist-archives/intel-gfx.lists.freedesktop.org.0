Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id B752C19B5D8
	for <lists+intel-gfx@lfdr.de>; Wed,  1 Apr 2020 20:43:46 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 139FF6E983;
	Wed,  1 Apr 2020 18:43:45 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga17.intel.com (mga17.intel.com [192.55.52.151])
 by gabe.freedesktop.org (Postfix) with ESMTPS id B466F6E983
 for <intel-gfx@lists.freedesktop.org>; Wed,  1 Apr 2020 18:43:43 +0000 (UTC)
IronPort-SDR: Zl2xYbCbesct3lHhK/6uhrJaWRlpNk665CiuA2rZwWRShboe8un+CkPJQ/lo7YA2URfrqkjhjB
 TQ7ZRGnsMBIA==
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga008.fm.intel.com ([10.253.24.58])
 by fmsmga107.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 01 Apr 2020 11:43:43 -0700
IronPort-SDR: eQulqKhiArmgELdpeBi9AdDRQb2NVQUhnk1FEZU8pzg/EAJFIMQ9iem8Q8TIgyqS44t4Q/JUU0
 NNbSOCxg0J3w==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.72,332,1580803200"; d="scan'208";a="242305539"
Received: from orsosgc001.ra.intel.com (HELO orsosgc001.amr.corp.intel.com)
 ([10.23.184.150])
 by fmsmga008.fm.intel.com with ESMTP; 01 Apr 2020 11:43:43 -0700
Date: Wed, 1 Apr 2020 11:43:42 -0700
From: Umesh Nerlige Ramappa <umesh.nerlige.ramappa@intel.com>
To: Lionel Landwerlin <lionel.g.landwerlin@intel.com>
Message-ID: <20200401184342.GA4430@orsosgc001.amr.corp.intel.com>
References: <20200331114646.81793-1-lionel.g.landwerlin@intel.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200331114646.81793-1-lionel.g.landwerlin@intel.com>
User-Agent: Mutt/1.12.0 (2019-05-25)
Subject: Re: [Intel-gfx] [PATCH] drm/i915/perf: Enable application triggered
 OA reports
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

On Tue, Mar 31, 2020 at 02:46:46PM +0300, Lionel Landwerlin wrote:
>Gen12 brought an important redesign of the OA unit, splitting it in 2
>with a per context part (OAR) and a global part (OAG).
>
>OAR deals with per context counters and implements the
>MI_REPORT_PERF_COUNT command.
>
>OAG deals with global counters and the OA buffer.
>
>Unfortunately some of the counters available in OAG are not available
>in OAR, for instance counters that would report global caches
>utilization.
>
>Since applications making use of this want to access those additional
>OAG counters we can enable them to generate a report from their
>command buffer into the OA buffer. This is somewhat equivalent to
>having them doing their own MI_REPORT_PERF_COUNT. The application then
>parse the OA buffer as they were doing previously, only looking for a
>begin/end OA report with the appropriate reason field in the OA buffer
>instead of using MI_REPORT_PERF_COUNT generated reports for begin/end.
>
>Signed-off-by: Lionel Landwerlin <lionel.g.landwerlin@intel.com>
>---
> drivers/gpu/drm/i915/gt/intel_workarounds.c | 18 ++++++++++++++++++
> drivers/gpu/drm/i915/i915_perf.c            | 10 +++++++---
> drivers/gpu/drm/i915/i915_reg.h             |  2 ++
> 3 files changed, 27 insertions(+), 3 deletions(-)
>
>diff --git a/drivers/gpu/drm/i915/gt/intel_workarounds.c b/drivers/gpu/drm/i915/gt/intel_workarounds.c
>index e96cc7fa0936..552eadaa6f9a 100644
>--- a/drivers/gpu/drm/i915/gt/intel_workarounds.c
>+++ b/drivers/gpu/drm/i915/gt/intel_workarounds.c
>@@ -1127,6 +1127,10 @@ static void gen9_whitelist_build(struct i915_wa_list *w)
>
> 	/* WaSendPushConstantsFromMMIO:skl,bxt */
> 	whitelist_reg(w, COMMON_SLICE_CHICKEN2);
>+
>+	/* Allow userspace trigger OA report generation in OA buffer. */
>+	whitelist_reg(w, OAREPORTTRIG2);
>+	whitelist_reg(w, OAREPORTTRIG6);
> }
>
> static void skl_whitelist_build(struct intel_engine_cs *engine)
>@@ -1208,6 +1212,10 @@ static void cnl_whitelist_build(struct intel_engine_cs *engine)
>
> 	/* WaEnablePreemptionGranularityControlByUMD:cnl */
> 	whitelist_reg(w, GEN8_CS_CHICKEN1);
>+
>+	/* Allow userspace trigger OA report generation in OA buffer. */
>+	whitelist_reg(w, OAREPORTTRIG2);
>+	whitelist_reg(w, OAREPORTTRIG6);
> }
>
> static void icl_whitelist_build(struct intel_engine_cs *engine)
>@@ -1237,6 +1245,12 @@ static void icl_whitelist_build(struct intel_engine_cs *engine)
> 		whitelist_reg_ext(w, PS_INVOCATION_COUNT,
> 				  RING_FORCE_TO_NONPRIV_ACCESS_RD |
> 				  RING_FORCE_TO_NONPRIV_RANGE_4);
>+
>+		/*
>+		 * Allow userspace trigger OA report generation in OA buffer.
>+		 */
>+		whitelist_reg(w, OAREPORTTRIG2);
>+		whitelist_reg(w, OAREPORTTRIG6);
> 		break;
>
> 	case VIDEO_DECODE_CLASS:
>@@ -1281,6 +1295,10 @@ static void tgl_whitelist_build(struct intel_engine_cs *engine)
>
> 		/* Wa_1806527549:tgl */
> 		whitelist_reg(w, HIZ_CHICKEN);
>+
>+		/* Allow userspace trigger OA report generation in OA buffer. */
>+		whitelist_reg(w, GEN12_OAG_OAREPORTTRIG2);
>+		whitelist_reg(w, GEN12_OAG_OAREPORTTRIG6);
> 		break;
> 	default:
> 		break;
>diff --git a/drivers/gpu/drm/i915/i915_perf.c b/drivers/gpu/drm/i915/i915_perf.c
>index 28e3d76fa2e6..ae935b1b1ae3 100644
>--- a/drivers/gpu/drm/i915/i915_perf.c
>+++ b/drivers/gpu/drm/i915/i915_perf.c
>@@ -1450,7 +1450,8 @@ static void gen8_init_oa_buffer(struct i915_perf_stream *stream)
> 	 *  bit."
> 	 */
> 	intel_uncore_write(uncore, GEN8_OABUFFER, gtt_offset |
>-		   OABUFFER_SIZE_16M | GEN8_OABUFFER_MEM_SELECT_GGTT);
>+		   OABUFFER_SIZE_16M | GEN8_OABUFFER_MEM_SELECT_GGTT |
>+		   GEN8_OABUFFER_EDGE_TRIGGER);
> 	intel_uncore_write(uncore, GEN8_OATAILPTR, gtt_offset & GEN8_OATAILPTR_MASK);
>
> 	/* Mark that we need updated tail pointers to read from... */
>@@ -1503,7 +1504,8 @@ static void gen12_init_oa_buffer(struct i915_perf_stream *stream)
> 	 *  bit."
> 	 */
> 	intel_uncore_write(uncore, GEN12_OAG_OABUFFER, gtt_offset |
>-			   OABUFFER_SIZE_16M | GEN8_OABUFFER_MEM_SELECT_GGTT);
>+			   OABUFFER_SIZE_16M | GEN8_OABUFFER_MEM_SELECT_GGTT |
>+			   GEN12_OAG_OABUFFER_EDGE_TRIGGER);
> 	intel_uncore_write(uncore, GEN12_OAG_OATAILPTR,
> 			   gtt_offset & GEN12_OAG_OATAILPTR_MASK);
>
>@@ -4481,8 +4483,10 @@ int i915_perf_ioctl_version(void)
> 	 *
> 	 * 5: Add DRM_I915_PERF_PROP_POLL_OA_PERIOD parameter that controls the
> 	 *    interval for the hrtimer used to check for OA data.
>+	 *
>+	 * 6. Add edge trigger report generation support.
> 	 */
>-	return 5;
>+	return 6;

Do you think we should be adding a comment in uapi for revision 6?

If not, this patch looks good and is:

Reviewed-by: Umesh Nerlige Ramappa <umesh.nerlige.ramappa@intel.com>

Thanks,
Umesh

> }
>
> #if IS_ENABLED(CONFIG_DRM_I915_SELFTEST)
>diff --git a/drivers/gpu/drm/i915/i915_reg.h b/drivers/gpu/drm/i915/i915_reg.h
>index 17484345cb80..813ae77ffeb7 100644
>--- a/drivers/gpu/drm/i915/i915_reg.h
>+++ b/drivers/gpu/drm/i915/i915_reg.h
>@@ -661,6 +661,7 @@ static inline bool i915_mmio_reg_valid(i915_reg_t reg)
>
> #define GEN8_OABUFFER_UDW _MMIO(0x23b4)
> #define GEN8_OABUFFER _MMIO(0x2b14)
>+#define  GEN8_OABUFFER_EDGE_TRIGGER         (1 << 2)
> #define  GEN8_OABUFFER_MEM_SELECT_GGTT      (1 << 0)  /* 0: PPGTT, 1: GGTT */
>
> #define GEN7_OASTATUS1 _MMIO(0x2364)
>@@ -712,6 +713,7 @@ static inline bool i915_mmio_reg_valid(i915_reg_t reg)
> #define GEN12_OAG_OABUFFER  _MMIO(0xdb08)
> #define  GEN12_OAG_OABUFFER_BUFFER_SIZE_MASK  (0x7)
> #define  GEN12_OAG_OABUFFER_BUFFER_SIZE_SHIFT (3)
>+#define  GEN12_OAG_OABUFFER_EDGE_TRIGGER      (1 << 2)
> #define  GEN12_OAG_OABUFFER_MEMORY_SELECT     (1 << 0) /* 0: PPGTT, 1: GGTT */
>
> #define GEN12_OAG_OAGLBCTXCTRL _MMIO(0x2b28)
>-- 
>2.26.0
>
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
