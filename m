Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 71B7F379AF1
	for <lists+intel-gfx@lfdr.de>; Tue, 11 May 2021 01:50:13 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id BCC5E6E975;
	Mon, 10 May 2021 23:50:11 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
 by gabe.freedesktop.org (Postfix) with ESMTPS id E63056E975
 for <intel-gfx@lists.freedesktop.org>; Mon, 10 May 2021 23:50:10 +0000 (UTC)
IronPort-SDR: 2FnmwAF1Vsc0j2/C9CZA3SqvSWcbP3Cn5GTdvt2bXzt8reDAuCkj9ph2l96Oz8z4Pf0hnxLPSI
 jjvjx/W+gx3A==
X-IronPort-AV: E=McAfee;i="6200,9189,9980"; a="220266901"
X-IronPort-AV: E=Sophos;i="5.82,288,1613462400"; d="scan'208";a="220266901"
Received: from orsmga008.jf.intel.com ([10.7.209.65])
 by fmsmga101.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 10 May 2021 16:50:09 -0700
IronPort-SDR: /7MYbqlpqiWcc1Cu8I32fN8PUyMQZatUN8c9WGE1PESFdn7hQv1LwLXho+J150l+VJVPN4jx1D
 0Fl/bWcls9nw==
X-IronPort-AV: E=Sophos;i="5.82,288,1613462400"; d="scan'208";a="436368398"
Received: from invictus.jf.intel.com (HELO InViCtUs) ([10.165.21.205])
 by orsmga008-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 10 May 2021 16:50:09 -0700
Date: Mon, 10 May 2021 16:50:08 -0700
From: "Sripada, Radhakrishna" <radhakrishna.sripada@intel.com>
To: =?iso-8859-1?Q?Jos=E9?= Roberto de Souza <jose.souza@intel.com>
Message-ID: <20210510235008.GD31357@InViCtUs>
References: <20210418002126.87882-1-jose.souza@intel.com>
 <20210418002126.87882-4-jose.souza@intel.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20210418002126.87882-4-jose.souza@intel.com>
User-Agent: Mutt/1.10.1 (2018-07-13)
Subject: Re: [Intel-gfx] [PATCH 4/5] drm/i915/display: Drop dead code from
 hsw_read_infoframe()
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

On Sat, Apr 17, 2021 at 05:21:25PM -0700, Jos=E9 Roberto de Souza wrote:
> HSW_TVIDEO_DIP_CTL is read but not used.
> =

Reviewed-by: Radhakrishna Sripada <radhakrishna.sripada@intel.com>
> Signed-off-by: Jos=E9 Roberto de Souza <jose.souza@intel.com>
> ---
>  drivers/gpu/drm/i915/display/intel_hdmi.c | 4 +---
>  1 file changed, 1 insertion(+), 3 deletions(-)
> =

> diff --git a/drivers/gpu/drm/i915/display/intel_hdmi.c b/drivers/gpu/drm/=
i915/display/intel_hdmi.c
> index 47a8f0a1c5e2..de7328685d40 100644
> --- a/drivers/gpu/drm/i915/display/intel_hdmi.c
> +++ b/drivers/gpu/drm/i915/display/intel_hdmi.c
> @@ -542,11 +542,9 @@ void hsw_read_infoframe(struct intel_encoder *encode=
r,
>  {
>  	struct drm_i915_private *dev_priv =3D to_i915(encoder->base.dev);
>  	enum transcoder cpu_transcoder =3D crtc_state->cpu_transcoder;
> -	u32 val, *data =3D frame;
> +	u32 *data =3D frame;
>  	int i;
>  =

> -	val =3D intel_de_read(dev_priv, HSW_TVIDEO_DIP_CTL(cpu_transcoder));
> -
>  	for (i =3D 0; i < len; i +=3D 4)
>  		*data++ =3D intel_de_read(dev_priv,
>  				        hsw_dip_data_reg(dev_priv, cpu_transcoder, type, i >> 2));
> -- =

> 2.31.1
> =

> _______________________________________________
> Intel-gfx mailing list
> Intel-gfx@lists.freedesktop.org
> https://lists.freedesktop.org/mailman/listinfo/intel-gfx
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
