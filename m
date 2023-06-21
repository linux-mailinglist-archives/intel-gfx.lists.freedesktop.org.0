Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id CB0BD737C7D
	for <lists+intel-gfx@lfdr.de>; Wed, 21 Jun 2023 09:46:05 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 61C8510E3E6;
	Wed, 21 Jun 2023 07:46:03 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga05.intel.com (mga05.intel.com [192.55.52.43])
 by gabe.freedesktop.org (Postfix) with ESMTPS id CDCDC10E3E6
 for <intel-gfx@lists.freedesktop.org>; Wed, 21 Jun 2023 07:46:01 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1687333561; x=1718869561;
 h=from:to:subject:in-reply-to:references:date:message-id:
 mime-version:content-transfer-encoding;
 bh=UGTKcAZg307lgDHKnJXCV+913w1j0Rn76560o/JRZgA=;
 b=Mkea9KhE2Jo/0sf0kxBEamD3qw7IUUNIY9KX8Br/mP3Ek5xlf+C99t/c
 oIxVjGXIH1BN7K8TdQqVeF5Ub9kG6Ct3o39fWju7FWKOCf3VQP6A0nS9j
 G74fdPMgNwIcp72i8IrU6du8mLAX5j6YrnQe2f/xUR3fJBa3htIx7NOuZ
 5fyqvd9wtp6FaXLHG8oe67U53RI8DWlQsO2nUZw9YVlca7G1ccDcTEgNG
 20ynIUsyuiy+feeajViNFBA5tCAFa306VDH/C9/e2xzGiN2PVyOeule0R
 Nub4wOYqudZqBxzdJwzrvUDAQbdQydf2BFXsWs3v7xBZwAbZeaX5KNVfH g==;
X-IronPort-AV: E=McAfee;i="6600,9927,10747"; a="446474774"
X-IronPort-AV: E=Sophos;i="6.00,259,1681196400"; d="scan'208";a="446474774"
Received: from orsmga003.jf.intel.com ([10.7.209.27])
 by fmsmga105.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 21 Jun 2023 00:45:01 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10747"; a="664558344"
X-IronPort-AV: E=Sophos;i="6.00,259,1681196400"; d="scan'208";a="664558344"
Received: from dafnaroz-mobl2.ger.corp.intel.com (HELO localhost)
 ([10.252.63.122])
 by orsmga003-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 21 Jun 2023 00:44:58 -0700
From: Jani Nikula <jani.nikula@linux.intel.com>
To: Ville Syrjala <ville.syrjala@linux.intel.com>,
 intel-gfx@lists.freedesktop.org
In-Reply-To: <20230620173242.26923-2-ville.syrjala@linux.intel.com>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
References: <20230620173242.26923-1-ville.syrjala@linux.intel.com>
 <20230620173242.26923-2-ville.syrjala@linux.intel.com>
Date: Wed, 21 Jun 2023 10:44:56 +0300
Message-ID: <87fs6lfedj.fsf@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: quoted-printable
Subject: Re: [Intel-gfx] [PATCH v2 1/5] drm/i915: Initialize
 dig_port->aux_ch to NONE to be sure
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

On Tue, 20 Jun 2023, Ville Syrjala <ville.syrjala@linux.intel.com> wrote:
> From: Ville Syrj=C3=A4l=C3=A4 <ville.syrjala@linux.intel.com>
>
> Make sure dig_port->aux_ch is trustworthy by initializing it
> to NONE (-1) at the start. The encoder init will later fill in
> the actual value, if appropriate.

Smells like we could add intel_dig_port_alloc() and shove this
there. But that's for another patch.

Reviewed-by: Jani Nikula <jani.nikula@intel.com>

>
> Signed-off-by: Ville Syrj=C3=A4l=C3=A4 <ville.syrjala@linux.intel.com>
> ---
>  drivers/gpu/drm/i915/display/g4x_dp.c    | 2 ++
>  drivers/gpu/drm/i915/display/g4x_hdmi.c  | 2 ++
>  drivers/gpu/drm/i915/display/intel_ddi.c | 2 ++
>  3 files changed, 6 insertions(+)
>
> diff --git a/drivers/gpu/drm/i915/display/g4x_dp.c b/drivers/gpu/drm/i915=
/display/g4x_dp.c
> index c58a3f249a01..0cab5992e3da 100644
> --- a/drivers/gpu/drm/i915/display/g4x_dp.c
> +++ b/drivers/gpu/drm/i915/display/g4x_dp.c
> @@ -1273,6 +1273,8 @@ bool g4x_dp_init(struct drm_i915_private *dev_priv,
>  	if (!dig_port)
>  		return false;
>=20=20
> +	dig_port->aux_ch =3D AUX_CH_NONE;
> +
>  	intel_connector =3D intel_connector_alloc();
>  	if (!intel_connector)
>  		goto err_connector_alloc;
> diff --git a/drivers/gpu/drm/i915/display/g4x_hdmi.c b/drivers/gpu/drm/i9=
15/display/g4x_hdmi.c
> index 8c71e3ede680..c1fd13bdc9d2 100644
> --- a/drivers/gpu/drm/i915/display/g4x_hdmi.c
> +++ b/drivers/gpu/drm/i915/display/g4x_hdmi.c
> @@ -698,6 +698,8 @@ void g4x_hdmi_init(struct drm_i915_private *dev_priv,
>  	if (!dig_port)
>  		return;
>=20=20
> +	dig_port->aux_ch =3D AUX_CH_NONE;
> +
>  	intel_connector =3D intel_connector_alloc();
>  	if (!intel_connector) {
>  		kfree(dig_port);
> diff --git a/drivers/gpu/drm/i915/display/intel_ddi.c b/drivers/gpu/drm/i=
915/display/intel_ddi.c
> index 61722556bb47..6cb24a472a9b 100644
> --- a/drivers/gpu/drm/i915/display/intel_ddi.c
> +++ b/drivers/gpu/drm/i915/display/intel_ddi.c
> @@ -4747,6 +4747,8 @@ void intel_ddi_init(struct drm_i915_private *dev_pr=
iv, enum port port)
>  	if (!dig_port)
>  		return;
>=20=20
> +	dig_port->aux_ch =3D AUX_CH_NONE;
> +
>  	encoder =3D &dig_port->base;
>  	encoder->devdata =3D devdata;

--=20
Jani Nikula, Intel Open Source Graphics Center
