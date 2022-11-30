Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id AE50163D0D7
	for <lists+intel-gfx@lfdr.de>; Wed, 30 Nov 2022 09:38:08 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id EEC8110E41B;
	Wed, 30 Nov 2022 08:38:04 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga07.intel.com (mga07.intel.com [134.134.136.100])
 by gabe.freedesktop.org (Postfix) with ESMTPS id BEF1510E41B
 for <intel-gfx@lists.freedesktop.org>; Wed, 30 Nov 2022 08:38:00 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1669797480; x=1701333480;
 h=from:to:cc:subject:in-reply-to:references:date:
 message-id:mime-version;
 bh=AcKzoq8nNLFRW5C/BtrKdObFUHezJQBEh8F7NDBwFxA=;
 b=k8IT3iXkmNV+aNW7kPO5THt3xIV3SwiTU/JRHSk/uYFnREa6kXATpTCB
 Z7SO1IDwTa3tObEIPjTzoAS850+Ic46AmPuCXp0DcgPeT3gxpSaMMn7sB
 kEhW0dFTXGC9nzZ3x8332UyXIVbKRpWcBP1AR/qM0nI2V1475p4Hd3lUN
 D6HVR+a0l6xKSz9ARuannt4EjXLjOq6M1f/jUztS4/06XHlNixx6jHIXy
 9bic/SaxHj7gj/tV4pWTBSSCG+u1Px2FXPRoCX8L6BkJpFEdkNN5TGY6T
 SipjePOhWHdD3aZLrv2vTVwroxCAfflw7QCxWE+5f7PDZm3ypTarnMhHj A==;
X-IronPort-AV: E=McAfee;i="6500,9779,10546"; a="379619408"
X-IronPort-AV: E=Sophos;i="5.96,205,1665471600"; d="scan'208";a="379619408"
Received: from fmsmga004.fm.intel.com ([10.253.24.48])
 by orsmga105.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 30 Nov 2022 00:38:00 -0800
X-IronPort-AV: E=McAfee;i="6500,9779,10546"; a="712727901"
X-IronPort-AV: E=Sophos;i="5.96,205,1665471600"; d="scan'208";a="712727901"
Received: from mromao-mobl.ger.corp.intel.com (HELO localhost)
 ([10.252.53.224])
 by fmsmga004-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 30 Nov 2022 00:37:58 -0800
From: Jani Nikula <jani.nikula@linux.intel.com>
To: Chaitanya Kumar Borah <chaitanya.kumar.borah@intel.com>,
 intel-gfx@lists.freedesktop.org
In-Reply-To: <20221130074617.1619099-3-chaitanya.kumar.borah@intel.com>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
References: <20221130074617.1619099-1-chaitanya.kumar.borah@intel.com>
 <20221130074617.1619099-3-chaitanya.kumar.borah@intel.com>
Date: Wed, 30 Nov 2022 10:37:55 +0200
Message-ID: <87o7so3kik.fsf@intel.com>
MIME-Version: 1.0
Content-Type: text/plain
Subject: Re: [Intel-gfx] [RFC 2/2] drm/i915: Add additional check for 480Mhz
 step CDCLK
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
Cc: ville.syrjala@intel.com
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Wed, 30 Nov 2022, Chaitanya Kumar Borah <chaitanya.kumar.borah@intel.com> wrote:
> There are still RPL-U boards which does not support the 480Mhz step of
> CDCLK. We can differentiate these board by checking the CPUID Brand
> String. 480Mhz step is only supported in SKUs which does not contain
> the string "Genuine Intel" in the Brand string.
>
> BSpec: 55409
>
> Signed-off-by: Chaitanya Kumar Borah <chaitanya.kumar.borah@intel.com>
> ---
>  drivers/gpu/drm/i915/display/intel_cdclk.c | 16 +++++++++++++++-
>  1 file changed, 15 insertions(+), 1 deletion(-)
>
> diff --git a/drivers/gpu/drm/i915/display/intel_cdclk.c b/drivers/gpu/drm/i915/display/intel_cdclk.c
> index 9bfeb1abba47..1890e5135cfc 100644
> --- a/drivers/gpu/drm/i915/display/intel_cdclk.c
> +++ b/drivers/gpu/drm/i915/display/intel_cdclk.c
> @@ -192,6 +192,19 @@ static bool is_rplu(struct drm_i915_private *dev_priv)
>  	}
>  }
>  
> +static bool is_480mhz_step_valid(void)
> +{
> +	struct cpuinfo_x86 *c;
> +	unsigned int cpu = smp_processor_id();
> +
> +	c = &cpu_data(cpu);
> +
> +	if (c->x86_model_id[0] && !strstr(c->x86_model_id, "Genuine Intel"))
> +		return true;

Ugh, this is super ugly.

The usual way to quirk this stuff is in display/intel_quirks.c. There
are two kinds of quirks, device and dmi. (And I realize that's one place
where we do have PCI IDs written, but it's for slightly different
purpose.)

If this really can't be done using quirks, and cpuinfo is the only way
(I doubt it), then we need to add the cpuinfo quirk to intel_quirks.c
and not sprinkle these around.

BR,
Jani.


> +
> +	return false;
> +}
> +
>  static void i915gm_get_cdclk(struct drm_i915_private *dev_priv,
>  			     struct intel_cdclk_config *cdclk_config)
>  {
> @@ -3389,8 +3402,9 @@ void intel_init_cdclk_hooks(struct drm_i915_private *dev_priv)
>  		/*
>  		 * BSpec: 55409
>  		 * 480 MHz supported on SKUs that have a RPL-U Device ID
> +		 * and  CPUID Brand String that does not contain "Genuine Intel".
>  		 */
> -		else if (is_rplu(dev_priv))
> +		else if (is_rplu(dev_priv) && is_480mhz_step_valid())
>  			dev_priv->cdclk.table = rplu_cdclk_table;
>  		else
>  			dev_priv->display.cdclk.table = adlp_cdclk_table;

-- 
Jani Nikula, Intel Open Source Graphics Center
