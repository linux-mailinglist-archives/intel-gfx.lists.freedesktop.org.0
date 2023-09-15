Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id D15B47A1535
	for <lists+intel-gfx@lfdr.de>; Fri, 15 Sep 2023 07:15:58 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 77A1410E0A0;
	Fri, 15 Sep 2023 05:15:55 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.55.52.93])
 by gabe.freedesktop.org (Postfix) with ESMTPS id E041110E0A0
 for <intel-gfx@lists.freedesktop.org>; Fri, 15 Sep 2023 05:15:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1694754953; x=1726290953;
 h=message-id:date:mime-version:subject:to:references:from:
 in-reply-to:content-transfer-encoding;
 bh=2WcGX9P9deCnCjq8jVeayORw3luP87bM7yEoC4AIA0Q=;
 b=Oh2LrWj5DUOcGuhusHfrq4ZsobisGWsE+3bAAJY1qZPib5ZmXwoT8poA
 EakDyu/m92UTLybJsHBeSribNKlb5WhPT5Jl+AAWfBA7RYLinkOH3SAYt
 faL0eWElnk44EdOQYJWcCEEoMmykIafkAPVMqC1v0OKKX1c+PxdH8rwt4
 bG8BV7UX7evwHW7ynEI9MOlKRTT4Nx7VKiQ+nHy9WoXCK70oPr5uCH3xn
 mMZMVkopz9sxOIc/0Pzi1D7NXE+bAgl6VSbv0iT4H3MJnSKuMe2mzs49w
 iVv65rHjLpytXaFPIHNAWcqwmemUt0VUlC9ohRWOgE1IY8t130LSpDVRH g==;
X-IronPort-AV: E=McAfee;i="6600,9927,10833"; a="376496638"
X-IronPort-AV: E=Sophos;i="6.02,148,1688454000"; d="scan'208";a="376496638"
Received: from orsmga002.jf.intel.com ([10.7.209.21])
 by fmsmga102.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 14 Sep 2023 22:15:52 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10833"; a="744824739"
X-IronPort-AV: E=Sophos;i="6.02,148,1688454000"; d="scan'208";a="744824739"
Received: from swatish2-mobl2.gar.corp.intel.com (HELO [10.213.104.157])
 ([10.213.104.157])
 by orsmga002-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 14 Sep 2023 22:15:50 -0700
Message-ID: <74c06653-92b0-7601-84fd-27a7492fea1e@intel.com>
Date: Fri, 15 Sep 2023 10:45:46 +0530
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:102.0) Gecko/20100101
 Thunderbird/102.14.0
Content-Language: en-US
To: Ville Syrjala <ville.syrjala@linux.intel.com>,
 intel-gfx@lists.freedesktop.org
References: <20230914113854.10008-1-ville.syrjala@linux.intel.com>
From: "Sharma, Swati2" <swati2.sharma@intel.com>
In-Reply-To: <20230914113854.10008-1-ville.syrjala@linux.intel.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 8bit
Subject: Re: [Intel-gfx] [PATCH 1/5] drm/i915/fbc: Remove ancient 16k plane
 stride limit
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

Thanks Ville for the fix!
LGTM

Reviewed-by: Swati Sharma <swati2.sharma@intel.com>

On 14-Sep-23 5:08 PM, Ville Syrjala wrote:
> From: Ville Syrjälä <ville.syrjala@linux.intel.com>
> 
> The 16k max plane stride limit seems to be originally from
> i965gm, and no limit explicit limit has been specified since (g4x+).

nitpick: "limit" seems to be extra here

> So let's assume the max plane stride itself is a suitable limit
> also for the more recent FBC hardware.
> 
> In fact even for i965gm the max X-tiled stride is also 16k so
> technically we don't need the check there either, but let's
> keep it there anyway since it's explicitly mentioned in the
> spec. Gen2/3 have more strict limits checked separately.
> 
> Cc: Swati Sharma <swati2.sharma@intel.com>
> Signed-off-by: Ville Syrjälä <ville.syrjala@linux.intel.com> > ---
>   drivers/gpu/drm/i915/display/intel_fbc.c | 6 ++----
>   1 file changed, 2 insertions(+), 4 deletions(-)
> 
> diff --git a/drivers/gpu/drm/i915/display/intel_fbc.c b/drivers/gpu/drm/i915/display/intel_fbc.c
> index 817e5784660b..1b3358a0fbfb 100644
> --- a/drivers/gpu/drm/i915/display/intel_fbc.c
> +++ b/drivers/gpu/drm/i915/display/intel_fbc.c
> @@ -866,7 +866,8 @@ static bool stride_is_valid(const struct intel_plane_state *plane_state)
>   	if (DISPLAY_VER(i915) == 2 || DISPLAY_VER(i915) == 3)
>   		return stride == 4096 || stride == 8192;
>   
> -	if (DISPLAY_VER(i915) == 4 && !IS_G4X(i915) && stride < 2048)
> +	if (DISPLAY_VER(i915) == 4 && !IS_G4X(i915) &&
> +	    (stride < 2048 || stride > 16384))
>   		return false;
>   
>   	/* Display WA #1105: skl,bxt,kbl,cfl,glk */
> @@ -874,9 +875,6 @@ static bool stride_is_valid(const struct intel_plane_state *plane_state)
>   	    fb->modifier == DRM_FORMAT_MOD_LINEAR && stride & 511)
>   		return false;
>   
> -	if (stride > 16384)
> -		return false;
> -
>   	return true;
>   }
>   
