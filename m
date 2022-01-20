Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 1C598494BD7
	for <lists+intel-gfx@lfdr.de>; Thu, 20 Jan 2022 11:37:27 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 5B12610E583;
	Thu, 20 Jan 2022 10:37:25 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga17.intel.com (mga17.intel.com [192.55.52.151])
 by gabe.freedesktop.org (Postfix) with ESMTPS id AD8A710E609
 for <intel-gfx@lists.freedesktop.org>; Thu, 20 Jan 2022 10:37:24 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1642675044; x=1674211044;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=ebOblmNNTLSZ+jw9b0Rs6v/jZ2sRFp5zbqhBBbHrYpA=;
 b=RBpUB5qjnum75/yXOlREOkpfD5ObBr7q4aVBl5Ku9orv/mnupqvZaVvH
 kqIleTjf8g5unVz2xENHkVkDWA88fbIRxT6XRxHBl6tXIbAEwkLaitjIn
 Wnfjs6kRdvSxbrOjoUZOJbB1x4VBhYQJv6eHQSUqKcE/IxFtyYHLmXfM9
 VtsSEr31uDwGKjd5b20SrQo+WZ7myfjBbdG1KTTEfkgh5b8xnL3VOu1+M
 WwV0ksXjpSGFh/d6hb0NpbzwxZ2/CRcI39PSLaUoZLTqJ7xt30QmK1olc
 q6vyv/G7hXly1bcLj2GkWXCksaee+1P8oLSXrdHAO2tC3P8+/MOuKxArV w==;
X-IronPort-AV: E=McAfee;i="6200,9189,10232"; a="225996607"
X-IronPort-AV: E=Sophos;i="5.88,302,1635231600"; d="scan'208";a="225996607"
Received: from orsmga006.jf.intel.com ([10.7.209.51])
 by fmsmga107.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 20 Jan 2022 02:37:24 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.88,302,1635231600"; d="scan'208";a="477747088"
Received: from irsmsx606.ger.corp.intel.com ([163.33.146.139])
 by orsmga006.jf.intel.com with ESMTP; 20 Jan 2022 02:37:23 -0800
Received: from bgsmsx604.gar.corp.intel.com (10.67.234.6) by
 IRSMSX606.ger.corp.intel.com (163.33.146.139) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2308.20; Thu, 20 Jan 2022 10:37:21 +0000
Received: from bgsmsx604.gar.corp.intel.com ([10.67.234.6]) by
 BGSMSX604.gar.corp.intel.com ([10.67.234.6]) with mapi id 15.01.2308.020;
 Thu, 20 Jan 2022 16:07:20 +0530
From: "Shankar, Uma" <uma.shankar@intel.com>
To: "Nikula, Jani" <jani.nikula@intel.com>, "intel-gfx@lists.freedesktop.org"
 <intel-gfx@lists.freedesktop.org>
Thread-Topic: [Intel-gfx] [PATCH RESEND 3/7] drm/i915/mst: debug log 4 bytes
 of ESI right after reading
Thread-Index: AQHYB6QOgJ4NOCm/dkWebw9VcmOD+Kxrw/vw
Date: Thu, 20 Jan 2022 10:37:19 +0000
Message-ID: <618d75b117614d67bd42f8a5e0d6eed0@intel.com>
References: <20220112110319.1172110-1-jani.nikula@intel.com>
 <20220112110319.1172110-3-jani.nikula@intel.com>
In-Reply-To: <20220112110319.1172110-3-jani.nikula@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
dlp-product: dlpe-windows
dlp-reaction: no-action
dlp-version: 11.6.200.16
x-originating-ip: [10.223.10.1]
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
Subject: Re: [Intel-gfx] [PATCH RESEND 3/7] drm/i915/mst: debug log 4 bytes
 of ESI right after reading
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
Cc: "Nikula, Jani" <jani.nikula@intel.com>
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>



> -----Original Message-----
> From: Intel-gfx <intel-gfx-bounces@lists.freedesktop.org> On Behalf Of Ja=
ni Nikula
> Sent: Wednesday, January 12, 2022 4:33 PM
> To: intel-gfx@lists.freedesktop.org
> Cc: Nikula, Jani <jani.nikula@intel.com>
> Subject: [Intel-gfx] [PATCH RESEND 3/7] drm/i915/mst: debug log 4 bytes o=
f ESI right
> after reading
>=20
> For whatever reason, the ESI link service irq vector was missing from the=
 debug
> output. Add the missing byte, clean up the debug message, and do the logg=
ing right
> after reading the data.

Looks Good to me.
Reviewed-by: Uma Shankar <uma.shankar@intel.com>

> Signed-off-by: Jani Nikula <jani.nikula@intel.com>
> ---
>  drivers/gpu/drm/i915/display/intel_dp.c | 4 ++--
>  1 file changed, 2 insertions(+), 2 deletions(-)
>=20
> diff --git a/drivers/gpu/drm/i915/display/intel_dp.c
> b/drivers/gpu/drm/i915/display/intel_dp.c
> index a301220ce2ad..6de39056e2f8 100644
> --- a/drivers/gpu/drm/i915/display/intel_dp.c
> +++ b/drivers/gpu/drm/i915/display/intel_dp.c
> @@ -3683,6 +3683,8 @@ intel_dp_check_mst_status(struct intel_dp *intel_dp=
)
>  			break;
>  		}
>=20
> +		drm_dbg_kms(&i915->drm, "DPRX ESI: %4ph\n", esi);
> +
>  		/* check link status - esi[10] =3D 0x200c */
>  		if (intel_dp->active_mst_links > 0 && link_ok &&
>  		    !drm_dp_channel_eq_ok(&esi[10], intel_dp->lane_count)) { @@ -
> 3691,8 +3693,6 @@ intel_dp_check_mst_status(struct intel_dp *intel_dp)
>  			link_ok =3D false;
>  		}
>=20
> -		drm_dbg_kms(&i915->drm, "got esi %3ph\n", esi);
> -
>  		intel_dp_mst_hpd_irq(intel_dp, esi, &handled);
>=20
>  		if (!handled)
> --
> 2.30.2

