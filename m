Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id EC7B3A71D02
	for <lists+intel-gfx@lfdr.de>; Wed, 26 Mar 2025 18:22:24 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 7832910E76A;
	Wed, 26 Mar 2025 17:22:23 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="D3OVd7vd";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.19])
 by gabe.freedesktop.org (Postfix) with ESMTPS id E5A2710E76A;
 Wed, 26 Mar 2025 17:22:21 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1743009742; x=1774545742;
 h=date:from:to:cc:subject:message-id:references:
 mime-version:content-transfer-encoding:in-reply-to;
 bh=2Ad/MUJ3WD5KfIa6gpEoXLwXAEaertSqIsseRWaipKQ=;
 b=D3OVd7vd0Gi84/TMotWVl55CfGP3E+dRHaevgbydhAtx+iN3azQDcEDo
 fg3YYcI3p9Ijv1msalt/g9UL9OtSyDbXhnYULhBaEqJwllU32JkUMRzew
 VAJd0d/1jK65HYdBdSZwGlp65KSbry5f2YV8ayJNjl0zmrK3Ri4uhew+Q
 jEIC3MC30HFw10ykwlpHGvAEeMb1Y30heulLDy7NkyMdNyU6rTaa5rPvt
 MphGL6Rba7X097zDH0wLh5LTKospNqhVbNqffB72p8I6+RH1JSb1/D8hw
 ZdLA30KPtLOX5VOsCgRk/c0SvqMNtOE5BV29ib7fcfw1GtxpFjrdyMF6m A==;
X-CSE-ConnectionGUID: rybM1G93QiO/HmfizY66MA==
X-CSE-MsgGUID: kUGZumf9RyW607dVtG+ebw==
X-IronPort-AV: E=McAfee;i="6700,10204,11385"; a="44203309"
X-IronPort-AV: E=Sophos;i="6.14,278,1736841600"; d="scan'208";a="44203309"
Received: from orviesa005.jf.intel.com ([10.64.159.145])
 by orvoesa111.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 26 Mar 2025 10:22:18 -0700
X-CSE-ConnectionGUID: Gh1okrHVRaqidPZHdoHL2w==
X-CSE-MsgGUID: Nrwi3nSpSgCug36BE+lMCQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.14,278,1736841600"; d="scan'208";a="130036802"
Received: from stinkpipe.fi.intel.com (HELO stinkbox) ([10.237.72.74])
 by orviesa005.jf.intel.com with SMTP; 26 Mar 2025 10:22:15 -0700
Received: by stinkbox (sSMTP sendmail emulation);
 Wed, 26 Mar 2025 19:22:14 +0200
Date: Wed, 26 Mar 2025 19:22:14 +0200
From: Ville =?iso-8859-1?Q?Syrj=E4l=E4?= <ville.syrjala@linux.intel.com>
To: Arun R Murthy <arun.r.murthy@intel.com>
Cc: dri-devel@lists.freedesktop.org, intel-gfx@lists.freedesktop.org,
 intel-xe@lists.freedesktop.org, chaitanya.kumar.borah@intel.com,
 Naveen Kumar <naveen1.kumar@intel.com>
Subject: Re: [PATCH v9 1/3] drm/plane: Add new plane property IN_FORMATS_ASYNC
Message-ID: <Z-Q3xtSQeONrXjJn@intel.com>
References: <20250319-asyn-v9-0-629d1ece63e7@intel.com>
 <20250319-asyn-v9-1-629d1ece63e7@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=iso-8859-1
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <20250319-asyn-v9-1-629d1ece63e7@intel.com>
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

On Wed, Mar 19, 2025 at 04:02:15PM +0530, Arun R Murthy wrote:
> There exists a property IN_FORMATS which exposes the plane supported
> modifiers/formats to the user. In some platforms when asynchronous flip
> are used all of modifiers/formats mentioned in IN_FORMATS are not
> supported. This patch adds a new plane property IN_FORMATS_ASYNC to
> expose the async flip supported modifiers/formats so that user can use
> this information ahead and do flip with unsupported
> formats/modifiers. This will save flip failures.
> Add a new function pointer similar to format_mod_supported specifically
> for asynchronous flip.
> 
> v2: Remove async variable from drm_plane (Ville)
> v3: Add new function pointer for async (Ville)
> v5: Typo corrected in commit message & some correction in the kernel
> documentation. (Chaitanya)
> v7: Place IN_FORMATS_ASYNC next to IN_FORMATS (Ville)
> v8: replace uint32_t with u32 and uint64_t with u64 (Chaitanya)
> 
> Signed-off-by: Arun R Murthy <arun.r.murthy@intel.com>
> Reviewed-by: Chaitanya Kumar Borah <chaitanya.kumar.borah@intel.com>
> Tested-by: Naveen Kumar <naveen1.kumar@intel.com>

Reviewed-by: Ville Syrj�l� <ville.syrjala@linux.intel.com>

> ---
>  drivers/gpu/drm/drm_mode_config.c |  7 +++++++
>  drivers/gpu/drm/drm_plane.c       |  8 ++++++++
>  include/drm/drm_mode_config.h     |  6 ++++++
>  include/drm/drm_plane.h           | 17 +++++++++++++++++
>  4 files changed, 38 insertions(+)
> 
> diff --git a/drivers/gpu/drm/drm_mode_config.c b/drivers/gpu/drm/drm_mode_config.c
> index 8642a2fb25a90116dab975aa0ab6b51deafb4b96..b4239fd04e9da4d4b5cfccdef1d3dde9556f322d 100644
> --- a/drivers/gpu/drm/drm_mode_config.c
> +++ b/drivers/gpu/drm/drm_mode_config.c
> @@ -381,6 +381,13 @@ static int drm_mode_create_standard_properties(struct drm_device *dev)
>  		return -ENOMEM;
>  	dev->mode_config.modifiers_property = prop;
>  
> +	prop = drm_property_create(dev,
> +				   DRM_MODE_PROP_IMMUTABLE | DRM_MODE_PROP_BLOB,
> +				   "IN_FORMATS_ASYNC", 0);
> +	if (!prop)
> +		return -ENOMEM;
> +	dev->mode_config.async_modifiers_property = prop;
> +
>  	prop = drm_property_create(dev,
>  				   DRM_MODE_PROP_IMMUTABLE | DRM_MODE_PROP_BLOB,
>  				   "SIZE_HINTS", 0);
> diff --git a/drivers/gpu/drm/drm_plane.c b/drivers/gpu/drm/drm_plane.c
> index a28b22fdd7a41aca82d097d42237851da9a0a79b..fe181c1002171acc68d3054c2d178f9b9f501fe2 100644
> --- a/drivers/gpu/drm/drm_plane.c
> +++ b/drivers/gpu/drm/drm_plane.c
> @@ -141,6 +141,14 @@
>   *     various bugs in this area with inconsistencies between the capability
>   *     flag and per-plane properties.
>   *
> + * IN_FORMATS_ASYNC:
> + *     Blob property which contains the set of buffer format and modifier
> + *     pairs supported by this plane for asynchronous flips. The blob is a struct
> + *     drm_format_modifier_blob. Userspace cannot change this property. This is an
> + *     optional property and if not present then user should expect a failure in
> + *     atomic ioctl when the modifier/format is not supported by that plane under
> + *     asynchronous flip.
> + *
>   * SIZE_HINTS:
>   *     Blob property which contains the set of recommended plane size
>   *     which can used for simple "cursor like" use cases (eg. no scaling).
> diff --git a/include/drm/drm_mode_config.h b/include/drm/drm_mode_config.h
> index 271765e2e9f2da62aaf0d258828ef4196e14822e..0c116d6dfd277262b1a4c0f097fce2d719f43844 100644
> --- a/include/drm/drm_mode_config.h
> +++ b/include/drm/drm_mode_config.h
> @@ -936,6 +936,12 @@ struct drm_mode_config {
>  	 */
>  	struct drm_property *modifiers_property;
>  
> +	/**
> +	 * @async_modifiers_property: Plane property to list support modifier/format
> +	 * combination for asynchronous flips.
> +	 */
> +	struct drm_property *async_modifiers_property;
> +
>  	/**
>  	 * @size_hints_property: Plane SIZE_HINTS property.
>  	 */
> diff --git a/include/drm/drm_plane.h b/include/drm/drm_plane.h
> index dd718c62ac31bf16606f3ee9f025a5b171cd1e67..01479dd94e76a8389a0c9e9d6744400aa2291064 100644
> --- a/include/drm/drm_plane.h
> +++ b/include/drm/drm_plane.h
> @@ -549,6 +549,23 @@ struct drm_plane_funcs {
>  	 */
>  	bool (*format_mod_supported)(struct drm_plane *plane, uint32_t format,
>  				     uint64_t modifier);
> +	/**
> +	 * @format_mod_supported_async:
> +	 *
> +	 * This optional hook is used for the DRM to determine if for
> +	 * asynchronous flip the given format/modifier combination is valid for
> +	 * the plane. This allows the DRM to generate the correct format
> +	 * bitmask (which formats apply to which modifier), and to validate
> +	 * modifiers at atomic_check time.
> +	 *
> +	 * Returns:
> +	 *
> +	 * True if the given modifier is valid for that format on the plane.
> +	 * False otherwise.
> +	 */
> +	bool (*format_mod_supported_async)(struct drm_plane *plane,
> +					   u32 format, u64 modifier);
> +
>  };
>  
>  /**
> 
> -- 
> 2.25.1

-- 
Ville Syrj�l�
Intel
