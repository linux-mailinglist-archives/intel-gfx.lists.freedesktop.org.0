Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 8AD822A7CCF
	for <lists+intel-gfx@lfdr.de>; Thu,  5 Nov 2020 12:20:28 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 97F166E209;
	Thu,  5 Nov 2020 11:20:26 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga04.intel.com (mga04.intel.com [192.55.52.120])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 0F2BE6E209
 for <intel-gfx@lists.freedesktop.org>; Thu,  5 Nov 2020 11:20:26 +0000 (UTC)
IronPort-SDR: ftrYd/pVEJhfUIf+oEFE7EOmMImNG3QO/JHRISH883uXE0LxROc+D8aOpceI/WYJQVZd6wQCG3
 zYWOAvK0m72Q==
X-IronPort-AV: E=McAfee;i="6000,8403,9795"; a="166774999"
X-IronPort-AV: E=Sophos;i="5.77,453,1596524400"; d="scan'208";a="166774999"
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga004.fm.intel.com ([10.253.24.48])
 by fmsmga104.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 05 Nov 2020 03:20:24 -0800
IronPort-SDR: CHTd6ne9pPMVU/3Pc8996tnAojXc4mZNbyFE1igmNfcgeqvqIdkWboDIT4VW6LItu0k9707f6E
 sZa/qlGJwqDg==
X-IronPort-AV: E=Sophos;i="5.77,453,1596524400"; d="scan'208";a="354241450"
Received: from unknown (HELO intel.com) ([10.237.72.91])
 by fmsmga004-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 05 Nov 2020 03:20:23 -0800
Date: Thu, 5 Nov 2020 13:20:18 +0200
From: "Lisovskiy, Stanislav" <stanislav.lisovskiy@intel.com>
To: Ville Syrjala <ville.syrjala@linux.intel.com>
Message-ID: <20201105112018.GA27558@intel.com>
References: <20201027203955.28032-1-ville.syrjala@linux.intel.com>
 <20201027203955.28032-4-ville.syrjala@linux.intel.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20201027203955.28032-4-ville.syrjala@linux.intel.com>
User-Agent: Mutt/1.9.4 (2018-02-28)
Subject: Re: [Intel-gfx] [PATCH 3/8] drm/i915: Introduce
 intel_dbuf_slice_size()
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

On Tue, Oct 27, 2020 at 10:39:50PM +0200, Ville Syrjala wrote:
> From: Ville Syrj=E4l=E4 <ville.syrjala@linux.intel.com>
> =

> Put the code into a function with a descriptive name. Also relocate
> the code a bit help future work.
> =

> Cc: Stanislav Lisovskiy <stanislav.lisovskiy@intel.com>
> Signed-off-by: Ville Syrj=E4l=E4 <ville.syrjala@linux.intel.com>

Reviewed-by: Stanislav Lisovskiy <stanislav.lisovskiy@intel.com>

> ---
>  drivers/gpu/drm/i915/intel_pm.c | 36 +++++++++++++++++++--------------
>  drivers/gpu/drm/i915/intel_pm.h |  1 -
>  2 files changed, 21 insertions(+), 16 deletions(-)
> =

> diff --git a/drivers/gpu/drm/i915/intel_pm.c b/drivers/gpu/drm/i915/intel=
_pm.c
> index 260d3cf24db3..8083785237ba 100644
> --- a/drivers/gpu/drm/i915/intel_pm.c
> +++ b/drivers/gpu/drm/i915/intel_pm.c
> @@ -4024,6 +4024,24 @@ static int intel_compute_sagv_mask(struct intel_at=
omic_state *state)
>  	return 0;
>  }
>  =

> +static int intel_dbuf_size(struct drm_i915_private *dev_priv)
> +{
> +	int ddb_size =3D INTEL_INFO(dev_priv)->ddb_size;
> +
> +	drm_WARN_ON(&dev_priv->drm, ddb_size =3D=3D 0);
> +
> +	if (INTEL_GEN(dev_priv) < 11)
> +		return ddb_size - 4; /* 4 blocks for bypass path allocation */
> +
> +	return ddb_size;
> +}
> +
> +static int intel_dbuf_slice_size(struct drm_i915_private *dev_priv)
> +{
> +	return intel_dbuf_size(dev_priv) /
> +		INTEL_INFO(dev_priv)->num_supported_dbuf_slices;
> +}
> +
>  /*
>   * Calculate initial DBuf slice offset, based on slice size
>   * and mask(i.e if slice size is 1024 and second slice is enabled
> @@ -4045,22 +4063,11 @@ icl_get_first_dbuf_slice_offset(u32 dbuf_slice_ma=
sk,
>  	return offset;
>  }
>  =

> -u16 intel_get_ddb_size(struct drm_i915_private *dev_priv)
> -{
> -	u16 ddb_size =3D INTEL_INFO(dev_priv)->ddb_size;
> -	drm_WARN_ON(&dev_priv->drm, ddb_size =3D=3D 0);
> -
> -	if (INTEL_GEN(dev_priv) < 11)
> -		return ddb_size - 4; /* 4 blocks for bypass path allocation */
> -
> -	return ddb_size;
> -}
> -
>  u32 skl_ddb_dbuf_slice_mask(struct drm_i915_private *dev_priv,
>  			    const struct skl_ddb_entry *entry)
>  {
>  	u32 slice_mask =3D 0;
> -	u16 ddb_size =3D intel_get_ddb_size(dev_priv);
> +	u16 ddb_size =3D intel_dbuf_size(dev_priv);
>  	u16 num_supported_slices =3D INTEL_INFO(dev_priv)->num_supported_dbuf_s=
lices;
>  	u16 slice_size =3D ddb_size / num_supported_slices;
>  	u16 start_slice;
> @@ -4142,9 +4149,8 @@ skl_ddb_get_pipe_allocation_limits(struct drm_i915_=
private *dev_priv,
>  		return 0;
>  	}
>  =

> -	ddb_size =3D intel_get_ddb_size(dev_priv);
> -
> -	slice_size =3D ddb_size / INTEL_INFO(dev_priv)->num_supported_dbuf_slic=
es;
> +	ddb_size =3D intel_dbuf_size(dev_priv);
> +	slice_size =3D intel_dbuf_slice_size(dev_priv);
>  =

>  	/*
>  	 * If the state doesn't change the active CRTC's or there is no
> diff --git a/drivers/gpu/drm/i915/intel_pm.h b/drivers/gpu/drm/i915/intel=
_pm.h
> index eab83e251dd5..00910bc01407 100644
> --- a/drivers/gpu/drm/i915/intel_pm.h
> +++ b/drivers/gpu/drm/i915/intel_pm.h
> @@ -40,7 +40,6 @@ void skl_pipe_ddb_get_hw_state(struct intel_crtc *crtc,
>  			       struct skl_ddb_entry *ddb_y,
>  			       struct skl_ddb_entry *ddb_uv);
>  void skl_ddb_get_hw_state(struct drm_i915_private *dev_priv);
> -u16 intel_get_ddb_size(struct drm_i915_private *dev_priv);
>  u32 skl_ddb_dbuf_slice_mask(struct drm_i915_private *dev_priv,
>  			    const struct skl_ddb_entry *entry);
>  void skl_pipe_wm_get_hw_state(struct intel_crtc *crtc,
> -- =

> 2.26.2
> =

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
