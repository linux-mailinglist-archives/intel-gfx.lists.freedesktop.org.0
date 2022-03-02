Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 78D2C4CA881
	for <lists+intel-gfx@lfdr.de>; Wed,  2 Mar 2022 15:50:28 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id B9BA210EACC;
	Wed,  2 Mar 2022 14:50:26 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga04.intel.com (mga04.intel.com [192.55.52.120])
 by gabe.freedesktop.org (Postfix) with ESMTPS id DF50810EACC
 for <intel-gfx@lists.freedesktop.org>; Wed,  2 Mar 2022 14:50:24 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1646232624; x=1677768624;
 h=date:from:to:cc:subject:message-id:references:
 mime-version:content-transfer-encoding:in-reply-to;
 bh=unijIBj5xSHNqR/pJp+vHSPa8sD9JLGPBXJCCE/7FiM=;
 b=VgkTozBFCsnWST4qMMFHbiJ5NeLx7/vZNGAXPU/TmDzWzvyButfH4QcY
 RV1xZiy2Y4t1f5nz9dZcR7QwK5VptwCtQ6L3vzGJNDySqkzWWckSVt0LV
 H/lO3FjBtehJWqQnx34OAPpAuNW2Tg8Orm6+Bk8nLdXMVror8gxwqmdpi
 hF5eRpWHh2ECWBfgyKdP4HEJbG6U/IVUHhfCdgcAprX4IKlI7qAb0ah9/
 fsZQFhNroZ/1u0uiS6ydWhbmaNwn5f8DfVIfTCLiPNL9fUnuFYy26hhcF
 uigP8Llq1WHtYlgXX7RylMVzYG03Ba+6/jsOcV8DLRMZsYym+rufAo3cS A==;
X-IronPort-AV: E=McAfee;i="6200,9189,10274"; a="252244309"
X-IronPort-AV: E=Sophos;i="5.90,149,1643702400"; d="scan'208";a="252244309"
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
 by fmsmga104.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 02 Mar 2022 06:50:24 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.90,149,1643702400"; d="scan'208";a="686151415"
Received: from stinkpipe.fi.intel.com (HELO stinkbox) ([10.237.72.151])
 by fmsmga001.fm.intel.com with SMTP; 02 Mar 2022 06:50:18 -0800
Received: by stinkbox (sSMTP sendmail emulation);
 Wed, 02 Mar 2022 16:50:18 +0200
Date: Wed, 2 Mar 2022 16:50:18 +0200
From: Ville =?iso-8859-1?Q?Syrj=E4l=E4?= <ville.syrjala@linux.intel.com>
To: Lee Shawn C <shawn.c.lee@intel.com>
Message-ID: <Yh+EKvgjpoBwgL5M@intel.com>
References: <20220301050141.12203-1-shawn.c.lee@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=iso-8859-1
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <20220301050141.12203-1-shawn.c.lee@intel.com>
X-Patchwork-Hint: comment
Subject: Re: [Intel-gfx] [PATCH] drm/i915: add more TMDS clock rate
 supported by HDMI driver
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

On Tue, Mar 01, 2022 at 01:01:41PM +0800, Lee Shawn C wrote:
> VBT 249 update to support more TMDS clock rate 3.00G, 3.40G
> and 5.94G. Refer to this new definition to configure max
> TMDS clock rate for HDMI driver.

The patch itself looks fine. The patch subject is pretty much
incomprehensible to me.

> 
> BSpec: 20124
> 
> Cc: Jani Nikula <jani.nikula@linux.intel.com>
> Cc: Ville Syrjala <ville.syrjala@linux.intel.com>
> Cc: Ankit Nautiyal <ankit.k.nautiyal@intel.com>
> Signed-off-by: Lee Shawn C <shawn.c.lee@intel.com>
> ---
>  drivers/gpu/drm/i915/display/intel_bios.c     | 6 ++++++
>  drivers/gpu/drm/i915/display/intel_vbt_defs.h | 3 +++
>  2 files changed, 9 insertions(+)
> 
> diff --git a/drivers/gpu/drm/i915/display/intel_bios.c b/drivers/gpu/drm/i915/display/intel_bios.c
> index 40b5e7ed12c2..a559a1914588 100644
> --- a/drivers/gpu/drm/i915/display/intel_bios.c
> +++ b/drivers/gpu/drm/i915/display/intel_bios.c
> @@ -1955,6 +1955,12 @@ static int _intel_bios_max_tmds_clock(const struct intel_bios_encoder_data *devd
>  		fallthrough;
>  	case HDMI_MAX_DATA_RATE_PLATFORM:
>  		return 0;
> +	case HDMI_MAX_DATA_RATE_594:
> +		return 594000;
> +	case HDMI_MAX_DATA_RATE_340:
> +		return 340000;
> +	case HDMI_MAX_DATA_RATE_300:
> +		return 300000;
>  	case HDMI_MAX_DATA_RATE_297:
>  		return 297000;
>  	case HDMI_MAX_DATA_RATE_165:
> diff --git a/drivers/gpu/drm/i915/display/intel_vbt_defs.h b/drivers/gpu/drm/i915/display/intel_vbt_defs.h
> index b9397d9363c5..e0508990df48 100644
> --- a/drivers/gpu/drm/i915/display/intel_vbt_defs.h
> +++ b/drivers/gpu/drm/i915/display/intel_vbt_defs.h
> @@ -289,6 +289,9 @@ struct bdb_general_features {
>  #define HDMI_MAX_DATA_RATE_PLATFORM	0			/* 204 */
>  #define HDMI_MAX_DATA_RATE_297		1			/* 204 */
>  #define HDMI_MAX_DATA_RATE_165		2			/* 204 */
> +#define HDMI_MAX_DATA_RATE_594		3			/* 249 */
> +#define HDMI_MAX_DATA_RATE_340		4			/* 249 */
> +#define HDMI_MAX_DATA_RATE_300		5			/* 249 */
>  
>  #define LEGACY_CHILD_DEVICE_CONFIG_SIZE		33
>  
> -- 
> 2.17.1

-- 
Ville Syrjälä
Intel
