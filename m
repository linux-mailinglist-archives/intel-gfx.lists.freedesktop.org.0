Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 68761383BD1
	for <lists+intel-gfx@lfdr.de>; Mon, 17 May 2021 20:01:12 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 996116EA26;
	Mon, 17 May 2021 18:01:10 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga07.intel.com (mga07.intel.com [134.134.136.100])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 050986EA26
 for <intel-gfx@lists.freedesktop.org>; Mon, 17 May 2021 18:01:08 +0000 (UTC)
IronPort-SDR: PJa5WtO06khkv7zU02/LO3wKZlV0Onz9dxmEQ3gekA2KdlHC5WQbGhKE+CBEBHjBNJfa8qeYjk
 mdvVaDOe1+IA==
X-IronPort-AV: E=McAfee;i="6200,9189,9987"; a="264440290"
X-IronPort-AV: E=Sophos;i="5.82,307,1613462400"; d="scan'208";a="264440290"
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
 by orsmga105.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 17 May 2021 11:01:07 -0700
IronPort-SDR: oIn1xSSmLwHwvSekTgYI1H1iZXlQS0voj4hHH13ak2Q3jdUfIBJUb8IKpLdrFeh5GgIfko/ePV
 wF3LBefBtzoA==
X-IronPort-AV: E=Sophos;i="5.82,307,1613462400"; d="scan'208";a="541361585"
Received: from ideak-desk.fi.intel.com ([10.237.68.141])
 by fmsmga001-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 17 May 2021 11:01:06 -0700
Date: Mon, 17 May 2021 21:01:02 +0300
From: Imre Deak <imre.deak@intel.com>
To: Matt Roper <matthew.d.roper@intel.com>
Message-ID: <20210517180102.GD1367033@ideak-desk.fi.intel.com>
References: <20210515031035.2561658-1-matthew.d.roper@intel.com>
 <20210515031035.2561658-8-matthew.d.roper@intel.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20210515031035.2561658-8-matthew.d.roper@intel.com>
Subject: Re: [Intel-gfx] [PATCH v4 07/23] drm/i915/adl_p: Setup ports/phys
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
Cc: intel-gfx@lists.freedesktop.org, Lucas De Marchi <lucas.demarchi@intel.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Fri, May 14, 2021 at 08:10:19PM -0700, Matt Roper wrote:
> From: Anusha Srivatsa <anusha.srivatsa@intel.com>
> 
> The SoC has 6 DDI ports(DDI A,DDI B and DDI TC1-4.
> The first two are connected to combo phys while
> the rest are connected to TC phys.
> 
> Cc: Matt Roper <matthew.d.roper@intel.com>
> Cc: Clinton Taylor <clinton.a.taylor@intel.com>
> Cc: Lucas De Marchi <lucas.demarchi@intel.com>
> Cc: Swathi Dhanavanthri <swathi.dhanavanthri@intel.com>
> Signed-off-by: Anusha Srivatsa <anusha.srivatsa@intel.com>
> Signed-off-by: Clinton Taylor <Clinton.A.Taylor@intel.com>
> Signed-off-by: Matt Roper <matthew.d.roper@intel.com>

Reviewed-by: Imre Deak <imre.deak@intel.com>

> ---
>  drivers/gpu/drm/i915/display/intel_display.c | 13 +++++++++++--
>  1 file changed, 11 insertions(+), 2 deletions(-)
> 
> diff --git a/drivers/gpu/drm/i915/display/intel_display.c b/drivers/gpu/drm/i915/display/intel_display.c
> index 2c2c5676dc30..f7b25a723f87 100644
> --- a/drivers/gpu/drm/i915/display/intel_display.c
> +++ b/drivers/gpu/drm/i915/display/intel_display.c
> @@ -3675,7 +3675,9 @@ bool intel_phy_is_combo(struct drm_i915_private *dev_priv, enum phy phy)
>  
>  bool intel_phy_is_tc(struct drm_i915_private *dev_priv, enum phy phy)
>  {
> -	if (IS_TIGERLAKE(dev_priv))
> +	if (IS_ALDERLAKE_P(dev_priv))
> +		return phy >= PHY_F && phy <= PHY_I;
> +	else if (IS_TIGERLAKE(dev_priv))
>  		return phy >= PHY_D && phy <= PHY_I;
>  	else if (IS_ICELAKE(dev_priv))
>  		return phy >= PHY_C && phy <= PHY_F;
> @@ -11253,7 +11255,14 @@ static void intel_setup_outputs(struct drm_i915_private *dev_priv)
>  	if (!HAS_DISPLAY(dev_priv))
>  		return;
>  
> -	if (IS_ALDERLAKE_S(dev_priv)) {
> +	if (IS_ALDERLAKE_P(dev_priv)) {
> +		intel_ddi_init(dev_priv, PORT_A);
> +		intel_ddi_init(dev_priv, PORT_B);
> +		intel_ddi_init(dev_priv, PORT_TC1);
> +		intel_ddi_init(dev_priv, PORT_TC2);
> +		intel_ddi_init(dev_priv, PORT_TC3);
> +		intel_ddi_init(dev_priv, PORT_TC4);
> +	} else if (IS_ALDERLAKE_S(dev_priv)) {
>  		intel_ddi_init(dev_priv, PORT_A);
>  		intel_ddi_init(dev_priv, PORT_TC1);
>  		intel_ddi_init(dev_priv, PORT_TC2);
> -- 
> 2.25.4
> 
> _______________________________________________
> Intel-gfx mailing list
> Intel-gfx@lists.freedesktop.org
> https://lists.freedesktop.org/mailman/listinfo/intel-gfx
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
