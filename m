Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 83A2F4C04F6
	for <lists+intel-gfx@lfdr.de>; Wed, 23 Feb 2022 00:00:18 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id AA97B10E3A3;
	Tue, 22 Feb 2022 23:00:16 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga05.intel.com (mga05.intel.com [192.55.52.43])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 7DE0210E34D
 for <intel-gfx@lists.freedesktop.org>; Tue, 22 Feb 2022 23:00:15 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1645570815; x=1677106815;
 h=date:from:to:cc:subject:message-id:references:
 mime-version:content-transfer-encoding:in-reply-to;
 bh=fmrQQORBBY/sTx9sU1/FNoedcFnocpqf+yXKoC46o24=;
 b=K4EVN/d2L2ASW97j+efb1PWNvuGNuMGir3Oc5y5TKeb2zf9Q/obBx8/p
 UXVpGvDBmi3/LogcBQnOj73UahW3CQJ5E0QSUlO+JgoHniffBuYJuB65X
 1CkjjOucHrK5NflVoSt3bRH567hwZA4zLd/uMFNaJZ8cTe7pJAkOTdfwE
 jND+QhrJ0feiFdffYEhcSTFghBn88BHwPTmVT7/ijT+2zyCdwXUpnvMDX
 62fDHf5mImETy5bTDhgbPByh47gGuhkyKJNCw8XyYe3+LqVKCFpElh2t1
 zTv76AOf5Yltxj3wgiXCIHVlMdB0f7K1vE3KzWl6tgiSwXSQbRpDM70pB A==;
X-IronPort-AV: E=McAfee;i="6200,9189,10266"; a="338269467"
X-IronPort-AV: E=Sophos;i="5.88,389,1635231600"; d="scan'208";a="338269467"
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
 by fmsmga105.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 22 Feb 2022 15:00:14 -0800
X-IronPort-AV: E=Sophos;i="5.88,389,1635231600"; d="scan'208";a="683690350"
Received: from labuser-z97x-ud5h.jf.intel.com (HELO labuser-Z97X-UD5H)
 ([10.165.21.211])
 by fmsmga001-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 22 Feb 2022 15:00:14 -0800
Date: Tue, 22 Feb 2022 15:00:46 -0800
From: "Navare, Manasi" <manasi.d.navare@intel.com>
To: Ville Syrjala <ville.syrjala@linux.intel.com>
Message-ID: <20220222230040.GB6452@labuser-Z97X-UD5H>
References: <20220217103221.10405-1-ville.syrjala@linux.intel.com>
 <20220217103221.10405-5-ville.syrjala@linux.intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=iso-8859-1
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <20220217103221.10405-5-ville.syrjala@linux.intel.com>
User-Agent: Mutt/1.5.24 (2015-08-30)
Subject: Re: [Intel-gfx] [PATCH 4/4] drm/i915: Properly clear crtc state
 when disabling it fully, again
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

On Thu, Feb 17, 2022 at 12:32:21PM +0200, Ville Syrjala wrote:
> From: Ville Syrjälä <ville.syrjala@linux.intel.com>
> 
> Currently we just leave the old gunk lying around in the crtc
> state when userspace asks us to fully disable the crtc. That
> doesn't match what the state would be had we never even enabled
> the crtc in the first place. So let's make this consistent and
> call intel_crtc_prepare_cleared_state() for disabled crtcs as well
> (excluding bigjoiner slaves of course which have had their state
> copied from the master).
> 
> I actually already did this once in commit fff13e63a141 ("drm/i915:
> Clear most of crtc state when disabling the crtc") but then
> commit 19f65a3dbf75 ("drm/i915: Try to make bigjoiner work in atomic
> check") undid it all :(
> 
> Signed-off-by: Ville Syrjälä <ville.syrjala@linux.intel.com>

okay agree

Reviewed-by: Manasi Navare <manasi.d.navare@intel.com>

Manasi

> ---
>  drivers/gpu/drm/i915/display/intel_display.c | 8 +++++---
>  1 file changed, 5 insertions(+), 3 deletions(-)
> 
> diff --git a/drivers/gpu/drm/i915/display/intel_display.c b/drivers/gpu/drm/i915/display/intel_display.c
> index 61adfcd7cf63..e160cee3240d 100644
> --- a/drivers/gpu/drm/i915/display/intel_display.c
> +++ b/drivers/gpu/drm/i915/display/intel_display.c
> @@ -7627,9 +7627,8 @@ static int intel_atomic_check(struct drm_device *dev,
>  			continue;
>  		}
>  
> -		if (!new_crtc_state->uapi.enable) {
> -			if (!intel_crtc_is_bigjoiner_slave(new_crtc_state))
> -				intel_crtc_copy_uapi_to_hw_state_modeset(state, crtc);
> +		if (intel_crtc_is_bigjoiner_slave(new_crtc_state)) {
> +			drm_WARN_ON(&dev_priv->drm, new_crtc_state->uapi.enable);
>  			continue;
>  		}
>  
> @@ -7637,6 +7636,9 @@ static int intel_atomic_check(struct drm_device *dev,
>  		if (ret)
>  			goto fail;
>  
> +		if (!new_crtc_state->hw.enable)
> +			continue;
> +
>  		ret = intel_modeset_pipe_config(state, new_crtc_state);
>  		if (ret)
>  			goto fail;
> -- 
> 2.34.1
> 
