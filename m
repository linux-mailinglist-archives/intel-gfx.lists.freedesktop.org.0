Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 7AF43876107
	for <lists+intel-gfx@lfdr.de>; Fri,  8 Mar 2024 10:37:40 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id F2749113823;
	Fri,  8 Mar 2024 09:37:38 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="C/3nVztO";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.17])
 by gabe.freedesktop.org (Postfix) with ESMTPS id B17AD10FEC2
 for <intel-gfx@lists.freedesktop.org>; Fri,  8 Mar 2024 09:37:37 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1709890658; x=1741426658;
 h=from:to:subject:in-reply-to:references:date:message-id:
 mime-version:content-transfer-encoding;
 bh=58utS/bab8J56hOJcyaDwRvARj3MbEUjZaYD1o6Wd4k=;
 b=C/3nVztOzFf2eIHyTRqV/TV7Ruopdz34TGcu3cn0VhxURxqo2Gw5L4mU
 HKwZH2JC+IR7xwd7FpK6xozvmB/NkUvWxypxeoPXQ8D24aZHCOD26S5tC
 6RdVG7kmHP4+VdiM8McJ0CcU9xZVyzjfYNaLsIzZWsCSa4xf7mwvGMQZi
 y/8/U2nYtacyhd1S/KTw1Qhb77F2fN42IDH7Ulq4RpM+PPSo25/McZZDT
 iauPWCB6jxTQoqC5qNbDPyXZS+/uuVFpuyIPI/LJmWZt935DS0bDck5wr
 p6fzDVMG1DpXiARtjmPjiglBycpq6kXV6ymo8AHeo9lRMoUQHqoInSdmX Q==;
X-IronPort-AV: E=McAfee;i="6600,9927,11006"; a="4473089"
X-IronPort-AV: E=Sophos;i="6.07,109,1708416000"; 
   d="scan'208";a="4473089"
Received: from fmviesa001.fm.intel.com ([10.60.135.141])
 by fmvoesa111.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 08 Mar 2024 01:37:37 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.07,109,1708416000"; d="scan'208";a="41389486"
Received: from unknown (HELO localhost) ([10.252.34.187])
 by smtpauth.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 08 Mar 2024 01:37:35 -0800
From: Jani Nikula <jani.nikula@linux.intel.com>
To: Ville Syrjala <ville.syrjala@linux.intel.com>,
 intel-gfx@lists.freedesktop.org
Subject: Re: [PATCH 1/4] drm/i915/dsi: Use enc_to_intel_dsi()
In-Reply-To: <20240307151810.24208-2-ville.syrjala@linux.intel.com>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
References: <20240307151810.24208-1-ville.syrjala@linux.intel.com>
 <20240307151810.24208-2-ville.syrjala@linux.intel.com>
Date: Fri, 08 Mar 2024 11:37:31 +0200
Message-ID: <87h6hhukro.fsf@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: quoted-printable
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

On Thu, 07 Mar 2024, Ville Syrjala <ville.syrjala@linux.intel.com> wrote:
> From: Ville Syrj=C3=A4l=C3=A4 <ville.syrjala@linux.intel.com>
>
> Use enc_to_intel_dsi() instead hand rolling it.
>
> Signed-off-by: Ville Syrj=C3=A4l=C3=A4 <ville.syrjala@linux.intel.com>

Reviewed-by: Jani Nikula <jani.nikula@intel.com>

> ---
>  drivers/gpu/drm/i915/display/icl_dsi.c | 3 +--
>  drivers/gpu/drm/i915/display/vlv_dsi.c | 3 +--
>  2 files changed, 2 insertions(+), 4 deletions(-)
>
> diff --git a/drivers/gpu/drm/i915/display/icl_dsi.c b/drivers/gpu/drm/i91=
5/display/icl_dsi.c
> index ac456a2275db..79ecfc339430 100644
> --- a/drivers/gpu/drm/i915/display/icl_dsi.c
> +++ b/drivers/gpu/drm/i915/display/icl_dsi.c
> @@ -1616,8 +1616,7 @@ static int gen11_dsi_compute_config(struct intel_en=
coder *encoder,
>  				    struct drm_connector_state *conn_state)
>  {
>  	struct drm_i915_private *i915 =3D to_i915(encoder->base.dev);
> -	struct intel_dsi *intel_dsi =3D container_of(encoder, struct intel_dsi,
> -						   base);
> +	struct intel_dsi *intel_dsi =3D enc_to_intel_dsi(encoder);
>  	struct intel_connector *intel_connector =3D intel_dsi->attached_connect=
or;
>  	struct drm_display_mode *adjusted_mode =3D
>  		&pipe_config->hw.adjusted_mode;
> diff --git a/drivers/gpu/drm/i915/display/vlv_dsi.c b/drivers/gpu/drm/i91=
5/display/vlv_dsi.c
> index 9b33b8a74d64..63f4af601d15 100644
> --- a/drivers/gpu/drm/i915/display/vlv_dsi.c
> +++ b/drivers/gpu/drm/i915/display/vlv_dsi.c
> @@ -273,8 +273,7 @@ static int intel_dsi_compute_config(struct intel_enco=
der *encoder,
>  				    struct drm_connector_state *conn_state)
>  {
>  	struct drm_i915_private *dev_priv =3D to_i915(encoder->base.dev);
> -	struct intel_dsi *intel_dsi =3D container_of(encoder, struct intel_dsi,
> -						   base);
> +	struct intel_dsi *intel_dsi =3D enc_to_intel_dsi(encoder);
>  	struct intel_connector *intel_connector =3D intel_dsi->attached_connect=
or;
>  	struct drm_display_mode *adjusted_mode =3D &pipe_config->hw.adjusted_mo=
de;
>  	int ret;

--=20
Jani Nikula, Intel
