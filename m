Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 5ADC3749783
	for <lists+intel-gfx@lfdr.de>; Thu,  6 Jul 2023 10:30:25 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id D4C8A10E47A;
	Thu,  6 Jul 2023 08:30:23 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga17.intel.com (mga17.intel.com [192.55.52.151])
 by gabe.freedesktop.org (Postfix) with ESMTPS id D743A10E47A
 for <intel-gfx@lists.freedesktop.org>; Thu,  6 Jul 2023 08:30:21 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1688632221; x=1720168221;
 h=from:to:subject:in-reply-to:references:date:message-id:
 mime-version:content-transfer-encoding;
 bh=6KjjZatDCBpkhEFbJmyKQFEhZMSfNI5k41MFYY/YD3w=;
 b=gdVoHgq/X5bh0WSgRTAvs885aZMZKkpnUKDou/lSzOpbjRh/XrbFSjgb
 ZSmwSWsoOhvVsvh8Bd4T8EbWYOD1zx+IDaQJ3vREA0QIv1EPfOozAOmZg
 6MKkOsUg8YQlEkB5t2G7PkodfR1aQJlWvbkR2awNr1jYrX5lKTVYgkhHk
 o7M+Fro7fPvVzj5iCTSSV9W4NerrDJwPJbiAThQZp1M8tGNaBkzm/m4pr
 BTYclOtjHQQXkk5z7po2w1iDou5DYh/na2yqjEj5WgEd6Jvyjeu12Ri/W
 6LoCo+XDOtoyaqi2GWDjpWKwZOXBewcp/CHoKQotLjQY9Q76mxgpk5mCl A==;
X-IronPort-AV: E=McAfee;i="6600,9927,10762"; a="343873833"
X-IronPort-AV: E=Sophos;i="6.01,185,1684825200"; d="scan'208";a="343873833"
Received: from fmsmga007.fm.intel.com ([10.253.24.52])
 by fmsmga107.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 06 Jul 2023 01:30:19 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10762"; a="722725106"
X-IronPort-AV: E=Sophos;i="6.01,185,1684825200"; d="scan'208";a="722725106"
Received: from jmvuilla-mobl2.ger.corp.intel.com (HELO localhost)
 ([10.252.41.105])
 by fmsmga007-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 06 Jul 2023 01:30:18 -0700
From: Jani Nikula <jani.nikula@linux.intel.com>
To: Ville Syrjala <ville.syrjala@linux.intel.com>,
 intel-gfx@lists.freedesktop.org
In-Reply-To: <20230705202122.17915-12-ville.syrjala@linux.intel.com>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
References: <20230705202122.17915-1-ville.syrjala@linux.intel.com>
 <20230705202122.17915-12-ville.syrjala@linux.intel.com>
Date: Thu, 06 Jul 2023 11:30:16 +0300
Message-ID: <87v8exxx0n.fsf@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: quoted-printable
Subject: Re: [Intel-gfx] [PATCH 11/13] drm/i915/sdvo: Get rid of the
 per-connector i2c symlink
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

On Wed, 05 Jul 2023, Ville Syrjala <ville.syrjala@linux.intel.com> wrote:
> From: Ville Syrj=C3=A4l=C3=A4 <ville.syrjala@linux.intel.com>
>
> We should switch over to the standard "ddc" per-connector
> symlink instead of rolling our own thing. The i2c specific
> symlink is also in the way of reworking the SDVO DDC handling
> (which is a mess atm) so get rid of it.
>
> Signed-off-by: Ville Syrj=C3=A4l=C3=A4 <ville.syrjala@linux.intel.com>

Reviewed-by: Jani Nikula <jani.nikula@intel.com>

> ---
>  drivers/gpu/drm/i915/display/intel_sdvo.c | 29 ++---------------------
>  1 file changed, 2 insertions(+), 27 deletions(-)
>
> diff --git a/drivers/gpu/drm/i915/display/intel_sdvo.c b/drivers/gpu/drm/=
i915/display/intel_sdvo.c
> index 383f8b1547a1..5c25417d256a 100644
> --- a/drivers/gpu/drm/i915/display/intel_sdvo.c
> +++ b/drivers/gpu/drm/i915/display/intel_sdvo.c
> @@ -2468,31 +2468,6 @@ intel_sdvo_connector_atomic_set_property(struct dr=
m_connector *connector,
>  	return 0;
>  }
>=20=20
> -static int
> -intel_sdvo_connector_register(struct drm_connector *connector)
> -{
> -	struct intel_sdvo *sdvo =3D intel_attached_sdvo(to_intel_connector(conn=
ector));
> -	int ret;
> -
> -	ret =3D intel_connector_register(connector);
> -	if (ret)
> -		return ret;
> -
> -	return sysfs_create_link(&connector->kdev->kobj,
> -				 &sdvo->ddc.dev.kobj,
> -				 sdvo->ddc.dev.kobj.name);
> -}
> -
> -static void
> -intel_sdvo_connector_unregister(struct drm_connector *connector)
> -{
> -	struct intel_sdvo *sdvo =3D intel_attached_sdvo(to_intel_connector(conn=
ector));
> -
> -	sysfs_remove_link(&connector->kdev->kobj,
> -			  sdvo->ddc.dev.kobj.name);
> -	intel_connector_unregister(connector);
> -}
> -
>  static struct drm_connector_state *
>  intel_sdvo_connector_duplicate_state(struct drm_connector *connector)
>  {
> @@ -2511,8 +2486,8 @@ static const struct drm_connector_funcs intel_sdvo_=
connector_funcs =3D {
>  	.fill_modes =3D drm_helper_probe_single_connector_modes,
>  	.atomic_get_property =3D intel_sdvo_connector_atomic_get_property,
>  	.atomic_set_property =3D intel_sdvo_connector_atomic_set_property,
> -	.late_register =3D intel_sdvo_connector_register,
> -	.early_unregister =3D intel_sdvo_connector_unregister,
> +	.late_register =3D intel_connector_register,
> +	.early_unregister =3D intel_connector_unregister,
>  	.destroy =3D intel_connector_destroy,
>  	.atomic_destroy_state =3D drm_atomic_helper_connector_destroy_state,
>  	.atomic_duplicate_state =3D intel_sdvo_connector_duplicate_state,

--=20
Jani Nikula, Intel Open Source Graphics Center
