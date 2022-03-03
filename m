Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 7C50B4CBCE9
	for <lists+intel-gfx@lfdr.de>; Thu,  3 Mar 2022 12:40:52 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 675FA10E20D;
	Thu,  3 Mar 2022 11:40:50 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga03.intel.com (mga03.intel.com [134.134.136.65])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 0133D10E20D
 for <intel-gfx@lists.freedesktop.org>; Thu,  3 Mar 2022 11:40:48 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1646307649; x=1677843649;
 h=date:from:to:cc:subject:message-id:references:
 mime-version:content-transfer-encoding:in-reply-to;
 bh=+nSHGqk26GiIWbFyhoYU7Y78I6eUjoVp22oxz01X5ec=;
 b=Lr90kGzL0Jsq0EZC5yUa9DePiPJ9JMmfGF4dWiKXaNLkJk8wZLwVXuXJ
 dlQLxsj6PnAyv+8NdMNuA0I8elQ0mDz6L2JT2ZW8gn1VGlbY7jvB3R0ai
 U2Ky56DPGefpmuXyNtKIwoTl1H637Yaw7gw9qehodKvwX1g+XpJQXvAbC
 Waev+e46d9jxDPkBn6WK09EWT2gHxY7/ed9mahMQZNIgY4CwXnPSS0uA5
 QfI8Uw9weOu0rTbTCUvRcjG+ZzbPhcHTTxHYoMfKknzRhgZRQaB60kYnj
 mac+7Nbx0aKa3+08mSjTxtgzKYqorUZmH/uggReV8aVLHkImd1mjwev1R A==;
X-IronPort-AV: E=McAfee;i="6200,9189,10274"; a="253579662"
X-IronPort-AV: E=Sophos;i="5.90,151,1643702400"; d="scan'208";a="253579662"
Received: from fmsmga007.fm.intel.com ([10.253.24.52])
 by orsmga103.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 03 Mar 2022 03:40:48 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.90,151,1643702400"; d="scan'208";a="545833052"
Received: from stinkpipe.fi.intel.com (HELO stinkbox) ([10.237.72.151])
 by fmsmga007.fm.intel.com with SMTP; 03 Mar 2022 03:40:45 -0800
Received: by stinkbox (sSMTP sendmail emulation);
 Thu, 03 Mar 2022 13:40:44 +0200
Date: Thu, 3 Mar 2022 13:40:44 +0200
From: Ville =?iso-8859-1?Q?Syrj=E4l=E4?= <ville.syrjala@linux.intel.com>
To: Lee Shawn C <shawn.c.lee@intel.com>
Message-ID: <YiCpPBVJyEki3EHn@intel.com>
References: <20220301050141.12203-1-shawn.c.lee@intel.com>
 <20220303083802.5071-1-shawn.c.lee@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=iso-8859-1
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <20220303083802.5071-1-shawn.c.lee@intel.com>
X-Patchwork-Hint: comment
Subject: Re: [Intel-gfx] [v2] drm/i915: update new TMDS clock setting
 defined by VBT
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

On Thu, Mar 03, 2022 at 04:38:02PM +0800, Lee Shawn C wrote:
> VBT 249 update to support more TMDS clock rate 3.00G, 3.40G
> and 5.94G. Refer to this new definition to configure max
> TMDS clock rate for HDMI driver.
> 
> BSpec: 20124
> 
> v2: new subject
> 
> Cc: Jani Nikula <jani.nikula@linux.intel.com>
> Cc: Ville Syrjala <ville.syrjala@linux.intel.com>
> Cc: Ankit Nautiyal <ankit.k.nautiyal@intel.com>
> Signed-off-by: Lee Shawn C <shawn.c.lee@intel.com>

Thanks. Pushed to drm-intel-next.

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
