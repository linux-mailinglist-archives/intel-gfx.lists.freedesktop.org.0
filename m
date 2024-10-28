Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 656EC9B34A8
	for <lists+intel-gfx@lfdr.de>; Mon, 28 Oct 2024 16:20:58 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 5BFE510E4EC;
	Mon, 28 Oct 2024 15:20:56 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="a75ePhEB";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.19])
 by gabe.freedesktop.org (Postfix) with ESMTPS id A83E410E4EC
 for <intel-gfx@lists.freedesktop.org>; Mon, 28 Oct 2024 15:20:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1730128855; x=1761664855;
 h=date:from:to:cc:subject:message-id:references:
 mime-version:content-transfer-encoding:in-reply-to;
 bh=nUls9WrEabBJD0WuhYGKTE4ucIDSRyqHGd6RsAblWns=;
 b=a75ePhEBwv6WfiJ2Iy9zwA1rwKnJUjFG+kv9tTqInBQop8mp7Mycjp1q
 iuEs3an1FZhvSBAMK4TWIKFDwH7OcQRjSKOJteXakVIfMIF+a2H46Qaz4
 ruBwRulOyo85lnVDjaK7jC5zATgRCHZ52iMQKSdDl5JsS1lILkxAOj/Sx
 n8c629Ehl3x7UbmVqhMfj5O6n/KtoodXWUjvVGYpvLWmOXseog17PTVk5
 c/eLta6lfazEwgVzjmQBvyhcC8j8PDlo83WUt17CXzDdsYJt3SG7j3n30
 ahKvgvup6zOIJreCLggq9eVWrMyA3svYufSb5WfAVdCLB7g3Rux+XDyTy Q==;
X-CSE-ConnectionGUID: 4q/WBj8OSYaOcIggNgIqGA==
X-CSE-MsgGUID: VRRY8IkdSwOlHDzdkLptzg==
X-IronPort-AV: E=McAfee;i="6700,10204,11239"; a="29189581"
X-IronPort-AV: E=Sophos;i="6.11,239,1725346800"; d="scan'208";a="29189581"
Received: from fmviesa008.fm.intel.com ([10.60.135.148])
 by fmvoesa113.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 28 Oct 2024 08:20:54 -0700
X-CSE-ConnectionGUID: 5JKwN+UXShWRaSpJCKVkcw==
X-CSE-MsgGUID: fnejtItXTLGWA6F5+kT8gA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.11,239,1725346800"; d="scan'208";a="81754416"
Received: from stinkpipe.fi.intel.com (HELO stinkbox) ([10.237.72.74])
 by fmviesa008.fm.intel.com with SMTP; 28 Oct 2024 08:20:52 -0700
Received: by stinkbox (sSMTP sendmail emulation);
 Mon, 28 Oct 2024 17:20:51 +0200
Date: Mon, 28 Oct 2024 17:20:51 +0200
From: Ville =?iso-8859-1?Q?Syrj=E4l=E4?= <ville.syrjala@linux.intel.com>
To: Imre Deak <imre.deak@intel.com>
Cc: intel-gfx@lists.freedesktop.org
Subject: Re: [PATCH v5 8/8] drm/i915/dp: Write the source OUI for non-eDP
 sinks as well
Message-ID: <Zx-r04n8OlYxJ_DQ@intel.com>
References: <20241025160259.3088727-1-imre.deak@intel.com>
 <20241025160259.3088727-9-imre.deak@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=iso-8859-1
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <20241025160259.3088727-9-imre.deak@intel.com>
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

On Fri, Oct 25, 2024 at 07:02:59PM +0300, Imre Deak wrote:
> At least the i-tec USB-C Nano 2x Display Docking Station (containing a
> Synaptics MST branch device) requires the driver to update the source
> OUI DPCD registers to expose its DSC capability. Accordingly update the
> OUI for all sink types (besides eDP where this has been done already).
> 
> v2: Rebased on latest patch version.
> 
> Closes: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/11776
> Signed-off-by: Imre Deak <imre.deak@intel.com>

Reviewed-by: Ville Syrjälä <ville.syrjala@linux.intel.com>

> ---
>  drivers/gpu/drm/i915/display/intel_dp.c | 5 ++---
>  1 file changed, 2 insertions(+), 3 deletions(-)
> 
> diff --git a/drivers/gpu/drm/i915/display/intel_dp.c b/drivers/gpu/drm/i915/display/intel_dp.c
> index 916301aa9f6b6..24daf5f973770 100644
> --- a/drivers/gpu/drm/i915/display/intel_dp.c
> +++ b/drivers/gpu/drm/i915/display/intel_dp.c
> @@ -3407,9 +3407,6 @@ intel_dp_init_source_oui(struct intel_dp *intel_dp)
>  	u8 oui[] = { 0x00, 0xaa, 0x01 };
>  	u8 buf[3] = {};
>  
> -	if (!intel_dp_is_edp(intel_dp))
> -		return;
> -
>  	if (READ_ONCE(intel_dp->oui_valid))
>  		return;
>  
> @@ -6133,6 +6130,8 @@ intel_dp_hpd_pulse(struct intel_digital_port *dig_port, bool long_hpd)
>  
>  	if (long_hpd) {
>  		intel_dp->reset_link_params = true;
> +		intel_dp_invalidate_source_oui(intel_dp);
> +
>  		return IRQ_NONE;
>  	}
>  
> -- 
> 2.44.2

-- 
Ville Syrjälä
Intel
