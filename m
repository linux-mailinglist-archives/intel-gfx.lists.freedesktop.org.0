Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 1B40D998593
	for <lists+intel-gfx@lfdr.de>; Thu, 10 Oct 2024 14:06:21 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 50D9610E2BD;
	Thu, 10 Oct 2024 12:06:19 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="Fkt+aFWx";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.15])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 7541610E2BD;
 Thu, 10 Oct 2024 12:06:18 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1728561979; x=1760097979;
 h=date:from:to:cc:subject:message-id:references:
 mime-version:content-transfer-encoding:in-reply-to;
 bh=n2mrCeHJSigxVbmXw2LoXHXCaV+0BlLQnOfNo325cjA=;
 b=Fkt+aFWxFHVgDUJkz3y8zjrTmLst6MIsLmwFrKf5S/yp5ew95iFgozBO
 Mphg0p2WGCv7wlzamGZweWi1gPKwQQ8G8uYA0KZ+UxCYHGq2IHbEZeIp0
 jJRMuwI4FWknO1eJVJrYDKpJ5M+wJ8SfLINd9L+CZtnk5IGuMf27LtXtv
 9hUbk9AT+BxfC4BagcXdlnLJbXtoo1MMI1CBc8X8aJC7frSQUpFkWbfkK
 eDnIpTO3yAp0k1M+EghNtKxYNHaPnKP5EfM8uXbZ18TNIdPcjq4TaYfB0
 VK5AoZzUSuALi+9Mf9qDb1YRLWeqsGcDNNSHXYKLumwSWdn5GkI80zPlI A==;
X-CSE-ConnectionGUID: ogkmRNDzSQOQqcxcGE1JOA==
X-CSE-MsgGUID: Qfgvi8/+TCqCfg3BkXnbYw==
X-IronPort-AV: E=McAfee;i="6700,10204,11220"; a="28045550"
X-IronPort-AV: E=Sophos;i="6.11,192,1725346800"; d="scan'208";a="28045550"
Received: from fmviesa008.fm.intel.com ([10.60.135.148])
 by fmvoesa109.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 10 Oct 2024 05:06:18 -0700
X-CSE-ConnectionGUID: Q9g6KVhKSpe0neOH3HvVDg==
X-CSE-MsgGUID: 8Ug/7E32RIyTiJ4we6x4QA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.11,192,1725346800"; d="scan'208";a="76664047"
Received: from stinkpipe.fi.intel.com (HELO stinkbox) ([10.237.72.74])
 by fmviesa008.fm.intel.com with SMTP; 10 Oct 2024 05:06:16 -0700
Received: by stinkbox (sSMTP sendmail emulation);
 Thu, 10 Oct 2024 15:06:15 +0300
Date: Thu, 10 Oct 2024 15:06:15 +0300
From: Ville =?iso-8859-1?Q?Syrj=E4l=E4?= <ville.syrjala@linux.intel.com>
To: Jouni =?iso-8859-1?Q?H=F6gander?= <jouni.hogander@intel.com>
Cc: intel-gfx@lists.freedesktop.org, intel-xe@lists.freedesktop.org
Subject: Re: [PATCH 2/7] drm/i915/vrr: Do not overwrite TRANS_PUSH PSR Frame
 Change Enable
Message-ID: <ZwfDN4aqrTjBIk86@intel.com>
References: <20241010053316.1580527-1-jouni.hogander@intel.com>
 <20241010053316.1580527-3-jouni.hogander@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=iso-8859-1
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <20241010053316.1580527-3-jouni.hogander@intel.com>
X-Patchwork-Hint: comment
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

On Thu, Oct 10, 2024 at 08:33:11AM +0300, Jouni Högander wrote:
> Currently vrr code is overwriting possibly set PSR PR Frame Change Enable
> bit in TRANS_PUSH register. Avoid this by using rmw instead of write.

RMWs are not good if we ever want to do this from DSB/etc. We should
know what the state should be and just program that in.

Does the PSR bit here have to match the PSR_CTL enable bit or
could we just always set the bit here based on has_psr whether
PSR is currently active or not?

> 
> Signed-off-by: Jouni Högander <jouni.hogander@intel.com>
> ---
>  drivers/gpu/drm/i915/display/intel_vrr.c | 8 +++++---
>  1 file changed, 5 insertions(+), 3 deletions(-)
> 
> diff --git a/drivers/gpu/drm/i915/display/intel_vrr.c b/drivers/gpu/drm/i915/display/intel_vrr.c
> index 9a51f5bac3071..8b4e3f938efea 100644
> --- a/drivers/gpu/drm/i915/display/intel_vrr.c
> +++ b/drivers/gpu/drm/i915/display/intel_vrr.c
> @@ -339,8 +339,8 @@ void intel_vrr_enable(const struct intel_crtc_state *crtc_state)
>  	if (!crtc_state->vrr.enable)
>  		return;
>  
> -	intel_de_write(display, TRANS_PUSH(display, cpu_transcoder),
> -		       TRANS_PUSH_EN);
> +	intel_de_rmw(display, TRANS_PUSH(display, cpu_transcoder), 0,
> +		     TRANS_PUSH_EN);
>  
>  	if (HAS_AS_SDP(display))
>  		intel_de_write(display,
> @@ -371,7 +371,9 @@ void intel_vrr_disable(const struct intel_crtc_state *old_crtc_state)
>  	intel_de_wait_for_clear(display,
>  				TRANS_VRR_STATUS(display, cpu_transcoder),
>  				VRR_STATUS_VRR_EN_LIVE, 1000);
> -	intel_de_write(display, TRANS_PUSH(display, cpu_transcoder), 0);
> +
> +	intel_de_rmw(display, TRANS_PUSH(display, cpu_transcoder), TRANS_PUSH_EN,
> +		     0);
>  
>  	if (HAS_AS_SDP(display))
>  		intel_de_write(display,
> -- 
> 2.34.1

-- 
Ville Syrjälä
Intel
