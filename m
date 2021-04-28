Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id B8C0C36D2FA
	for <lists+intel-gfx@lfdr.de>; Wed, 28 Apr 2021 09:20:35 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 3C3B76EAA6;
	Wed, 28 Apr 2021 07:20:33 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga05.intel.com (mga05.intel.com [192.55.52.43])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 615EC6EAA6
 for <intel-gfx@lists.freedesktop.org>; Wed, 28 Apr 2021 07:20:31 +0000 (UTC)
IronPort-SDR: yNWmFDmPN8BwZ87eVJ/wdddS8gU+lOhR0870LtwjOzxee3uKyEGlg2jJmTCYKkXgPKNKkM8FC1
 TOOOAPK9YRHg==
X-IronPort-AV: E=McAfee;i="6200,9189,9967"; a="282013908"
X-IronPort-AV: E=Sophos;i="5.82,257,1613462400"; d="scan'208";a="282013908"
Received: from orsmga008.jf.intel.com ([10.7.209.65])
 by fmsmga105.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 28 Apr 2021 00:20:30 -0700
IronPort-SDR: 7vCHJnilPwijioKz8DBM7MDOaWlxMCdl0e29DeVAoASu+eSI5bJvHl77w5aNdI9rzIaCKMje+a
 zYykyAVbRrzw==
X-IronPort-AV: E=Sophos;i="5.82,257,1613462400"; d="scan'208";a="430166519"
Received: from ajalsove-mobl2.ger.corp.intel.com (HELO localhost)
 ([10.252.39.247])
 by orsmga008-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 28 Apr 2021 00:20:28 -0700
From: Jani Nikula <jani.nikula@linux.intel.com>
To: Lucas De Marchi <lucas.demarchi@intel.com>, intel-gfx@lists.freedesktop.org
In-Reply-To: <20210428061808.2848432-1-lucas.demarchi@intel.com>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
References: <20210427230756.2847495-5-lucas.demarchi@intel.com>
 <20210428061808.2848432-1-lucas.demarchi@intel.com>
Date: Wed, 28 Apr 2021 10:20:25 +0300
Message-ID: <87fsza50zq.fsf@intel.com>
MIME-Version: 1.0
Subject: Re: [Intel-gfx] [PATCH] drm/i915/display: hide workaround for
 broken vbt in intel_bios.c
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Tue, 27 Apr 2021, Lucas De Marchi <lucas.demarchi@intel.com> wrote:
> Instead of poluting the normal code path in intel_display.c, make
> intel_bios.c handle the brokenness of the VBT.
>
> Signed-off-by: Lucas De Marchi <lucas.demarchi@intel.com>
> ---
>  drivers/gpu/drm/i915/display/intel_bios.c    | 15 +++++++++++++++
>  drivers/gpu/drm/i915/display/intel_display.c | 14 ++------------
>  2 files changed, 17 insertions(+), 12 deletions(-)
>
> diff --git a/drivers/gpu/drm/i915/display/intel_bios.c b/drivers/gpu/drm/i915/display/intel_bios.c
> index befab891a6b9..e9f828452412 100644
> --- a/drivers/gpu/drm/i915/display/intel_bios.c
> +++ b/drivers/gpu/drm/i915/display/intel_bios.c
> @@ -1852,6 +1852,14 @@ intel_bios_encoder_supports_edp(const struct intel_bios_encoder_data *devdata)
>  		devdata->child.device_type & DEVICE_TYPE_INTERNAL_CONNECTOR;
>  }
>  
> +static bool skip_broken_vbt(struct drm_i915_private *i915, enum port port)

The idea of the patch seems good to me, but I'll nitpick on the naming.

I suggest calling this positively is_port_valid() or something like
that.

With that,

Reviewed-by: Jani Nikula <jani.nikula@intel.com>

> +{
> +	if (port == PORT_F && (IS_ICELAKE(i915) || IS_CANNONLAKE(i915)))
> +		return !IS_ICL_WITH_PORT_F(i915) && !IS_CNL_WITH_PORT_F(i915);
> +
> +	return false;
> +}
> +
>  static void parse_ddi_port(struct drm_i915_private *i915,
>  			   struct intel_bios_encoder_data *devdata)
>  {
> @@ -1865,6 +1873,13 @@ static void parse_ddi_port(struct drm_i915_private *i915,
>  	if (port == PORT_NONE)
>  		return;
>  
> +	if (skip_broken_vbt(i915, port)) {
> +		drm_dbg_kms(&i915->drm,
> +			    "VBT reports port %c as supported, but that can't be true: skipping\n",
> +			    port_name(port));
> +		return;
> +	}
> +
>  	info = &i915->vbt.ddi_port_info[port];
>  
>  	if (info->devdata) {
> diff --git a/drivers/gpu/drm/i915/display/intel_display.c b/drivers/gpu/drm/i915/display/intel_display.c
> index 55f8f2ceada2..87a85de5e03d 100644
> --- a/drivers/gpu/drm/i915/display/intel_display.c
> +++ b/drivers/gpu/drm/i915/display/intel_display.c
> @@ -10868,15 +10868,7 @@ static void intel_setup_outputs(struct drm_i915_private *dev_priv)
>  		intel_ddi_init(dev_priv, PORT_C);
>  		intel_ddi_init(dev_priv, PORT_D);
>  		intel_ddi_init(dev_priv, PORT_E);
> -
> -		/*
> -		 * On some ICL SKUs port F is not present, but broken VBTs mark
> -		 * the port as present. Only try to initialize port F for the
> -		 * SKUs that may actually have it.
> -		 */
> -		if (IS_ICL_WITH_PORT_F(dev_priv))
> -			intel_ddi_init(dev_priv, PORT_F);
> -
> +		intel_ddi_init(dev_priv, PORT_F);
>  		icl_dsi_init(dev_priv);
>  	} else if (IS_GEMINILAKE(dev_priv) || IS_BROXTON(dev_priv)) {
>  		intel_ddi_init(dev_priv, PORT_A);
> @@ -10889,9 +10881,7 @@ static void intel_setup_outputs(struct drm_i915_private *dev_priv)
>  		intel_ddi_init(dev_priv, PORT_C);
>  		intel_ddi_init(dev_priv, PORT_D);
>  		intel_ddi_init(dev_priv, PORT_E);
> -
> -		if (IS_CNL_WITH_PORT_F(dev_priv))
> -			intel_ddi_init(dev_priv, PORT_F);
> +		intel_ddi_init(dev_priv, PORT_F);
>  	} else if (HAS_DDI(dev_priv)) {
>  		u32 found;

-- 
Jani Nikula, Intel Open Source Graphics Center
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
