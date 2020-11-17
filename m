Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id CD1732B6B17
	for <lists+intel-gfx@lfdr.de>; Tue, 17 Nov 2020 18:09:56 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 3206489C68;
	Tue, 17 Nov 2020 17:09:55 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga14.intel.com (mga14.intel.com [192.55.52.115])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 0603889186
 for <intel-gfx@lists.freedesktop.org>; Tue, 17 Nov 2020 17:09:53 +0000 (UTC)
IronPort-SDR: 5AZthKDTyyQAmvBuy8qeKn7PYR/LHEkzgEH7++twb/rd0dLiTjX9/ln2yaJxZjFJ4wDnshSXCv
 Ecmsrexejpqw==
X-IronPort-AV: E=McAfee;i="6000,8403,9808"; a="170183651"
X-IronPort-AV: E=Sophos;i="5.77,485,1596524400"; d="scan'208";a="170183651"
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga006.fm.intel.com ([10.253.24.20])
 by fmsmga103.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 17 Nov 2020 09:09:52 -0800
IronPort-SDR: SVQwOFvOKyOA4ug0qW4/ER6xPd5W6QXsJ+dFnF16/K55jRFkozpfsyj4paeCB3z3xgPnmEvhnR
 afG1toCUcVOw==
X-IronPort-AV: E=Sophos;i="5.77,485,1596524400"; d="scan'208";a="532293893"
Received: from orsosgc001.ra.intel.com ([10.23.184.150])
 by fmsmga006-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 17 Nov 2020 09:09:52 -0800
Date: Tue, 17 Nov 2020 09:09:47 -0800
From: Umesh Nerlige Ramappa <umesh.nerlige.ramappa@intel.com>
To: Lionel Landwerlin <lionel.g.landwerlin@intel.com>
Message-ID: <20201117170947.GA47109@orsosgc001.ra.intel.com>
References: <20201117130124.829979-1-lionel.g.landwerlin@intel.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20201117130124.829979-1-lionel.g.landwerlin@intel.com>
User-Agent: Mutt/1.12.1 (2019-06-15)
Subject: Re: [Intel-gfx] [PATCH] drm/i915/perf: workaround register
 corruption in OATAILPTR
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

On Tue, Nov 17, 2020 at 03:01:24PM +0200, Lionel Landwerlin wrote:
>After having written the entire OA buffer with reports, the HW will
>write again at the beginning of the OA buffer. It'll indicate it by
>setting the WRAP bits in the OASTATUS register.
>
>When a wrap happens and that at the end of the read vfunc we write the
>OASTATUS register back to clear the REPORT_LOST bit, we sometimes see
>that the OATAILPTR register is reset to a previous position on Gen8/9
>(apparently not the case on Gen11+). This leads the next call to the
>read vfunc to process reports we've already read. Because we've marked
>those as read by clearing the reason & timestamp dwords, they're
>discarded and a "Skipping spurious, invalid OA report" message is
>emitted.
>
>The workaround to avoid this OATAILPTR value reset seems to be to set
>the wrap bits when writing back OASTATUS.
>
>Signed-off-by: Lionel Landwerlin <lionel.g.landwerlin@intel.com>
>Fixes: 19f81df2859eb1 ("drm/i915/perf: Add OA unit support for Gen 8+")
>---
> drivers/gpu/drm/i915/i915_perf.c | 9 +++++++--
> drivers/gpu/drm/i915/i915_reg.h  | 2 ++
> 2 files changed, 9 insertions(+), 2 deletions(-)
>
>diff --git a/drivers/gpu/drm/i915/i915_perf.c b/drivers/gpu/drm/i915/i915_perf.c
>index e94976976571..3640d0e229d2 100644
>--- a/drivers/gpu/drm/i915/i915_perf.c
>+++ b/drivers/gpu/drm/i915/i915_perf.c
>@@ -909,8 +909,13 @@ static int gen8_oa_read(struct i915_perf_stream *stream,
> 				       DRM_I915_PERF_RECORD_OA_REPORT_LOST);
> 		if (ret)
> 			return ret;
>-		intel_uncore_write(uncore, oastatus_reg,
>-				   oastatus & ~GEN8_OASTATUS_REPORT_LOST);
>+
>+		intel_uncore_rmw(uncore, oastatus_reg,
>+				 GEN8_OASTATUS_COUNTER_OVERFLOW |
>+				 GEN8_OASTATUS_REPORT_LOST,
>+				 IS_GEN_RANGE(uncore->i915, 8, 10) ?
>+				 (GEN8_OASTATUS_HEAD_POINTER_WRAP |
>+				  GEN8_OASTATUS_TAIL_POINTER_WRAP) : 0);

Great find. Thanks for resolving this.

Reviewed-by: Umesh Nerlige Ramappa <umesh.nerlige.ramappa@intel.com>

Umesh
> 	}
>
> 	return gen8_append_oa_reports(stream, buf, count, offset);
>diff --git a/drivers/gpu/drm/i915/i915_reg.h b/drivers/gpu/drm/i915/i915_reg.h
>index 7ea70b7ffcc6..5375b219cc3b 100644
>--- a/drivers/gpu/drm/i915/i915_reg.h
>+++ b/drivers/gpu/drm/i915/i915_reg.h
>@@ -679,6 +679,8 @@ static inline bool i915_mmio_reg_valid(i915_reg_t reg)
> #define  GEN7_OASTATUS2_MEM_SELECT_GGTT     (1 << 0) /* 0: PPGTT, 1: GGTT */
>
> #define GEN8_OASTATUS _MMIO(0x2b08)
>+#define  GEN8_OASTATUS_TAIL_POINTER_WRAP    (1 << 17)
>+#define  GEN8_OASTATUS_HEAD_POINTER_WRAP    (1 << 16)
> #define  GEN8_OASTATUS_OVERRUN_STATUS	    (1 << 3)
> #define  GEN8_OASTATUS_COUNTER_OVERFLOW     (1 << 2)
> #define  GEN8_OASTATUS_OABUFFER_OVERFLOW    (1 << 1)
>-- 
>2.29.2
>
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
