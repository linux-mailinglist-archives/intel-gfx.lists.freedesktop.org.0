Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 185E15AB306
	for <lists+intel-gfx@lfdr.de>; Fri,  2 Sep 2022 16:09:34 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id AB2E210E85B;
	Fri,  2 Sep 2022 14:09:29 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga07.intel.com (mga07.intel.com [134.134.136.100])
 by gabe.freedesktop.org (Postfix) with ESMTPS id BC99610E85B
 for <intel-gfx@lists.freedesktop.org>; Fri,  2 Sep 2022 14:09:26 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1662127766; x=1693663766;
 h=from:to:subject:in-reply-to:references:date:message-id:
 mime-version:content-transfer-encoding;
 bh=s3YPb7HDXQDB2tbogH+JWEm19WE85JF62h4XQ6hpHSE=;
 b=n74Fsb7MKtdSgbIMGSIH731Ni51oJdgPwEKVVAhC5ILJ52tluaZt6dVG
 3VEvTE9F6lZGUV783pv1LdCDgS0dL77ovyO+6w1/AKhmVMYQIBM77eLkH
 xop8TzOWnGhNVv7WKliSHrJ8NhVNPQKfgSg9jNat1JCKsyn51KhX00I/k
 dvUTJghy8hUdiqsNfm0hqbD2mJDNUuH8Rp55tl3H3NZDQpxWzeyKYd+Qx
 ehN+NDAKOKGBwCkO3xnggJ8QgRhmtJ87ucE/Xx/Y4o74QdduBs+aQlNXW
 Qz8Z218n8vpEmHgcd5mibMX2XKl3FtUoicqcYv5C8gpCNXB7GuDxa3pJ4 w==;
X-IronPort-AV: E=McAfee;i="6500,9779,10457"; a="359945246"
X-IronPort-AV: E=Sophos;i="5.93,283,1654585200"; d="scan'208";a="359945246"
Received: from fmsmga008.fm.intel.com ([10.253.24.58])
 by orsmga105.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 02 Sep 2022 07:09:21 -0700
X-IronPort-AV: E=Sophos;i="5.93,283,1654585200"; d="scan'208";a="674366350"
Received: from svandene-mobl.ger.corp.intel.com (HELO localhost)
 ([10.252.55.245])
 by fmsmga008-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 02 Sep 2022 07:09:20 -0700
From: Jani Nikula <jani.nikula@linux.intel.com>
To: Ville Syrjala <ville.syrjala@linux.intel.com>,
 intel-gfx@lists.freedesktop.org
In-Reply-To: <20220715202044.11153-9-ville.syrjala@linux.intel.com>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
References: <20220715202044.11153-1-ville.syrjala@linux.intel.com>
 <20220715202044.11153-9-ville.syrjala@linux.intel.com>
Date: Fri, 02 Sep 2022 17:09:09 +0300
Message-ID: <8735d9eum2.fsf@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: quoted-printable
Subject: Re: [Intel-gfx] [PATCH 08/12] drm/i915: Define more VBT driver
 features block bits
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

On Fri, 15 Jul 2022, Ville Syrjala <ville.syrjala@linux.intel.com> wrote:
> From: Ville Syrj=C3=A4l=C3=A4 <ville.syrjala@linux.intel.com>
>
> Define some additoonal bits in the driver features VBT block.

*additional

>
> Signed-off-by: Ville Syrj=C3=A4l=C3=A4 <ville.syrjala@linux.intel.com>

Reviewed-by: Jani Nikula <jani.nikula@intel.com>

> ---
>  drivers/gpu/drm/i915/display/intel_vbt_defs.h | 14 ++++++++++----
>  1 file changed, 10 insertions(+), 4 deletions(-)
>
> diff --git a/drivers/gpu/drm/i915/display/intel_vbt_defs.h b/drivers/gpu/=
drm/i915/display/intel_vbt_defs.h
> index c04937aa75b2..2feba1e69a6d 100644
> --- a/drivers/gpu/drm/i915/display/intel_vbt_defs.h
> +++ b/drivers/gpu/drm/i915/display/intel_vbt_defs.h
> @@ -575,14 +575,19 @@ struct bdb_driver_features {
>=20=20
>  	/* Driver Flags 1 */
>  	u8 static_display:1;					/* 163+ */
> -	u8 reserved2:7;
> +	u8 embedded_platform:1;					/* 163+ */
> +	u8 display_subsystem_enable:1;				/* 163+ */
> +	u8 reserved0:5;
>=20=20
>  	u16 legacy_crt_max_x;
>  	u16 legacy_crt_max_y;
>  	u8 legacy_crt_max_refresh;
>=20=20
>  	/* Extended Driver Bits 2 */
> -	u8 hdmi_termination;
> +	u8 hdmi_termination:1;
> +	u8 cea861d_hdmi_support:1;
> +	u8 self_refresh_enable:1;
> +	u8 reserved1:5;
>=20=20
>  	u8 custom_vbt_version;					/* 165+ */
>=20=20
> @@ -598,9 +603,10 @@ struct bdb_driver_features {
>  	u16 tbt_enabled:1;					/* 165+ */
>  	u16 psr_enabled:1;					/* 165-227 */
>  	u16 ips_enabled:1;					/* 165+ */
> -	u16 reserved3:1;
> +	u16 dpfs_enabled:1;					/* 165+ */
>  	u16 dmrrs_enabled:1;					/* 174-227 */
> -	u16 reserved4:2;
> +	u16 adt_enabled:1;					/* ???-228 */
> +	u16 hpd_wake:1;						/* 201-240 */
>  	u16 pc_feature_valid:1;
>  } __packed;

--=20
Jani Nikula, Intel Open Source Graphics Center
