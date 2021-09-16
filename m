Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 9DE2D40EA7B
	for <lists+intel-gfx@lfdr.de>; Thu, 16 Sep 2021 20:58:09 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 2241C6E827;
	Thu, 16 Sep 2021 18:58:08 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga04.intel.com (mga04.intel.com [192.55.52.120])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 0291E6E827
 for <intel-gfx@lists.freedesktop.org>; Thu, 16 Sep 2021 18:58:05 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6200,9189,10109"; a="220754057"
X-IronPort-AV: E=Sophos;i="5.85,299,1624345200"; d="scan'208";a="220754057"
Received: from fmsmga003.fm.intel.com ([10.253.24.29])
 by fmsmga104.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 16 Sep 2021 11:58:03 -0700
X-IronPort-AV: E=Sophos;i="5.85,299,1624345200"; d="scan'208";a="545825861"
Received: from ideak-desk.fi.intel.com ([10.237.68.141])
 by fmsmga003-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 16 Sep 2021 11:58:01 -0700
Date: Thu, 16 Sep 2021 21:57:57 +0300
From: Imre Deak <imre.deak@intel.com>
To: Anusha Srivatsa <anusha.srivatsa@intel.com>
Cc: intel-gfx@lists.freedesktop.org, Imre Deak <imre.deak@intel.com>
Message-ID: <20210916185757.GH678880@ideak-desk.fi.intel.com>
References: <20210914215732.67135-1-anusha.srivatsa@intel.com>
 <20210914215732.67135-2-anusha.srivatsa@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20210914215732.67135-2-anusha.srivatsa@intel.com>
Subject: Re: [Intel-gfx] [PATCH 1/1] drm/i915/dmc: Update to DMC v2.12
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

On Tue, Sep 14, 2021 at 02:57:32PM -0700, Anusha Srivatsa wrote:
> The release notes mentions that this version-
> 1. Fix for unblock indication to punit.
> 2. Robustness fix for DC6/6v abort scenarios.
> 
> Cc: Imre Deak <imre.deak@intel.com>
> Signed-off-by: Anusha Srivatsa <anusha.srivatsa@intel.com>

Reviewed-by: Imre Deak <imre.deak@intel.com>

> ---
>  drivers/gpu/drm/i915/display/intel_dmc.c | 4 ++--
>  1 file changed, 2 insertions(+), 2 deletions(-)
> 
> diff --git a/drivers/gpu/drm/i915/display/intel_dmc.c b/drivers/gpu/drm/i915/display/intel_dmc.c
> index 3c3c6cb5c0df..0978d97d9c3c 100644
> --- a/drivers/gpu/drm/i915/display/intel_dmc.c
> +++ b/drivers/gpu/drm/i915/display/intel_dmc.c
> @@ -45,8 +45,8 @@
>  
>  #define GEN12_DMC_MAX_FW_SIZE		ICL_DMC_MAX_FW_SIZE
>  
> -#define ADLP_DMC_PATH			DMC_PATH(adlp, 2, 10)
> -#define ADLP_DMC_VERSION_REQUIRED	DMC_VERSION(2, 10)
> +#define ADLP_DMC_PATH			DMC_PATH(adlp, 2, 12)
> +#define ADLP_DMC_VERSION_REQUIRED	DMC_VERSION(2, 12)
>  MODULE_FIRMWARE(ADLP_DMC_PATH);
>  
>  #define ADLS_DMC_PATH			DMC_PATH(adls, 2, 01)
> -- 
> 2.25.1
> 
