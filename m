Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 2F0DC30508D
	for <lists+intel-gfx@lfdr.de>; Wed, 27 Jan 2021 05:14:42 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 586376E507;
	Wed, 27 Jan 2021 04:14:40 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 166696E507
 for <intel-gfx@lists.freedesktop.org>; Wed, 27 Jan 2021 04:14:39 +0000 (UTC)
IronPort-SDR: BeOj/M9TguF5O7/F9xhdm5CCX4u6ijxEgb83iiILnOAaVjT0BzddU9dO+HUPgRGdGvS2XERDm3
 poTyx0GWLQVg==
X-IronPort-AV: E=McAfee;i="6000,8403,9876"; a="198813695"
X-IronPort-AV: E=Sophos;i="5.79,378,1602572400"; d="scan'208";a="198813695"
Received: from orsmga001.jf.intel.com ([10.7.209.18])
 by fmsmga101.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 26 Jan 2021 20:14:38 -0800
IronPort-SDR: HczOK5BjaonqnKym4jQNGttBJaZxwkdCHANHIv44gxx1Lc4ZO56EfUvphS4dmT7qBZDbfbkXC4
 Zck2Wu816sow==
X-IronPort-AV: E=Sophos;i="5.79,378,1602572400"; d="scan'208";a="429956777"
Received: from njcaminx-mobl.amr.corp.intel.com (HELO [10.251.9.202])
 ([10.251.9.202])
 by orsmga001-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 26 Jan 2021 20:14:38 -0800
To: intel-gfx@lists.freedesktop.org
References: <20210127041159.136409-1-aditya.swarup@intel.com>
 <20210127041159.136409-4-aditya.swarup@intel.com>
From: Aditya Swarup <aditya.swarup@intel.com>
Message-ID: <b5c4326c-2e11-0688-1ab5-4542a1b39bba@intel.com>
Date: Tue, 26 Jan 2021 20:14:38 -0800
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.10.0
MIME-Version: 1.0
In-Reply-To: <20210127041159.136409-4-aditya.swarup@intel.com>
Content-Language: en-US
Subject: Re: [Intel-gfx] [PATCH 3/9] drm/i915/adl_s: Add power wells
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
Cc: Lucas De Marchi <lucas.demarchi@intel.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On 1/26/21 8:11 PM, Aditya Swarup wrote:
> From: Lucas De Marchi <lucas.demarchi@intel.com>
> 
> TGL power wells can be re-used for ADL-S with the exception of the fake
> power well for TC_COLD, just like DG-1.
> 
> Bspec: 53597
> 
> Cc: Imre Deak <imre.deak@intel.com>
> Cc: Matt Roper <matthew.d.roper@intel.com>
> Cc: Aditya Swarup <aditya.swarup@intel.com>
> Signed-off-by: Lucas De Marchi <lucas.demarchi@intel.com>
> Signed-off-by: Aditya Swarup <aditya.swarup@intel.com>

Reviewed-by: Aditya Swarup <aditya.swarup@intel.com>

Aditya

> ---
>  drivers/gpu/drm/i915/display/intel_display_power.c | 2 +-
>  1 file changed, 1 insertion(+), 1 deletion(-)
> 
> diff --git a/drivers/gpu/drm/i915/display/intel_display_power.c b/drivers/gpu/drm/i915/display/intel_display_power.c
> index 708f0b7e0990..cccfd45a67cf 100644
> --- a/drivers/gpu/drm/i915/display/intel_display_power.c
> +++ b/drivers/gpu/drm/i915/display/intel_display_power.c
> @@ -4689,7 +4689,7 @@ int intel_power_domains_init(struct drm_i915_private *dev_priv)
>  	 * The enabling order will be from lower to higher indexed wells,
>  	 * the disabling order is reversed.
>  	 */
> -	if (IS_DG1(dev_priv)) {
> +	if (IS_ALDERLAKE_S(dev_priv) || IS_DG1(dev_priv)) {
>  		err = set_power_wells_mask(power_domains, tgl_power_wells,
>  					   BIT_ULL(TGL_DISP_PW_TC_COLD_OFF));
>  	} else if (IS_ROCKETLAKE(dev_priv)) {
> 

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
