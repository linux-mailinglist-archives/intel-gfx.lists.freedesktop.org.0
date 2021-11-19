Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 8E1BE456F2C
	for <lists+intel-gfx@lfdr.de>; Fri, 19 Nov 2021 13:58:27 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id E24ED6E108;
	Fri, 19 Nov 2021 12:58:25 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga17.intel.com (mga17.intel.com [192.55.52.151])
 by gabe.freedesktop.org (Postfix) with ESMTPS id DA6E46E108
 for <intel-gfx@lists.freedesktop.org>; Fri, 19 Nov 2021 12:58:24 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6200,9189,10172"; a="215122244"
X-IronPort-AV: E=Sophos;i="5.87,247,1631602800"; d="scan'208";a="215122244"
Received: from orsmga007.jf.intel.com ([10.7.209.58])
 by fmsmga107.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 19 Nov 2021 04:58:24 -0800
X-IronPort-AV: E=Sophos;i="5.87,247,1631602800"; d="scan'208";a="495859364"
Received: from ideak-desk.fi.intel.com ([10.237.68.141])
 by orsmga007-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 19 Nov 2021 04:58:23 -0800
Date: Fri, 19 Nov 2021 14:58:19 +0200
From: Imre Deak <imre.deak@intel.com>
To: Madhumitha Tolakanahalli Pradeep
 <madhumitha.tolakanahalli.pradeep@intel.com>
Message-ID: <20211119125819.GB387086@ideak-desk.fi.intel.com>
References: <20211119063128.67366-1-madhumitha.tolakanahalli.pradeep@intel.com>
 <20211119063128.67366-2-madhumitha.tolakanahalli.pradeep@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20211119063128.67366-2-madhumitha.tolakanahalli.pradeep@intel.com>
Subject: Re: [Intel-gfx] [PATCH 1/1] drm/i915/dmc: Update DMC to v2.14 on
 ADL-P
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
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Thu, Nov 18, 2021 at 10:31:28PM -0800, Madhumitha Tolakanahalli Pradeep wrote:
> The release notes mention that DMC v2.14 provides -
>  1. Fix for Flip queue roll over cases with DC6v
>  2. Enhancement for residency
>  3. Workaround for 3Dlut restore issue

Could you also add the 2.12 -> 2.13 release notes?

> Signed-off-by: Madhumitha Tolakanahalli Pradeep <madhumitha.tolakanahalli.pradeep@intel.com>
> ---
>  drivers/gpu/drm/i915/display/intel_dmc.c | 4 ++--
>  1 file changed, 2 insertions(+), 2 deletions(-)
> 
> diff --git a/drivers/gpu/drm/i915/display/intel_dmc.c b/drivers/gpu/drm/i915/display/intel_dmc.c
> index 2dc9d632969d..8617cd1ec9b2 100644
> --- a/drivers/gpu/drm/i915/display/intel_dmc.c
> +++ b/drivers/gpu/drm/i915/display/intel_dmc.c
> @@ -45,8 +45,8 @@
>  
>  #define GEN12_DMC_MAX_FW_SIZE		ICL_DMC_MAX_FW_SIZE
>  
> -#define ADLP_DMC_PATH			DMC_PATH(adlp, 2, 12)
> -#define ADLP_DMC_VERSION_REQUIRED	DMC_VERSION(2, 12)
> +#define ADLP_DMC_PATH			DMC_PATH(adlp, 2, 14)
> +#define ADLP_DMC_VERSION_REQUIRED	DMC_VERSION(2, 14)
>  MODULE_FIRMWARE(ADLP_DMC_PATH);
>  
>  #define ADLS_DMC_PATH			DMC_PATH(adls, 2, 01)
> -- 
> 2.33.1
> 
