Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id C262E4C04E5
	for <lists+intel-gfx@lfdr.de>; Tue, 22 Feb 2022 23:50:18 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id CB6C710E7D5;
	Tue, 22 Feb 2022 22:50:16 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
 by gabe.freedesktop.org (Postfix) with ESMTPS id BCD0E10E7D3
 for <intel-gfx@lists.freedesktop.org>; Tue, 22 Feb 2022 22:50:14 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1645570214; x=1677106214;
 h=date:from:to:cc:subject:message-id:references:
 mime-version:content-transfer-encoding:in-reply-to;
 bh=omlz3sli8mxL8dmdihooypTCe1+Y0r2LymZlAhcpduM=;
 b=Ysb3RVln3AxJz+Ev3Bu0HS4v6mb5SUZYkQj+40lQ+21Ab5JXJRv3FTwc
 5zq2cDuuq2Rvx8YmaNxXYPfhG31/DuzU3y9eLnjTiw/QNlXjHrletyqR8
 skEnXhPr1rhKyha1Z1tVJO65TAlzgmIEBuZ4iGT2PzA7DmBBw19kEuv+o
 LOE/OnFakm2j1nZemYcnKQYq53W174bpBqU/YG6CpjBp9E2tXvrH6dH3t
 aWOZuxR1CTpCo3lcNGwz8kr2GNwTraCO8SL33j3mfyTcMsXvld0Uo5tpD
 O+dqX+L3TSEGZeXoHWKf9FuCZY6auPtSIWS7MVbdxItbFeQJsdvHRdEBD g==;
X-IronPort-AV: E=McAfee;i="6200,9189,10266"; a="276442930"
X-IronPort-AV: E=Sophos;i="5.88,389,1635231600"; d="scan'208";a="276442930"
Received: from fmsmga006.fm.intel.com ([10.253.24.20])
 by fmsmga101.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 22 Feb 2022 14:50:14 -0800
X-IronPort-AV: E=Sophos;i="5.88,389,1635231600"; d="scan'208";a="776470300"
Received: from labuser-z97x-ud5h.jf.intel.com (HELO labuser-Z97X-UD5H)
 ([10.165.21.211])
 by fmsmga006-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 22 Feb 2022 14:50:12 -0800
Date: Tue, 22 Feb 2022 14:50:44 -0800
From: "Navare, Manasi" <manasi.d.navare@intel.com>
To: Ville Syrjala <ville.syrjala@linux.intel.com>
Message-ID: <20220222225037.GB6196@labuser-Z97X-UD5H>
References: <20220217103221.10405-1-ville.syrjala@linux.intel.com>
 <20220217103221.10405-4-ville.syrjala@linux.intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=iso-8859-1
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <20220217103221.10405-4-ville.syrjala@linux.intel.com>
User-Agent: Mutt/1.5.24 (2015-08-30)
Subject: Re: [Intel-gfx] [PATCH 3/4] drm/i915: Remove odd any_ms=true
 assignment
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

On Thu, Feb 17, 2022 at 12:32:20PM +0200, Ville Syrjala wrote:
> From: Ville Syrjälä <ville.syrjala@linux.intel.com>
> 
> For some reason we're flagging that we need to run through the
> full modeset calculations (any_ms==true -> do cdclk/etc. checks)
> if any crtc got initially flagged for a modeset and is not
> enabled via the uapi. No idea why this is here since later on
> (after all fastset handling) we do full run through the crtcs
> and flag any_ms if anything still needs a full modeset. So let's
> just throw out this early weirdo.
> 
> Signed-off-by: Ville Syrjälä <ville.syrjala@linux.intel.com>

Hmm yea wonder why that got added here

Reviewed-by: Manasi Navare <manasi.d.navare@intel.com>

Manasi

> ---
>  drivers/gpu/drm/i915/display/intel_display.c | 4 +---
>  1 file changed, 1 insertion(+), 3 deletions(-)
> 
> diff --git a/drivers/gpu/drm/i915/display/intel_display.c b/drivers/gpu/drm/i915/display/intel_display.c
> index 59961621fe4a..61adfcd7cf63 100644
> --- a/drivers/gpu/drm/i915/display/intel_display.c
> +++ b/drivers/gpu/drm/i915/display/intel_display.c
> @@ -7628,10 +7628,8 @@ static int intel_atomic_check(struct drm_device *dev,
>  		}
>  
>  		if (!new_crtc_state->uapi.enable) {
> -			if (!intel_crtc_is_bigjoiner_slave(new_crtc_state)) {
> +			if (!intel_crtc_is_bigjoiner_slave(new_crtc_state))
>  				intel_crtc_copy_uapi_to_hw_state_modeset(state, crtc);
> -				any_ms = true;
> -			}
>  			continue;
>  		}
>  
> -- 
> 2.34.1
> 
