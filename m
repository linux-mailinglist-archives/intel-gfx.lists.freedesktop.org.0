Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id EA87E4F85A1
	for <lists+intel-gfx@lfdr.de>; Thu,  7 Apr 2022 19:13:14 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 276E410EBE2;
	Thu,  7 Apr 2022 17:13:13 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga18.intel.com (mga18.intel.com [134.134.136.126])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 1E5EA10EBE2
 for <intel-gfx@lists.freedesktop.org>; Thu,  7 Apr 2022 17:13:12 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1649351592; x=1680887592;
 h=from:to:subject:in-reply-to:references:date:message-id:
 mime-version:content-transfer-encoding;
 bh=F0bZaIZiptfgL7375YWxS+HIk16o2V+LyumkoxQeUuA=;
 b=Pmtu49tEWnIWGPh30byYttraUHSL3rITVB/DCvs6R0m6eGNau4w2eJz+
 0b0vNcKLCHLlc2AX1z9sxgdvV9LMqfopx8talUGu6fzbMh8qjFueglgA9
 agXbUlXu4KVzvvOkFgL8DS1JDd31oQP90IofZ5exOOmVG5yXuE8eysldP
 dnrzJ0egzYxHVT9eaJVy7CwUeF2LSwriJywzoJ+IBAABsALqg70ySPkOm
 VwQDSrDXeG0QfcqyLjmIvBa0TvjWcaRq6GWNWme2eu6uARz+5BGvUqH0D
 zEAxkNCf+TN16LzJ2NszUJkKz9VPQP0/H2jEGiKFhKL2Ob7T05IDE5QTv g==;
X-IronPort-AV: E=McAfee;i="6400,9594,10310"; a="243519487"
X-IronPort-AV: E=Sophos;i="5.90,242,1643702400"; d="scan'208";a="243519487"
Received: from orsmga006.jf.intel.com ([10.7.209.51])
 by orsmga106.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 07 Apr 2022 10:13:11 -0700
X-IronPort-AV: E=Sophos;i="5.90,242,1643702400"; d="scan'208";a="525012494"
Received: from kgibala-mobl.ger.corp.intel.com (HELO localhost)
 ([10.249.142.48])
 by orsmga006-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 07 Apr 2022 10:13:09 -0700
From: Jani Nikula <jani.nikula@linux.intel.com>
To: Ville Syrjala <ville.syrjala@linux.intel.com>,
 intel-gfx@lists.freedesktop.org
In-Reply-To: <20220405173410.11436-12-ville.syrjala@linux.intel.com>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
References: <20220405173410.11436-1-ville.syrjala@linux.intel.com>
 <20220405173410.11436-12-ville.syrjala@linux.intel.com>
Date: Thu, 07 Apr 2022 20:13:06 +0300
Message-ID: <87fsmo4y1p.fsf@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: quoted-printable
Subject: Re: [Intel-gfx] [PATCH v2 11/22] drm/i915/bios: Split
 parse_driver_features() into two parts
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

On Tue, 05 Apr 2022, Ville Syrjala <ville.syrjala@linux.intel.com> wrote:
> From: Ville Syrj=C3=A4l=C3=A4 <ville.syrjala@linux.intel.com>
>
> We use the "driver features" block for two different kinds
> of data: global data, and per panel data. Split the function
> into two parts along that line so that we can start doing the
> parsing in two different locations.
>
> Signed-off-by: Ville Syrj=C3=A4l=C3=A4 <ville.syrjala@linux.intel.com>

Reviewed-by: Jani Nikula <jani.nikula@intel.com>


> ---
>  drivers/gpu/drm/i915/display/intel_bios.c | 11 +++++++++++
>  1 file changed, 11 insertions(+)
>
> diff --git a/drivers/gpu/drm/i915/display/intel_bios.c b/drivers/gpu/drm/=
i915/display/intel_bios.c
> index 502d4c679198..1a7f1aa79827 100644
> --- a/drivers/gpu/drm/i915/display/intel_bios.c
> +++ b/drivers/gpu/drm/i915/display/intel_bios.c
> @@ -1097,6 +1097,16 @@ parse_driver_features(struct drm_i915_private *i91=
5)
>  		    driver->lvds_config !=3D BDB_DRIVER_FEATURE_INT_SDVO_LVDS)
>  			i915->vbt.int_lvds_support =3D 0;
>  	}
> +}
> +
> +static void
> +parse_panel_driver_features(struct drm_i915_private *i915)
> +{
> +	const struct bdb_driver_features *driver;
> +
> +	driver =3D find_section(i915, BDB_DRIVER_FEATURES);
> +	if (!driver)
> +		return;
>=20=20
>  	if (i915->vbt.version < 228) {
>  		drm_dbg_kms(&i915->drm, "DRRS State Enabled:%d\n",
> @@ -2883,6 +2893,7 @@ void intel_bios_init(struct drm_i915_private *i915)
>  	parse_lfp_backlight(i915);
>  	parse_sdvo_panel_data(i915);
>  	parse_driver_features(i915);
> +	parse_panel_driver_features(i915);
>  	parse_power_conservation_features(i915);
>  	parse_edp(i915);
>  	parse_psr(i915);

--=20
Jani Nikula, Intel Open Source Graphics Center
