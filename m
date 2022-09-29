Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id C36A65EF4D7
	for <lists+intel-gfx@lfdr.de>; Thu, 29 Sep 2022 13:56:40 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id A2B9910EA35;
	Thu, 29 Sep 2022 11:56:38 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga04.intel.com (mga04.intel.com [192.55.52.120])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 91B1F10EA3F
 for <intel-gfx@lists.freedesktop.org>; Thu, 29 Sep 2022 11:56:36 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1664452596; x=1695988596;
 h=from:to:subject:in-reply-to:references:date:message-id:
 mime-version:content-transfer-encoding;
 bh=YsimhSCD5vYeB0AeanV8j8B3nPWErTEXR8BJrnbYQWI=;
 b=enEyt2hcuvLh1u2NtyRFNdVWY12+w7Adeh1HuCF057Ujq9IVaQCbciCt
 ta8+NPnRTLr9hi5zcX9Zeu2MP67gj5sgTiM+ehdom2yTMd4tDcqKZK8bp
 5RmMQF9M3axYYZQ+74yZvBCUqpgr6eO/JwKK6X7Yj1NyS0uHs/P8ArzC3
 2qGqwOTUiglWiZwMqtQnSll0OPIBvY+G/sYlBGbYJK2aes9KBmGNbJZ2J
 ZZmpgEzY0Q0pZdW/BX5uTdrNNIklhuf+KhYMt6LawrnEPDVQ60MBg2yMT
 0wOnyCyGYbjH57lLIG0QBNHHmEqOIn8Es/NOD2sXK2Z9hG0Zf31QKV7Jq A==;
X-IronPort-AV: E=McAfee;i="6500,9779,10484"; a="300590570"
X-IronPort-AV: E=Sophos;i="5.93,355,1654585200"; d="scan'208";a="300590570"
Received: from orsmga004.jf.intel.com ([10.7.209.38])
 by fmsmga104.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 29 Sep 2022 04:56:36 -0700
X-IronPort-AV: E=McAfee;i="6500,9779,10484"; a="747806832"
X-IronPort-AV: E=Sophos;i="5.93,355,1654585200"; d="scan'208";a="747806832"
Received: from jnikula-mobl4.fi.intel.com (HELO localhost) ([10.237.66.153])
 by orsmga004-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 29 Sep 2022 04:56:34 -0700
From: Jani Nikula <jani.nikula@linux.intel.com>
To: Ville Syrjala <ville.syrjala@linux.intel.com>,
 intel-gfx@lists.freedesktop.org
In-Reply-To: <20220929071521.26612-4-ville.syrjala@linux.intel.com>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
References: <20220929071521.26612-1-ville.syrjala@linux.intel.com>
 <20220929071521.26612-4-ville.syrjala@linux.intel.com>
Date: Thu, 29 Sep 2022 14:56:31 +0300
Message-ID: <87bkqyxukw.fsf@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: quoted-printable
Subject: Re: [Intel-gfx] [PATCH 03/10] drm/i915: Simplify the
 intel_color_init_hooks() if ladder
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

On Thu, 29 Sep 2022, Ville Syrjala <ville.syrjala@linux.intel.com> wrote:
> From: Ville Syrj=C3=A4l=C3=A4 <ville.syrjala@linux.intel.com>
>
> Get rid of the funny hsw vs. ivb extra indentation level in
> intel_color_init_hooks().
>
> Signed-off-by: Ville Syrj=C3=A4l=C3=A4 <ville.syrjala@linux.intel.com>

Reviewed-by: Jani Nikula <jani.nikula@intel.com>

> ---
>  drivers/gpu/drm/i915/display/intel_color.c | 11 +++++------
>  1 file changed, 5 insertions(+), 6 deletions(-)
>
> diff --git a/drivers/gpu/drm/i915/display/intel_color.c b/drivers/gpu/drm=
/i915/display/intel_color.c
> index ddfe7c257a72..ce8a4be9b292 100644
> --- a/drivers/gpu/drm/i915/display/intel_color.c
> +++ b/drivers/gpu/drm/i915/display/intel_color.c
> @@ -2238,12 +2238,11 @@ void intel_color_init_hooks(struct drm_i915_priva=
te *dev_priv)
>  			dev_priv->display.funcs.color =3D &skl_color_funcs;
>  		else if (DISPLAY_VER(dev_priv) =3D=3D 8)
>  			dev_priv->display.funcs.color =3D &bdw_color_funcs;
> -		else if (DISPLAY_VER(dev_priv) =3D=3D 7) {
> -			if (IS_HASWELL(dev_priv))
> -				dev_priv->display.funcs.color =3D &hsw_color_funcs;
> -			else
> -				dev_priv->display.funcs.color =3D &ivb_color_funcs;
> -		} else
> +		else if (IS_HASWELL(dev_priv))
> +			dev_priv->display.funcs.color =3D &hsw_color_funcs;
> +		else if (DISPLAY_VER(dev_priv) =3D=3D 7)
> +			dev_priv->display.funcs.color =3D &ivb_color_funcs;
> +		else
>  			dev_priv->display.funcs.color =3D &ilk_color_funcs;
>  	}
>  }

--=20
Jani Nikula, Intel Open Source Graphics Center
