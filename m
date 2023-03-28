Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id CCA9E6CBD76
	for <lists+intel-gfx@lfdr.de>; Tue, 28 Mar 2023 13:24:45 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id E593310E864;
	Tue, 28 Mar 2023 11:24:40 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga14.intel.com (mga14.intel.com [192.55.52.115])
 by gabe.freedesktop.org (Postfix) with ESMTPS id F27CB10E86F
 for <intel-gfx@lists.freedesktop.org>; Tue, 28 Mar 2023 11:24:38 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1680002678; x=1711538678;
 h=date:from:to:cc:subject:message-id:references:
 mime-version:content-transfer-encoding:in-reply-to;
 bh=udlecG7E7RF23qQhCweg9Vc7NusOfiqF4FCFw85xNdc=;
 b=NL9yDtc9K4j0TeDMMQqsZoIJAvph47dpuuJuDPpHfC+o/3ej5+o/BB4R
 dEg1CO2DJJkIngJb0QvVNERVZgEw7Q8UJkI59wjVU67bDHc1EuujkY5U0
 7AG6FPqJKRJijTHS4zPqn44fl4PjjMlGrIY+K8ou6q/Ipr7DXYWYqYiem
 XAmUuwA+K4dwAiC/0vrrgPsjeggRTxXuPWirZBr3hCWFWLRcB0yMi3+W1
 7p6NtZpIpAYNCu8M28ogsULuwZGdZsAsQgKdZrAjTSAzzg50qCEdXAQK9
 tl7Gt0FTthjth80e1pOwsHegQpu8Jpg+k/e6VNOaI0CBvz/zIUngpSAVj Q==;
X-IronPort-AV: E=McAfee;i="6600,9927,10662"; a="340562101"
X-IronPort-AV: E=Sophos;i="5.98,297,1673942400"; d="scan'208";a="340562101"
Received: from fmsmga007.fm.intel.com ([10.253.24.52])
 by fmsmga103.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 28 Mar 2023 04:24:38 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10662"; a="686391122"
X-IronPort-AV: E=Sophos;i="5.98,297,1673942400"; d="scan'208";a="686391122"
Received: from stinkpipe.fi.intel.com (HELO stinkbox) ([10.237.72.70])
 by fmsmga007.fm.intel.com with SMTP; 28 Mar 2023 04:24:34 -0700
Received: by stinkbox (sSMTP sendmail emulation);
 Tue, 28 Mar 2023 14:24:33 +0300
Date: Tue, 28 Mar 2023 14:24:33 +0300
From: Ville =?iso-8859-1?Q?Syrj=E4l=E4?= <ville.syrjala@linux.intel.com>
To: Jouni =?iso-8859-1?Q?H=F6gander?= <jouni.hogander@intel.com>
Message-ID: <ZCLOcVNENmYqJiW2@intel.com>
References: <20230322103412.123943-1-jouni.hogander@intel.com>
 <20230322103412.123943-6-jouni.hogander@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=iso-8859-1
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <20230322103412.123943-6-jouni.hogander@intel.com>
X-Patchwork-Hint: comment
Subject: Re: [Intel-gfx] [PATCH v5 5/6] drm/i915/psr: Check that vblank is
 long enough for psr2
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

On Wed, Mar 22, 2023 at 12:34:11PM +0200, Jouni Högander wrote:
> Ensure vblank >= psr2 vblank
> where
> Psr2 vblank = PSR2_CTL Block Count Number maximum line count.
> 
> Bspec: 71580, 49274
> 
> v2: Use calculated block count number maximum line count
> 
> Signed-off-by: Jouni Högander <jouni.hogander@intel.com>

Reviewed-by: Ville Syrjälä <ville.syrjala@linux.intel.com>

We seem to be also missing the "PSR2 line time" check?

> ---
>  drivers/gpu/drm/i915/display/intel_psr.c | 9 +++++++++
>  1 file changed, 9 insertions(+)
> 
> diff --git a/drivers/gpu/drm/i915/display/intel_psr.c b/drivers/gpu/drm/i915/display/intel_psr.c
> index 4b7c946a9a25..b53c71c06105 100644
> --- a/drivers/gpu/drm/i915/display/intel_psr.c
> +++ b/drivers/gpu/drm/i915/display/intel_psr.c
> @@ -968,6 +968,15 @@ static bool intel_psr2_config_valid(struct intel_dp *intel_dp,
>  		return false;
>  	}
>  
> +	/* Vblank >= PSR2_CTL Block Count Number maximum line count */
> +	if (crtc_state->hw.adjusted_mode.crtc_vblank_end -
> +	    crtc_state->hw.adjusted_mode.crtc_vblank_start <
> +	    psr2_block_count_lines(intel_dp)) {
> +		drm_dbg_kms(&dev_priv->drm,
> +			    "PSR2 not enabled, too short vblank time\n");
> +		return false;
> +	}
> +
>  	if (HAS_PSR2_SEL_FETCH(dev_priv)) {
>  		if (!intel_psr2_sel_fetch_config_valid(intel_dp, crtc_state) &&
>  		    !HAS_PSR_HW_TRACKING(dev_priv)) {
> -- 
> 2.34.1

-- 
Ville Syrjälä
Intel
