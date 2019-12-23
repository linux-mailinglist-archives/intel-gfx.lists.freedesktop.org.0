Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 70308129BBD
	for <lists+intel-gfx@lfdr.de>; Tue, 24 Dec 2019 00:15:10 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id B88BD89E2B;
	Mon, 23 Dec 2019 23:15:08 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga04.intel.com (mga04.intel.com [192.55.52.120])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 31D9089E2B
 for <intel-gfx@lists.freedesktop.org>; Mon, 23 Dec 2019 23:15:07 +0000 (UTC)
X-Amp-Result: UNKNOWN
X-Amp-Original-Verdict: FILE UNKNOWN
X-Amp-File-Uploaded: False
Received: from fmsmga007.fm.intel.com ([10.253.24.52])
 by fmsmga104.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 23 Dec 2019 15:15:06 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.69,349,1571727600"; d="scan'208";a="214024018"
Received: from mdroper-desk1.fm.intel.com (HELO
 mdroper-desk1.amr.corp.intel.com) ([10.1.27.64])
 by fmsmga007.fm.intel.com with ESMTP; 23 Dec 2019 15:15:06 -0800
Date: Mon, 23 Dec 2019 15:15:06 -0800
From: Matt Roper <matthew.d.roper@intel.com>
To: Lucas De Marchi <lucas.demarchi@intel.com>
Message-ID: <20191223231506.GQ2877816@mdroper-desk1.amr.corp.intel.com>
References: <20191223173244.30742-1-lucas.demarchi@intel.com>
 <20191223173244.30742-9-lucas.demarchi@intel.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20191223173244.30742-9-lucas.demarchi@intel.com>
User-Agent: Mutt/1.12.1 (2019-06-15)
Subject: Re: [Intel-gfx] [PATCH v3 08/10] drm/i915: prefer 3-letter acronym
 for broadwell
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
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Mon, Dec 23, 2019 at 09:32:42AM -0800, Lucas De Marchi wrote:
> We are currently using a mix of platform name and acronym to name the
> functions. Let's prefer the acronym as it should be clear what platform
> it's about and it's shorter, so it doesn't go over 80 columns in a few
> cases. This converts broadwell to bdw where appropriate.
> =

> Signed-off-by: Lucas De Marchi <lucas.demarchi@intel.com>
> Acked-by: Jani Nikula <jani.nikula@linux.intel.com>
> Acked-by: Ville Syrj=E4l=E4 <ville.syrjala@linux.intel.com>

Reviewed-by: Matt Roper <matthew.d.roper@intel.com>

> ---
>  drivers/gpu/drm/i915/display/intel_fifo_underrun.c | 6 +++---
>  drivers/gpu/drm/i915/gt/intel_workarounds.c        | 2 +-
>  drivers/gpu/drm/i915/gvt/handlers.c                | 8 ++++----
>  drivers/gpu/drm/i915/i915_debugfs.c                | 6 +++---
>  drivers/gpu/drm/i915/intel_device_info.c           | 4 ++--
>  5 files changed, 13 insertions(+), 13 deletions(-)
> =

> diff --git a/drivers/gpu/drm/i915/display/intel_fifo_underrun.c b/drivers=
/gpu/drm/i915/display/intel_fifo_underrun.c
> index d6e0d0be842e..1f80f275f3f2 100644
> --- a/drivers/gpu/drm/i915/display/intel_fifo_underrun.c
> +++ b/drivers/gpu/drm/i915/display/intel_fifo_underrun.c
> @@ -180,8 +180,8 @@ static void ivybridge_set_fifo_underrun_reporting(str=
uct drm_device *dev,
>  	}
>  }
>  =

> -static void broadwell_set_fifo_underrun_reporting(struct drm_device *dev,
> -						  enum pipe pipe, bool enable)
> +static void bdw_set_fifo_underrun_reporting(struct drm_device *dev,
> +					    enum pipe pipe, bool enable)
>  {
>  	struct drm_i915_private *dev_priv =3D to_i915(dev);
>  =

> @@ -268,7 +268,7 @@ static bool __intel_set_cpu_fifo_underrun_reporting(s=
truct drm_device *dev,
>  	else if (IS_GEN(dev_priv, 7))
>  		ivybridge_set_fifo_underrun_reporting(dev, pipe, enable, old);
>  	else if (INTEL_GEN(dev_priv) >=3D 8)
> -		broadwell_set_fifo_underrun_reporting(dev, pipe, enable);
> +		bdw_set_fifo_underrun_reporting(dev, pipe, enable);
>  =

>  	return old;
>  }
> diff --git a/drivers/gpu/drm/i915/gt/intel_workarounds.c b/drivers/gpu/dr=
m/i915/gt/intel_workarounds.c
> index 195ccf7db272..4e292d4bf7b9 100644
> --- a/drivers/gpu/drm/i915/gt/intel_workarounds.c
> +++ b/drivers/gpu/drm/i915/gt/intel_workarounds.c
> @@ -254,7 +254,7 @@ static void bdw_ctx_workarounds_init(struct intel_eng=
ine_cs *engine,
>  =

>  	/* WaDisableDopClockGating:bdw
>  	 *
> -	 * Also see the related UCGTCL1 write in broadwell_init_clock_gating()
> +	 * Also see the related UCGTCL1 write in bdw_init_clock_gating()
>  	 * to disable EUTC clock gating.
>  	 */
>  	WA_SET_BIT_MASKED(GEN7_ROW_CHICKEN2,
> diff --git a/drivers/gpu/drm/i915/gvt/handlers.c b/drivers/gpu/drm/i915/g=
vt/handlers.c
> index 1043e6d564df..6d28d72e6c7e 100644
> --- a/drivers/gpu/drm/i915/gvt/handlers.c
> +++ b/drivers/gpu/drm/i915/gvt/handlers.c
> @@ -2691,7 +2691,7 @@ static int init_generic_mmio_info(struct intel_gvt =
*gvt)
>  	return 0;
>  }
>  =

> -static int init_broadwell_mmio_info(struct intel_gvt *gvt)
> +static int init_bdw_mmio_info(struct intel_gvt *gvt)
>  {
>  	struct drm_i915_private *dev_priv =3D gvt->dev_priv;
>  	int ret;
> @@ -3380,20 +3380,20 @@ int intel_gvt_setup_mmio_info(struct intel_gvt *g=
vt)
>  		goto err;
>  =

>  	if (IS_BROADWELL(dev_priv)) {
> -		ret =3D init_broadwell_mmio_info(gvt);
> +		ret =3D init_bdw_mmio_info(gvt);
>  		if (ret)
>  			goto err;
>  	} else if (IS_SKYLAKE(dev_priv)
>  		|| IS_KABYLAKE(dev_priv)
>  		|| IS_COFFEELAKE(dev_priv)) {
> -		ret =3D init_broadwell_mmio_info(gvt);
> +		ret =3D init_bdw_mmio_info(gvt);
>  		if (ret)
>  			goto err;
>  		ret =3D init_skl_mmio_info(gvt);
>  		if (ret)
>  			goto err;
>  	} else if (IS_BROXTON(dev_priv)) {
> -		ret =3D init_broadwell_mmio_info(gvt);
> +		ret =3D init_bdw_mmio_info(gvt);
>  		if (ret)
>  			goto err;
>  		ret =3D init_skl_mmio_info(gvt);
> diff --git a/drivers/gpu/drm/i915/i915_debugfs.c b/drivers/gpu/drm/i915/i=
915_debugfs.c
> index 0407229251bc..cb34e8c31511 100644
> --- a/drivers/gpu/drm/i915/i915_debugfs.c
> +++ b/drivers/gpu/drm/i915/i915_debugfs.c
> @@ -3815,8 +3815,8 @@ static void gen9_sseu_device_status(struct drm_i915=
_private *dev_priv,
>  #undef SS_MAX
>  }
>  =

> -static void broadwell_sseu_device_status(struct drm_i915_private *dev_pr=
iv,
> -					 struct sseu_dev_info *sseu)
> +static void bdw_sseu_device_status(struct drm_i915_private *dev_priv,
> +				   struct sseu_dev_info *sseu)
>  {
>  	const struct intel_runtime_info *info =3D RUNTIME_INFO(dev_priv);
>  	u32 slice_info =3D I915_READ(GEN8_GT_SLICE_INFO);
> @@ -3901,7 +3901,7 @@ static int i915_sseu_status(struct seq_file *m, voi=
d *unused)
>  		if (IS_CHERRYVIEW(dev_priv))
>  			cherryview_sseu_device_status(dev_priv, &sseu);
>  		else if (IS_BROADWELL(dev_priv))
> -			broadwell_sseu_device_status(dev_priv, &sseu);
> +			bdw_sseu_device_status(dev_priv, &sseu);
>  		else if (IS_GEN(dev_priv, 9))
>  			gen9_sseu_device_status(dev_priv, &sseu);
>  		else if (INTEL_GEN(dev_priv) >=3D 10)
> diff --git a/drivers/gpu/drm/i915/intel_device_info.c b/drivers/gpu/drm/i=
915/intel_device_info.c
> index ca7a42e1d769..d87c31444fa8 100644
> --- a/drivers/gpu/drm/i915/intel_device_info.c
> +++ b/drivers/gpu/drm/i915/intel_device_info.c
> @@ -519,7 +519,7 @@ static void gen9_sseu_info_init(struct drm_i915_priva=
te *dev_priv)
>  	}
>  }
>  =

> -static void broadwell_sseu_info_init(struct drm_i915_private *dev_priv)
> +static void bdw_sseu_info_init(struct drm_i915_private *dev_priv)
>  {
>  	struct sseu_dev_info *sseu =3D &RUNTIME_INFO(dev_priv)->sseu;
>  	int s, ss;
> @@ -1025,7 +1025,7 @@ void intel_device_info_runtime_init(struct drm_i915=
_private *dev_priv)
>  	else if (IS_CHERRYVIEW(dev_priv))
>  		cherryview_sseu_info_init(dev_priv);
>  	else if (IS_BROADWELL(dev_priv))
> -		broadwell_sseu_info_init(dev_priv);
> +		bdw_sseu_info_init(dev_priv);
>  	else if (IS_GEN(dev_priv, 9))
>  		gen9_sseu_info_init(dev_priv);
>  	else if (IS_GEN(dev_priv, 10))
> -- =

> 2.24.0
> =

> _______________________________________________
> Intel-gfx mailing list
> Intel-gfx@lists.freedesktop.org
> https://lists.freedesktop.org/mailman/listinfo/intel-gfx

-- =

Matt Roper
Graphics Software Engineer
VTT-OSGC Platform Enablement
Intel Corporation
(916) 356-2795
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
