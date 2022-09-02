Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 439D75AADD5
	for <lists+intel-gfx@lfdr.de>; Fri,  2 Sep 2022 13:44:48 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 0EF5810E418;
	Fri,  2 Sep 2022 11:44:39 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga06.intel.com (mga06b.intel.com [134.134.136.31])
 by gabe.freedesktop.org (Postfix) with ESMTPS id D9DC010E418
 for <intel-gfx@lists.freedesktop.org>; Fri,  2 Sep 2022 11:44:35 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1662119075; x=1693655075;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=V1uS/xPqK/QFcX52ZfosrghygmbO0vLyxKHBHy19Buc=;
 b=acmz3v35P7euX7QSE+cwMGWlf1ZNxMIytTyyvra3XQ+bwBug6474xlot
 KHjJmtGgLF3M92rZe6KBBsEWghdHGCcbuCsYmAjSQ28/LgxUyrfhWPXdZ
 jkoleCqao7xDB47THwf34vakvb2Vcd3rS3tamg5q2ZgfRMyUDtPRikbrf
 /9KMETvc5v6Qd3x8ZuoPfFFsu/cVV7iYJ4uROD+VKYOTgDa6SmNtqHH73
 AHG3epVOJavc6w2QpMpkeeD8NKnVEX7hE3Uj315qdy5gjeO7WPYuh7iCP
 wsdSGhums/+x/NFpfoGS41Zug/Vb9TRURzp1DLOb0DfFQLrSzAusjx9UM A==;
X-IronPort-AV: E=McAfee;i="6500,9779,10457"; a="357678915"
X-IronPort-AV: E=Sophos;i="5.93,283,1654585200"; d="scan'208";a="357678915"
Received: from fmsmga007.fm.intel.com ([10.253.24.52])
 by orsmga104.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 02 Sep 2022 04:44:35 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.93,283,1654585200"; d="scan'208";a="615690532"
Received: from fmsmsx601.amr.corp.intel.com ([10.18.126.81])
 by fmsmga007.fm.intel.com with ESMTP; 02 Sep 2022 04:44:35 -0700
Received: from fmsmsx611.amr.corp.intel.com (10.18.126.91) by
 fmsmsx601.amr.corp.intel.com (10.18.126.81) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2375.31; Fri, 2 Sep 2022 04:44:34 -0700
Received: from fmsmsx612.amr.corp.intel.com (10.18.126.92) by
 fmsmsx611.amr.corp.intel.com (10.18.126.91) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2375.31; Fri, 2 Sep 2022 04:44:34 -0700
Received: from fmsmsx612.amr.corp.intel.com ([10.18.126.92]) by
 fmsmsx612.amr.corp.intel.com ([10.18.126.92]) with mapi id 15.01.2375.031;
 Fri, 2 Sep 2022 04:44:34 -0700
From: "Kulkarni, Vandita" <vandita.kulkarni@intel.com>
To: "Nautiyal, Ankit K" <ankit.k.nautiyal@intel.com>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>
Thread-Topic: [PATCH] drm/i915/vdsc: Set VDSC PIC_HEIGHT before using for DP
 DSC
Thread-Index: AQHYvrdTJyxq6AHRQkSWDnTvVmRJb63MBDAw
Date: Fri, 2 Sep 2022 11:44:34 +0000
Message-ID: <6ae34cdb0779453bbebb5e7893f38718@intel.com>
References: <20220902103219.1168781-1-ankit.k.nautiyal@intel.com>
In-Reply-To: <20220902103219.1168781-1-ankit.k.nautiyal@intel.com>
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
Subject: Re: [Intel-gfx] [PATCH] drm/i915/vdsc: Set VDSC PIC_HEIGHT before
 using for DP DSC
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
> From: Nautiyal, Ankit K <ankit.k.nautiyal@intel.com>
> Sent: Friday, September 2, 2022 4:02 PM
> To: intel-gfx@lists.freedesktop.org
> Cc: Navare, Manasi D <manasi.d.navare@intel.com>; Kulkarni, Vandita
> <vandita.kulkarni@intel.com>; Roper, Matthew D
> <matthew.d.roper@intel.com>
> Subject: [PATCH] drm/i915/vdsc: Set VDSC PIC_HEIGHT before using for DP
> DSC
>=20
> Currently, pic_height of vdsc_cfg structure is being used to calculate
> slice_height, before it is set for DP.
>=20
> So taking out the lines to set pic_height from the helper
> intel_dp_dsc_compute_params() to individual encoders, and setting
> pic_height, before it is used to calculate slice_height for DP.
>=20
> Fixes: 5a6d866f8e1b ("drm/i915: Get slice height before computing rc
> params")
> Cc: Manasi Navare <manasi.d.navare@intel.com>
> Cc: Vandita Kulkarni <vandita.kulkarni@intel.com>
> Cc: Matt Roper <matthew.d.roper@intel.com>
>=20
> Signed-off-by: Ankit Nautiyal <ankit.k.nautiyal@intel.com>

Looks good to me. Thanks for fixing this.

Reviewed-by: Vandita Kulkarni <vandita.kulkarni@intel.com>
> ---
>  drivers/gpu/drm/i915/display/icl_dsi.c    | 2 ++
>  drivers/gpu/drm/i915/display/intel_dp.c   | 1 +
>  drivers/gpu/drm/i915/display/intel_vdsc.c | 1 -
>  3 files changed, 3 insertions(+), 1 deletion(-)
>=20
> diff --git a/drivers/gpu/drm/i915/display/icl_dsi.c
> b/drivers/gpu/drm/i915/display/icl_dsi.c
> index 3e20b2f65887..ed4d93942dbd 100644
> --- a/drivers/gpu/drm/i915/display/icl_dsi.c
> +++ b/drivers/gpu/drm/i915/display/icl_dsi.c
> @@ -1630,6 +1630,8 @@ static int gen11_dsi_dsc_compute_config(struct
> intel_encoder *encoder,
>  	/* FIXME: initialize from VBT */
>  	vdsc_cfg->rc_model_size =3D DSC_RC_MODEL_SIZE_CONST;
>=20
> +	vdsc_cfg->pic_height =3D crtc_state-
> >hw.adjusted_mode.crtc_vdisplay;
> +
>  	ret =3D intel_dsc_compute_params(crtc_state);
>  	if (ret)
>  		return ret;
> diff --git a/drivers/gpu/drm/i915/display/intel_dp.c
> b/drivers/gpu/drm/i915/display/intel_dp.c
> index d4e037450ac5..8dd346800112 100644
> --- a/drivers/gpu/drm/i915/display/intel_dp.c
> +++ b/drivers/gpu/drm/i915/display/intel_dp.c
> @@ -1406,6 +1406,7 @@ static int intel_dp_dsc_compute_params(struct
> intel_encoder *encoder,
>  	 * DP_DSC_RC_BUF_SIZE for this.
>  	 */
>  	vdsc_cfg->rc_model_size =3D DSC_RC_MODEL_SIZE_CONST;
> +	vdsc_cfg->pic_height =3D crtc_state-
> >hw.adjusted_mode.crtc_vdisplay;
>=20
>  	/*
>  	 * Slice Height of 8 works for all currently available panels. So start=
 diff
> --git a/drivers/gpu/drm/i915/display/intel_vdsc.c
> b/drivers/gpu/drm/i915/display/intel_vdsc.c
> index d7eb1af328e7..269f9792390d 100644
> --- a/drivers/gpu/drm/i915/display/intel_vdsc.c
> +++ b/drivers/gpu/drm/i915/display/intel_vdsc.c
> @@ -460,7 +460,6 @@ int intel_dsc_compute_params(struct intel_crtc_state
> *pipe_config)
>  	u8 i =3D 0;
>=20
>  	vdsc_cfg->pic_width =3D pipe_config-
> >hw.adjusted_mode.crtc_hdisplay;
> -	vdsc_cfg->pic_height =3D pipe_config-
> >hw.adjusted_mode.crtc_vdisplay;
>  	vdsc_cfg->slice_width =3D DIV_ROUND_UP(vdsc_cfg->pic_width,
>  					     pipe_config->dsc.slice_count);
>=20
> --
> 2.25.1

