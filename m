Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 222A578E163
	for <lists+intel-gfx@lfdr.de>; Wed, 30 Aug 2023 23:27:15 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 98FDF10E5F4;
	Wed, 30 Aug 2023 21:27:10 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from us-smtp-delivery-124.mimecast.com
 (us-smtp-delivery-124.mimecast.com [170.10.129.124])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 28BB910E5E5
 for <intel-gfx@lists.freedesktop.org>; Wed, 30 Aug 2023 21:27:07 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
 s=mimecast20190719; t=1693430826;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 content-transfer-encoding:content-transfer-encoding:
 in-reply-to:in-reply-to:references:references;
 bh=r5UL4S8DKCoo1ir+dQcQptv0K+U4EOTubA2NbychAXI=;
 b=g72Pow7R9JADslmG0s+oR76irBw5vUVlsF9/ielWcC6/hcx0XgYItS4+Sb/LkzuxwkwovG
 PhFzFCZVvNn3SzYKF4QGLqFV/Y84dE5/F19XKDhPcwAdtX+eFVJBlsYwcSEwo/l4FAIOtc
 kLOZIe0bDtsmrAzgKZ56CFymYFlsmw0=
Received: from mail-qk1-f198.google.com (mail-qk1-f198.google.com
 [209.85.222.198]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.3, cipher=TLS_AES_256_GCM_SHA384) id
 us-mta-327-tt_C4bnONvGly1T4ZpBROg-1; Wed, 30 Aug 2023 17:27:04 -0400
X-MC-Unique: tt_C4bnONvGly1T4ZpBROg-1
Received: by mail-qk1-f198.google.com with SMTP id
 af79cd13be357-76f31a228beso13195685a.1
 for <intel-gfx@lists.freedesktop.org>; Wed, 30 Aug 2023 14:27:03 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20221208; t=1693430822; x=1694035622;
 h=mime-version:user-agent:content-transfer-encoding:organization
 :references:in-reply-to:date:cc:to:from:subject:message-id
 :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
 bh=gUlXJa21/rEuWHHoOQyLmXnDP685d6pMh74kDigtWLk=;
 b=J0u/9rLex52ddyBQHvqJxDgJOf4fpej0ZgPjpJ+Y9FSruRoABDLVxwsFzMfYLeKiOk
 pb8o93SkuQvd7+SDWtbUwGjQCh7VoZN2RqRkqy2G8T3GYP6nDb4Htsf+RNWFurxUBCXf
 E3HR7P+Yo7QKjYgplbO6dXkFDJ+kKZhRn+vnVAOx3tnAJHI+L0JQlHAN5P4FDD1n1SMR
 yjJ9dTpBiJzFX5JFVX8OquYC/+/8yxHLRgPyeVgHqMBwvy8zAg8GKThsXEPSP/VjBZQt
 ufRYXdcf1kJQApkd2TB1viM/3m2wPA++1i+YhO0rgyp3zEITeYTXATuDvjQ6vSQQfx3V
 GTbw==
X-Gm-Message-State: AOJu0YxQFOKe8gCl/SbiIq800KUM+cklwcIAW7xoQyzwztcJanpd+h01
 Qd3G+dMSMYuq6NxvgRlNtXhcCezs5K1y10OBXmkypMiHiU3Y0q/zFloS+IXrbzk+c8OJierpBeu
 G8pJ+krOOty2l6U9qqj00Za2M2YUS
X-Received: by 2002:a05:620a:12c8:b0:76f:98c:3f0e with SMTP id
 e8-20020a05620a12c800b0076f098c3f0emr830977qkl.68.1693430822620; 
 Wed, 30 Aug 2023 14:27:02 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IHZoMR5UN2ewJOnURHHf6UjOLd/TQOo8EhrGl7ghm8uwM2S+r1zjSLLsYqctsqYFUaH97a5DA==
X-Received: by 2002:a05:620a:12c8:b0:76f:98c:3f0e with SMTP id
 e8-20020a05620a12c800b0076f098c3f0emr830968qkl.68.1693430822383; 
 Wed, 30 Aug 2023 14:27:02 -0700 (PDT)
Received: from ?IPv6:2600:4040:5c7d:5f00::feb? ([2600:4040:5c7d:5f00::feb])
 by smtp.gmail.com with ESMTPSA id
 q17-20020a05620a039100b0076efaec147csm28869qkm.45.2023.08.30.14.27.01
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Wed, 30 Aug 2023 14:27:01 -0700 (PDT)
Message-ID: <25326198bbb708315707f946abc638dda38356e8.camel@redhat.com>
From: Lyude Paul <lyude@redhat.com>
To: Imre Deak <imre.deak@intel.com>, intel-gfx@lists.freedesktop.org
Date: Wed, 30 Aug 2023 17:27:01 -0400
In-Reply-To: <20230824080517.693621-10-imre.deak@intel.com>
References: <20230824080517.693621-1-imre.deak@intel.com>
 <20230824080517.693621-10-imre.deak@intel.com>
Organization: Red Hat Inc.
User-Agent: Evolution 3.48.3 (3.48.3-1.fc38)
MIME-Version: 1.0
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
Subject: Re: [Intel-gfx] [PATCH v2 09/22] drm/dp_mst: Fix fractional bpp
 scaling in drm_dp_calc_pbn_mode()
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

Amazing! This work looks awesome Imre, sorry it took me a little bit to get
back to this :). For all of the DP MST helper patches:

Reviewed-by: Lyude Paul <lyude@redhat.com>

On Thu, 2023-08-24 at 11:05 +0300, Imre Deak wrote:
> For fractional bpp values passed to the function in a .4 fixed point
> format, the fractional part is currently ignored due to scaling bpp too
> early. Fix this by scaling the overhead factor instead and to avoid an
> overflow multiplying bpp with the overhead factor instead of the clock
> rate.
>=20
> While at it simplify the formula, and pass the expected fixed point bpp
> values in the kunit tests.
>=20
> Cc: Lyude Paul <lyude@redhat.com>
> Cc: dri-devel@lists.freedesktop.org
> Signed-off-by: Imre Deak <imre.deak@intel.com>
> ---
>  drivers/gpu/drm/display/drm_dp_mst_topology.c  | 7 ++-----
>  drivers/gpu/drm/tests/drm_dp_mst_helper_test.c | 8 ++++----
>  2 files changed, 6 insertions(+), 9 deletions(-)
>=20
> diff --git a/drivers/gpu/drm/display/drm_dp_mst_topology.c b/drivers/gpu/=
drm/display/drm_dp_mst_topology.c
> index ed96cfcfa3040..bd0f35a0ea5fb 100644
> --- a/drivers/gpu/drm/display/drm_dp_mst_topology.c
> +++ b/drivers/gpu/drm/display/drm_dp_mst_topology.c
> @@ -4712,12 +4712,9 @@ int drm_dp_calc_pbn_mode(int clock, int bpp, bool =
dsc)
>  =09 * factor in the numerator rather than the denominator to avoid
>  =09 * integer overflow
>  =09 */
> +=09u32 bpp_m =3D (dsc ? 64 / 16 : 64) * 1006 * bpp;
> =20
> -=09if (dsc)
> -=09=09return DIV_ROUND_UP_ULL(mul_u32_u32(clock * (bpp / 16), 64 * 1006)=
,
> -=09=09=09=09=098 * 54 * 1000 * 1000);
> -
> -=09return DIV_ROUND_UP_ULL(mul_u32_u32(clock * bpp, 64 * 1006),
> +=09return DIV_ROUND_UP_ULL(mul_u32_u32(clock, bpp_m),
>  =09=09=09=098 * 54 * 1000 * 1000);
>  }
>  EXPORT_SYMBOL(drm_dp_calc_pbn_mode);
> diff --git a/drivers/gpu/drm/tests/drm_dp_mst_helper_test.c b/drivers/gpu=
/drm/tests/drm_dp_mst_helper_test.c
> index 545beea33e8c7..ea2182815ebe8 100644
> --- a/drivers/gpu/drm/tests/drm_dp_mst_helper_test.c
> +++ b/drivers/gpu/drm/tests/drm_dp_mst_helper_test.c
> @@ -40,15 +40,15 @@ static const struct drm_dp_mst_calc_pbn_mode_test drm=
_dp_mst_calc_pbn_mode_cases
>  =09},
>  =09{
>  =09=09.clock =3D 332880,
> -=09=09.bpp =3D 24,
> +=09=09.bpp =3D 24 << 4,
>  =09=09.dsc =3D true,
> -=09=09.expected =3D 50
> +=09=09.expected =3D 1191
>  =09},
>  =09{
>  =09=09.clock =3D 324540,
> -=09=09.bpp =3D 24,
> +=09=09.bpp =3D 24 << 4,
>  =09=09.dsc =3D true,
> -=09=09.expected =3D 49
> +=09=09.expected =3D 1161
>  =09},
>  };
> =20

--=20
Cheers,
 Lyude Paul (she/her)
 Software Engineer at Red Hat

