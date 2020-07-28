Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id D8DE223152B
	for <lists+intel-gfx@lfdr.de>; Tue, 28 Jul 2020 23:48:19 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 9E4CE6E0DF;
	Tue, 28 Jul 2020 21:48:16 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga14.intel.com (mga14.intel.com [192.55.52.115])
 by gabe.freedesktop.org (Postfix) with ESMTPS id F272A6E0DF
 for <intel-gfx@lists.freedesktop.org>; Tue, 28 Jul 2020 21:48:14 +0000 (UTC)
IronPort-SDR: KsEa/9JJ8pF5S1JWIhUCSU1GNzzFgwfJC6cz2qXu3DxImw7FkZgxjWUWA7L9Zn8VstCcwrmK6q
 x0gznwAeJGow==
X-IronPort-AV: E=McAfee;i="6000,8403,9696"; a="150489499"
X-IronPort-AV: E=Sophos;i="5.75,407,1589266800"; d="scan'208";a="150489499"
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga005.fm.intel.com ([10.253.24.32])
 by fmsmga103.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 28 Jul 2020 14:48:14 -0700
IronPort-SDR: x8HlwuCi2vE3Ow5SU1xS0zQG0kydi4ci9DvNZhVsxYR4Q/7V6KO911dArloTdiTGY60cZscB40
 +cm2WEcR1rNA==
X-IronPort-AV: E=Sophos;i="5.75,407,1589266800"; d="scan'208";a="490521734"
Received: from mdroper-desk1.fm.intel.com (HELO
 mdroper-desk1.amr.corp.intel.com) ([10.1.27.168])
 by fmsmga005-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 28 Jul 2020 14:48:14 -0700
Date: Tue, 28 Jul 2020 14:48:13 -0700
From: Matt Roper <matthew.d.roper@intel.com>
To: Lucas De Marchi <lucas.demarchi@intel.com>
Message-ID: <20200728214813.GE35208@mdroper-desk1.amr.corp.intel.com>
References: <20200724213918.27424-1-lucas.demarchi@intel.com>
 <20200724213918.27424-5-lucas.demarchi@intel.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200724213918.27424-5-lucas.demarchi@intel.com>
Subject: Re: [Intel-gfx] [PATCH v5 04/22] drm/i915/dg1: Increase mmio size
 to 4MB
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Fri, Jul 24, 2020 at 02:39:00PM -0700, Lucas De Marchi wrote:
> From: Venkata Sandeep Dhanalakota <venkata.s.dhanalakota@intel.com>
> 
> On dgfx register range has been extended to go up to 4MB.
> 
> Cc: Daniele Ceraolo Spurio <daniele.ceraolospurio@intel.com>
> Cc: Michael J. Ruhl <michael.j.ruhl@intel.com>
> Signed-off-by: Venkata Sandeep Dhanalakota <venkata.s.dhanalakota@intel.com>
> Signed-off-by: Lucas De Marchi <lucas.demarchi@intel.com>

We may want to provide "Bspec: 53616" as a reference.  Technically the
overall space reserved for MMIO is 8MB, but that page helps detail the
layout.  The registers we actually use top out out 28_0000 I believe, so
a 4MB range should be sufficient.

Reviewed-by: Matt Roper <matthew.d.roper@intel.com>

> ---
>  drivers/gpu/drm/i915/intel_uncore.c | 4 ++++
>  1 file changed, 4 insertions(+)
> 
> diff --git a/drivers/gpu/drm/i915/intel_uncore.c b/drivers/gpu/drm/i915/intel_uncore.c
> index f5edee17902a..8f9c82aa7338 100644
> --- a/drivers/gpu/drm/i915/intel_uncore.c
> +++ b/drivers/gpu/drm/i915/intel_uncore.c
> @@ -1701,11 +1701,15 @@ static int uncore_mmio_setup(struct intel_uncore *uncore)
>  	 * clobbering the GTT which we want ioremap_wc instead. Fortunately,
>  	 * the register BAR remains the same size for all the earlier
>  	 * generations up to Ironlake.
> +	 * For dgfx chips register range is expanded to 4MB.
>  	 */
>  	if (INTEL_GEN(i915) < 5)
>  		mmio_size = 512 * 1024;
> +	else if (IS_DGFX(i915))
> +		mmio_size = 4 * 1024 * 1024;
>  	else
>  		mmio_size = 2 * 1024 * 1024;
> +
>  	uncore->regs = pci_iomap(pdev, mmio_bar, mmio_size);
>  	if (uncore->regs == NULL) {
>  		drm_err(&i915->drm, "failed to map registers\n");
> -- 
> 2.26.2
> 
> _______________________________________________
> Intel-gfx mailing list
> Intel-gfx@lists.freedesktop.org
> https://lists.freedesktop.org/mailman/listinfo/intel-gfx

-- 
Matt Roper
Graphics Software Engineer
VTT-OSGC Platform Enablement
Intel Corporation
(916) 356-2795
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
