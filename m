Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 450945A8088
	for <lists+intel-gfx@lfdr.de>; Wed, 31 Aug 2022 16:46:11 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id DD39510E417;
	Wed, 31 Aug 2022 14:46:08 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga06.intel.com (mga06b.intel.com [134.134.136.31])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 4F43A10E413
 for <intel-gfx@lists.freedesktop.org>; Wed, 31 Aug 2022 14:46:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1661957165; x=1693493165;
 h=date:from:to:cc:subject:message-id:references:
 mime-version:content-transfer-encoding:in-reply-to;
 bh=EFIqR8QkRoDV/kR98z2oqPoR2ORdx9sOLQAdCiKZ/o8=;
 b=hlm0bmlG6BqQ/TsLmbGSVWsmS7SD/AyjahMa/OzlGeQaYNMR2/DRLqDb
 CGBUQzZPDtYJR8ywgeSFvIDOExH1Si3E+kLXJkeKe8/KqbhANSddf4N4k
 t927cLn2zLWRuvXiY2RQkDgmaD5ssbc0pkOOAWz895vExV8hIwNJli2I3
 sA3Lhd+vkR7giVf6yCiDzGL4z8LrERpB3AweaI+yZJj89fInibusmmwDW
 E+r5vcexsNqI4mRbXFWq4OWwIRGxR0Npqmt6rAhBefXei4KdJqAun5oDe
 CvojuJemYXlAA7rRnlVkHM1JPqGY5BvCgoCsXAxbmWV6jCUcKI7CFlaGI w==;
X-IronPort-AV: E=McAfee;i="6500,9779,10456"; a="357180473"
X-IronPort-AV: E=Sophos;i="5.93,278,1654585200"; d="scan'208";a="357180473"
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
 by orsmga104.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 31 Aug 2022 07:46:04 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.93,278,1654585200"; d="scan'208";a="754440335"
Received: from stinkpipe.fi.intel.com (HELO stinkbox) ([10.237.72.191])
 by fmsmga001.fm.intel.com with SMTP; 31 Aug 2022 07:46:02 -0700
Received: by stinkbox (sSMTP sendmail emulation);
 Wed, 31 Aug 2022 17:46:01 +0300
Date: Wed, 31 Aug 2022 17:46:01 +0300
From: Ville =?iso-8859-1?Q?Syrj=E4l=E4?= <ville.syrjala@linux.intel.com>
To: Jani Nikula <jani.nikula@intel.com>
Message-ID: <Yw90Kfhyq8kLVE8b@intel.com>
References: <20220830093411.1511040-1-jani.nikula@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=iso-8859-1
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <20220830093411.1511040-1-jani.nikula@intel.com>
X-Patchwork-Hint: comment
Subject: Re: [Intel-gfx] [PATCH v2 1/5] drm/i915/crt: remove BUG_ON()
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

On Tue, Aug 30, 2022 at 12:34:07PM +0300, Jani Nikula wrote:
> Avoid BUG_ON(). We don't have such checks on output type anywhere else
> either, so just remove.
> 
> Suggested-by: Ville Syrjälä <ville.syrjala@linux.intel.com>
> Signed-off-by: Jani Nikula <jani.nikula@intel.com>

Reviewed-by: Ville Syrjälä <ville.syrjala@linux.intel.com>

> ---
>  drivers/gpu/drm/i915/display/intel_crt.c | 2 --
>  1 file changed, 2 deletions(-)
> 
> diff --git a/drivers/gpu/drm/i915/display/intel_crt.c b/drivers/gpu/drm/i915/display/intel_crt.c
> index 6a3893c8ff22..d766c506b235 100644
> --- a/drivers/gpu/drm/i915/display/intel_crt.c
> +++ b/drivers/gpu/drm/i915/display/intel_crt.c
> @@ -643,8 +643,6 @@ static bool intel_crt_detect_ddc(struct drm_connector *connector)
>  	struct i2c_adapter *i2c;
>  	bool ret = false;
>  
> -	BUG_ON(crt->base.type != INTEL_OUTPUT_ANALOG);
> -
>  	i2c = intel_gmbus_get_adapter(dev_priv, dev_priv->vbt.crt_ddc_pin);
>  	edid = intel_crt_get_edid(connector, i2c);
>  
> -- 
> 2.34.1

-- 
Ville Syrjälä
Intel
