Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 47EDF3E0956
	for <lists+intel-gfx@lfdr.de>; Wed,  4 Aug 2021 22:26:44 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 044906E461;
	Wed,  4 Aug 2021 20:26:42 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga07.intel.com (mga07.intel.com [134.134.136.100])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 3B0F26E461
 for <intel-gfx@lists.freedesktop.org>; Wed,  4 Aug 2021 20:26:40 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6200,9189,10066"; a="277763917"
X-IronPort-AV: E=Sophos;i="5.84,295,1620716400"; d="scan'208";a="277763917"
Received: from fmsmga006.fm.intel.com ([10.253.24.20])
 by orsmga105.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 04 Aug 2021 13:26:37 -0700
X-IronPort-AV: E=Sophos;i="5.84,295,1620716400"; d="scan'208";a="668223238"
Received: from ssyedfar-mobl1.amr.corp.intel.com (HELO ldmartin-desk2)
 ([10.212.201.224])
 by fmsmga006-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 04 Aug 2021 13:26:37 -0700
Date: Wed, 4 Aug 2021 13:26:36 -0700
From: Lucas De Marchi <lucas.demarchi@intel.com>
To: Matt Roper <matthew.d.roper@intel.com>
Cc: intel-gfx@lists.freedesktop.org
Message-ID: <20210804202636.iofa2k4ztyljotpn@ldmartin-desk2>
X-Patchwork-Hint: comment
References: <20210729170008.2836648-1-matthew.d.roper@intel.com>
 <20210729170008.2836648-10-matthew.d.roper@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii; format=flowed
Content-Disposition: inline
In-Reply-To: <20210729170008.2836648-10-matthew.d.roper@intel.com>
Subject: Re: [Intel-gfx] [PATCH v4 09/18] drm/i915/xehpsdv: Add maximum sseu
 limits
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

On Thu, Jul 29, 2021 at 09:59:59AM -0700, Matt Roper wrote:
>Due to the removal of legacy slices and the transition to a
>gslice/cslice/mslice/etc. design, we'll internally store all DSS under
>"slice0."
>
>Signed-off-by: Matt Roper <matthew.d.roper@intel.com>
>Reviewed-by: Caz Yokoyama <caz.yokoyama@intel.com>
>---
> drivers/gpu/drm/i915/gt/intel_sseu.c         | 5 ++++-
> drivers/gpu/drm/i915/gt/intel_sseu.h         | 2 +-
> drivers/gpu/drm/i915/gt/intel_sseu_debugfs.c | 2 +-
> 3 files changed, 6 insertions(+), 3 deletions(-)
>
>diff --git a/drivers/gpu/drm/i915/gt/intel_sseu.c b/drivers/gpu/drm/i915/gt/intel_sseu.c
>index 5d1b7d06c96b..16c0552fcd1d 100644
>--- a/drivers/gpu/drm/i915/gt/intel_sseu.c
>+++ b/drivers/gpu/drm/i915/gt/intel_sseu.c
>@@ -145,7 +145,10 @@ static void gen12_sseu_info_init(struct intel_gt *gt)
> 	 * across the entire device. Then calculate out the DSS for each
> 	 * workload type within that software slice.
> 	 */
>-	intel_sseu_set_info(sseu, 1, 6, 16);
>+	if (IS_XEHPSDV(gt->i915))
>+		intel_sseu_set_info(sseu, 1, 32, 16);
>+	else
>+		intel_sseu_set_info(sseu, 1, 6, 16);
>
> 	/*
> 	 * As mentioned above, Xe_HP does not have the concept of a slice.
>diff --git a/drivers/gpu/drm/i915/gt/intel_sseu.h b/drivers/gpu/drm/i915/gt/intel_sseu.h
>index 74487650b08f..204ea6709460 100644
>--- a/drivers/gpu/drm/i915/gt/intel_sseu.h
>+++ b/drivers/gpu/drm/i915/gt/intel_sseu.h
>@@ -16,7 +16,7 @@ struct intel_gt;
> struct drm_printer;
>
> #define GEN_MAX_SLICES		(6) /* CNL upper bound */

needs a rebase :-/


Reviewed-by: Lucas De Marchi <lucas.demarchi@intel.com>

Lucas De Marchi

>-#define GEN_MAX_SUBSLICES	(8) /* ICL upper bound */
>+#define GEN_MAX_SUBSLICES	(32) /* XEHPSDV upper bound */
> #define GEN_SSEU_STRIDE(max_entries) DIV_ROUND_UP(max_entries, BITS_PER_BYTE)
> #define GEN_MAX_SUBSLICE_STRIDE GEN_SSEU_STRIDE(GEN_MAX_SUBSLICES)
> #define GEN_MAX_EUS		(16) /* TGL upper bound */
>diff --git a/drivers/gpu/drm/i915/gt/intel_sseu_debugfs.c b/drivers/gpu/drm/i915/gt/intel_sseu_debugfs.c
>index 714fe8495775..a424150b052e 100644
>--- a/drivers/gpu/drm/i915/gt/intel_sseu_debugfs.c
>+++ b/drivers/gpu/drm/i915/gt/intel_sseu_debugfs.c
>@@ -53,7 +53,7 @@ static void cherryview_sseu_device_status(struct intel_gt *gt,
> static void gen10_sseu_device_status(struct intel_gt *gt,
> 				     struct sseu_dev_info *sseu)
> {
>-#define SS_MAX 6
>+#define SS_MAX 8
> 	struct intel_uncore *uncore = gt->uncore;
> 	const struct intel_gt_info *info = &gt->info;
> 	u32 s_reg[SS_MAX], eu_reg[2 * SS_MAX], eu_mask[2];
>-- 
>2.25.4
>
>_______________________________________________
>Intel-gfx mailing list
>Intel-gfx@lists.freedesktop.org
>https://lists.freedesktop.org/mailman/listinfo/intel-gfx
