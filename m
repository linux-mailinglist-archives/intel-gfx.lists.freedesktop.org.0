Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id D96CFA3C8FC
	for <lists+intel-gfx@lfdr.de>; Wed, 19 Feb 2025 20:40:31 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 53B4A10E877;
	Wed, 19 Feb 2025 19:40:30 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="e2o2Yljq";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.14])
 by gabe.freedesktop.org (Postfix) with ESMTPS id CE3A310E877;
 Wed, 19 Feb 2025 19:40:29 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1739994030; x=1771530030;
 h=date:from:to:cc:subject:message-id:references:
 mime-version:content-transfer-encoding:in-reply-to;
 bh=sVzFNbaz7eQ7oOHVi1ZQMQwFe1TH8TLEFZfys0vY3mQ=;
 b=e2o2YljqTEAcoEo+YoXdT98XFCyd/sYfb5kB1UtnwaAvVWgd78+pxB5/
 a+XvV4iwVsp9O7JG0C+pCXgPrkVJoYMXvozsB6UQg5P9HL26Owt2SGz13
 8nT46wFoUQuhS0KocWibUjJG+X9AK70GcHCIMtM7Y6+wm7gQh8GxGoV7m
 z+hz2CdeUlMy52NpUS1qmn5PaFUtajG129TB1jiMdn6CpCncGFhxM7oDP
 cmntKUjxl/O/oTTqBCiYMPsVSlJETxxi+CIoUPojqTGdYq7i3/DKqEYg3
 IlluSLZ3YofW4LJHOcWv0fP8L3bGLxYEsJwWKLHuW85Q8sdn5/sdPcqhv g==;
X-CSE-ConnectionGUID: cmS/g/BpRuOxatQyo2MA2w==
X-CSE-MsgGUID: 3IVW0IYfRweCmlzn70s/9A==
X-IronPort-AV: E=McAfee;i="6700,10204,11350"; a="44519902"
X-IronPort-AV: E=Sophos;i="6.13,299,1732608000"; d="scan'208";a="44519902"
Received: from fmviesa008.fm.intel.com ([10.60.135.148])
 by orvoesa106.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 19 Feb 2025 11:40:08 -0800
X-CSE-ConnectionGUID: 2faPgLclSo+7h1kAXw/exA==
X-CSE-MsgGUID: 1/i6z9e7RsSjxw+fiieymA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.13,299,1732608000"; d="scan'208";a="115011632"
Received: from stinkpipe.fi.intel.com (HELO stinkbox) ([10.237.72.74])
 by fmviesa008.fm.intel.com with SMTP; 19 Feb 2025 10:54:38 -0800
Received: by stinkbox (sSMTP sendmail emulation);
 Wed, 19 Feb 2025 20:54:26 +0200
Date: Wed, 19 Feb 2025 20:54:26 +0200
From: Ville =?iso-8859-1?Q?Syrj=E4l=E4?= <ville.syrjala@linux.intel.com>
To: Arun R Murthy <arun.r.murthy@intel.com>
Cc: dri-devel@lists.freedesktop.org, intel-gfx@lists.freedesktop.org,
 intel-xe@lists.freedesktop.org, chaitanya.kumar.borah@intel.com,
 Naveen Kumar <naveen1.kumar@intel.com>
Subject: Re: [PATCH v6 1/3] drm/plane: Add new plane property IN_FORMATS_ASYNC
Message-ID: <Z7Yo4jYqmEtTEgsK@intel.com>
References: <20250219-asyn-v6-0-b959e6becb3c@intel.com>
 <20250219-asyn-v6-1-b959e6becb3c@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=iso-8859-1
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <20250219-asyn-v6-1-b959e6becb3c@intel.com>
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

On Wed, Feb 19, 2025 at 02:47:23PM +0530, Arun R Murthy wrote:
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
> 
> Signed-off-by: Arun R Murthy <arun.r.murthy@intel.com>
> Reviewed-by: Chaitanya Kumar Borah <chaitanya.kumar.borah@intel.com>
> Tested-by: Naveen Kumar <naveen1.kumar@intel.com>
> ---
>  drivers/gpu/drm/drm_mode_config.c |  7 +++++++
>  drivers/gpu/drm/drm_plane.c       |  8 ++++++++
>  include/drm/drm_mode_config.h     |  6 ++++++
>  include/drm/drm_plane.h           | 17 +++++++++++++++++
>  4 files changed, 38 insertions(+)
> 
> diff --git a/drivers/gpu/drm/drm_mode_config.c b/drivers/gpu/drm/drm_mode_config.c
> index 8642a2fb25a90116dab975aa0ab6b51deafb4b96..dbbef20753f834a85ae9ded748cff2b3f0e85043 100644
> --- a/drivers/gpu/drm/drm_mode_config.c
> +++ b/drivers/gpu/drm/drm_mode_config.c
> @@ -388,6 +388,13 @@ static int drm_mode_create_standard_properties(struct drm_device *dev)
>  		return -ENOMEM;
>  	dev->mode_config.size_hints_property = prop;
>  
> +	prop = drm_property_create(dev,
> +				   DRM_MODE_PROP_IMMUTABLE | DRM_MODE_PROP_BLOB,
> +				   "IN_FORMATS_ASYNC", 0);
> +	if (!prop)
> +		return -ENOMEM;
> +	dev->mode_config.async_modifiers_property = prop;

Please put it next to the other blob.

> +
>  	return 0;
>  }
>  
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
> index dd718c62ac31bf16606f3ee9f025a5b171cd1e67..4393a0e9edf91ccfd78ef62b168b9313187c1a81 100644
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
> +					   uint32_t format, uint64_t modifier);
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
