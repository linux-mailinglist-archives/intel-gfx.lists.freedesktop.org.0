Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 006657A6089
	for <lists+intel-gfx@lfdr.de>; Tue, 19 Sep 2023 13:03:59 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 3EB1410E398;
	Tue, 19 Sep 2023 11:03:58 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.55.52.115])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 71E8E10E398
 for <intel-gfx@lists.freedesktop.org>; Tue, 19 Sep 2023 11:03:56 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1695121436; x=1726657436;
 h=from:to:subject:in-reply-to:references:date:message-id:
 mime-version:content-transfer-encoding;
 bh=/M43a13I3W20ewn7DvhhXqSTYQTde7lI5peo7wj04vA=;
 b=DDmMMJ7KxC6JQymubmiodVbCaLe+sd4q+gbi66AD8OvkOSBY+QtT5qjC
 V5gNXqYf5A1pfnwv+c52tP47UzT4wa44gRKcdAYd14Hn97un0g0xb+okn
 OZpuZMb1JZmugSTbwrA7RHqgkPo78Bw3sUs78G6Wos5CZskKaXSdpUuuH
 cvTsfASMjiMIR2+7gP1KHMbSVCoKjcx8mih3+Atx08mKRmKw7npmhwUhq
 JTimZKa1qKUxBjwVZh/YjseK8GcpyK7Jptv1oSUdQ213Jpt9BwMJ/wCIL
 9lM6P4SHUvjWcBF3e/iZrnnSHd3NK4oRKcqvxXg34jJPE4dJXI5gV9MdG A==;
X-IronPort-AV: E=McAfee;i="6600,9927,10837"; a="379815194"
X-IronPort-AV: E=Sophos;i="6.02,159,1688454000"; d="scan'208";a="379815194"
Received: from orsmga002.jf.intel.com ([10.7.209.21])
 by fmsmga103.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 19 Sep 2023 04:03:55 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10837"; a="746199751"
X-IronPort-AV: E=Sophos;i="6.02,159,1688454000"; d="scan'208";a="746199751"
Received: from tjquresh-mobl.ger.corp.intel.com (HELO localhost)
 ([10.252.37.227])
 by orsmga002-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 19 Sep 2023 04:03:54 -0700
From: Jani Nikula <jani.nikula@linux.intel.com>
To: Ville Syrjala <ville.syrjala@linux.intel.com>,
 intel-gfx@lists.freedesktop.org
In-Reply-To: <20230919095659.10742-1-ville.syrjala@linux.intel.com>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
References: <20230919095659.10742-1-ville.syrjala@linux.intel.com>
Date: Tue, 19 Sep 2023 14:03:51 +0300
Message-ID: <87a5titofc.fsf@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: quoted-printable
Subject: Re: [Intel-gfx] [PATCH] Revert "drm/i915/mst: Populate
 connector->ddc"
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

On Tue, 19 Sep 2023, Ville Syrjala <ville.syrjala@linux.intel.com> wrote:
> From: Ville Syrj=C3=A4l=C3=A4 <ville.syrjala@linux.intel.com>
>
> This reverts commit 959fb1a686528df1b8fb0cc7bec8ff851b1594a5.
>
> Looks like the core MST code might not call i2c_adapter() for us
> in time, and thus creating the ddc symlink will fail. This will
> in fact fail the entire connector registration, but the MST code
> doesn't really seem to care about that and blindly plows ahead.
> All we may get in the logs is a nearly back to back
> register+unregister debug messages:
>  [drm:drm_dp_mst_connector_late_register [drm_display_helper]] registerin=
g DPMST remote bus for card0-DP-7
>  [drm:intel_dp_hpd_pulse [i915]] DPRX ESI: 42 00 00 02
>  [drm:drm_dp_mst_connector_early_unregister [drm_display_helper]] unregis=
tering DPMST remote bus for card0-DP-7
>
> Untangling the initialization order may take some real work,
> so let's just revert the ddc symlink addition for now...
>
> Closes: https://gitlab.freedesktop.org/drm/intel/-/issues/9357
> Fixes: 959fb1a68652 ("drm/i915/mst: Populate connector->ddc")
> Signed-off-by: Ville Syrj=C3=A4l=C3=A4 <ville.syrjala@linux.intel.com>

Acked-by: Jani Nikula <jani.nikula@intel.com>

> ---
>  drivers/gpu/drm/i915/display/intel_dp_mst.c | 6 ++----
>  1 file changed, 2 insertions(+), 4 deletions(-)
>
> diff --git a/drivers/gpu/drm/i915/display/intel_dp_mst.c b/drivers/gpu/dr=
m/i915/display/intel_dp_mst.c
> index 80411ce85fc0..ff3accebf0a8 100644
> --- a/drivers/gpu/drm/i915/display/intel_dp_mst.c
> +++ b/drivers/gpu/drm/i915/display/intel_dp_mst.c
> @@ -1110,10 +1110,8 @@ static struct drm_connector *intel_dp_add_mst_conn=
ector(struct drm_dp_mst_topolo
>  	drm_dp_mst_get_port_malloc(port);
>=20=20
>  	connector =3D &intel_connector->base;
> -	ret =3D drm_connector_init_with_ddc(dev, connector,
> -					  &intel_dp_mst_connector_funcs,
> -					  DRM_MODE_CONNECTOR_DisplayPort,
> -					  &port->aux.ddc);
> +	ret =3D drm_connector_init(dev, connector, &intel_dp_mst_connector_func=
s,
> +				 DRM_MODE_CONNECTOR_DisplayPort);
>  	if (ret) {
>  		drm_dp_mst_put_port_malloc(port);
>  		intel_connector_free(intel_connector);

--=20
Jani Nikula, Intel
