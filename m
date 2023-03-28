Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id E14776CBD50
	for <lists+intel-gfx@lfdr.de>; Tue, 28 Mar 2023 13:19:37 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 901D410E875;
	Tue, 28 Mar 2023 11:19:31 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga14.intel.com (mga14.intel.com [192.55.52.115])
 by gabe.freedesktop.org (Postfix) with ESMTPS id DC07910E875
 for <intel-gfx@lists.freedesktop.org>; Tue, 28 Mar 2023 11:19:29 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1680002369; x=1711538369;
 h=date:from:to:cc:subject:message-id:references:
 mime-version:content-transfer-encoding:in-reply-to;
 bh=Vmpr/7p41IMYqWLTPOLINaR6GBbmYHgxS+g0grDYAjg=;
 b=NC4ulr6A6MMrI8mwEMZevrDqGx/Jixb1J8pIU9UAIY3tQMEFslEdlaOj
 OHRIeRL7ZzF9gRwMHs4kR45iMpgqrd0FwjyiQ0BaXGXZ65IYvQEB6tWdR
 bRlK9RRH+spjXOgribdJJTE2x9Dtrd+a0hhoy5W9INIRi8u47TBBpsCch
 1QBQVL/1oeKiSyhoxIs8KO6HN9TL5+lymUVWEzlkkUSkL7AfksKih2fCP
 PHYNZDf0HV9M5Ox6ZOpGtdniMTiDz/DyTza+3lSUP0BWMos11G/8K2FB7
 G/pniQ9zBOEUPxR1lFpf/bY4AoDPTCUQ+N8C6Tdj0dCARq5KcfAEMuXyg g==;
X-IronPort-AV: E=McAfee;i="6600,9927,10662"; a="340561305"
X-IronPort-AV: E=Sophos;i="5.98,297,1673942400"; d="scan'208";a="340561305"
Received: from fmsmga007.fm.intel.com ([10.253.24.52])
 by fmsmga103.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 28 Mar 2023 04:19:29 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10662"; a="686389915"
X-IronPort-AV: E=Sophos;i="5.98,297,1673942400"; d="scan'208";a="686389915"
Received: from stinkpipe.fi.intel.com (HELO stinkbox) ([10.237.72.70])
 by fmsmga007.fm.intel.com with SMTP; 28 Mar 2023 04:19:24 -0700
Received: by stinkbox (sSMTP sendmail emulation);
 Tue, 28 Mar 2023 14:19:24 +0300
Date: Tue, 28 Mar 2023 14:19:24 +0300
From: Ville =?iso-8859-1?Q?Syrj=E4l=E4?= <ville.syrjala@linux.intel.com>
To: Jouni =?iso-8859-1?Q?H=F6gander?= <jouni.hogander@intel.com>
Message-ID: <ZCLNPPz9MjLagtzb@intel.com>
References: <20230322103412.123943-1-jouni.hogander@intel.com>
 <20230322103412.123943-5-jouni.hogander@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=iso-8859-1
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <20230322103412.123943-5-jouni.hogander@intel.com>
X-Patchwork-Hint: comment
Subject: Re: [Intel-gfx] [PATCH v5 4/6] drm/i915/psr: Add helpers for block
 count number handling
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

On Wed, Mar 22, 2023 at 12:34:10PM +0200, Jouni Högander wrote:
> Add helpers to make it more clear how PSR2_CTL[Block Count Number]
> is configured.
> 
> Signed-off-by: Jouni Högander <jouni.hogander@intel.com>

Reviewed-by: Ville Syrjälä <ville.syrjala@linux.intel.com>

> ---
>  drivers/gpu/drm/i915/display/intel_psr.c | 18 ++++++++++++++----
>  1 file changed, 14 insertions(+), 4 deletions(-)
> 
> diff --git a/drivers/gpu/drm/i915/display/intel_psr.c b/drivers/gpu/drm/i915/display/intel_psr.c
> index dfac546d983b..4b7c946a9a25 100644
> --- a/drivers/gpu/drm/i915/display/intel_psr.c
> +++ b/drivers/gpu/drm/i915/display/intel_psr.c
> @@ -519,6 +519,17 @@ static u32 intel_psr2_get_tp_time(struct intel_dp *intel_dp)
>  	return val;
>  }
>  
> +static int psr2_block_count_lines(struct intel_dp *intel_dp)
> +{
> +	return intel_dp->psr.io_wake_lines < 9 &&
> +		intel_dp->psr.fast_wake_lines < 9 ? 8 : 12;
> +}
> +
> +static int psr2_block_count(struct intel_dp *intel_dp)
> +{
> +	return psr2_block_count_lines(intel_dp) / 4;
> +}
> +
>  static void hsw_activate_psr2(struct intel_dp *intel_dp)
>  {
>  	struct drm_i915_private *dev_priv = dp_to_i915(intel_dp);
> @@ -536,11 +547,10 @@ static void hsw_activate_psr2(struct intel_dp *intel_dp)
>  	val |= intel_psr2_get_tp_time(intel_dp);
>  
>  	if (DISPLAY_VER(dev_priv) >= 12) {
> -		if (intel_dp->psr.io_wake_lines < 9 &&
> -		    intel_dp->psr.fast_wake_lines < 9)
> -			val |= TGL_EDP_PSR2_BLOCK_COUNT_NUM_2;
> -		else
> +		if (psr2_block_count(intel_dp) > 2)
>  			val |= TGL_EDP_PSR2_BLOCK_COUNT_NUM_3;
> +		else
> +			val |= TGL_EDP_PSR2_BLOCK_COUNT_NUM_2;
>  	}
>  
>  	/* Wa_22012278275:adl-p */
> -- 
> 2.34.1

-- 
Ville Syrjälä
Intel
