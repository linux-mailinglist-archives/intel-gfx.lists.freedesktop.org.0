Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id C48A451830E
	for <lists+intel-gfx@lfdr.de>; Tue,  3 May 2022 13:08:24 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 15DCA10E059;
	Tue,  3 May 2022 11:08:23 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
 by gabe.freedesktop.org (Postfix) with ESMTPS id B636C89C28
 for <intel-gfx@lists.freedesktop.org>; Tue,  3 May 2022 11:08:20 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1651576100; x=1683112100;
 h=from:to:subject:in-reply-to:references:date:message-id:
 mime-version:content-transfer-encoding;
 bh=2VRF7Fkv/JYnFI1opwBc/B+z82ghBdSTk5ZBIFJOXpw=;
 b=WlaCbCnFFIXZyIoAPHctd7ExQKnE0Bq+utIwLMIjpwyTY6WOULqq7yC0
 PCp5KjAyWn80p1k7Bc6JhUQ+DveH/IW1iDzWkQB99dED8bo0N78BvpGi8
 yIme2xZkvljSAIWhnIb2QoAkCq+KUK7dO1w9mL3Sp578h8g8/TFN2olgn
 lJMN6hMf+VjYEAPik65HjzOsPkriiy91hWsr6WkYIz5HVH59M2pXiZNPI
 whBRAkrLE3Wp6uTN7V+cq3//gEZzTCEFsnIMTNle4EdvA8ISFqKE0axkq
 46F1KI6RTVxLpW9zY/p5Sky0iGts8bckzvXy/+iN/w7UZ3Dwx+eJhB0C/ g==;
X-IronPort-AV: E=McAfee;i="6400,9594,10335"; a="254913333"
X-IronPort-AV: E=Sophos;i="5.91,195,1647327600"; d="scan'208";a="254913333"
Received: from orsmga001.jf.intel.com ([10.7.209.18])
 by orsmga101.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 03 May 2022 04:08:20 -0700
X-IronPort-AV: E=Sophos;i="5.91,195,1647327600"; d="scan'208";a="599019052"
Received: from jasinski-mobl1.ger.corp.intel.com (HELO localhost)
 ([10.249.133.126])
 by orsmga001-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 03 May 2022 04:08:18 -0700
From: Jani Nikula <jani.nikula@linux.intel.com>
To: Ville Syrjala <ville.syrjala@linux.intel.com>,
 intel-gfx@lists.freedesktop.org
In-Reply-To: <20220426193222.3422-9-ville.syrjala@linux.intel.com>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
References: <20220426193222.3422-1-ville.syrjala@linux.intel.com>
 <20220426193222.3422-9-ville.syrjala@linux.intel.com>
Date: Tue, 03 May 2022 14:08:15 +0300
Message-ID: <87fslqri00.fsf@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: quoted-printable
Subject: Re: [Intel-gfx] [PATCH v3 08/18] drm/i915/bios: Don't parse some
 panel specific data multiple times
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

On Tue, 26 Apr 2022, Ville Syrjala <ville.syrjala@linux.intel.com> wrote:
> From: Ville Syrj=C3=A4l=C3=A4 <ville.syrjala@linux.intel.com>
>
> Make sure we don't cause memory leaks/etc. by parsing panel_type
> specific parts multiple times. The real solution would be to stop
> stuffing panel specific stuff into i915->vbt, but in the meantime
> let's just make sure we don't leak too badly.
>
> Signed-off-by: Ville Syrj=C3=A4l=C3=A4 <ville.syrjala@linux.intel.com>

A bit meh intermediate step, but I guess this keeps the series
manageable.

Reviewed-by: Jani Nikula <jani.nikula@intel.com>


> ---
>  drivers/gpu/drm/i915/display/intel_bios.c | 16 ++++++++++++++++
>  1 file changed, 16 insertions(+)
>
> diff --git a/drivers/gpu/drm/i915/display/intel_bios.c b/drivers/gpu/drm/=
i915/display/intel_bios.c
> index b246a3a649a0..24e3b2f2485e 100644
> --- a/drivers/gpu/drm/i915/display/intel_bios.c
> +++ b/drivers/gpu/drm/i915/display/intel_bios.c
> @@ -729,6 +729,10 @@ parse_generic_dtd(struct drm_i915_private *i915)
>  	struct drm_display_mode *panel_fixed_mode;
>  	int num_dtd;
>=20=20
> +	/* FIXME stop using i915->vbt for panel specific data */
> +	if (i915->vbt.lfp_lvds_vbt_mode)
> +		return;
> +
>  	/*
>  	 * Older VBTs provided DTD information for internal displays through
>  	 * the "LFP panel tables" block (42).  As of VBT revision 229 the
> @@ -908,6 +912,10 @@ parse_sdvo_panel_data(struct drm_i915_private *i915)
>  	struct drm_display_mode *panel_fixed_mode;
>  	int index;
>=20=20
> +	/* FIXME stop using i915->vbt for panel specific data */
> +	if (i915->vbt.sdvo_lvds_vbt_mode)
> +		return;
> +
>  	index =3D i915->params.vbt_sdvo_panel_type;
>  	if (index =3D=3D -2) {
>  		drm_dbg_kms(&i915->drm,
> @@ -1436,6 +1444,10 @@ parse_mipi_config(struct drm_i915_private *i915)
>  	int panel_type =3D i915->vbt.panel_type;
>  	enum port port;
>=20=20
> +	/* FIXME stop using i915->vbt for panel specific data */
> +	if (i915->vbt.dsi.config)
> +		return;
> +
>  	/* parse MIPI blocks only if LFP type is MIPI */
>  	if (!intel_bios_is_dsi_present(i915, &port))
>  		return;
> @@ -1756,6 +1768,10 @@ parse_mipi_sequence(struct drm_i915_private *i915)
>  	u8 *data;
>  	int index =3D 0;
>=20=20
> +	/* FIXME stop using i915->vbt for panel specific data */
> +	if (i915->vbt.dsi.data)
> +		return;
> +
>  	/* Only our generic panel driver uses the sequence block. */
>  	if (i915->vbt.dsi.panel_id !=3D MIPI_DSI_GENERIC_PANEL_ID)
>  		return;

--=20
Jani Nikula, Intel Open Source Graphics Center
