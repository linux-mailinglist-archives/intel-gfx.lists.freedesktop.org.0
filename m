Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 739E140C649
	for <lists+intel-gfx@lfdr.de>; Wed, 15 Sep 2021 15:22:26 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 864A76E927;
	Wed, 15 Sep 2021 13:22:24 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga12.intel.com (mga12.intel.com [192.55.52.136])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 08FE46E927
 for <intel-gfx@lists.freedesktop.org>; Wed, 15 Sep 2021 13:22:24 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6200,9189,10107"; a="201818125"
X-IronPort-AV: E=Sophos;i="5.85,295,1624345200"; d="scan'208";a="201818125"
Received: from fmsmga003.fm.intel.com ([10.253.24.29])
 by fmsmga106.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 15 Sep 2021 06:22:23 -0700
X-IronPort-AV: E=Sophos;i="5.85,295,1624345200"; d="scan'208";a="544924979"
Received: from vmastnak-mobl1.ger.corp.intel.com (HELO localhost)
 ([10.251.214.245])
 by fmsmga003-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 15 Sep 2021 06:22:18 -0700
From: Jani Nikula <jani.nikula@linux.intel.com>
To: Ville Syrjala <ville.syrjala@linux.intel.com>,
 intel-gfx@lists.freedesktop.org
In-Reply-To: <20210913144440.23008-7-ville.syrjala@linux.intel.com>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
References: <20210913144440.23008-1-ville.syrjala@linux.intel.com>
 <20210913144440.23008-7-ville.syrjala@linux.intel.com>
Date: Wed, 15 Sep 2021 16:22:15 +0300
Message-ID: <87a6kex9bs.fsf@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: quoted-printable
Subject: Re: [Intel-gfx] [PATCH 06/16] drm/i915: Introduce
 with_intel_display_power_if_enabled()
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

On Mon, 13 Sep 2021, Ville Syrjala <ville.syrjala@linux.intel.com> wrote:
> From: Ville Syrj=C3=A4l=C3=A4 <ville.syrjala@linux.intel.com>
>
> Add the _if_enabled() counterpart to with_intel_display_power().
>
> Signed-off-by: Ville Syrj=C3=A4l=C3=A4 <ville.syrjala@linux.intel.com>

Reviewed-by: Jani Nikula <jani.nikula@intel.com>

Looks like there's plenty of code that could use this.

> ---
>  drivers/gpu/drm/i915/display/intel_display_power.h | 4 ++++
>  1 file changed, 4 insertions(+)
>
> diff --git a/drivers/gpu/drm/i915/display/intel_display_power.h b/drivers=
/gpu/drm/i915/display/intel_display_power.h
> index 978531841fa3..0612e4b6e3c8 100644
> --- a/drivers/gpu/drm/i915/display/intel_display_power.h
> +++ b/drivers/gpu/drm/i915/display/intel_display_power.h
> @@ -410,6 +410,10 @@ void gen9_dbuf_slices_update(struct drm_i915_private=
 *dev_priv,
>  	for ((wf) =3D intel_display_power_get((i915), (domain)); (wf); \
>  	     intel_display_power_put_async((i915), (domain), (wf)), (wf) =3D 0)
>=20=20
> +#define with_intel_display_power_if_enabled(i915, domain, wf) \
> +	for ((wf) =3D intel_display_power_get_if_enabled((i915), (domain)); (wf=
); \
> +	     intel_display_power_put_async((i915), (domain), (wf)), (wf) =3D 0)
> +
>  void chv_phy_powergate_lanes(struct intel_encoder *encoder,
>  			     bool override, unsigned int mask);
>  bool chv_phy_powergate_ch(struct drm_i915_private *dev_priv, enum dpio_p=
hy phy,

--=20
Jani Nikula, Intel Open Source Graphics Center
