Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id DB92C5A265B
	for <lists+intel-gfx@lfdr.de>; Fri, 26 Aug 2022 13:00:01 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 8561E10E4BE;
	Fri, 26 Aug 2022 10:59:55 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga17.intel.com (mga17.intel.com [192.55.52.151])
 by gabe.freedesktop.org (Postfix) with ESMTPS id AFF6210E4BE
 for <intel-gfx@lists.freedesktop.org>; Fri, 26 Aug 2022 10:59:51 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1661511591; x=1693047591;
 h=date:from:to:cc:subject:message-id:references:
 mime-version:content-transfer-encoding:in-reply-to;
 bh=lDbp9tCr1nDrgYhNA+XUpMPYRAZzmW3pUX+J+HTbHoQ=;
 b=bB7ozDZHKMe3kyFBExCOqrVzurdhBP1UmTA+eP4huUq/ONmXD4OmGCsY
 KBQaAN0UptryN3Paxxvv60QBqyc+6GA5sArCX4K8kPJwryw2eyToLFFEn
 GH7jcfO4RatQy/+2zWqA7yjrMXz1hlFyJmLyrvuIHtZ97ZOZpSweptq5G
 2vXJL7PYt1LVjVQcHWVgb1miuIdF7iCNJoQQRln5Ddw5Tddh9gcdd3PEn
 MiK1XOpTD+qV+MT0v9dRL3XlRSNJhn+3ip483T+yIVPUBkgvjIGujbVc2
 4ZX2HVebiHGMQ3b7uFV64zLBMZViCVLt//eVKsec/FOR6+SzU5fRM8/Y9 Q==;
X-IronPort-AV: E=McAfee;i="6500,9779,10450"; a="274876661"
X-IronPort-AV: E=Sophos;i="5.93,265,1654585200"; d="scan'208";a="274876661"
Received: from orsmga006.jf.intel.com ([10.7.209.51])
 by fmsmga107.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 26 Aug 2022 03:59:50 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.93,265,1654585200"; d="scan'208";a="587261420"
Received: from stinkpipe.fi.intel.com (HELO stinkbox) ([10.237.72.191])
 by orsmga006.jf.intel.com with SMTP; 26 Aug 2022 03:59:48 -0700
Received: by stinkbox (sSMTP sendmail emulation);
 Fri, 26 Aug 2022 13:59:47 +0300
Date: Fri, 26 Aug 2022 13:59:47 +0300
From: Ville =?iso-8859-1?Q?Syrj=E4l=E4?= <ville.syrjala@linux.intel.com>
To: Jani Nikula <jani.nikula@intel.com>
Message-ID: <YwinoyX/6JxnnfM9@intel.com>
References: <cover.1661503049.git.jani.nikula@intel.com>
 <766ca4049aeedeaaaef1158ca912173412885409.1661503049.git.jani.nikula@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=iso-8859-1
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <766ca4049aeedeaaaef1158ca912173412885409.1661503049.git.jani.nikula@intel.com>
X-Patchwork-Hint: comment
Subject: Re: [Intel-gfx] [PATCH 1/5] drm/i915/crt: replace BUG_ON() with
 drm_WARN_ON()
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

On Fri, Aug 26, 2022 at 11:38:13AM +0300, Jani Nikula wrote:
> Avoid BUG_ON(). Replace with drm_WARN_ON() and early return.
> 
> Signed-off-by: Jani Nikula <jani.nikula@intel.com>
> ---
>  drivers/gpu/drm/i915/display/intel_crt.c | 3 ++-
>  1 file changed, 2 insertions(+), 1 deletion(-)
> 
> diff --git a/drivers/gpu/drm/i915/display/intel_crt.c b/drivers/gpu/drm/i915/display/intel_crt.c
> index 6a3893c8ff22..b92e2d0d14ea 100644
> --- a/drivers/gpu/drm/i915/display/intel_crt.c
> +++ b/drivers/gpu/drm/i915/display/intel_crt.c
> @@ -643,7 +643,8 @@ static bool intel_crt_detect_ddc(struct drm_connector *connector)
>  	struct i2c_adapter *i2c;
>  	bool ret = false;
>  
> -	BUG_ON(crt->base.type != INTEL_OUTPUT_ANALOG);
> +	if (drm_WARN_ON(&dev_priv->drm, crt->base.type != INTEL_OUTPUT_ANALOG))
> +		return false;

I'd just rip that out entirely. We don't have such checks anywhere else
eitheer.

>  
>  	i2c = intel_gmbus_get_adapter(dev_priv, dev_priv->vbt.crt_ddc_pin);
>  	edid = intel_crt_get_edid(connector, i2c);
> -- 
> 2.34.1

-- 
Ville Syrjälä
Intel
