Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 529631F46B6
	for <lists+intel-gfx@lfdr.de>; Tue,  9 Jun 2020 20:59:21 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id B2ED76E0C1;
	Tue,  9 Jun 2020 18:59:19 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 176636E0C1
 for <intel-gfx@lists.freedesktop.org>; Tue,  9 Jun 2020 18:59:18 +0000 (UTC)
IronPort-SDR: MfU6wksAnhGIz4ydI/JatPusXrOSPl0LIVZGljWKi88ou+kl8iMdhrAQ5/uUkXTcbA2Fz36Nh6
 sA70Z4VmrDxw==
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
 by orsmga102.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 09 Jun 2020 11:59:17 -0700
IronPort-SDR: IqTADkDITazSupKLmXE8J/rDcc1GWmts+EwerkAmz57l+Iq9F5K+EJp6z3XlxACwu/PchCl/Il
 Gki+GD6zKr1g==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.73,493,1583222400"; d="scan'208";a="306289170"
Received: from labuser-z97x-ud5h.jf.intel.com (HELO intel.com)
 ([10.165.21.211])
 by fmsmga002.fm.intel.com with ESMTP; 09 Jun 2020 11:59:17 -0700
Date: Tue, 9 Jun 2020 12:00:14 -0700
From: Manasi Navare <manasi.d.navare@intel.com>
To: Imre Deak <imre.deak@intel.com>
Message-ID: <20200609190014.GB26705@intel.com>
References: <20200608182650.13642-1-imre.deak@intel.com>
 <20200609184140.4937-1-imre.deak@intel.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200609184140.4937-1-imre.deak@intel.com>
User-Agent: Mutt/1.5.24 (2015-08-30)
Subject: Re: [Intel-gfx] [PATCH] drm/i915: Fix the i915_dsc_fec_support
 debugfs file for DP MST connectors
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

On Tue, Jun 09, 2020 at 09:41:40PM +0300, Imre Deak wrote:
> DSC is not supported on DP MST streams so just don't add this entry for
> MST connectors.
> =

> This also fixes an OOPS, caused by the encoder->digport cast, which is
> not valid for MST encoders.
> =

> v2:
> - Check encoder, which is unset for an MST connector, before it gets
>   enabled.
> v3:
> - Just don't add this debugfs file for MST connectors. (Ville)
> =

> Cc: Ville Syrj=E4l=E4 <ville.syrjala@linux.intel.com>
> Signed-off-by: Imre Deak <imre.deak@intel.com>

Yes now just not having this debugfs entry for MST connectors makes sense
once we support it on MST we can expose it the right way

Reviewed-by: Manasi Navare <manasi.d.navare@intel.com>

Manasi

> ---
>  drivers/gpu/drm/i915/display/intel_display_debugfs.c | 3 ++-
>  1 file changed, 2 insertions(+), 1 deletion(-)
> =

> diff --git a/drivers/gpu/drm/i915/display/intel_display_debugfs.c b/drive=
rs/gpu/drm/i915/display/intel_display_debugfs.c
> index 2b640d8ab9d2..28dd717e943a 100644
> --- a/drivers/gpu/drm/i915/display/intel_display_debugfs.c
> +++ b/drivers/gpu/drm/i915/display/intel_display_debugfs.c
> @@ -2218,7 +2218,8 @@ int intel_connector_debugfs_add(struct drm_connecto=
r *connector)
>  	}
>  =

>  	if (INTEL_GEN(dev_priv) >=3D 10 &&
> -	    (connector->connector_type =3D=3D DRM_MODE_CONNECTOR_DisplayPort ||
> +	    ((connector->connector_type =3D=3D DRM_MODE_CONNECTOR_DisplayPort &&
> +	      !to_intel_connector(connector)->mst_port) ||
>  	     connector->connector_type =3D=3D DRM_MODE_CONNECTOR_eDP))
>  		debugfs_create_file("i915_dsc_fec_support", S_IRUGO, root,
>  				    connector, &i915_dsc_fec_support_fops);
> -- =

> 2.23.1
> =

> _______________________________________________
> Intel-gfx mailing list
> Intel-gfx@lists.freedesktop.org
> https://lists.freedesktop.org/mailman/listinfo/intel-gfx
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
