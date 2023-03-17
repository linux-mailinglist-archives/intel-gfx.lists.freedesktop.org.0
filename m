Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id E975C6BEFFD
	for <lists+intel-gfx@lfdr.de>; Fri, 17 Mar 2023 18:42:53 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 6F2BA10E3F4;
	Fri, 17 Mar 2023 17:42:52 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga04.intel.com (mga04.intel.com [192.55.52.120])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 3580B10E3F4
 for <intel-gfx@lists.freedesktop.org>; Fri, 17 Mar 2023 17:42:51 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1679074971; x=1710610971;
 h=date:from:to:cc:subject:message-id:reply-to:references:
 mime-version:in-reply-to;
 bh=KXprC2RaULrCA7El3hDzJlGZ5IxCS+Iwth0TahKiG5w=;
 b=GNGf2nkYodzoGW+sIcK/eSdyzonXGBgFOrx4yymtT6HqyLgfgE+pMnJJ
 YINVzKmnvhMnZRZPv/FFCc+j2Ia0tFhSFsvoH2EyWtnCwi1xtvkppYv8c
 B7fIyCJlOln2nRQeEheBl2eCvp4MjjDxOG993TUMpeJNrYMbkF/lyULYv
 f0h0L/KePA28dF2cgpz9naVgy73PYxqCcP67ecFbHvkETTUsoIRdzMASo
 lqksw9Wgn2UPcCj5RpuSSu+epVO+QGrRstHpK168Bmsyg1OAAFANl3vWH
 w/lvD1WUceO464QaLMuL0MWTsT1Hc5HIQUD2MKi3zQ0czRQ6FxAoTFWeo g==;
X-IronPort-AV: E=McAfee;i="6600,9927,10652"; a="337025285"
X-IronPort-AV: E=Sophos;i="5.98,268,1673942400"; d="scan'208";a="337025285"
Received: from fmsmga007.fm.intel.com ([10.253.24.52])
 by fmsmga104.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 17 Mar 2023 10:42:50 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10652"; a="682760861"
X-IronPort-AV: E=Sophos;i="5.98,268,1673942400"; d="scan'208";a="682760861"
Received: from ideak-desk.fi.intel.com ([10.237.72.58])
 by fmsmga007-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 17 Mar 2023 10:42:49 -0700
Date: Fri, 17 Mar 2023 19:42:45 +0200
From: Imre Deak <imre.deak@intel.com>
To: Radhakrishna Sripada <radhakrishna.sripada@intel.com>
Message-ID: <ZBSmleJKK31MtF5M@ideak-desk.fi.intel.com>
References: <20230316202549.1764024-1-radhakrishna.sripada@intel.com>
 <20230316202549.1764024-2-radhakrishna.sripada@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20230316202549.1764024-2-radhakrishna.sripada@intel.com>
Subject: Re: [Intel-gfx] [PATCH 1/5] drm/i915: Use separate "DC off" power
 well for ADL-P and DG2
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
Reply-To: imre.deak@intel.com
Cc: intel-gfx@lists.freedesktop.org, lucas.demarchi@intel.com
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Thu, Mar 16, 2023 at 01:25:45PM -0700, Radhakrishna Sripada wrote:
> From: Matt Roper <matthew.d.roper@intel.com>
> 
> Although ADL-P and DG2 both use the same general power well setup, the
> DC5/DC6 requirements are slightly different which means each platform
> should have its own "DC off" power well.
> 
> DG2 (i.e., Xe_HPD IP) requires that DC5 be disabled whenever PG2 is
> active.  However ADL-P (i.e., Xe_LPD IP) only requires DC5/DC6 to be
> disabled when the PGC or PGD subwells are active; we should be able to
> remain in these DC states when PGB and general PG2 functionality is in
> use.
> 
> Bspec: 49193
> Signed-off-by: Matt Roper <matthew.d.roper@intel.com>
> Signed-off-by: Radhakrishna Sripada <radhakrishna.sripada@intel.com>
> ---
>  .../i915/display/intel_display_power_map.c    | 41 +++++++++++++++++--
>  1 file changed, 38 insertions(+), 3 deletions(-)
> 
> diff --git a/drivers/gpu/drm/i915/display/intel_display_power_map.c b/drivers/gpu/drm/i915/display/intel_display_power_map.c
> index 6645eb1911d8..d9e02cc9cf3c 100644
> --- a/drivers/gpu/drm/i915/display/intel_display_power_map.c
> +++ b/drivers/gpu/drm/i915/display/intel_display_power_map.c
> @@ -1301,7 +1301,8 @@ I915_DECL_PW_DOMAINS(xelpd_pwdoms_pw_2,
>   */
>  
>  I915_DECL_PW_DOMAINS(xelpd_pwdoms_dc_off,
> -	XELPD_PW_2_POWER_DOMAINS,
> +	XELPD_PW_C_POWER_DOMAINS,
> +	XELPD_PW_D_POWER_DOMAINS,
>  	POWER_DOMAIN_PORT_DSI,
>  	POWER_DOMAIN_AUDIO_MMIO,
>  	POWER_DOMAIN_AUX_A,
> @@ -1310,14 +1311,38 @@ I915_DECL_PW_DOMAINS(xelpd_pwdoms_dc_off,
>  	POWER_DOMAIN_DC_OFF,
>  	POWER_DOMAIN_INIT);
>  
> -static const struct i915_power_well_desc xelpd_power_wells_main[] = {
> +static const struct i915_power_well_desc xelpd_power_wells_dcoff[] = {

Nit: Here and in the xehpd defintion, s/dcoff/dc_off/ to match other platforms.

>  	{
>  		.instances = &I915_PW_INSTANCES(
>  			I915_PW("DC_off", &xelpd_pwdoms_dc_off,
>  				.id = SKL_DISP_DC_OFF),
>  		),
>  		.ops = &gen9_dc_off_power_well_ops,
> -	}, {
> +	}
> +};
> +
> +I915_DECL_PW_DOMAINS(xehpd_pwdoms_dc_off,
> +	XELPD_PW_2_POWER_DOMAINS,
> +	POWER_DOMAIN_PORT_DSI,
> +	POWER_DOMAIN_AUDIO_MMIO,
> +	POWER_DOMAIN_AUX_A,
> +	POWER_DOMAIN_AUX_B,
> +	POWER_DOMAIN_MODESET,
> +	POWER_DOMAIN_DC_OFF,
> +	POWER_DOMAIN_INIT);
> +
> +static const struct i915_power_well_desc xehpd_power_wells_dcoff[] = {
> +	{
> +		.instances = &I915_PW_INSTANCES(
> +			I915_PW("DC_off", &xehpd_pwdoms_dc_off,
> +				.id = SKL_DISP_DC_OFF),
> +		),
> +		.ops = &gen9_dc_off_power_well_ops,
> +	}
> +};

Could you move the xehpd definitions to precede xehpd_power_wells[]?

Patches 1, 2 look ok to me:
Reviewed-by: Imre Deak <imre.deak@intel.com>

> +
> +static const struct i915_power_well_desc xelpd_power_wells_main[] = {
> +	{
>  		.instances = &I915_PW_INSTANCES(
>  			I915_PW("PW_2", &xelpd_pwdoms_pw_2,
>  				.hsw.idx = ICL_PW_CTL_IDX_PW_2,
> @@ -1400,6 +1425,14 @@ static const struct i915_power_well_desc xelpd_power_wells_main[] = {
>  static const struct i915_power_well_desc_list xelpd_power_wells[] = {
>  	I915_PW_DESCRIPTORS(i9xx_power_wells_always_on),
>  	I915_PW_DESCRIPTORS(icl_power_wells_pw_1),
> +	I915_PW_DESCRIPTORS(xelpd_power_wells_dcoff),
> +	I915_PW_DESCRIPTORS(xelpd_power_wells_main),
> +};
> +
> +static const struct i915_power_well_desc_list xehpd_power_wells[] = {
> +	I915_PW_DESCRIPTORS(i9xx_power_wells_always_on),
> +	I915_PW_DESCRIPTORS(icl_power_wells_pw_1),
> +	I915_PW_DESCRIPTORS(xehpd_power_wells_dcoff),
>  	I915_PW_DESCRIPTORS(xelpd_power_wells_main),
>  };
>  
> @@ -1624,6 +1657,8 @@ int intel_display_power_map_init(struct i915_power_domains *power_domains)
>  
>  	if (DISPLAY_VER(i915) >= 14)
>  		return set_power_wells(power_domains, xelpdp_power_wells);
> +	else if (IS_DG2(i915))
> +		return set_power_wells(power_domains, xehpd_power_wells);
>  	else if (DISPLAY_VER(i915) >= 13)
>  		return set_power_wells(power_domains, xelpd_power_wells);
>  	else if (IS_DG1(i915))
> -- 
> 2.34.1
> 
