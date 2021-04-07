Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id B104B357235
	for <lists+intel-gfx@lfdr.de>; Wed,  7 Apr 2021 18:34:57 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 661F56E057;
	Wed,  7 Apr 2021 16:34:55 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga05.intel.com (mga05.intel.com [192.55.52.43])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 03B546E057
 for <intel-gfx@lists.freedesktop.org>; Wed,  7 Apr 2021 16:34:53 +0000 (UTC)
IronPort-SDR: 5kqF78auO95rG3PwAEdKoPXgclTxxl9sruLTIi2+3IXNYc9Pvax940+0u8bmahew35WGT+f2GA
 NU3/LYE6dpYw==
X-IronPort-AV: E=McAfee;i="6000,8403,9947"; a="278613370"
X-IronPort-AV: E=Sophos;i="5.82,203,1613462400"; d="scan'208";a="278613370"
Received: from fmsmga008.fm.intel.com ([10.253.24.58])
 by fmsmga105.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 07 Apr 2021 09:34:53 -0700
IronPort-SDR: MH5hwMcGRORpjQZqM8n+1N8J6UzzEX28yImqYCH1YSGUEV6xgVXxn74zn82rdoSTBPD2yGtNDn
 MgQHjQjBS7uQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.82,203,1613462400"; d="scan'208";a="415347307"
Received: from stinkbox.fi.intel.com (HELO stinkbox) ([10.237.72.171])
 by fmsmga008.fm.intel.com with SMTP; 07 Apr 2021 09:34:50 -0700
Received: by stinkbox (sSMTP sendmail emulation);
 Wed, 07 Apr 2021 19:34:46 +0300
Date: Wed, 7 Apr 2021 19:34:46 +0300
From: Ville =?iso-8859-1?Q?Syrj=E4l=E4?= <ville.syrjala@linux.intel.com>
To: Takashi Iwai <tiwai@suse.de>
Message-ID: <YG3fJq6wkeQGafSS@intel.com>
References: <20210402082317.871-1-tiwai@suse.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20210402082317.871-1-tiwai@suse.de>
X-Patchwork-Hint: comment
Subject: Re: [Intel-gfx] [PATCH v2] drm/i915: Fix invalid access to ACPI
 _DSM objects
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
Cc: intel-gfx@lists.freedesktop.org, linux-kernel@vger.kernel.org
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Fri, Apr 02, 2021 at 10:23:17AM +0200, Takashi Iwai wrote:
> intel_dsm_platform_mux_info() tries to parse the ACPI package data
> from _DSM for the debug information, but it assumes the fixed format
> without checking what values are stored in the elements actually.
> When an unexpected value is returned from BIOS, it may lead to GPF or
> NULL dereference, as reported recently.
> =

> Add the checks of the contents in the returned values and skip the
> values for invalid cases.
> =

> v1->v2: Check the info contents before dereferencing, too
> =

> BugLink: http://bugzilla.opensuse.org/show_bug.cgi?id=3D1184074
> Cc: <stable@vger.kernel.org>
> Signed-off-by: Takashi Iwai <tiwai@suse.de>
> ---
>  drivers/gpu/drm/i915/display/intel_acpi.c | 22 ++++++++++++++++++++--
>  1 file changed, 20 insertions(+), 2 deletions(-)
> =

> diff --git a/drivers/gpu/drm/i915/display/intel_acpi.c b/drivers/gpu/drm/=
i915/display/intel_acpi.c
> index e21fb14d5e07..833d0c1be4f1 100644
> --- a/drivers/gpu/drm/i915/display/intel_acpi.c
> +++ b/drivers/gpu/drm/i915/display/intel_acpi.c
> @@ -84,13 +84,31 @@ static void intel_dsm_platform_mux_info(acpi_handle d=
handle)
>  		return;
>  	}
>  =

> +	if (!pkg->package.count) {
> +		DRM_DEBUG_DRIVER("no connection in _DSM\n");
> +		return;
> +	}
> +
>  	connector_count =3D &pkg->package.elements[0];
>  	DRM_DEBUG_DRIVER("MUX info connectors: %lld\n",
>  		  (unsigned long long)connector_count->integer.value);
>  	for (i =3D 1; i < pkg->package.count; i++) {
>  		union acpi_object *obj =3D &pkg->package.elements[i];
> -		union acpi_object *connector_id =3D &obj->package.elements[0];
> -		union acpi_object *info =3D &obj->package.elements[1];
> +		union acpi_object *connector_id;
> +		union acpi_object *info;
> +
> +		if (obj->type !=3D ACPI_TYPE_PACKAGE || obj->package.count < 2) {
> +			DRM_DEBUG_DRIVER("Invalid object for MUX #%d\n", i);
> +			continue;
> +		}
> +
> +		connector_id =3D &obj->package.elements[0];

You don't want to check connector_id->type as well?

> +		info =3D &obj->package.elements[1];
> +		if (info->type !=3D ACPI_TYPE_BUFFER || info->buffer.length < 4) {
> +			DRM_DEBUG_DRIVER("Invalid info for MUX obj #%d\n", i);
> +			continue;
> +		}
> +
>  		DRM_DEBUG_DRIVER("Connector id: 0x%016llx\n",
>  			  (unsigned long long)connector_id->integer.value);
>  		DRM_DEBUG_DRIVER("  port id: %s\n",
> -- =

> 2.26.2
> =

> _______________________________________________
> Intel-gfx mailing list
> Intel-gfx@lists.freedesktop.org
> https://lists.freedesktop.org/mailman/listinfo/intel-gfx

-- =

Ville Syrj=E4l=E4
Intel
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
