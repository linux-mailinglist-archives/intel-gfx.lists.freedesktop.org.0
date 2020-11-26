Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 46FB62C5940
	for <lists+intel-gfx@lfdr.de>; Thu, 26 Nov 2020 17:28:22 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id B40806E9A3;
	Thu, 26 Nov 2020 16:28:20 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga12.intel.com (mga12.intel.com [192.55.52.136])
 by gabe.freedesktop.org (Postfix) with ESMTPS id D2B936E9A3
 for <intel-gfx@lists.freedesktop.org>; Thu, 26 Nov 2020 16:28:18 +0000 (UTC)
IronPort-SDR: RHmfZ/6PoxnKJnvGJruzuF1aCYNZ5oSlFZEu1N9ZVBqmuzZfd/n+93Hl4c1yZ8N0zgoR+3+bMj
 hSPto+ELVjqw==
X-IronPort-AV: E=McAfee;i="6000,8403,9817"; a="151560046"
X-IronPort-AV: E=Sophos;i="5.78,372,1599548400"; d="scan'208";a="151560046"
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga001.jf.intel.com ([10.7.209.18])
 by fmsmga106.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 26 Nov 2020 08:28:18 -0800
IronPort-SDR: MKHBgQnBqsM4X3Qqt/WXw5s5Iuk6yKT5LurX6DsiqxFgvSGqD5/nZlfUgOmrVG5OQKCeKWSn2x
 LoUMA1Ji6Wlg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.78,372,1599548400"; d="scan'208";a="403671218"
Received: from stinkbox.fi.intel.com (HELO stinkbox) ([10.237.72.174])
 by orsmga001.jf.intel.com with SMTP; 26 Nov 2020 08:28:15 -0800
Received: by stinkbox (sSMTP sendmail emulation);
 Thu, 26 Nov 2020 18:28:13 +0200
Date: Thu, 26 Nov 2020 18:28:13 +0200
From: Ville =?iso-8859-1?Q?Syrj=E4l=E4?= <ville.syrjala@linux.intel.com>
To: Uma Shankar <uma.shankar@intel.com>
Message-ID: <20201126162813.GH6112@intel.com>
References: <20201126081445.29759-1-uma.shankar@intel.com>
 <20201126081445.29759-7-uma.shankar@intel.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20201126081445.29759-7-uma.shankar@intel.com>
X-Patchwork-Hint: comment
User-Agent: Mutt/1.10.1 (2018-07-13)
Subject: Re: [Intel-gfx] [v11 06/13] drm/i915/display: Attach content type
 property for LSPCON
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
Cc: intel-gfx@lists.freedesktop.org
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Thu, Nov 26, 2020 at 01:44:38PM +0530, Uma Shankar wrote:
> Content type is supported on HDMI sink devices. Attached the
> property for the same for LSPCON based devices.
> =

> v2: Added the content type programming when we are attaching
> the property to connector, as suggested by Ville.
> =

> Signed-off-by: Uma Shankar <uma.shankar@intel.com>

Reviewed-by: Ville Syrj=E4l=E4 <ville.syrjala@linux.intel.com>

> ---
>  drivers/gpu/drm/i915/display/intel_dp.c     | 1 +
>  drivers/gpu/drm/i915/display/intel_lspcon.c | 2 ++
>  2 files changed, 3 insertions(+)
> =

> diff --git a/drivers/gpu/drm/i915/display/intel_dp.c b/drivers/gpu/drm/i9=
15/display/intel_dp.c
> index 5aaa06d73609..c4bbebc8c23d 100644
> --- a/drivers/gpu/drm/i915/display/intel_dp.c
> +++ b/drivers/gpu/drm/i915/display/intel_dp.c
> @@ -6803,6 +6803,7 @@ intel_dp_connector_register(struct drm_connector *c=
onnector)
>  			drm_object_attach_property(&connector->base,
>  						   connector->dev->mode_config.hdr_output_metadata_property,
>  						   0);
> +		drm_connector_attach_content_type_property(connector);
>  	}
>  =

>  	return ret;
> diff --git a/drivers/gpu/drm/i915/display/intel_lspcon.c b/drivers/gpu/dr=
m/i915/display/intel_lspcon.c
> index 9552dfc55e20..0a4c05d67108 100644
> --- a/drivers/gpu/drm/i915/display/intel_lspcon.c
> +++ b/drivers/gpu/drm/i915/display/intel_lspcon.c
> @@ -539,6 +539,8 @@ void lspcon_set_infoframes(struct intel_encoder *enco=
der,
>  		frame.avi.ycc_quantization_range =3D HDMI_YCC_QUANTIZATION_RANGE_LIMIT=
ED;
>  	}
>  =

> +	drm_hdmi_avi_infoframe_content_type(&frame.avi, conn_state);
> +
>  	ret =3D hdmi_infoframe_pack(&frame, buf, sizeof(buf));
>  	if (ret < 0) {
>  		DRM_ERROR("Failed to pack AVI IF\n");
> -- =

> 2.26.2

-- =

Ville Syrj=E4l=E4
Intel
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
