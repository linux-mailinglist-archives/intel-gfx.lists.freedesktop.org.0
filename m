Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id BD0EA7C03E0
	for <lists+intel-gfx@lfdr.de>; Tue, 10 Oct 2023 20:55:31 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id CB3AD10E3C4;
	Tue, 10 Oct 2023 18:55:29 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.55.52.115])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 83F6510E3C1
 for <intel-gfx@lists.freedesktop.org>; Tue, 10 Oct 2023 18:55:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1696964127; x=1728500127;
 h=date:from:to:cc:subject:message-id:references:
 mime-version:content-transfer-encoding:in-reply-to;
 bh=iyVSdPgi6xmQEkAE/+Px/+IC0l0qdHErL/dEAg20Vpg=;
 b=eSkfhs0CfArtGyx4UiQEFFX7pI+nSbnEFZew8ybFbTawYF6ZlY0zQW5y
 vI8sOwl0GudNjcvmE3WPHstTdTDq8Xw7IH14f4GuE91/J18hDbQH6M4jw
 Z9JpEw4Vs4pIf3rSY89xMf/h7UFRDYQHDHDGMyP5AIHPVB11WKYyKUGu4
 0/pNYRhip7t2wOSBTXRgXpkjrR39LNjk8smzCtFKM7IjnM4KMTdjLPkiR
 WNwrVhQ4QZsL/u0WrqChAJMrd/tlqPwtp2Sw5IWb2hqGgVuh352xVT8dv
 lCRTeUJmeYLdaoVvyupBBOz2FrSR+vd09S+ZhttCJWhk24hIEBP8dTZNW Q==;
X-IronPort-AV: E=McAfee;i="6600,9927,10859"; a="384341349"
X-IronPort-AV: E=Sophos;i="6.03,213,1694761200"; d="scan'208";a="384341349"
Received: from fmsmga008.fm.intel.com ([10.253.24.58])
 by fmsmga103.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 10 Oct 2023 11:55:27 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10859"; a="819369956"
X-IronPort-AV: E=Sophos;i="6.03,213,1694761200"; d="scan'208";a="819369956"
Received: from unknown (HELO stinkbox) ([10.237.72.153])
 by fmsmga008.fm.intel.com with SMTP; 10 Oct 2023 11:55:24 -0700
Received: by stinkbox (sSMTP sendmail emulation);
 Tue, 10 Oct 2023 21:55:24 +0300
Date: Tue, 10 Oct 2023 21:55:24 +0300
From: Ville =?iso-8859-1?Q?Syrj=E4l=E4?= <ville.syrjala@linux.intel.com>
To: Suraj Kandpal <suraj.kandpal@intel.com>
Message-ID: <ZSWeHCsT-fjdyQKL@intel.com>
References: <20231009095946.655337-1-suraj.kandpal@intel.com>
 <20231010053208.691260-1-suraj.kandpal@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=iso-8859-1
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <20231010053208.691260-1-suraj.kandpal@intel.com>
X-Patchwork-Hint: comment
Subject: Re: [Intel-gfx] [PATCH] drm/i915/display: Free crtc_state in
 verify_crtc_state
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

On Tue, Oct 10, 2023 at 11:02:09AM +0530, Suraj Kandpal wrote:
> Free hw_crtc_state in verify_crtc_state after we are done using
> this or else it's just a resource leak.
> 
> Fixes: 2745bdda2095 ("drm/i915: Stop clobbering old crtc state during state check")
> Signed-off-by: Suraj Kandpal <suraj.kandpal@intel.com>
> Reviewed-by: Ville Syrjälä <ville.syrjala@linux.intel.com>

Thanks. Pushed to din.

> ---
>  drivers/gpu/drm/i915/display/intel_modeset_verify.c | 5 ++++-
>  1 file changed, 4 insertions(+), 1 deletion(-)
> 
> diff --git a/drivers/gpu/drm/i915/display/intel_modeset_verify.c b/drivers/gpu/drm/i915/display/intel_modeset_verify.c
> index 303eb68fec11..5e1c2c780412 100644
> --- a/drivers/gpu/drm/i915/display/intel_modeset_verify.c
> +++ b/drivers/gpu/drm/i915/display/intel_modeset_verify.c
> @@ -214,7 +214,7 @@ verify_crtc_state(struct intel_atomic_state *state,
>  	}
>  
>  	if (!sw_crtc_state->hw.active)
> -		return;
> +		goto destroy_state;
>  
>  	intel_pipe_config_sanity_check(hw_crtc_state);
>  
> @@ -224,6 +224,9 @@ verify_crtc_state(struct intel_atomic_state *state,
>  		intel_crtc_state_dump(hw_crtc_state, NULL, "hw state");
>  		intel_crtc_state_dump(sw_crtc_state, NULL, "sw state");
>  	}
> +
> +destroy_state:
> +	intel_crtc_destroy_state(&crtc->base, &hw_crtc_state->uapi);
>  }
>  
>  void intel_modeset_verify_crtc(struct intel_atomic_state *state,
> -- 
> 2.25.1

-- 
Ville Syrjälä
Intel
