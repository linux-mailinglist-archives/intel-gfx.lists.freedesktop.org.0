Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 3B4494D4386
	for <lists+intel-gfx@lfdr.de>; Thu, 10 Mar 2022 10:27:36 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 7EF7910FE1C;
	Thu, 10 Mar 2022 09:27:34 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga17.intel.com (mga17.intel.com [192.55.52.151])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 29C1410FE1A
 for <intel-gfx@lists.freedesktop.org>; Thu, 10 Mar 2022 09:27:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1646904453; x=1678440453;
 h=from:to:subject:in-reply-to:references:date:message-id:
 mime-version:content-transfer-encoding;
 bh=mECuSn1SVn8bMIK+lXnFWb2TwFpZvOJHKYbf7SFiy/s=;
 b=f4Z4zfY6xAWmUHK2Tk3GoWtGp4MR1+7o+cyzkmBtmpgccdBjjmZRwBOv
 RLPMU1nR4nNwnj1z70xJOEYwKSE4d7rM8UWi8rL8DSqB8417Mxz5MARof
 SzQX2KAEZygbvnaVGukhR7U5x8KlVOssQvSDpqnaca7f3KNwsGewCS8oB
 +FaMSm/Osbb3GQS501l3tqs1Vl8aoyhpDJX9w5FBeX3nDG+zj3B1EX0I5
 o/6eTgMyieuLvBBw0AKqOmxHuO9n6EcuPtnI940Ylb5kHfPJECXHKO6pT
 adxrBdQ2dFsF8nLvXyoHmOSs5VqT01vIGDNZteyKgbm8uXoDxCMpaB9aB Q==;
X-IronPort-AV: E=McAfee;i="6200,9189,10281"; a="235810891"
X-IronPort-AV: E=Sophos;i="5.90,170,1643702400"; d="scan'208";a="235810891"
Received: from orsmga007.jf.intel.com ([10.7.209.58])
 by fmsmga107.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 10 Mar 2022 01:27:28 -0800
X-IronPort-AV: E=Sophos;i="5.90,170,1643702400"; d="scan'208";a="538379844"
Received: from mgherza1-mobl.ger.corp.intel.com (HELO localhost)
 ([10.252.55.69])
 by orsmga007-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 10 Mar 2022 01:27:24 -0800
From: Jani Nikula <jani.nikula@linux.intel.com>
To: Ville Syrjala <ville.syrjala@linux.intel.com>,
 intel-gfx@lists.freedesktop.org
In-Reply-To: <20220310004802.16310-4-ville.syrjala@linux.intel.com>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
References: <20220310004802.16310-1-ville.syrjala@linux.intel.com>
 <20220310004802.16310-4-ville.syrjala@linux.intel.com>
Date: Thu, 10 Mar 2022 11:27:21 +0200
Message-ID: <87y21ixime.fsf@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: quoted-printable
Subject: Re: [Intel-gfx] [PATCH 03/13] drm/i915: Pimp DRRS debugs
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

On Thu, 10 Mar 2022, Ville Syrjala <ville.syrjala@linux.intel.com> wrote:
> From: Ville Syrj=C3=A4l=C3=A4 <ville.syrjala@linux.intel.com>
>
> Use the standard [CONNECTOR:%d:%s] format in the DRRS debugs.
>
> Signed-off-by: Ville Syrj=C3=A4l=C3=A4 <ville.syrjala@linux.intel.com>

Reviewed-by: Jani Nikula <jani.nikula@intel.com>

> ---
>  drivers/gpu/drm/i915/display/intel_drrs.c | 18 +++++++++++++-----
>  1 file changed, 13 insertions(+), 5 deletions(-)
>
> diff --git a/drivers/gpu/drm/i915/display/intel_drrs.c b/drivers/gpu/drm/=
i915/display/intel_drrs.c
> index 3b871a51eb55..17bedecbd7b2 100644
> --- a/drivers/gpu/drm/i915/display/intel_drrs.c
> +++ b/drivers/gpu/drm/i915/display/intel_drrs.c
> @@ -432,26 +432,32 @@ intel_drrs_init(struct intel_connector *connector,
>=20=20
>  	if (DISPLAY_VER(dev_priv) <=3D 6) {
>  		drm_dbg_kms(&dev_priv->drm,
> -			    "DRRS supported for Gen7 and above\n");
> +			    "[CONNECTOR:%d:%s] DRRS not supported on platform\n",
> +			    connector->base.base.id, connector->base.name);
>  		return NULL;
>  	}
>=20=20
>  	if ((DISPLAY_VER(dev_priv) < 8 && !HAS_GMCH(dev_priv)) &&
>  	    encoder->port !=3D PORT_A) {
>  		drm_dbg_kms(&dev_priv->drm,
> -			    "DRRS only supported on eDP port A\n");
> +			    "[CONNECTOR:%d:%s] DRRS not supported on [ENCODER:%d:%s]\n",
> +			    connector->base.base.id, connector->base.name,
> +			    encoder->base.base.id, encoder->base.name);
>  		return NULL;
>  	}
>=20=20
>  	if (dev_priv->vbt.drrs_type !=3D SEAMLESS_DRRS_SUPPORT) {
> -		drm_dbg_kms(&dev_priv->drm, "VBT doesn't support DRRS\n");
> +		drm_dbg_kms(&dev_priv->drm,
> +			    "[CONNECTOR:%d:%s] DRRS not supported according to VBT\n",
> +			    connector->base.base.id, connector->base.name);
>  		return NULL;
>  	}
>=20=20
>  	downclock_mode =3D intel_panel_edid_downclock_mode(connector, fixed_mod=
e);
>  	if (!downclock_mode) {
>  		drm_dbg_kms(&dev_priv->drm,
> -			    "Downclock mode is not found. DRRS not supported\n");
> +			    "[CONNECTOR:%d:%s] DRRS not supported due to lack of downclock mo=
de\n",
> +			    connector->base.base.id, connector->base.name);
>  		return NULL;
>  	}
>=20=20
> @@ -459,6 +465,8 @@ intel_drrs_init(struct intel_connector *connector,
>=20=20
>  	dev_priv->drrs.refresh_rate_type =3D DRRS_HIGH_RR;
>  	drm_dbg_kms(&dev_priv->drm,
> -		    "seamless DRRS supported for eDP panel.\n");
> +		    "[CONNECTOR:%d:%s] seamless DRRS supported\n",
> +		    connector->base.base.id, connector->base.name);
> +
>  	return downclock_mode;
>  }

--=20
Jani Nikula, Intel Open Source Graphics Center
