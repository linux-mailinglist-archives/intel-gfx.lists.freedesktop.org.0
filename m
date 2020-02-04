Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id C59E5151C4F
	for <lists+intel-gfx@lfdr.de>; Tue,  4 Feb 2020 15:35:26 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 0AA9E6E83E;
	Tue,  4 Feb 2020 14:35:25 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga18.intel.com (mga18.intel.com [134.134.136.126])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 6BBF86E83E
 for <intel-gfx@lists.freedesktop.org>; Tue,  4 Feb 2020 14:35:23 +0000 (UTC)
X-Amp-Result: UNSCANNABLE
X-Amp-File-Uploaded: False
Received: from fmsmga003.fm.intel.com ([10.253.24.29])
 by orsmga106.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 04 Feb 2020 06:35:22 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.70,402,1574150400"; d="scan'208";a="279073829"
Received: from stinkbox.fi.intel.com (HELO stinkbox) ([10.237.72.174])
 by FMSMGA003.fm.intel.com with SMTP; 04 Feb 2020 06:35:20 -0800
Received: by stinkbox (sSMTP sendmail emulation);
 Tue, 04 Feb 2020 16:35:19 +0200
Date: Tue, 4 Feb 2020 16:35:19 +0200
From: Ville =?iso-8859-1?Q?Syrj=E4l=E4?= <ville.syrjala@linux.intel.com>
To: Anshuman Gupta <anshuman.gupta@intel.com>
Message-ID: <20200204143519.GP13686@intel.com>
References: <20200204112927.17391-1-anshuman.gupta@intel.com>
 <20200204112927.17391-8-anshuman.gupta@intel.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200204112927.17391-8-anshuman.gupta@intel.com>
X-Patchwork-Hint: comment
User-Agent: Mutt/1.10.1 (2018-07-13)
Subject: Re: [Intel-gfx] [PATCH 7/7] drm/i915: Enable 3 display pipes support
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

On Tue, Feb 04, 2020 at 04:59:27PM +0530, Anshuman Gupta wrote:
> Allow 3-display pipes SKU system with any combination
> in INTEL_INFO pipe mask.
> B.Spec:50075
> =

> changes since RFC:
> - using intel_pipe_mask_is_valid() function to check integrity of
>   pipe_mask. [Ville]
> =

> Cc: Ville Syrj=E4l=E4 <ville.syrjala@linux.intel.com>
> Signed-off-by: Anshuman Gupta <anshuman.gupta@intel.com>
> ---
>  drivers/gpu/drm/i915/intel_device_info.c | 38 +++++++++++++++++-------
>  1 file changed, 28 insertions(+), 10 deletions(-)
> =

> diff --git a/drivers/gpu/drm/i915/intel_device_info.c b/drivers/gpu/drm/i=
915/intel_device_info.c
> index fcdacd6d4aa5..caf93a68a056 100644
> --- a/drivers/gpu/drm/i915/intel_device_info.c
> +++ b/drivers/gpu/drm/i915/intel_device_info.c
> @@ -896,6 +896,30 @@ void intel_device_info_subplatform_init(struct drm_i=
915_private *i915)
>  	RUNTIME_INFO(i915)->platform_mask[pi] |=3D mask;
>  }
>  =

> +static bool
> +intel_pipe_mask_is_valid(struct drm_i915_private *dev_priv, u8 pipe_mask)
> +{
> +	/*
> +	 * At least one pipe should be enabled.
> +	 */
> +	if (pipe_mask =3D=3D 0)
> +		return false;

Doesn't that just mean the entire display engine is fused off?

> +	/*
> +	 * if there are disabled pipes they should be the last ones,
> +	 * with no holses in the mask for Dispaly Gen<=3D12.

"holes"

> +	 */
> +	if (!is_power_of_2(pipe_mask + 1)) {
> +		if (INTEL_GEN(dev_priv) <=3D 11)
> +			return false;
> +		else if (IS_TIGERLAKE(dev_priv))
> +			return false;
> +		else if (IS_GEN(dev_priv, 12))
> +			return true;

Why is tgl and rest of gen12 treated differently? I thought this
flexible fusing thing was next-gen stuff.

The structure of this function is a bit wonky. Simpler:

intel_pipe_mask_is_valid()
{
	if (is_whatever_supports_holes)
		return true;

	return is_power_of_2();
}


> +	}
> +
> +	return true;
> +}
> +
>  /**
>   * intel_device_info_runtime_init - initialize runtime info
>   * @dev_priv: the i915 device
> @@ -995,17 +1019,11 @@ void intel_device_info_runtime_init(struct drm_i91=
5_private *dev_priv)
>  		    (dfsm & TGL_DFSM_PIPE_D_DISABLE))
>  			enabled_mask &=3D ~BIT(PIPE_D);
>  =

> -		/*
> -		 * At least one pipe should be enabled and if there are
> -		 * disabled pipes, they should be the last ones, with no holes
> -		 * in the mask.
> -		 */
> -		if (enabled_mask =3D=3D 0 || !is_power_of_2(enabled_mask + 1))
> -			drm_err(&dev_priv->drm,
> -				"invalid pipe fuse configuration: enabled_mask=3D0x%x\n",
> -				enabled_mask);
> -		else
> +		if (intel_pipe_mask_is_valid(dev_priv, enabled_mask))
>  			info->pipe_mask =3D enabled_mask;
> +		else
> +			drm_err(&dev_priv->drm, "invalid pipe fuse configuration: enabled_mas=
k=3D0x%x\n",
> +				enabled_mask);
>  =

>  		if (dfsm & SKL_DFSM_DISPLAY_HDCP_DISABLE)
>  			info->display.has_hdcp =3D 0;
> -- =

> 2.24.0

-- =

Ville Syrj=E4l=E4
Intel
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
