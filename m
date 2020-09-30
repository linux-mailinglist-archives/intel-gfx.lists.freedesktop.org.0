Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 4A90C27F026
	for <lists+intel-gfx@lfdr.de>; Wed, 30 Sep 2020 19:20:47 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 299206E7D1;
	Wed, 30 Sep 2020 17:20:45 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga05.intel.com (mga05.intel.com [192.55.52.43])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 308EC6E7D1
 for <intel-gfx@lists.freedesktop.org>; Wed, 30 Sep 2020 17:20:43 +0000 (UTC)
IronPort-SDR: oH/fhGx5of3eSBBP1bIu2zJcMvslcdYQsX53FxZYmWvggwyR32cwQT1N+SWHR/0sisN3hqoC2Z
 25gOpkG4hqig==
X-IronPort-AV: E=McAfee;i="6000,8403,9760"; a="247224591"
X-IronPort-AV: E=Sophos;i="5.77,322,1596524400"; d="scan'208";a="247224591"
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga004.fm.intel.com ([10.253.24.48])
 by fmsmga105.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 30 Sep 2020 10:20:42 -0700
IronPort-SDR: rlbOWufWLX/IVZ8Z48Lwkvd9QXytFfcwg7pqz4RFheVwXDLsN8YhRplqKHZ5hBP2neyoc+rhm1
 GC/pyNzOO+EA==
X-IronPort-AV: E=Sophos;i="5.77,322,1596524400"; d="scan'208";a="339171675"
Received: from mdroper-desk1.fm.intel.com (HELO
 mdroper-desk1.amr.corp.intel.com) ([10.1.27.168])
 by fmsmga004-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 30 Sep 2020 10:20:42 -0700
Date: Wed, 30 Sep 2020 10:20:41 -0700
From: Matt Roper <matthew.d.roper@intel.com>
To: Lucas De Marchi <lucas.demarchi@intel.com>
Message-ID: <20200930172041.GB2245633@mdroper-desk1.amr.corp.intel.com>
References: <20200930064234.85769-1-lucas.demarchi@intel.com>
 <20200930064234.85769-24-lucas.demarchi@intel.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200930064234.85769-24-lucas.demarchi@intel.com>
Subject: Re: [Intel-gfx] [PATCH v6 23/24] drm/i915/dg1: Change DMC_DEBUG{1,
 2} registers
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

On Tue, Sep 29, 2020 at 11:42:33PM -0700, Lucas De Marchi wrote:
> From: Anshuman Gupta <anshuman.gupta@intel.com>
> 
> DGFX devices have different DMC_DEBUG* counter MMIO address
> offset. Incorporate these changes in i915_reg.h for DG1
> and handle i915_dmc_info accordingly.
> 
> Cc: Uma Shankar <uma.shankar@intel.com>
> Signed-off-by: Anshuman Gupta <anshuman.gupta@intel.com>
> Signed-off-by: Lucas De Marchi <lucas.demarchi@intel.com>
> ---
>  drivers/gpu/drm/i915/display/intel_display_debugfs.c | 9 +++++++--
>  drivers/gpu/drm/i915/i915_reg.h                      | 1 +
>  2 files changed, 8 insertions(+), 2 deletions(-)
> 
> diff --git a/drivers/gpu/drm/i915/display/intel_display_debugfs.c b/drivers/gpu/drm/i915/display/intel_display_debugfs.c
> index 0bf31f9a8af5..472f119fe246 100644
> --- a/drivers/gpu/drm/i915/display/intel_display_debugfs.c
> +++ b/drivers/gpu/drm/i915/display/intel_display_debugfs.c
> @@ -518,8 +518,13 @@ static int i915_dmc_info(struct seq_file *m, void *unused)
>  		   CSR_VERSION_MINOR(csr->version));
>  
>  	if (INTEL_GEN(dev_priv) >= 12) {
> -		dc5_reg = TGL_DMC_DEBUG_DC5_COUNT;
> -		dc6_reg = TGL_DMC_DEBUG_DC6_COUNT;
> +		if (IS_DG1(dev_priv)) {

I think we'd want IS_DGFX here since this change should hold true for
any future dgfx platform as well.  Aside from that,

Reviewed-by: Matt Roper <matthew.d.roper@intel.com>

I notice the bspec does have a new DC6 residency register offset listed
as well, which seems odd if we don't have DC6 support on this platform.


Matt


> +			dc5_reg = DG1_DMC_DEBUG_DC5_COUNT;
> +		} else {
> +			dc5_reg = TGL_DMC_DEBUG_DC5_COUNT;
> +			dc6_reg = TGL_DMC_DEBUG_DC6_COUNT;
> +		}
> +
>  		/*
>  		 * NOTE: DMC_DEBUG3 is a general purpose reg.
>  		 * According to B.Specs:49196 DMC f/w reuses DC5/6 counter
> diff --git a/drivers/gpu/drm/i915/i915_reg.h b/drivers/gpu/drm/i915/i915_reg.h
> index bb5094b80f15..b856a1fb0a32 100644
> --- a/drivers/gpu/drm/i915/i915_reg.h
> +++ b/drivers/gpu/drm/i915/i915_reg.h
> @@ -7538,6 +7538,7 @@ enum {
>  #define BXT_CSR_DC3_DC5_COUNT	_MMIO(0x80038)
>  #define TGL_DMC_DEBUG_DC5_COUNT	_MMIO(0x101084)
>  #define TGL_DMC_DEBUG_DC6_COUNT	_MMIO(0x101088)
> +#define DG1_DMC_DEBUG_DC5_COUNT	_MMIO(0x134154)
>  
>  #define DMC_DEBUG3		_MMIO(0x101090)
>  
> -- 
> 2.28.0
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
