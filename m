Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 46B584F86DB
	for <lists+intel-gfx@lfdr.de>; Thu,  7 Apr 2022 20:03:22 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id C14C3898F1;
	Thu,  7 Apr 2022 18:03:16 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
 by gabe.freedesktop.org (Postfix) with ESMTPS id CAB4510EC16;
 Thu,  7 Apr 2022 18:03:14 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1649354595; x=1680890595;
 h=from:to:cc:subject:in-reply-to:references:date:
 message-id:mime-version:content-transfer-encoding;
 bh=id32/+PwLJyDjNcHvStKxdyGVvQ3clTDxV6jg4boD9M=;
 b=YM98MSZKIGu/N/PoJL3u/aibQzEeaSwGagTYSG7ZJjxcoU6Y/3ul93YC
 cyq7ZY4ebxKpca0fnwJhi4Lk7hwGnBnLEooEtEwHr8gkGBaUONmZlBu5E
 1gU+L2QdWy3bHV/2TtFtFngxsidgIUX5ycEJw2ULRl4D0DIgjGJMKO1qZ
 TKtkP6bZVIwe8792CtacJ3vljs5RFljUPvzgRK8xIm7u/yCND32m3zoqM
 +VmEpl4WqY28FvsEvZ/C6g3BXgfdza7W8gOYt+suqjdDQLUGnNewaADQN
 aqrzijUgLXk3tezmqPrlgVrvNKBfLwHjQTcKNHEYqyUCGQSvRSleLdayD g==;
X-IronPort-AV: E=McAfee;i="6400,9594,10310"; a="286384808"
X-IronPort-AV: E=Sophos;i="5.90,242,1643702400"; d="scan'208";a="286384808"
Received: from orsmga006.jf.intel.com ([10.7.209.51])
 by fmsmga101.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 07 Apr 2022 11:02:52 -0700
X-IronPort-AV: E=Sophos;i="5.90,242,1643702400"; d="scan'208";a="525031483"
Received: from kgibala-mobl.ger.corp.intel.com (HELO localhost)
 ([10.249.142.48])
 by orsmga006-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 07 Apr 2022 11:02:50 -0700
From: Jani Nikula <jani.nikula@linux.intel.com>
To: Ville Syrjala <ville.syrjala@linux.intel.com>,
 intel-gfx@lists.freedesktop.org
In-Reply-To: <20220405173410.11436-22-ville.syrjala@linux.intel.com>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
References: <20220405173410.11436-1-ville.syrjala@linux.intel.com>
 <20220405173410.11436-22-ville.syrjala@linux.intel.com>
Date: Thu, 07 Apr 2022 21:02:47 +0300
Message-ID: <87tub43h6g.fsf@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: quoted-printable
Subject: Re: [Intel-gfx] [PATCH v2 21/22] drm/edid: Extract
 drm_edid_decode_mfg_id()
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
Cc: dri-devel@lists.freedesktop.org
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Tue, 05 Apr 2022, Ville Syrjala <ville.syrjala@linux.intel.com> wrote:
> From: Ville Syrj=C3=A4l=C3=A4 <ville.syrjala@linux.intel.com>
>
> Make the PNPID decoding available for other users.
>
> Cc: dri-devel@lists.freedesktop.org
> Signed-off-by: Ville Syrj=C3=A4l=C3=A4 <ville.syrjala@linux.intel.com>

Reviewed-by: Jani Nikula <jani.nikula@intel.com>

> ---
>  include/drm/drm_edid.h | 21 +++++++++++++++++----
>  1 file changed, 17 insertions(+), 4 deletions(-)
>
> diff --git a/include/drm/drm_edid.h b/include/drm/drm_edid.h
> index b7e170584000..5e9d7fcda8e7 100644
> --- a/include/drm/drm_edid.h
> +++ b/include/drm/drm_edid.h
> @@ -508,6 +508,22 @@ static inline u8 drm_eld_get_conn_type(const uint8_t=
 *eld)
>  	return eld[DRM_ELD_SAD_COUNT_CONN_TYPE] & DRM_ELD_CONN_TYPE_MASK;
>  }
>=20=20
> +/**
> + * drm_edid_decode_mfg_id - Decode the manufacturer ID
> + * @mfg_id: The manufacturer ID
> + * @vend: A 4-byte buffer to store the 3-letter vendor string plus a '\0'
> + *	  termination
> + */
> +static inline const char *drm_edid_decode_mfg_id(u16 mfg_id, char vend[4=
])
> +{
> +	vend[0] =3D '@' + ((mfg_id >> 10) & 0x1f);
> +	vend[1] =3D '@' + ((mfg_id >> 5) & 0x1f);
> +	vend[2] =3D '@' + ((mfg_id >> 0) & 0x1f);
> +	vend[3] =3D '\0';
> +
> +	return vend;
> +}
> +
>  /**
>   * drm_edid_encode_panel_id - Encode an ID for matching against drm_edid=
_get_panel_id()
>   * @vend_chr_0: First character of the vendor string.
> @@ -548,10 +564,7 @@ static inline u8 drm_eld_get_conn_type(const uint8_t=
 *eld)
>  static inline void drm_edid_decode_panel_id(u32 panel_id, char vend[4], =
u16 *product_id)
>  {
>  	*product_id =3D (u16)(panel_id & 0xffff);
> -	vend[0] =3D '@' + ((panel_id >> 26) & 0x1f);
> -	vend[1] =3D '@' + ((panel_id >> 21) & 0x1f);
> -	vend[2] =3D '@' + ((panel_id >> 16) & 0x1f);
> -	vend[3] =3D '\0';
> +	drm_edid_decode_mfg_id(panel_id >> 16, vend);
>  }
>=20=20
>  bool drm_probe_ddc(struct i2c_adapter *adapter);

--=20
Jani Nikula, Intel Open Source Graphics Center
