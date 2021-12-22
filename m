Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 8ADC847CE77
	for <lists+intel-gfx@lfdr.de>; Wed, 22 Dec 2021 09:49:09 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id B63C11128B2;
	Wed, 22 Dec 2021 08:49:06 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga12.intel.com (mga12.intel.com [192.55.52.136])
 by gabe.freedesktop.org (Postfix) with ESMTPS id E9D681128B2
 for <intel-gfx@lists.freedesktop.org>; Wed, 22 Dec 2021 08:49:04 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1640162944; x=1671698944;
 h=from:to:subject:in-reply-to:references:date:message-id:
 mime-version:content-transfer-encoding;
 bh=wvyNiDQwdNNe8FHpm4It2zm0APa06cTKuCYRlIna4ZA=;
 b=YfVj/JMcQe6V5+rOFC87i+yu53r8Dn+7rIKeCMPYcl3I007prWkmthXu
 yWWgk/yf3znRw3q/AGKzvL+6OmTnheDn8BKwMGyZ/aNjqwwx+17nWvHTS
 OSMWHqa9d/HO1UQg944fOhTdl46otuDFNX/D/IC5R3Al38HfXzgxrdYEy
 5H2uZkO6sUuyXu+7z41mY+NDFAm7FCFE+jhYYiGRcIPzliEK9ftoK8gSy
 dMg8y8o139gGqWYereScruuQGxoJjRlA3YwoOVu6pQQwhkV72sGj/Ae9O
 QqZHS8BEd/fnhMjr1UQZ6Jst2wBp8Rtbg/Bh6bkvoR7HQM94EpbvbKbRP Q==;
X-IronPort-AV: E=McAfee;i="6200,9189,10205"; a="220590523"
X-IronPort-AV: E=Sophos;i="5.88,226,1635231600"; d="scan'208";a="220590523"
Received: from orsmga002.jf.intel.com ([10.7.209.21])
 by fmsmga106.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 22 Dec 2021 00:48:47 -0800
X-IronPort-AV: E=Sophos;i="5.88,226,1635231600"; d="scan'208";a="484691784"
Received: from aravind2-mobl1.ger.corp.intel.com (HELO localhost)
 ([10.252.9.217])
 by orsmga002-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 22 Dec 2021 00:48:44 -0800
From: Jani Nikula <jani.nikula@linux.intel.com>
To: Ville Syrjala <ville.syrjala@linux.intel.com>,
 intel-gfx@lists.freedesktop.org
In-Reply-To: <20211217155403.31477-2-ville.syrjala@linux.intel.com>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
References: <20211217155403.31477-1-ville.syrjala@linux.intel.com>
 <20211217155403.31477-2-ville.syrjala@linux.intel.com>
Date: Wed, 22 Dec 2021 10:48:41 +0200
Message-ID: <87ilvhyqhi.fsf@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: quoted-printable
Subject: Re: [Intel-gfx] [PATCH 1/6] drm/i915/bios: Introduce
 has_ddi_port_info()
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

On Fri, 17 Dec 2021, Ville Syrjala <ville.syrjala@linux.intel.com> wrote:
> From: Ville Syrj=C3=A4l=C3=A4 <ville.syrjala@linux.intel.com>
>
> Pull the "do we want to use i915->vbt.ports[]?" check into
> a central place.
>
> Signed-off-by: Ville Syrj=C3=A4l=C3=A4 <ville.syrjala@linux.intel.com>

Reviewed-by: Jani Nikula <jani.nikula@intel.com>

> ---
>  drivers/gpu/drm/i915/display/intel_bios.c | 11 ++++++++---
>  1 file changed, 8 insertions(+), 3 deletions(-)
>
> diff --git a/drivers/gpu/drm/i915/display/intel_bios.c b/drivers/gpu/drm/=
i915/display/intel_bios.c
> index 76a8f001f4c4..fce1ea7a6693 100644
> --- a/drivers/gpu/drm/i915/display/intel_bios.c
> +++ b/drivers/gpu/drm/i915/display/intel_bios.c
> @@ -2073,6 +2073,11 @@ static void parse_ddi_port(struct drm_i915_private=
 *i915,
>  	i915->vbt.ports[port] =3D devdata;
>  }
>=20=20
> +static bool has_ddi_port_info(struct drm_i915_private *i915)
> +{
> +	return HAS_DDI(i915);
> +}
> +
>  static void parse_ddi_ports(struct drm_i915_private *i915)
>  {
>  	struct intel_bios_encoder_data *devdata;
> @@ -2673,7 +2678,7 @@ bool intel_bios_is_port_present(struct drm_i915_pri=
vate *i915, enum port port)
>  		[PORT_F] =3D { DVO_PORT_DPF, DVO_PORT_HDMIF, },
>  	};
>=20=20
> -	if (HAS_DDI(i915))
> +	if (has_ddi_port_info(i915))
>  		return i915->vbt.ports[port];
>=20=20
>  	/* FIXME maybe deal with port A as well? */
> @@ -2713,7 +2718,7 @@ bool intel_bios_is_port_edp(struct drm_i915_private=
 *i915, enum port port)
>  		[PORT_F] =3D DVO_PORT_DPF,
>  	};
>=20=20
> -	if (HAS_DDI(i915)) {
> +	if (has_ddi_port_info(i915)) {
>  		const struct intel_bios_encoder_data *devdata;
>=20=20
>  		devdata =3D intel_bios_encoder_data_lookup(i915, port);
> @@ -2768,7 +2773,7 @@ bool intel_bios_is_port_dp_dual_mode(struct drm_i91=
5_private *i915,
>  	};
>  	const struct intel_bios_encoder_data *devdata;
>=20=20
> -	if (HAS_DDI(i915)) {
> +	if (has_ddi_port_info(i915)) {
>  		const struct intel_bios_encoder_data *devdata;
>=20=20
>  		devdata =3D intel_bios_encoder_data_lookup(i915, port);

--=20
Jani Nikula, Intel Open Source Graphics Center
