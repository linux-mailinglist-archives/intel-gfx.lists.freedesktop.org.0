Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 6E7289ACA7C
	for <lists+intel-gfx@lfdr.de>; Wed, 23 Oct 2024 14:46:42 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 06AD710E110;
	Wed, 23 Oct 2024 12:46:41 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="BqT3v3YV";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.17])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 122BA10E110
 for <intel-gfx@lists.freedesktop.org>; Wed, 23 Oct 2024 12:46:40 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1729687600; x=1761223600;
 h=date:from:to:cc:subject:message-id:references:
 mime-version:content-transfer-encoding:in-reply-to;
 bh=WcjG+I8Sn19TEv4laJ2T+KUugU9FDgZvpgh8nTb6GX0=;
 b=BqT3v3YVea/tQLWNz3Xvt1ujSYF2x5Cy4VUNA2eeUvj3WqGK/fGLYjai
 ojIqnziTPOgNh1X+j2GHjeFSX+CW14gkOhnEFfstVVYLQucx+x/pN1xkT
 zTaW/lbJyTH8/Hn6cZK0NwKm2OXpXWf68se64z/KsWCsOgcAJ/Rs3lAoL
 PqF4YGDxlHvmFSHRDT2FcVj7i+6hzAHJiPl5eAyf9dSbLNk3dZ76bdapD
 wbFE4rH8k3a8crHLUpoPZv6+WOomwUswAKapFPdMbBm5Hg4TVVr0fpc1+
 DEiFcTRCYRqaG+0cdrFUZQ1BwrykKfLhn6mQjrpjA/7CfmxqNcp40xvpQ A==;
X-CSE-ConnectionGUID: xrdjynBoR2uDr1+yVC+XVg==
X-CSE-MsgGUID: XDHHIcFWSWKVApbLEeHXfw==
X-IronPort-AV: E=McAfee;i="6700,10204,11234"; a="29164191"
X-IronPort-AV: E=Sophos;i="6.11,226,1725346800"; d="scan'208";a="29164191"
Received: from fmviesa008.fm.intel.com ([10.60.135.148])
 by fmvoesa111.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 23 Oct 2024 05:46:40 -0700
X-CSE-ConnectionGUID: PKCJ9WaCT5SkmvAP5TEiPA==
X-CSE-MsgGUID: YjXuo+bUTLutsoJsSVRMcQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.11,226,1725346800"; d="scan'208";a="80258543"
Received: from stinkpipe.fi.intel.com (HELO stinkbox) ([10.237.72.74])
 by fmviesa008.fm.intel.com with SMTP; 23 Oct 2024 05:46:38 -0700
Received: by stinkbox (sSMTP sendmail emulation);
 Wed, 23 Oct 2024 15:46:37 +0300
Date: Wed, 23 Oct 2024 15:46:37 +0300
From: Ville =?iso-8859-1?Q?Syrj=E4l=E4?= <ville.syrjala@linux.intel.com>
To: Imre Deak <imre.deak@intel.com>
Cc: intel-gfx@lists.freedesktop.org
Subject: Re: [PATCH v3 7/8] drm/i915/dp: Write the source OUI during
 connector detection
Message-ID: <ZxjwLa14Ycs13ctD@intel.com>
References: <20241016132405.2231744-1-imre.deak@intel.com>
 <20241016132405.2231744-8-imre.deak@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=iso-8859-1
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <20241016132405.2231744-8-imre.deak@intel.com>
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

On Wed, Oct 16, 2024 at 04:24:04PM +0300, Imre Deak wrote:
> The DP sink's capabilities, like DSC, may depend on the source OUI
> written to the sink. On eDP this OUI value could have been reset before
> the detection started if the panel power on it got disabled. Make sure
> the OUI is re-written at the beginning of detection in this case, before
> the sink capabilities are read out.
> 
> Signed-off-by: Imre Deak <imre.deak@intel.com>

Reviewed-by: Ville Syrjälä <ville.syrjala@linux.intel.com>

> ---
>  drivers/gpu/drm/i915/display/intel_dp.c | 2 ++
>  1 file changed, 2 insertions(+)
> 
> diff --git a/drivers/gpu/drm/i915/display/intel_dp.c b/drivers/gpu/drm/i915/display/intel_dp.c
> index 520cc6f50a126..063fe92d43786 100644
> --- a/drivers/gpu/drm/i915/display/intel_dp.c
> +++ b/drivers/gpu/drm/i915/display/intel_dp.c
> @@ -5669,6 +5669,8 @@ intel_dp_detect(struct drm_connector *connector,
>  		goto out_unset_edid;
>  	}
>  
> +	intel_dp_init_source_oui(intel_dp);
> +
>  	ret = intel_dp_tunnel_detect(intel_dp, ctx);
>  	if (ret == -EDEADLK) {
>  		status = ret;
> -- 
> 2.44.2

-- 
Ville Syrjälä
Intel
