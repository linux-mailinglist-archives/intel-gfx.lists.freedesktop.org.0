Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 9EDF58305DD
	for <lists+intel-gfx@lfdr.de>; Wed, 17 Jan 2024 13:46:48 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 5100610E097;
	Wed, 17 Jan 2024 12:46:46 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [134.134.136.31])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 9EC5C10E097
 for <intel-gfx@lists.freedesktop.org>; Wed, 17 Jan 2024 12:46:45 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1705495605; x=1737031605;
 h=date:from:to:cc:subject:message-id:references:
 mime-version:content-transfer-encoding:in-reply-to;
 bh=FCtQmyTV4/lGKDQH73LHFuNn1aXVS7aGT+lDK8YLvZ8=;
 b=XSnnOiwNVwZ/F0etr1OErTCQVq0rGqbk8waAZcByGxl06h1KAX18mYRX
 e6md1DAP/bsOsXkVcwdrQl7efK/dZu8Kbt60jHFYOegYmLroRESa3k4tc
 aR3mec1us6PKkzcJKwkzdaNhfChbSTqMLX4eNCSR4KDmZEOiG9h1w6XlB
 NmyG6ATOUX5JpdAGM/t4eP1inrmSELKyc8iWQeGjXqVSNu4/IavM4U/LL
 Et0fKpu+qcn+gQYxilqXw91p58BjSJn6kCnQExMq+IkMt8uQh0naMrO0H
 QG0vjyJi/2e5cVqBUTvaC9MYrGzraCMiIOWorlHU75j3dBOM4n/TpHNJU Q==;
X-IronPort-AV: E=McAfee;i="6600,9927,10955"; a="464438580"
X-IronPort-AV: E=Sophos;i="6.05,200,1701158400"; d="scan'208";a="464438580"
Received: from orsmga007.jf.intel.com ([10.7.209.58])
 by orsmga104.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 17 Jan 2024 04:46:44 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10955"; a="777445843"
X-IronPort-AV: E=Sophos;i="6.05,200,1701158400"; d="scan'208";a="777445843"
Received: from stinkpipe.fi.intel.com (HELO stinkbox) ([10.237.72.74])
 by orsmga007.jf.intel.com with SMTP; 17 Jan 2024 04:46:41 -0800
Received: by stinkbox (sSMTP sendmail emulation);
 Wed, 17 Jan 2024 14:46:41 +0200
Date: Wed, 17 Jan 2024 14:46:41 +0200
From: Ville =?iso-8859-1?Q?Syrj=E4l=E4?= <ville.syrjala@linux.intel.com>
To: Jani Nikula <jani.nikula@intel.com>
Subject: Re: [PATCH] drm/i915/opregion: remove unused lid_state
Message-ID: <ZafMMXiOlr3H30o4@intel.com>
References: <20240117122546.1551400-1-jani.nikula@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=iso-8859-1
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <20240117122546.1551400-1-jani.nikula@intel.com>
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
Cc: intel-gfx@lists.freedesktop.org
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Wed, Jan 17, 2024 at 02:25:46PM +0200, Jani Nikula wrote:
> Not sure if lid_state has ever been used, but at least not for a long
> time. Remove it.

It was probably used when we had that disgusting lid notifier
thing, but that got killed some years ago.

> 
> Suggested-by: Ville Syrjälä <ville.syrjala@linux.intel.com>
> Signed-off-by: Jani Nikula <jani.nikula@intel.com>

Reviewed-by: Ville Syrjälä <ville.syrjala@linux.intel.com>

> ---
>  drivers/gpu/drm/i915/display/intel_opregion.c | 2 --
>  1 file changed, 2 deletions(-)
> 
> diff --git a/drivers/gpu/drm/i915/display/intel_opregion.c b/drivers/gpu/drm/i915/display/intel_opregion.c
> index 3f5a20f9153e..f242bb320610 100644
> --- a/drivers/gpu/drm/i915/display/intel_opregion.c
> +++ b/drivers/gpu/drm/i915/display/intel_opregion.c
> @@ -266,7 +266,6 @@ struct intel_opregion {
>  	void *vbt_firmware;
>  	const void *vbt;
>  	u32 vbt_size;
> -	u32 *lid_state;
>  	struct work_struct asle_work;
>  	struct notifier_block acpi_notifier;
>  };
> @@ -958,7 +957,6 @@ int intel_opregion_setup(struct drm_i915_private *dev_priv)
>  		goto err_out;
>  	}
>  	opregion->header = base;
> -	opregion->lid_state = base + ACPI_CLID;
>  
>  	drm_dbg(&dev_priv->drm, "ACPI OpRegion version %u.%u.%u\n",
>  		opregion->header->over.major,
> -- 
> 2.39.2

-- 
Ville Syrjälä
Intel
