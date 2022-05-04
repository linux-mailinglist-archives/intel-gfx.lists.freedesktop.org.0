Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id CC56C51A2A0
	for <lists+intel-gfx@lfdr.de>; Wed,  4 May 2022 16:52:51 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 1FE4110F94E;
	Wed,  4 May 2022 14:52:49 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 715AF10F94E
 for <intel-gfx@lists.freedesktop.org>; Wed,  4 May 2022 14:52:48 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1651675968; x=1683211968;
 h=date:from:to:cc:subject:message-id:reply-to:references:
 mime-version:in-reply-to;
 bh=8QEmSF8A41zd3TtW3TgXioW9zCjCld0DCinLAEmT7o0=;
 b=XgddobBOjglAm1FRnEEbyd1kmI8w9DL16brRKQZ5+nnWLq6kHkr6lgPz
 JyUlA6+N9pmkyyY6XKfXR9GwMKB1pylGtMOSzul7OLOU7+XNx9ILYIok9
 7C3OvzGRjrHGe/RfpOyGop2qRMEZ8ozEvLy8bmjA3RlCYnH2gnyttgja4
 lpX8hVasdhGJBRjoa20WrUjJAkYlwd6puDLhcebfoBRoSG44g9vvMJVBS
 AKqexeSZBdX60B+6hfbd77I3NlOPqSQvrn/G8Wun5VXu7ObTPSAdbYHcL
 e+MGdpx5j+Yesc1s5u4beARzQxclnDzvptdqWKfLZqIOAD8H3TRMMji+z w==;
X-IronPort-AV: E=McAfee;i="6400,9594,10337"; a="267384545"
X-IronPort-AV: E=Sophos;i="5.91,198,1647327600"; d="scan'208";a="267384545"
Received: from orsmga008.jf.intel.com ([10.7.209.65])
 by orsmga102.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 04 May 2022 07:52:47 -0700
X-IronPort-AV: E=Sophos;i="5.91,198,1647327600"; d="scan'208";a="584772745"
Received: from ideak-desk.fi.intel.com ([10.237.72.175])
 by orsmga008-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 04 May 2022 07:52:46 -0700
Date: Wed, 4 May 2022 17:52:42 +0300
From: Imre Deak <imre.deak@intel.com>
To: Anusha Srivatsa <anusha.srivatsa@intel.com>
Message-ID: <YnKTOsrgtzKuk+mD@ideak-desk.fi.intel.com>
References: <20220503235729.617954-1-anusha.srivatsa@intel.com>
 <20220503235729.617954-2-anusha.srivatsa@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20220503235729.617954-2-anusha.srivatsa@intel.com>
Subject: Re: [Intel-gfx] [PATCH 1/1] drm/i915/dmc: Load DMC on DG2
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
Cc: intel-gfx@lists.freedesktop.org, Rodrigo Vivi <rodrigo.vivi@intel.com>
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Tue, May 03, 2022 at 04:57:29PM -0700, Anusha Srivatsa wrote:
> Add Support for DC states on Dg2.
> 
> v2: Add dc9 as the max supported DC states and disable DC5.
> 
> Cc: Rodrigo Vivi <rodrigo.vivi@intel.com>
> Signed-off-by: Anusha Srivatsa <anusha.srivatsa@intel.com>
> Reviewed-by: Rodrigo Vivi <rodrigo.vivi@intel.com>(v1)
> ---
>  drivers/gpu/drm/i915/display/intel_display_power.c |  4 +++-
>  drivers/gpu/drm/i915/display/intel_dmc.c           | 10 +++++++++-
>  2 files changed, 12 insertions(+), 2 deletions(-)
> 
> diff --git a/drivers/gpu/drm/i915/display/intel_display_power.c b/drivers/gpu/drm/i915/display/intel_display_power.c
> index 1d9bd5808849..022d63cf68dd 100644
> --- a/drivers/gpu/drm/i915/display/intel_display_power.c
> +++ b/drivers/gpu/drm/i915/display/intel_display_power.c
> @@ -907,7 +907,9 @@ static u32 get_allowed_dc_mask(const struct drm_i915_private *dev_priv,
>  	if (!HAS_DISPLAY(dev_priv))
>  		return 0;
>  
> -	if (IS_DG1(dev_priv))
> +	if (IS_DG2(dev_priv))
> +		max_dc = DC_STATE_EN_DC9;

This needs to stay at 0 to disable DC5, while DC9 will be enabled later
in the function.

> +	else if (IS_DG1(dev_priv))
>  		max_dc = 3;
>  	else if (DISPLAY_VER(dev_priv) >= 12)
>  		max_dc = 4;
> diff --git a/drivers/gpu/drm/i915/display/intel_dmc.c b/drivers/gpu/drm/i915/display/intel_dmc.c
> index 257cf662f9f4..2f01aca4d981 100644
> --- a/drivers/gpu/drm/i915/display/intel_dmc.c
> +++ b/drivers/gpu/drm/i915/display/intel_dmc.c
> @@ -52,6 +52,10 @@
>  
>  #define DISPLAY_VER12_DMC_MAX_FW_SIZE	ICL_DMC_MAX_FW_SIZE
>  
> +#define DG2_DMC_PATH			DMC_PATH(dg2, 2, 06)
> +#define DG2_DMC_VERSION_REQUIRED	DMC_VERSION(2, 06)
> +MODULE_FIRMWARE(DG2_DMC_PATH);
> +
>  #define ADLP_DMC_PATH			DMC_PATH(adlp, 2, 16)
>  #define ADLP_DMC_VERSION_REQUIRED	DMC_VERSION(2, 16)
>  MODULE_FIRMWARE(ADLP_DMC_PATH);
> @@ -688,7 +692,11 @@ void intel_dmc_ucode_init(struct drm_i915_private *dev_priv)
>  	 */
>  	intel_dmc_runtime_pm_get(dev_priv);
>  
> -	if (IS_ALDERLAKE_P(dev_priv)) {
> +	if (IS_DG2(dev_priv)) {
> +		dmc->fw_path = DG2_DMC_PATH;
> +		dmc->required_version = DG2_DMC_VERSION_REQUIRED;
> +		dmc->max_fw_size = DISPLAY_VER13_DMC_MAX_FW_SIZE;
> +	} else if (IS_ALDERLAKE_P(dev_priv)) {
>  		dmc->fw_path = ADLP_DMC_PATH;
>  		dmc->required_version = ADLP_DMC_VERSION_REQUIRED;
>  		dmc->max_fw_size = DISPLAY_VER13_DMC_MAX_FW_SIZE;
> -- 
> 2.25.1
> 
