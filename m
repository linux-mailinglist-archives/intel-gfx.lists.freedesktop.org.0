Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id E92A04A904F
	for <lists+intel-gfx@lfdr.de>; Thu,  3 Feb 2022 22:58:11 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 686DD10EB1C;
	Thu,  3 Feb 2022 21:58:09 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga17.intel.com (mga17.intel.com [192.55.52.151])
 by gabe.freedesktop.org (Postfix) with ESMTPS id E706210EB1C
 for <intel-gfx@lists.freedesktop.org>; Thu,  3 Feb 2022 21:58:07 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1643925487; x=1675461487;
 h=date:from:to:cc:subject:message-id:references:
 mime-version:content-transfer-encoding:in-reply-to;
 bh=KBQjuMI7KMjdWqY5O/lc5utymerUobIfbjoPLW1pxpA=;
 b=EwKT62+QmNjVhd7W5nEvx6L+gqLnYlLyL7bqJ78n/P+wYAIrXqC1qGPY
 G0MyxTC7Net4doVeJsLIgQ4SzEXDyNiSBL4PvIyw36LFEZbWyZD8qNev5
 AbuB+Xrb6EulOId6zFtz1A/33WXfWQmrreDGafvD+rRFhRggdwAZRmt7E
 ppfdm07hjbjEtZ05iYF6PHLbSZhzp5DLZC9dhTVqNilabAg0YJiiYX9xh
 DDxtb2YW6Pjdux4Mf1eHUGlHWWuslmxVLLzYTBmjAp/twrf5BI3DQVPWs
 wIXNhJhAjxZwH07A81E8d/exg4VIZHkp2jhhEYFdoSsEH35dOvBjUDWDa w==;
X-IronPort-AV: E=McAfee;i="6200,9189,10247"; a="228912600"
X-IronPort-AV: E=Sophos;i="5.88,340,1635231600"; d="scan'208";a="228912600"
Received: from orsmga007.jf.intel.com ([10.7.209.58])
 by fmsmga107.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 03 Feb 2022 13:58:07 -0800
X-IronPort-AV: E=Sophos;i="5.88,340,1635231600"; d="scan'208";a="524096262"
Received: from labuser-z97x-ud5h.jf.intel.com (HELO labuser-Z97X-UD5H)
 ([10.165.21.211])
 by orsmga007-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 03 Feb 2022 13:58:07 -0800
Date: Thu, 3 Feb 2022 13:58:01 -0800
From: "Navare, Manasi" <manasi.d.navare@intel.com>
To: Ville Syrjala <ville.syrjala@linux.intel.com>
Message-ID: <20220203215801.GA17816@labuser-Z97X-UD5H>
References: <20220203183823.22890-1-ville.syrjala@linux.intel.com>
 <20220203183823.22890-2-ville.syrjala@linux.intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=iso-8859-1
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <20220203183823.22890-2-ville.syrjala@linux.intel.com>
User-Agent: Mutt/1.5.24 (2015-08-30)
Subject: Re: [Intel-gfx] [PATCH 01/10] drm/i915: Flag crtc scaling_filter
 changes as modeset
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

On Thu, Feb 03, 2022 at 08:38:14PM +0200, Ville Syrjala wrote:
> From: Ville Syrjälä <ville.syrjala@linux.intel.com>
> 
> The core doesn't flag scaling_filter prop changes as needing
> a modeset. That doesn't work for us since we only reprogram the
> pipe scaler during full modesets and fastsets. So we need to
> flag the prop change as a modeset ourselves. Assuming nothing else
> has changed the operation will get promoted (demoted?) to a fastset
> later.
> 
> Signed-off-by: Ville Syrjälä <ville.syrjala@linux.intel.com>

Makes sense, although not sure why this was sent as part of bigjoiner bitmask series

Reviewed-by: Manasi Navare <manasi.d.navare@intel.com>

Manasi

> ---
>  drivers/gpu/drm/i915/display/intel_display.c | 4 ++++
>  1 file changed, 4 insertions(+)
> 
> diff --git a/drivers/gpu/drm/i915/display/intel_display.c b/drivers/gpu/drm/i915/display/intel_display.c
> index df347329d90e..85dce8a093d4 100644
> --- a/drivers/gpu/drm/i915/display/intel_display.c
> +++ b/drivers/gpu/drm/i915/display/intel_display.c
> @@ -7846,6 +7846,10 @@ static int intel_atomic_check(struct drm_device *dev,
>  					    new_crtc_state, i) {
>  		if (new_crtc_state->inherited != old_crtc_state->inherited)
>  			new_crtc_state->uapi.mode_changed = true;
> +
> +		if (new_crtc_state->uapi.scaling_filter !=
> +		    old_crtc_state->uapi.scaling_filter)
> +			new_crtc_state->uapi.mode_changed = true;
>  	}
>  
>  	intel_vrr_check_modeset(state);
> -- 
> 2.34.1
> 
