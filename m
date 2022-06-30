Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 27B7E5619C4
	for <lists+intel-gfx@lfdr.de>; Thu, 30 Jun 2022 14:02:39 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 4213811A187;
	Thu, 30 Jun 2022 12:02:37 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga07.intel.com (mga07.intel.com [134.134.136.100])
 by gabe.freedesktop.org (Postfix) with ESMTPS id EDA1611A17D
 for <intel-gfx@lists.freedesktop.org>; Thu, 30 Jun 2022 12:02:35 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1656590556; x=1688126556;
 h=from:to:cc:subject:in-reply-to:references:date:
 message-id:mime-version:content-transfer-encoding;
 bh=IHTkE5MIfOmcWzeDypNiM2ccN9hYUoCFHup7GRn2EZw=;
 b=O8IHcvE1twxYhaIO5i6VUjK1G5pjtKeDFBQIMQy7SqzSkjJkmu5YQmWI
 0KaKDqwkYi/t9lmpbGe9T4DtEiDNJlkKmzdRPkGLHfzbHrpsFgxs9HzpA
 qMHKOOg8TKz5lgcwUwFWvh48BCxyafsfZp0MrYFKSO/7jlGG9/dz/NRB6
 FA0KfP8DWbicYN5G7dnwF4H1pEJ3ZoBl7JHAeH8lWORJmyS5HjlRjivux
 h4rGAy5LC2Z2HbCjMP3XHH3pZLxgbdrJZdc2ScUOM9Tk0JD29uu+3wivl
 G0JtSGiJFaQrvie8Wm95AJpISC69CvhGHZT2dk1+1ms1VRmdU6/iKccNg Q==;
X-IronPort-AV: E=McAfee;i="6400,9594,10393"; a="346318211"
X-IronPort-AV: E=Sophos;i="5.92,234,1650956400"; d="scan'208";a="346318211"
Received: from fmsmga008.fm.intel.com ([10.253.24.58])
 by orsmga105.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 30 Jun 2022 05:02:23 -0700
X-IronPort-AV: E=Sophos;i="5.92,234,1650956400"; d="scan'208";a="647863366"
Received: from fdugast-mobl3.ger.corp.intel.com (HELO localhost)
 ([10.252.39.70])
 by fmsmga008-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 30 Jun 2022 05:02:22 -0700
From: Jani Nikula <jani.nikula@intel.com>
To: intel-gfx@lists.freedesktop.org
In-Reply-To: <20220628141005.226252-1-jani.nikula@intel.com>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
References: <20220628141005.226252-1-jani.nikula@intel.com>
Date: Thu, 30 Jun 2022 15:02:19 +0300
Message-ID: <875ykipdf8.fsf@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: quoted-printable
Subject: Re: [Intel-gfx] [PATCH v2] drm/i915: use DISPLAY_VER() instead of
 accessing match_info directly
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

On Tue, 28 Jun 2022, Jani Nikula <jani.nikula@intel.com> wrote:
> We've just set up device info in i915_driver_create() so we can use
> DISPLAY_VER() intead of looking at match_info directly.
>
> Semantically we want to check the display version instead of the
> graphics version, and for the earlier platforms they are always the
> same.
>
> v2: Use DISPLAY_VER() instead of GRAPHICS_VER() (Ville)
>
> Signed-off-by: Jani Nikula <jani.nikula@intel.com>
> Reviewed-by: Ville Syrj=C3=A4l=C3=A4 <ville.syrjala@linux.intel.com>

Pushed to din, thanks for the review.

BR,
Jani.


> ---
>  drivers/gpu/drm/i915/i915_driver.c | 4 +---
>  1 file changed, 1 insertion(+), 3 deletions(-)
>
> diff --git a/drivers/gpu/drm/i915/i915_driver.c b/drivers/gpu/drm/i915/i9=
15_driver.c
> index 6e5849c1086f..b2e14cd76d7e 100644
> --- a/drivers/gpu/drm/i915/i915_driver.c
> +++ b/drivers/gpu/drm/i915/i915_driver.c
> @@ -847,8 +847,6 @@ i915_driver_create(struct pci_dev *pdev, const struct=
 pci_device_id *ent)
>   */
>  int i915_driver_probe(struct pci_dev *pdev, const struct pci_device_id *=
ent)
>  {
> -	const struct intel_device_info *match_info =3D
> -		(struct intel_device_info *)ent->driver_data;
>  	struct drm_i915_private *i915;
>  	int ret;
>=20=20
> @@ -857,7 +855,7 @@ int i915_driver_probe(struct pci_dev *pdev, const str=
uct pci_device_id *ent)
>  		return PTR_ERR(i915);
>=20=20
>  	/* Disable nuclear pageflip by default on pre-ILK */
> -	if (!i915->params.nuclear_pageflip && match_info->graphics.ver < 5)
> +	if (!i915->params.nuclear_pageflip && DISPLAY_VER(i915) < 5)
>  		i915->drm.driver_features &=3D ~DRIVER_ATOMIC;
>=20=20
>  	ret =3D pci_enable_device(pdev);

--=20
Jani Nikula, Intel Open Source Graphics Center
