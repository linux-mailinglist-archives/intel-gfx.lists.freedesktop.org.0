Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id BD6C196F876
	for <lists+intel-gfx@lfdr.de>; Fri,  6 Sep 2024 17:39:08 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 45FB110EAA4;
	Fri,  6 Sep 2024 15:39:07 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="ODOlFxZR";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.17])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 7E91C10EAA4
 for <intel-gfx@lists.freedesktop.org>; Fri,  6 Sep 2024 15:39:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1725637145; x=1757173145;
 h=date:from:to:cc:subject:message-id:references:
 mime-version:content-transfer-encoding:in-reply-to;
 bh=6GKu6sE+bsxomdUwP2wsm95Pqz9K89bG1laYNv2tuzg=;
 b=ODOlFxZRmTg/tgOEHKBlFXXAaaokQ8jMZIkYcrUqCjjQ2AYrI9jg/uCj
 zL4tbenvUNtgc/xtldN3xiihjfVfjvPnbUn9iL5TvvxMOQT30rLgSWiCt
 /zKoO+LhcaTTapXNxsUvdiAoOUv51A7sSlBqw1KNqhmEYqmO+g/WCzH4d
 WIrSyB3k3O7AK8t6hHGsg+FebenvWEkZND0J2D0QmfCQ/oaxDEPYn8vzA
 9oHkeCRWBdxGBtlgG/S8iIfZ01zKmI3gF/B3MMOslVDB27+lPhWinpeTA
 RmkrQDeesEBvQESk9c7F9QC6Qukg72Prf9sPLd2zoNcZHOsbofCP/RqXE Q==;
X-CSE-ConnectionGUID: PPs5zjeJT9+iCKRIRCotHw==
X-CSE-MsgGUID: lcq+cCV0R0ahYyGPG5qBPQ==
X-IronPort-AV: E=McAfee;i="6700,10204,11187"; a="24274449"
X-IronPort-AV: E=Sophos;i="6.10,208,1719903600"; d="scan'208";a="24274449"
Received: from fmviesa008.fm.intel.com ([10.60.135.148])
 by fmvoesa111.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 06 Sep 2024 08:39:05 -0700
X-CSE-ConnectionGUID: 29Yd6Q2fSmaHJCmWSRh4IQ==
X-CSE-MsgGUID: 9B0RKF7lR5ObdCOTAz3VVQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.10,208,1719903600"; d="scan'208";a="66019396"
Received: from stinkpipe.fi.intel.com (HELO stinkbox) ([10.237.72.74])
 by fmviesa008.fm.intel.com with SMTP; 06 Sep 2024 08:39:03 -0700
Received: by stinkbox (sSMTP sendmail emulation);
 Fri, 06 Sep 2024 18:39:02 +0300
Date: Fri, 6 Sep 2024 18:39:02 +0300
From: Ville =?iso-8859-1?Q?Syrj=E4l=E4?= <ville.syrjala@linux.intel.com>
To: Ankit Nautiyal <ankit.k.nautiyal@intel.com>
Cc: intel-gfx@lists.freedesktop.org, jani.saarinen@intel.com
Subject: Re: [PATCH 07/14] drm/i915: Add bigjoiner and uncompressed joiner hw
 readout sanity checks
Message-ID: <ZtsiFvgj6_GAu26S@intel.com>
References: <20240906125807.3960642-1-ankit.k.nautiyal@intel.com>
 <20240906125807.3960642-8-ankit.k.nautiyal@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=iso-8859-1
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <20240906125807.3960642-8-ankit.k.nautiyal@intel.com>
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

On Fri, Sep 06, 2024 at 06:28:00PM +0530, Ankit Nautiyal wrote:
> From: Stanislav Lisovskiy <stanislav.lisovskiy@intel.com>
> 
> Adding sanity checks for primary and secondary bigjoiner/uncompressed
> bitmasks, should make it easier to spot possible issues.
> 
> Signed-off-by: Stanislav Lisovskiy <stanislav.lisovskiy@intel.com>
> Reviewed-by: Suraj Kandpal <suraj.kandpal@intel.com>
> ---
>  drivers/gpu/drm/i915/display/intel_display.c | 24 ++++++++++++++++++++
>  1 file changed, 24 insertions(+)
> 
> diff --git a/drivers/gpu/drm/i915/display/intel_display.c b/drivers/gpu/drm/i915/display/intel_display.c
> index cdc7531311fc..6f098383479f 100644
> --- a/drivers/gpu/drm/i915/display/intel_display.c
> +++ b/drivers/gpu/drm/i915/display/intel_display.c
> @@ -3638,11 +3638,17 @@ static void enabled_bigjoiner_pipes(struct drm_i915_private *dev_priv,
>  	}
>  }
>  
> +static u8 expected_secondary_pipes(u8 primary_pipes)
> +{
> +	return primary_pipes << 1;
> +}

Extracting this should be a separate patch really since it
was already in the code until the previous patch erroneously
removed it.

> +
>  static void enabled_joiner_pipes(struct drm_i915_private *dev_priv,
>  				 u8 *primary_pipes, u8 *secondary_pipes)
>  {
>  	u8 primary_uncompressed_joiner_pipes, primary_bigjoiner_pipes;
>  	u8 secondary_uncompressed_joiner_pipes, secondary_bigjoiner_pipes;
> +	u8 uncompressed_joiner_pipes, bigjoiner_pipes;
>  
>  	enabled_uncompressed_joiner_pipes(dev_priv, &primary_uncompressed_joiner_pipes,
>  					  &secondary_uncompressed_joiner_pipes);
> @@ -3650,6 +3656,24 @@ static void enabled_joiner_pipes(struct drm_i915_private *dev_priv,
>  	enabled_bigjoiner_pipes(dev_priv, &primary_bigjoiner_pipes,
>  				&secondary_bigjoiner_pipes);
>  
> +	uncompressed_joiner_pipes = primary_uncompressed_joiner_pipes |
> +				    secondary_uncompressed_joiner_pipes;
> +	bigjoiner_pipes = primary_bigjoiner_pipes | secondary_bigjoiner_pipes;
> +
> +	drm_WARN(&dev_priv->drm, (uncompressed_joiner_pipes & bigjoiner_pipes) != 0,
> +		 "Uncomressed joiner pipes(%x) and bigjoiner pipes(%x) can't intersect\n",
> +		 uncompressed_joiner_pipes, bigjoiner_pipes);

Please use 0x%x for printing hex numbers

Side note: maybe we should switch to the standard %#x instead?
Though we'd need to double check whether prink() follows the
idiotic C standard or not:
 printf("%#x", 1) -> 0x1, for any non-zero value
 bs.
 printf("%#x", 0) -> 0 (sigh)

If printk() behaves the same way then I want to see %#x anywhere
(pretty sure we do use it in a few places already though).


> +	drm_WARN(&dev_priv->drm, secondary_bigjoiner_pipes !=
> +		 expected_secondary_pipes(primary_bigjoiner_pipes),
> +		 "Wrong secondary bigjoiner pipes(expected %x, current %x)\n",
> +		 expected_secondary_pipes(primary_bigjoiner_pipes),
> +		 secondary_bigjoiner_pipes);
> +	drm_WARN(&dev_priv->drm, secondary_uncompressed_joiner_pipes !=
> +		 expected_secondary_pipes(primary_uncompressed_joiner_pipes),
> +		 "Wrong secondary uncompressed joiner pipes(expected %x, current %x)\n",
> +		 expected_secondary_pipes(primary_uncompressed_joiner_pipes),
> +		 secondary_uncompressed_joiner_pipes);
> +
>  	*primary_pipes = 0;
>  	*secondary_pipes = 0;
>  
> -- 
> 2.45.2

-- 
Ville Syrjälä
Intel
