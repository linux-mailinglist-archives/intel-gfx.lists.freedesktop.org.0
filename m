Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 88C57224719
	for <lists+intel-gfx@lfdr.de>; Sat, 18 Jul 2020 01:44:54 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id D9B8D6E111;
	Fri, 17 Jul 2020 23:44:52 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga17.intel.com (mga17.intel.com [192.55.52.151])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 0169D6E111
 for <intel-gfx@lists.freedesktop.org>; Fri, 17 Jul 2020 23:44:51 +0000 (UTC)
IronPort-SDR: Pacl2UgIa1et6zRXsgDWWTUatyLsRBgzOWLhfRhPKE37vgG4vce6XElH6r1+1w/XoZzXguigje
 a25qEk0FBRkg==
X-IronPort-AV: E=McAfee;i="6000,8403,9685"; a="129776400"
X-IronPort-AV: E=Sophos;i="5.75,364,1589266800"; d="scan'208";a="129776400"
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga004.jf.intel.com ([10.7.209.38])
 by fmsmga107.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 17 Jul 2020 16:44:51 -0700
IronPort-SDR: ++663tctREAB/6ny0FMnjKl9+o4WlyD4AGIbmAKsMKHVI1vo5u1yjKULl+ZHljy+0JuiI/EcwE
 4qF0e6IY0CDg==
X-IronPort-AV: E=Sophos;i="5.75,364,1589266800"; d="scan'208";a="431003536"
Received: from mdroper-desk1.fm.intel.com (HELO
 mdroper-desk1.amr.corp.intel.com) ([10.1.27.168])
 by orsmga004-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 17 Jul 2020 16:44:50 -0700
Date: Fri, 17 Jul 2020 16:44:49 -0700
From: Matt Roper <matthew.d.roper@intel.com>
To: Anusha Srivatsa <anusha.srivatsa@intel.com>
Message-ID: <20200717234449.GA3148062@mdroper-desk1.amr.corp.intel.com>
References: <20200701102505.26809-1-anusha.srivatsa@intel.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200701102505.26809-1-anusha.srivatsa@intel.com>
Subject: Re: [Intel-gfx] [PATCH] drm/i915/dmc: Use firmware v2.02 for RKL
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

On Wed, Jul 01, 2020 at 03:25:05AM -0700, Anusha Srivatsa wrote:
> The latest firmware contains fix for PSR2 power saving.
> 
> Cc: Matt Roper <matthew.d.roper@intel.com>
> Signed-off-by: Anusha Srivatsa <anusha.srivatsa@intel.com>

Has a pull request for the firmware itself already been sent?


Matt

> ---
>  drivers/gpu/drm/i915/display/intel_csr.c | 4 ++--
>  1 file changed, 2 insertions(+), 2 deletions(-)
> 
> diff --git a/drivers/gpu/drm/i915/display/intel_csr.c b/drivers/gpu/drm/i915/display/intel_csr.c
> index f22a7645c249..7e8b11aa6a8a 100644
> --- a/drivers/gpu/drm/i915/display/intel_csr.c
> +++ b/drivers/gpu/drm/i915/display/intel_csr.c
> @@ -40,8 +40,8 @@
>  
>  #define GEN12_CSR_MAX_FW_SIZE		ICL_CSR_MAX_FW_SIZE
>  
> -#define RKL_CSR_PATH			"i915/rkl_dmc_ver2_01.bin"
> -#define RKL_CSR_VERSION_REQUIRED	CSR_VERSION(2, 1)
> +#define RKL_CSR_PATH			"i915/rkl_dmc_ver2_02.bin"
> +#define RKL_CSR_VERSION_REQUIRED	CSR_VERSION(2, 2)
>  MODULE_FIRMWARE(RKL_CSR_PATH);
>  
>  #define TGL_CSR_PATH			"i915/tgl_dmc_ver2_06.bin"
> -- 
> 2.25.0
> 

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
