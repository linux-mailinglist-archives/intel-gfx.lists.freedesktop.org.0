Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 6F2FF5F9845
	for <lists+intel-gfx@lfdr.de>; Mon, 10 Oct 2022 08:21:39 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 9DA1310E634;
	Mon, 10 Oct 2022 06:21:37 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga04.intel.com (mga04.intel.com [192.55.52.120])
 by gabe.freedesktop.org (Postfix) with ESMTPS id A11F410E189
 for <intel-gfx@lists.freedesktop.org>; Mon, 10 Oct 2022 06:21:35 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1665382895; x=1696918895;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=y428X8GMPP9RE+xHDhM71S0D+1W+jtyTOO98fSeHgSs=;
 b=btkNpvWJxmEfDaEjf7l5Cv4alpxpWXlS+gnL0A39Km9EGd0Yj2FckJg1
 4gDSueAtjlRFs/GAiWe6nOyNX5f7AVmFjPBxPP6K56Jfz+7OQzUUktH0Q
 +aTm1ftd4wqL1A/D/4G9a1YuUi/4HyB7/dRzs7xJYPH7lHuVj7/mNmNK5
 xHZOUxVl6rzWbxiUcwTXmicV5ONeEgOHQhYWMHtjOOYmE+/XKtm3Q1ois
 SSwTlLNGlDRHpmUlbANk4E7asxvYS5Go9PisPUCOWa2hW83X45c1E43mO
 I0qiT02hYmTiD3q29Ez+beSCsxqUWasxko1AAH6KJuiNVD3CAyf3Nec5k g==;
X-IronPort-AV: E=McAfee;i="6500,9779,10495"; a="302890670"
X-IronPort-AV: E=Sophos;i="5.95,173,1661842800"; d="scan'208";a="302890670"
Received: from fmsmga005.fm.intel.com ([10.253.24.32])
 by fmsmga104.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 09 Oct 2022 23:21:35 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6500,9779,10495"; a="954805723"
X-IronPort-AV: E=Sophos;i="5.95,173,1661842800"; d="scan'208";a="954805723"
Received: from fmsmsx602.amr.corp.intel.com ([10.18.126.82])
 by fmsmga005.fm.intel.com with ESMTP; 09 Oct 2022 23:21:35 -0700
Received: from fmsmsx610.amr.corp.intel.com (10.18.126.90) by
 fmsmsx602.amr.corp.intel.com (10.18.126.82) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2375.31; Sun, 9 Oct 2022 23:21:34 -0700
Received: from fmsmsx612.amr.corp.intel.com (10.18.126.92) by
 fmsmsx610.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2375.31; Sun, 9 Oct 2022 23:21:34 -0700
Received: from fmsmsx612.amr.corp.intel.com ([10.18.126.92]) by
 fmsmsx612.amr.corp.intel.com ([10.18.126.92]) with mapi id 15.01.2375.031;
 Sun, 9 Oct 2022 23:21:34 -0700
From: "Kulkarni, Vandita" <vandita.kulkarni@intel.com>
To: "Kandpal, Suraj" <suraj.kandpal@intel.com>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>
Thread-Topic: [PATCH 3/3] drm/i915/display: Fill in native_420 field
Thread-Index: AQHYzajJ3Ponl6uX5kCyrGn3VMe73a4HRSbw
Date: Mon, 10 Oct 2022 06:21:34 +0000
Message-ID: <5e6ccf2f11a040edaf31516b234196de@intel.com>
References: <20220921105506.2208471-1-suraj.kandpal@intel.com>
 <20220921105506.2208471-4-suraj.kandpal@intel.com>
In-Reply-To: <20220921105506.2208471-4-suraj.kandpal@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
dlp-product: dlpe-windows
dlp-reaction: no-action
dlp-version: 11.6.500.17
x-originating-ip: [10.22.254.132]
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
Subject: Re: [Intel-gfx] [PATCH 3/3] drm/i915/display: Fill in native_420
 field
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



> -----Original Message-----
> From: Kandpal, Suraj <suraj.kandpal@intel.com>
> Sent: Wednesday, September 21, 2022 4:25 PM
> To: intel-gfx@lists.freedesktop.org
> Cc: Nautiyal, Ankit K <ankit.k.nautiyal@intel.com>; Kulkarni, Vandita
> <vandita.kulkarni@intel.com>; Navare, Manasi D
> <manasi.d.navare@intel.com>; Kandpal, Suraj <suraj.kandpal@intel.com>
> Subject: [PATCH 3/3] drm/i915/display: Fill in native_420 field
>=20
> From: Suraj Kandpal <suraj.kandpal@intel.com>
>=20
> Now that we have laid the groundwork for YUV420 Enablement we fill up
> native_420 field in vdsc_cfg and add appropriate checks wherever required=
.
>=20
> Signed-off-by: Suraj Kandpal <suraj.kandpal@intel.com>
> ---
>  drivers/gpu/drm/i915/display/icl_dsi.c    |  2 --
>  drivers/gpu/drm/i915/display/intel_dp.c   |  3 ---
>  drivers/gpu/drm/i915/display/intel_vdsc.c | 16 +++++++++++++++-
>  3 files changed, 15 insertions(+), 6 deletions(-)
>=20
> diff --git a/drivers/gpu/drm/i915/display/icl_dsi.c
> b/drivers/gpu/drm/i915/display/icl_dsi.c
> index ed4d93942dbd..9d2710edd27e 100644
> --- a/drivers/gpu/drm/i915/display/icl_dsi.c
> +++ b/drivers/gpu/drm/i915/display/icl_dsi.c
> @@ -1625,8 +1625,6 @@ static int gen11_dsi_dsc_compute_config(struct
> intel_encoder *encoder,
>  	if (crtc_state->dsc.slice_count > 1)
>  		crtc_state->dsc.dsc_split =3D true;
>=20
> -	vdsc_cfg->convert_rgb =3D true;
> -
>  	/* FIXME: initialize from VBT */
>  	vdsc_cfg->rc_model_size =3D DSC_RC_MODEL_SIZE_CONST;
>=20
> diff --git a/drivers/gpu/drm/i915/display/intel_dp.c
> b/drivers/gpu/drm/i915/display/intel_dp.c
> index f2f77856df83..50ccccf8e121 100644
> --- a/drivers/gpu/drm/i915/display/intel_dp.c
> +++ b/drivers/gpu/drm/i915/display/intel_dp.c
> @@ -1440,9 +1440,6 @@ static int intel_dp_dsc_compute_params(struct
> intel_encoder *encoder,
>  		min(intel_dp_source_dsc_version_minor(intel_dp),
>  		    intel_dp_sink_dsc_version_minor(intel_dp));
>=20
> -	vdsc_cfg->convert_rgb =3D intel_dp-
> >dsc_dpcd[DP_DSC_DEC_COLOR_FORMAT_CAP - DP_DSC_SUPPORT] &
> -		DP_DSC_RGB;
> -
>  	line_buf_depth =3D drm_dp_dsc_sink_line_buf_depth(intel_dp-
> >dsc_dpcd);
>  	if (!line_buf_depth) {
>  		drm_dbg_kms(&i915->drm,
> diff --git a/drivers/gpu/drm/i915/display/intel_vdsc.c
> b/drivers/gpu/drm/i915/display/intel_vdsc.c
> index a642975a1b61..1ab2a2286c74 100644
> --- a/drivers/gpu/drm/i915/display/intel_vdsc.c
> +++ b/drivers/gpu/drm/i915/display/intel_vdsc.c
> @@ -462,14 +462,28 @@ int intel_dsc_compute_params(struct
> intel_crtc_state *pipe_config)
>  	vdsc_cfg->pic_width =3D pipe_config-
> >hw.adjusted_mode.crtc_hdisplay;
>  	vdsc_cfg->slice_width =3D DIV_ROUND_UP(vdsc_cfg->pic_width,
>  					     pipe_config->dsc.slice_count);
> +	/*
> +	 * According to DSC 1.2 specs if colorspace is YCbCr then convert_rgb
> is 0
> +	 * else 1
> +	 */
> +	vdsc_cfg->convert_rgb =3D !(pipe_config->output_format =3D=3D
> INTEL_OUTPUT_FORMAT_YCBCR420 ||
> +				  pipe_config->output_format =3D=3D
> INTEL_OUTPUT_FORMAT_YCBCR444);
>=20
> -	/* Gen 11 does not support YCbCr */
> +	if (pipe_config->output_format =3D=3D
> INTEL_OUTPUT_FORMAT_YCBCR420)
> +		vdsc_cfg->native_420 =3D true;
> +	/* Gen 11 does not support YCbCr422 */
>  	vdsc_cfg->simple_422 =3D false;

From 1.2 onwards we have native_422 as well, so we need to configure it bas=
ed on the output format.
Also, I see that PPS configuration is missing for all 420 and 422 , PPS0 re=
gister, please add that.

Thanks,
Vandita

>  	/* Gen 11 does not support VBR */
>  	vdsc_cfg->vbr_enable =3D false;
>=20
>  	/* Gen 11 only supports integral values of bpp */
>  	vdsc_cfg->bits_per_pixel =3D compressed_bpp << 4;
> +	/*
> +	 * According to DSC 1.2 specs if native_420 is set we need to double
> the current bpp
> +	 */
> +	if (vdsc_cfg->native_420)
> +		vdsc_cfg->bits_per_pixel <<=3D 1;
> +
>  	vdsc_cfg->bits_per_component =3D pipe_config->pipe_bpp / 3;
>=20
>  	for (i =3D 0; i < DSC_NUM_BUF_RANGES - 1; i++) {
> --
> 2.25.1

