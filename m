Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 2AC715F9DF1
	for <lists+intel-gfx@lfdr.de>; Mon, 10 Oct 2022 13:50:36 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id D72CC10E14D;
	Mon, 10 Oct 2022 11:50:30 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga12.intel.com (mga12.intel.com [192.55.52.136])
 by gabe.freedesktop.org (Postfix) with ESMTPS id BE11D10E14D
 for <intel-gfx@lists.freedesktop.org>; Mon, 10 Oct 2022 11:50:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1665402627; x=1696938627;
 h=from:to:subject:in-reply-to:references:date:message-id:
 mime-version:content-transfer-encoding;
 bh=rKWUX0SLMqpmv8eeVY6mcNwwEZVMNqIdILT6efGbpIo=;
 b=Vxy6k15jTAYnqjAQIAGmSGBer/gN3//+N3zmvkQQChNkYBctovh6Q3z7
 IXTiSif2spBo6QLXGceExPs932ogDf2PX2WxDDJkaBLZ2BG+c5mnZraDr
 wsIP+bvLkZJQt/G2SSp3r+mNB799MGMnRz1+/FNvjU0gDDlOdzNnZXwkV
 DNBywbzgO9CulYcsW33agtSdHP1izuelmXUAHymRXZxErWFdGZfMA/Ewc
 xI3TGJxjX3qeh/W5406OwCsBRlYbPRmIEzLpoH0jJ+Ohr59OmZOTu1MPC
 vWkqjmvQepN6d5BXgjcQKlLCp4LDS/C0ezCGn5ik8WnMaXUHV5Vty1yxc g==;
X-IronPort-AV: E=McAfee;i="6500,9779,10495"; a="283931602"
X-IronPort-AV: E=Sophos;i="5.95,173,1661842800"; d="scan'208";a="283931602"
Received: from orsmga003.jf.intel.com ([10.7.209.27])
 by fmsmga106.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 10 Oct 2022 04:50:27 -0700
X-IronPort-AV: E=McAfee;i="6500,9779,10495"; a="577020710"
X-IronPort-AV: E=Sophos;i="5.95,173,1661842800"; d="scan'208";a="577020710"
Received: from iolejnic-mobl1.ger.corp.intel.com (HELO localhost)
 ([10.252.41.51])
 by orsmga003-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 10 Oct 2022 04:50:25 -0700
From: Jani Nikula <jani.nikula@linux.intel.com>
To: Ville Syrjala <ville.syrjala@linux.intel.com>,
 intel-gfx@lists.freedesktop.org
In-Reply-To: <20221007211108.3883-1-ville.syrjala@linux.intel.com>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
References: <20221007211108.3883-1-ville.syrjala@linux.intel.com>
Date: Mon, 10 Oct 2022 14:50:23 +0300
Message-ID: <87czazzym8.fsf@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: quoted-printable
Subject: Re: [Intel-gfx] [PATCH 1/2] drm/i915: Do the DRIVER_ATOMIC feature
 disable later
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

On Sat, 08 Oct 2022, Ville Syrjala <ville.syrjala@linux.intel.com> wrote:
> From: Ville Syrj=C3=A4l=C3=A4 <ville.syrjala@linux.intel.com>
>
> Currently we do the DRIVER_ATOMIC disable as almost the
> first thing during pci probe. That involves the use of
> DISPLAY_VER() which is perhaps a bit sketchy now that we
> may need to read that out from the hardware itself.
> Looks like we do populate a default value for it anyway
> so the current does at least still work.
>
> But let's make this safer anyway and move the code
> into intel_device_info_runtime_init() where we also
> handle the same thing for the !HAS_DISPLAY case.
>
> Signed-off-by: Ville Syrj=C3=A4l=C3=A4 <ville.syrjala@linux.intel.com>

Reviewed-by: Jani Nikula <jani.nikula@intel.com>

> ---
>  drivers/gpu/drm/i915/i915_driver.c       | 4 ----
>  drivers/gpu/drm/i915/intel_device_info.c | 4 ++++
>  2 files changed, 4 insertions(+), 4 deletions(-)
>
> diff --git a/drivers/gpu/drm/i915/i915_driver.c b/drivers/gpu/drm/i915/i9=
15_driver.c
> index fb3826dabe8b..cebe347f424c 100644
> --- a/drivers/gpu/drm/i915/i915_driver.c
> +++ b/drivers/gpu/drm/i915/i915_driver.c
> @@ -894,10 +894,6 @@ int i915_driver_probe(struct pci_dev *pdev, const st=
ruct pci_device_id *ent)
>  	if (IS_ERR(i915))
>  		return PTR_ERR(i915);
>=20=20
> -	/* Disable nuclear pageflip by default on pre-ILK */
> -	if (!i915->params.nuclear_pageflip && DISPLAY_VER(i915) < 5)
> -		i915->drm.driver_features &=3D ~DRIVER_ATOMIC;
> -
>  	ret =3D pci_enable_device(pdev);
>  	if (ret)
>  		goto out_fini;
> diff --git a/drivers/gpu/drm/i915/intel_device_info.c b/drivers/gpu/drm/i=
915/intel_device_info.c
> index 908ec241fe71..b691b7c8c254 100644
> --- a/drivers/gpu/drm/i915/intel_device_info.c
> +++ b/drivers/gpu/drm/i915/intel_device_info.c
> @@ -507,6 +507,10 @@ void intel_device_info_runtime_init(struct drm_i915_=
private *dev_priv)
>  		runtime->has_dmc =3D false;
>  		runtime->has_dsc =3D false;
>  	}
> +
> +	/* Disable nuclear pageflip by default on pre-ILK */
> +	if (!dev_priv->params.nuclear_pageflip && DISPLAY_VER(dev_priv) < 5)
> +		dev_priv->drm.driver_features &=3D ~DRIVER_ATOMIC;
>  }
>=20=20
>  void intel_driver_caps_print(const struct intel_driver_caps *caps,

--=20
Jani Nikula, Intel Open Source Graphics Center
