Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 8399D3CA3CE
	for <lists+intel-gfx@lfdr.de>; Thu, 15 Jul 2021 19:18:06 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 965C96E88A;
	Thu, 15 Jul 2021 17:18:04 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 5CF986E88A
 for <intel-gfx@lists.freedesktop.org>; Thu, 15 Jul 2021 17:18:03 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6200,9189,10046"; a="207571071"
X-IronPort-AV: E=Sophos;i="5.84,242,1620716400"; d="scan'208";a="207571071"
Received: from orsmga003.jf.intel.com ([10.7.209.27])
 by fmsmga102.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 15 Jul 2021 10:18:00 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.84,242,1620716400"; d="scan'208";a="413707485"
Received: from fmsmsx604.amr.corp.intel.com ([10.18.126.84])
 by orsmga003.jf.intel.com with ESMTP; 15 Jul 2021 10:17:59 -0700
Received: from fmsmsx611.amr.corp.intel.com (10.18.126.91) by
 fmsmsx604.amr.corp.intel.com (10.18.126.84) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2242.10; Thu, 15 Jul 2021 10:17:59 -0700
Received: from fmsmsx611.amr.corp.intel.com (10.18.126.91) by
 fmsmsx611.amr.corp.intel.com (10.18.126.91) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2242.10; Thu, 15 Jul 2021 10:17:58 -0700
Received: from fmsmsx611.amr.corp.intel.com ([10.18.126.91]) by
 fmsmsx611.amr.corp.intel.com ([10.18.126.91]) with mapi id 15.01.2242.010;
 Thu, 15 Jul 2021 10:17:58 -0700
From: "Srivatsa, Anusha" <anusha.srivatsa@intel.com>
To: "Roper, Matthew D" <matthew.d.roper@intel.com>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>
Thread-Topic: [PATCH v2 39/50] drm/i915/dg2: Don't read DRAM info
Thread-Index: AQHXeF6RTMSFoDYtZU2NWeQzj/6j7KtESdyw
Date: Thu, 15 Jul 2021 17:17:58 +0000
Message-ID: <41ae4afd25234da9b3727adf347c4774@intel.com>
References: <20210714031540.3539704-1-matthew.d.roper@intel.com>
 <20210714031540.3539704-40-matthew.d.roper@intel.com>
In-Reply-To: <20210714031540.3539704-40-matthew.d.roper@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
dlp-version: 11.5.1.3
dlp-product: dlpe-windows
dlp-reaction: no-action
x-originating-ip: [10.22.254.132]
MIME-Version: 1.0
Subject: Re: [Intel-gfx] [PATCH v2 39/50] drm/i915/dg2: Don't read DRAM info
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



> -----Original Message-----
> From: Roper, Matthew D <matthew.d.roper@intel.com>
> Sent: Tuesday, July 13, 2021 8:15 PM
> To: intel-gfx@lists.freedesktop.org
> Cc: Roper, Matthew D <matthew.d.roper@intel.com>; Srivatsa, Anusha
> <anusha.srivatsa@intel.com>
> Subject: [PATCH v2 39/50] drm/i915/dg2: Don't read DRAM info
> 
> DG2 does not use system DRAM information for BW_BUDDY programming or
> watermark workarounds, so there's no need to read this out at startup.
> 
> Cc: Anusha Srivatsa <anusha.srivatsa@intel.com>
> Signed-off-by: Matt Roper <matthew.d.roper@intel.com>
Reviewed-by: Anusha Srivatsa <anusha.srivatsa@intel.com>

> ---
>  drivers/gpu/drm/i915/intel_dram.c | 6 +++---
>  1 file changed, 3 insertions(+), 3 deletions(-)
> 
> diff --git a/drivers/gpu/drm/i915/intel_dram.c
> b/drivers/gpu/drm/i915/intel_dram.c
> index 879b0f007be3..9675bb94b70b 100644
> --- a/drivers/gpu/drm/i915/intel_dram.c
> +++ b/drivers/gpu/drm/i915/intel_dram.c
> @@ -494,15 +494,15 @@ void intel_dram_detect(struct drm_i915_private
> *i915)
>  	struct dram_info *dram_info = &i915->dram_info;
>  	int ret;
> 
> +	if (GRAPHICS_VER(i915) < 9 || IS_DG2(i915) || !HAS_DISPLAY(i915))
> +		return;
> +
>  	/*
>  	 * Assume level 0 watermark latency adjustment is needed until
> proven
>  	 * otherwise, this w/a is not needed by bxt/glk.
>  	 */
>  	dram_info->wm_lv_0_adjust_needed = !IS_GEN9_LP(i915);
> 
> -	if (GRAPHICS_VER(i915) < 9 || !HAS_DISPLAY(i915))
> -		return;
> -
>  	if (GRAPHICS_VER(i915) >= 12)
>  		ret = gen12_get_dram_info(i915);
>  	else if (GRAPHICS_VER(i915) >= 11)
> --
> 2.25.4

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
