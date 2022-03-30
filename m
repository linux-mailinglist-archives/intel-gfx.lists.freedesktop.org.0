Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 6825E4EBF3B
	for <lists+intel-gfx@lfdr.de>; Wed, 30 Mar 2022 12:54:28 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 7737E89D5F;
	Wed, 30 Mar 2022 10:54:22 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga14.intel.com (mga14.intel.com [192.55.52.115])
 by gabe.freedesktop.org (Postfix) with ESMTPS id AF5CC10E184
 for <intel-gfx@lists.freedesktop.org>; Wed, 30 Mar 2022 10:54:20 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1648637660; x=1680173660;
 h=date:from:to:cc:subject:message-id:references:
 mime-version:content-transfer-encoding:in-reply-to;
 bh=jSpqVPMcCRyQVgWrIv2vRUf2a/2khqpCo759YvVKRiw=;
 b=f3fEvtAOAjI4lnk3hd82Eywr5Qs0MKD6+eMz3wxTtZM+c8lYANnVD322
 bBrbN7FQqiyG0KDyuW8g7T8idyrbRYx/f1iIj7Xo49dJMErC9iWIUklOw
 YPnQp+/G/5XWHWwa8FmmoE+LtHJ+jQi7DbhfkVVch9nSvQbSkLe1OdhPM
 3BZbn9r8wDa1qQS6q5p7Os5gkPhFCkOrDyY3uTb5ed25xa0AJ5RTAnYFY
 zMEGNh1dOQvO6IMZKVc/5rCTKhOQ/xiKC8KcQGVZCuHXYX+X/s70Wnssx
 GYUH7qzqV6bzxidjK6yw9F0eBwiGzya15en602Dn5YItMHJPEJMMkH3in g==;
X-IronPort-AV: E=McAfee;i="6200,9189,10301"; a="259698094"
X-IronPort-AV: E=Sophos;i="5.90,222,1643702400"; d="scan'208";a="259698094"
Received: from orsmga007.jf.intel.com ([10.7.209.58])
 by fmsmga103.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 30 Mar 2022 03:54:20 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.90,222,1643702400"; d="scan'208";a="546812465"
Received: from stinkpipe.fi.intel.com (HELO stinkbox) ([10.237.72.61])
 by orsmga007.jf.intel.com with SMTP; 30 Mar 2022 03:54:17 -0700
Received: by stinkbox (sSMTP sendmail emulation);
 Wed, 30 Mar 2022 13:54:16 +0300
Date: Wed, 30 Mar 2022 13:54:16 +0300
From: Ville =?iso-8859-1?Q?Syrj=E4l=E4?= <ville.syrjala@linux.intel.com>
To: =?iso-8859-1?Q?Jos=E9?= Roberto de Souza <jose.souza@intel.com>
Message-ID: <YkQ22GVZ1RfPoUdA@intel.com>
References: <20220329223102.218689-1-jose.souza@intel.com>
 <20220329223102.218689-2-jose.souza@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=iso-8859-1
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <20220329223102.218689-2-jose.souza@intel.com>
X-Patchwork-Hint: comment
Subject: Re: [Intel-gfx] [PATCH v4 2/4] drm/i915/display/adlp: Adjust MBUS
 DBOX BW and B credits
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
Cc: Jani Nikula <jani.nikula@intel.com>, intel-gfx@lists.freedesktop.org
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Tue, Mar 29, 2022 at 03:31:00PM -0700, José Roberto de Souza wrote:
> From: Caz Yokoyama <caz.yokoyama@intel.com>
> 
> Alderlake-P has different MBUS DBOX BW and B credits than other
> platforms, so here setting it properly.

Hmm. No explicit table for these so I guess we're going by the register
defaults here.

Reviewed-by: Ville Syrjälä <ville.syrjala@linux.intel.com>

> 
> BSpec: 49213
> BSpec: 50343
> Cc: Matt Roper <matthew.d.roper@intel.com>
> Cc: Stanislav Lisovskiy <stanislav.lisovskiy@intel.com>
> Cc: Jani Nikula <jani.nikula@intel.com>
> Cc: Ville Syrjälä <ville.syrjala@linux.intel.com>
> Signed-off-by: Caz Yokoyama <caz.yokoyama@intel.com>
> Signed-off-by: José Roberto de Souza <jose.souza@intel.com>
> ---
>  drivers/gpu/drm/i915/display/intel_display.c | 5 ++++-
>  1 file changed, 4 insertions(+), 1 deletion(-)
> 
> diff --git a/drivers/gpu/drm/i915/display/intel_display.c b/drivers/gpu/drm/i915/display/intel_display.c
> index 234f363aad651..389a3c988dc6f 100644
> --- a/drivers/gpu/drm/i915/display/intel_display.c
> +++ b/drivers/gpu/drm/i915/display/intel_display.c
> @@ -1844,7 +1844,10 @@ static void icl_pipe_mbus_enable(struct intel_crtc *crtc, bool joined_mbus)
>  	else
>  		val |= MBUS_DBOX_A_CREDIT(2);
>  
> -	if (DISPLAY_VER(dev_priv) >= 12) {
> +	if (IS_ALDERLAKE_P(dev_priv)) {
> +		val |= MBUS_DBOX_BW_CREDIT(2);
> +		val |= MBUS_DBOX_B_CREDIT(8);
> +	} else if (DISPLAY_VER(dev_priv) >= 12) {
>  		val |= MBUS_DBOX_BW_CREDIT(2);
>  		val |= MBUS_DBOX_B_CREDIT(12);
>  	} else {
> -- 
> 2.35.1

-- 
Ville Syrjälä
Intel
