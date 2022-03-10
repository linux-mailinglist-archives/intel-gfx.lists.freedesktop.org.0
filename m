Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id EA0CB4D436F
	for <lists+intel-gfx@lfdr.de>; Thu, 10 Mar 2022 10:25:25 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 5689210FDEF;
	Thu, 10 Mar 2022 09:25:24 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 206B110FDEE
 for <intel-gfx@lists.freedesktop.org>; Thu, 10 Mar 2022 09:25:23 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1646904323; x=1678440323;
 h=from:to:subject:in-reply-to:references:date:message-id:
 mime-version:content-transfer-encoding;
 bh=e9Vj/BFJyYTetXQ5jln0bDoPcFqIUOyBK6OBirg5jwE=;
 b=X92QL6wZVb8Hmr2JngQ2mw9VLxE1OUSQMtILMJFf1nu4qYDp2yIJx+Ai
 O+IsAN8Ayv4Ww7xRyIz1l1T9ZgOwHCu0N47BhIC2/awNQ1N2qR2/ear/U
 wKJAOIqkt8MH9FpaB5t3Z1eO+Jrc1r+7NrtZcNNbancXSmAhc7Iu+djhU
 pbfQUYVbrXB2OlCr+kTOhPMOU1jR+q1OHVRmz0ZvrRYkWdetL5jKBd5iY
 CUiWi1wbpup5xSyosh1wU84ItmY/8ehw0KPyTviHDfQIgtb9bV/6tAU6u
 LOG9vTW/yjgpJO7I2q8gPNujSDXkl2mUgC7Y79MvVe2BhvCHgPAY2Ym+j Q==;
X-IronPort-AV: E=McAfee;i="6200,9189,10281"; a="242648854"
X-IronPort-AV: E=Sophos;i="5.90,170,1643702400"; d="scan'208";a="242648854"
Received: from orsmga006.jf.intel.com ([10.7.209.51])
 by orsmga101.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 10 Mar 2022 01:25:20 -0800
X-IronPort-AV: E=Sophos;i="5.90,170,1643702400"; d="scan'208";a="513909676"
Received: from mgherza1-mobl.ger.corp.intel.com (HELO localhost)
 ([10.252.55.69])
 by orsmga006-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 10 Mar 2022 01:25:18 -0800
From: Jani Nikula <jani.nikula@linux.intel.com>
To: Ville Syrjala <ville.syrjala@linux.intel.com>,
 intel-gfx@lists.freedesktop.org
In-Reply-To: <20220310004802.16310-2-ville.syrjala@linux.intel.com>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
References: <20220310004802.16310-1-ville.syrjala@linux.intel.com>
 <20220310004802.16310-2-ville.syrjala@linux.intel.com>
Date: Thu, 10 Mar 2022 11:25:16 +0200
Message-ID: <874k46yxab.fsf@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: quoted-printable
Subject: Re: [Intel-gfx] [PATCH 01/13] drm/i915: Fix up some DRRS type checks
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
> Only seamless DRRS needs the frontbuffer tracking, so check for that.
> Also use !=3D consistently instead of randomly picing < as the comparison

*picking

> operator.
>
> Signed-off-by: Ville Syrj=C3=A4l=C3=A4 <ville.syrjala@linux.intel.com>

Reviewed-by: Jani Nikula <jani.nikula@intel.com>

PS. Why do we have STATIC_DRRS_SUPPORT if we don't use it for anything?
We could just filter this during VBT parsing.

> ---
>  drivers/gpu/drm/i915/display/intel_drrs.c | 4 ++--
>  1 file changed, 2 insertions(+), 2 deletions(-)
>
> diff --git a/drivers/gpu/drm/i915/display/intel_drrs.c b/drivers/gpu/drm/=
i915/display/intel_drrs.c
> index fa715b8ea310..146f2cf7d01a 100644
> --- a/drivers/gpu/drm/i915/display/intel_drrs.c
> +++ b/drivers/gpu/drm/i915/display/intel_drrs.c
> @@ -152,7 +152,7 @@ static void intel_drrs_set_state(struct drm_i915_priv=
ate *dev_priv,
>  		return;
>  	}
>=20=20
> -	if (dev_priv->drrs.type < SEAMLESS_DRRS_SUPPORT) {
> +	if (dev_priv->drrs.type !=3D SEAMLESS_DRRS_SUPPORT) {
>  		drm_dbg_kms(&dev_priv->drm, "Only Seamless DRRS supported.\n");
>  		return;
>  	}
> @@ -326,7 +326,7 @@ static void intel_drrs_frontbuffer_update(struct drm_=
i915_private *dev_priv,
>  	struct drm_crtc *crtc;
>  	enum pipe pipe;
>=20=20
> -	if (dev_priv->drrs.type =3D=3D DRRS_NOT_SUPPORTED)
> +	if (dev_priv->drrs.type !=3D SEAMLESS_DRRS_SUPPORT)
>  		return;
>=20=20
>  	cancel_delayed_work(&dev_priv->drrs.work);

--=20
Jani Nikula, Intel Open Source Graphics Center
