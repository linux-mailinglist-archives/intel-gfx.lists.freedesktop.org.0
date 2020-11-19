Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 784182B9DFA
	for <lists+intel-gfx@lfdr.de>; Fri, 20 Nov 2020 00:14:13 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 2AFAB6E81B;
	Thu, 19 Nov 2020 23:14:10 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga14.intel.com (mga14.intel.com [192.55.52.115])
 by gabe.freedesktop.org (Postfix) with ESMTPS id ACC976E81B
 for <intel-gfx@lists.freedesktop.org>; Thu, 19 Nov 2020 23:14:08 +0000 (UTC)
IronPort-SDR: Uh0AneHas/0vrEi+Nz5SEhisQxH+ariU0ZeG/yqrPGVzyLy2aIy/UyRlskM2PDGwmd13CZuKdZ
 mwNMe1Lef5WA==
X-IronPort-AV: E=McAfee;i="6000,8403,9810"; a="170600531"
X-IronPort-AV: E=Sophos;i="5.78,354,1599548400"; d="scan'208";a="170600531"
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga004.jf.intel.com ([10.7.209.38])
 by fmsmga103.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 19 Nov 2020 15:14:08 -0800
IronPort-SDR: Og3i4Wtu14RPkCg8qnSYyFV6TlgwhHQQzhsrw5ghHN2DRh+2B9YAHteuz2vEA01wMCcqP5UX5z
 z5x6L9xVrj/Q==
X-IronPort-AV: E=Sophos;i="5.78,354,1599548400"; d="scan'208";a="477000891"
Received: from mdroper-desk1.fm.intel.com (HELO
 mdroper-desk1.amr.corp.intel.com) ([10.1.27.168])
 by orsmga004-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 19 Nov 2020 15:14:07 -0800
Date: Thu, 19 Nov 2020 15:14:06 -0800
From: Matt Roper <matthew.d.roper@intel.com>
To: Manasi Navare <manasi.d.navare@intel.com>
Message-ID: <20201119231406.GT2099117@mdroper-desk1.amr.corp.intel.com>
References: <20201119182057.13765-1-manasi.d.navare@intel.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20201119182057.13765-1-manasi.d.navare@intel.com>
Subject: Re: [Intel-gfx] [PATCH v2] drm/i915: Do not call
 hsw_set_frame_start_delay for dsi
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

On Thu, Nov 19, 2020 at 10:20:57AM -0800, Manasi Navare wrote:
> This should fix the boot oops for dsi
> 
> v2:
> * Fix indent (Manasi)
> 
> Fixes: 4e3cdb4535e7 ("drm/i915/dp: Master/Slave enable/disable sequence for bigjoiner")
> Signed-off-by: Manasi Navare <manasi.d.navare@intel.com>
> ---
>  drivers/gpu/drm/i915/display/intel_display.c | 2 +-
>  1 file changed, 1 insertion(+), 1 deletion(-)
> 
> diff --git a/drivers/gpu/drm/i915/display/intel_display.c b/drivers/gpu/drm/i915/display/intel_display.c
> index 5c07c74d4397..cbbe92d47e11 100644
> --- a/drivers/gpu/drm/i915/display/intel_display.c
> +++ b/drivers/gpu/drm/i915/display/intel_display.c
> @@ -7211,7 +7211,7 @@ static void hsw_crtc_enable(struct intel_atomic_state *state,
>  	if (INTEL_GEN(dev_priv) >= 9 || IS_BROADWELL(dev_priv))
>  		bdw_set_pipemisc(new_crtc_state);
>  
> -	if (!new_crtc_state->bigjoiner_slave || !transcoder_is_dsi(cpu_transcoder)) {
> +	if (!new_crtc_state->bigjoiner_slave && !transcoder_is_dsi(cpu_transcoder)) {
>  		if (!transcoder_is_dsi(cpu_transcoder))

This check is now redundant (always true), right?  I think there's
another nested check for transcoder_is_dsi() inside this block too
(below the context lines shown by this patch).


Matt

>  			intel_set_transcoder_timings(new_crtc_state);
>  
> -- 
> 2.19.1
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
