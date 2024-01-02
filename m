Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 2BEDE821E98
	for <lists+intel-gfx@lfdr.de>; Tue,  2 Jan 2024 16:20:07 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 1D19F10E1BA;
	Tue,  2 Jan 2024 15:20:04 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.8])
 by gabe.freedesktop.org (Postfix) with ESMTPS id EB20810E1BA
 for <intel-gfx@lists.freedesktop.org>; Tue,  2 Jan 2024 15:20:01 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1704208802; x=1735744802;
 h=message-id:date:mime-version:subject:to:cc:references:
 from:in-reply-to:content-transfer-encoding;
 bh=h7JQATakRoucX8T0uPS/tW3AB5uVU7yUFcluqtxHwGE=;
 b=MPZIAZ0ZIYpr/d8wV9b/YjKOKlioIWPgKM60gkY7aAiXC4hMv/QtKysS
 cKmYK5shsOGb7YSRROKssYDWfHgBF5AJFSyTI9Dhk9NV5D4TjiB06eFxS
 TMwtkjOh1ZF6q8sRNFqdEd5iJ6OmNQVHUoxUr0QjBLTey5UdxLTIHgOEg
 Cfk5F/dZUDA7G+63I6/4K+KDCFUHD3EWURI6KF6X0UXzFLX6nLXw2mvKT
 PsGXPWOWn6HG1vRaAs5wNqMMXNfm+2x8CxIjHBgOMmqsWbPBWy2tHcfND
 KJ3c9GAIdgtGju6aj0KeCSaPXoOdrVrLDDWwCmc5SPnmkugut7Wr8o7am Q==;
X-IronPort-AV: E=McAfee;i="6600,9927,10941"; a="10497833"
X-IronPort-AV: E=Sophos;i="6.04,325,1695711600"; d="scan'208";a="10497833"
Received: from orviesa001.jf.intel.com ([10.64.159.141])
 by fmvoesa102.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 02 Jan 2024 07:20:01 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.04,325,1695711600"; d="scan'208";a="28086288"
Received: from swatish2-mobl2.gar.corp.intel.com (HELO [10.215.199.94])
 ([10.215.199.94])
 by smtpauth.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 02 Jan 2024 07:20:00 -0800
Message-ID: <939c8dd2-93ff-4e2a-8162-0e9ebe6fe5bb@intel.com>
Date: Tue, 2 Jan 2024 20:49:56 +0530
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH 2/5] drm/i915/dp: Fix the max DSC bpc supported by source
Content-Language: en-US
To: Ankit Nautiyal <ankit.k.nautiyal@intel.com>,
 intel-gfx@lists.freedesktop.org
References: <20231213091632.431557-1-ankit.k.nautiyal@intel.com>
 <20231213091632.431557-3-ankit.k.nautiyal@intel.com>
From: "Sharma, Swati2" <swati2.sharma@intel.com>
In-Reply-To: <20231213091632.431557-3-ankit.k.nautiyal@intel.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit
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
Cc: jani.nikula@intel.com
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

LGTM

Reviewed-by: Swati Sharma <swati2.sharma@intel.com>

On 13-Dec-23 2:46 PM, Ankit Nautiyal wrote:
> Use correct helper for getting max DSC bpc supported by the source.
> 
> Fixes: 1c56e9a39833 ("drm/i915/dp: Get optimal link config to have best compressed bpp")
> Cc: Ankit Nautiyal <ankit.k.nautiyal@intel.com>
> Cc: Stanislav Lisovskiy <stanislav.lisovskiy@intel.com>
> Cc: Jani Nikula <jani.nikula@intel.com>
> 
> Signed-off-by: Ankit Nautiyal <ankit.k.nautiyal@intel.com>
> ---
>   drivers/gpu/drm/i915/display/intel_dp.c | 2 +-
>   1 file changed, 1 insertion(+), 1 deletion(-)
> 
> diff --git a/drivers/gpu/drm/i915/display/intel_dp.c b/drivers/gpu/drm/i915/display/intel_dp.c
> index a8015f701626..b2e767a87476 100644
> --- a/drivers/gpu/drm/i915/display/intel_dp.c
> +++ b/drivers/gpu/drm/i915/display/intel_dp.c
> @@ -2102,7 +2102,7 @@ static int intel_dp_dsc_compute_pipe_bpp(struct intel_dp *intel_dp,
>   		}
>   	}
>   
> -	dsc_max_bpc = intel_dp_dsc_min_src_input_bpc(i915);
> +	dsc_max_bpc = intel_dp_dsc_max_src_input_bpc(i915);
>   	if (!dsc_max_bpc)
>   		return -EINVAL;
>   
