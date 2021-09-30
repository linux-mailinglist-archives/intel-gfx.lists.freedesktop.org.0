Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 9E20F41D9AF
	for <lists+intel-gfx@lfdr.de>; Thu, 30 Sep 2021 14:21:44 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 9C19D6E3F4;
	Thu, 30 Sep 2021 12:21:40 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
 by gabe.freedesktop.org (Postfix) with ESMTPS id B30D66E3F4
 for <intel-gfx@lists.freedesktop.org>; Thu, 30 Sep 2021 12:21:38 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6200,9189,10122"; a="225213988"
X-IronPort-AV: E=Sophos;i="5.85,336,1624345200"; d="scan'208";a="225213988"
Received: from orsmga008.jf.intel.com ([10.7.209.65])
 by orsmga102.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 30 Sep 2021 05:21:38 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.85,336,1624345200"; d="scan'208";a="487304669"
Received: from stinkbox.fi.intel.com (HELO stinkbox) ([10.237.72.171])
 by orsmga008.jf.intel.com with SMTP; 30 Sep 2021 05:21:36 -0700
Received: by stinkbox (sSMTP sendmail emulation);
 Thu, 30 Sep 2021 15:21:35 +0300
Date: Thu, 30 Sep 2021 15:21:35 +0300
From: Ville =?iso-8859-1?Q?Syrj=E4l=E4?= <ville.syrjala@linux.intel.com>
To: Jani Nikula <jani.nikula@intel.com>
Cc: intel-gfx@lists.freedesktop.org
Message-ID: <YVWrz/hS3K/2orF9@intel.com>
References: <cover.1633000838.git.jani.nikula@intel.com>
 <e2f79220ed2558f615c051e2533275a5dae1a04f.1633000838.git.jani.nikula@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=iso-8859-1
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <e2f79220ed2558f615c051e2533275a5dae1a04f.1633000838.git.jani.nikula@intel.com>
X-Patchwork-Hint: comment
Subject: Re: [Intel-gfx] [PATCH 6/6] drm/i915/dram: return -ENOENT instead
 of -1
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

On Thu, Sep 30, 2021 at 02:24:36PM +0300, Jani Nikula wrote:
> Avoid using the incidental -EPERM.
> 
> Signed-off-by: Jani Nikula <jani.nikula@intel.com>
> ---
>  drivers/gpu/drm/i915/intel_dram.c | 4 ++--
>  1 file changed, 2 insertions(+), 2 deletions(-)
> 
> diff --git a/drivers/gpu/drm/i915/intel_dram.c b/drivers/gpu/drm/i915/intel_dram.c
> index 91866520c173..a506a2196de4 100644
> --- a/drivers/gpu/drm/i915/intel_dram.c
> +++ b/drivers/gpu/drm/i915/intel_dram.c
> @@ -444,7 +444,7 @@ static int icl_pcode_read_mem_global_info(struct drm_i915_private *dev_priv)
>  			break;
>  		default:
>  			MISSING_CASE(val & 0xf);
> -			return -1;
> +			return -ENOENT;

Everything else is -EINVAL in that file. So maybe just stick to 
that? I guess for a bunch of these maybe something different
might make sense to indicate that it's the hw telling us nonsense
(or the driver is actually missing some necessaty stuff).
But boesn't really matter since it's just a bogus value.

Series is
Reviewed-by: Ville Syrjälä <ville.syrjala@linux.intel.com>

>  		}
>  	} else {
>  		switch (val & 0xf) {
> @@ -462,7 +462,7 @@ static int icl_pcode_read_mem_global_info(struct drm_i915_private *dev_priv)
>  			break;
>  		default:
>  			MISSING_CASE(val & 0xf);
> -			return -1;
> +			return -ENOENT;
>  		}
>  	}
>  
> -- 
> 2.30.2

-- 
Ville Syrjälä
Intel
