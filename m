Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 700A9523614
	for <lists+intel-gfx@lfdr.de>; Wed, 11 May 2022 16:47:20 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id A77FC10E34B;
	Wed, 11 May 2022 14:47:18 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga18.intel.com (mga18.intel.com [134.134.136.126])
 by gabe.freedesktop.org (Postfix) with ESMTPS id A7EB410E0A3
 for <intel-gfx@lists.freedesktop.org>; Wed, 11 May 2022 14:47:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1652280436; x=1683816436;
 h=from:to:cc:subject:in-reply-to:references:date:
 message-id:mime-version:content-transfer-encoding;
 bh=O9+0UvbpP2LeAqs+QA4WRTFX+NSdof+spreV/nLUTfM=;
 b=ZvNgIEDfL/fIYxkwjsphVeye308QwLmoZPgD6SjyhiQEWuE4RsDrdUw7
 Q4goSDdDbQ/0gWldXzoIFluSNSXVwp1w+oAhxe4N5owEgOOztKMidfYPu
 nTVVDg2N/SVi8WU4jv0uJ0IEwFYcSilqE+OpSjjamxwgf6Jz37G9kqaAa
 k7R0lWQmWoklIgZVxQdiW9gYBRjj+kf9ZjmD4Gj0oU0cIaFCS9cGjyCkD
 KpaY9lhaDWXhiWSVoS/t7L7j48tyUoA4+wC86J9kNko8xW965Zx++HcPO
 9CRQxUm2keih7VQIFPbZVEXlk/qWyAd2Fw/2rPD9xkCrPiimqquWEWlUy w==;
X-IronPort-AV: E=McAfee;i="6400,9594,10344"; a="251770378"
X-IronPort-AV: E=Sophos;i="5.91,217,1647327600"; d="scan'208";a="251770378"
Received: from orsmga005.jf.intel.com ([10.7.209.41])
 by orsmga106.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 11 May 2022 07:47:16 -0700
X-IronPort-AV: E=Sophos;i="5.91,217,1647327600"; d="scan'208";a="739248322"
Received: from kniesyn-mobl1.ger.corp.intel.com (HELO localhost)
 ([10.249.131.79])
 by orsmga005-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 11 May 2022 07:47:14 -0700
From: Jani Nikula <jani.nikula@intel.com>
To: Imre Deak <imre.deak@intel.com>, intel-gfx@lists.freedesktop.org
In-Reply-To: <20220510114957.406070-1-imre.deak@intel.com>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
References: <20220510114957.406070-1-imre.deak@intel.com>
Date: Wed, 11 May 2022 17:47:11 +0300
Message-ID: <87k0asi0sw.fsf@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: quoted-printable
Subject: Re: [Intel-gfx] [PATCH] drm/i915: Fix 'mixing different enum types'
 warnings in intel_display_power.c
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

On Tue, 10 May 2022, Imre Deak <imre.deak@intel.com> wrote:
> Fix the following sparse warnings:
>
> drivers/gpu/drm/i915/display/intel_display_power.c:2431:34: warning: mixi=
ng different enum types:
> drivers/gpu/drm/i915/display/intel_display_power.c:2431:34:    unsigned i=
nt enum intel_display_power_domain
> drivers/gpu/drm/i915/display/intel_display_power.c:2431:34:    int enum p=
ort
> drivers/gpu/drm/i915/display/intel_display_power.c:2442:37: warning: mixi=
ng different enum types:
> drivers/gpu/drm/i915/display/intel_display_power.c:2442:37:    unsigned i=
nt enum intel_display_power_domain
> drivers/gpu/drm/i915/display/intel_display_power.c:2442:37:    int enum p=
ort
> drivers/gpu/drm/i915/display/intel_display_power.c:2468:43: warning: mixi=
ng different enum types:
> drivers/gpu/drm/i915/display/intel_display_power.c:2468:43:    unsigned i=
nt enum intel_display_power_domain
> drivers/gpu/drm/i915/display/intel_display_power.c:2468:43:    unsigned i=
nt enum aux_ch
> drivers/gpu/drm/i915/display/intel_display_power.c:2479:35: warning: mixi=
ng different enum types:
> drivers/gpu/drm/i915/display/intel_display_power.c:2479:35:    unsigned i=
nt enum intel_display_power_domain
> drivers/gpu/drm/i915/display/intel_display_power.c:2479:35:    unsigned i=
nt enum aux_ch
>
> Fixes: 979e1b32e0e2 ("drm/i915: Sanitize the port -> DDI/AUX power domain=
 mapping for each platform")
> Reported-by: Jani Nikula <jani.nikula@intel.com>
> Cc: Jouni H=C3=B6gander <jouni.hogander@intel.com>
> Signed-off-by: Imre Deak <imre.deak@intel.com>

Reviewed-by: Jani Nikula <jani.nikula@intel.com>

> ---
>  drivers/gpu/drm/i915/display/intel_display_power.c | 8 ++++----
>  1 file changed, 4 insertions(+), 4 deletions(-)
>
> diff --git a/drivers/gpu/drm/i915/display/intel_display_power.c b/drivers=
/gpu/drm/i915/display/intel_display_power.c
> index 1d9bd5808849f..949edc983a169 100644
> --- a/drivers/gpu/drm/i915/display/intel_display_power.c
> +++ b/drivers/gpu/drm/i915/display/intel_display_power.c
> @@ -2428,7 +2428,7 @@ intel_display_power_ddi_io_domain(struct drm_i915_p=
rivate *i915, enum port port)
>  	if (drm_WARN_ON(&i915->drm, !domains) || domains->ddi_io =3D=3D POWER_D=
OMAIN_INVALID)
>  		return POWER_DOMAIN_PORT_DDI_IO_A;
>=20=20
> -	return domains->ddi_io + port - domains->port_start;
> +	return domains->ddi_io + (int)(port - domains->port_start);
>  }
>=20=20
>  enum intel_display_power_domain
> @@ -2439,7 +2439,7 @@ intel_display_power_ddi_lanes_domain(struct drm_i91=
5_private *i915, enum port po
>  	if (drm_WARN_ON(&i915->drm, !domains) || domains->ddi_lanes =3D=3D POWE=
R_DOMAIN_INVALID)
>  		return POWER_DOMAIN_PORT_DDI_LANES_A;
>=20=20
> -	return domains->ddi_lanes + port - domains->port_start;
> +	return domains->ddi_lanes + (int)(port - domains->port_start);
>  }
>=20=20
>  static const struct intel_ddi_port_domains *
> @@ -2465,7 +2465,7 @@ intel_display_power_legacy_aux_domain(struct drm_i9=
15_private *i915, enum aux_ch
>  	if (drm_WARN_ON(&i915->drm, !domains) || domains->aux_legacy_usbc =3D=
=3D POWER_DOMAIN_INVALID)
>  		return POWER_DOMAIN_AUX_A;
>=20=20
> -	return domains->aux_legacy_usbc + aux_ch - domains->aux_ch_start;
> +	return domains->aux_legacy_usbc + (int)(aux_ch - domains->aux_ch_start);
>  }
>=20=20
>  enum intel_display_power_domain
> @@ -2476,5 +2476,5 @@ intel_display_power_tbt_aux_domain(struct drm_i915_=
private *i915, enum aux_ch au
>  	if (drm_WARN_ON(&i915->drm, !domains) || domains->aux_tbt =3D=3D POWER_=
DOMAIN_INVALID)
>  		return POWER_DOMAIN_AUX_TBT1;
>=20=20
> -	return domains->aux_tbt + aux_ch - domains->aux_ch_start;
> +	return domains->aux_tbt + (int)(aux_ch - domains->aux_ch_start);
>  }

--=20
Jani Nikula, Intel Open Source Graphics Center
