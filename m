Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 8DAF635F014
	for <lists+intel-gfx@lfdr.de>; Wed, 14 Apr 2021 10:50:22 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 6F9456E4D4;
	Wed, 14 Apr 2021 08:50:16 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga17.intel.com (mga17.intel.com [192.55.52.151])
 by gabe.freedesktop.org (Postfix) with ESMTPS id B30A76E486;
 Wed, 14 Apr 2021 08:50:14 +0000 (UTC)
IronPort-SDR: 4wTJPmpcClYmHWpWEJkuGcZbq5CCqMmfl+9oENI1cPrMJwVpUfYCAC964IPwQMVlDBChj7KV67
 bniP2ib/Kb9g==
X-IronPort-AV: E=McAfee;i="6200,9189,9953"; a="174704390"
X-IronPort-AV: E=Sophos;i="5.82,221,1613462400"; 
 d="asc'?scan'208";a="174704390"
Received: from fmsmga003.fm.intel.com ([10.253.24.29])
 by fmsmga107.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 14 Apr 2021 01:50:14 -0700
IronPort-SDR: PhnCozf8UEFW4UKr5HkHWVFHrUZnwzlL5liJMxVYioxCDwDp1Ia1ghsUam5JRrwtgLBrVYSj2v
 Dzotrex2mzTg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.82,221,1613462400"; 
 d="asc'?scan'208";a="450722624"
Received: from zhen-hp.sh.intel.com (HELO zhen-hp) ([10.239.160.147])
 by FMSMGA003.fm.intel.com with ESMTP; 14 Apr 2021 01:50:11 -0700
Date: Wed, 14 Apr 2021 16:32:21 +0800
From: Zhenyu Wang <zhenyuw@linux.intel.com>
To: Jiapeng Chong <jiapeng.chong@linux.alibaba.com>
Message-ID: <20210414083221.GN1551@zhen-hp.sh.intel.com>
References: <1618294728-78952-1-git-send-email-jiapeng.chong@linux.alibaba.com>
MIME-Version: 1.0
In-Reply-To: <1618294728-78952-1-git-send-email-jiapeng.chong@linux.alibaba.com>
Subject: Re: [Intel-gfx] [PATCH] drm/i915/gvt: remove useless function
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
Reply-To: Zhenyu Wang <zhenyuw@linux.intel.com>
Cc: airlied@linux.ie, intel-gfx@lists.freedesktop.org,
 linux-kernel@vger.kernel.org, dri-devel@lists.freedesktop.org,
 intel-gvt-dev@lists.freedesktop.org
Content-Type: multipart/mixed; boundary="===============1249870031=="
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>


--===============1249870031==
Content-Type: multipart/signed; micalg=pgp-sha1;
	protocol="application/pgp-signature"; boundary="ctZH5Gqgrl5HoVnD"
Content-Disposition: inline


--ctZH5Gqgrl5HoVnD
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

On 2021.04.13 14:18:48 +0800, Jiapeng Chong wrote:
> Fix the following clang warning:
>=20
> drivers/gpu/drm/i915/gvt/gtt.c:590:20: warning: unused function
> 'ppgtt_set_guest_root_entry' [-Wunused-function].
>=20
> Reported-by: Abaci Robot <abaci@linux.alibaba.com>
> Signed-off-by: Jiapeng Chong <jiapeng.chong@linux.alibaba.com>
> ---
>  drivers/gpu/drm/i915/gvt/gtt.c | 6 ------
>  1 file changed, 6 deletions(-)
>=20
> diff --git a/drivers/gpu/drm/i915/gvt/gtt.c b/drivers/gpu/drm/i915/gvt/gt=
t.c
> index 897c007..a01ff44 100644
> --- a/drivers/gpu/drm/i915/gvt/gtt.c
> +++ b/drivers/gpu/drm/i915/gvt/gtt.c
> @@ -587,12 +587,6 @@ static void _ppgtt_set_root_entry(struct intel_vgpu_=
mm *mm,
>  			   entry, index, false, 0, mm->vgpu);
>  }
> =20
> -static inline void ppgtt_set_guest_root_entry(struct intel_vgpu_mm *mm,
> -		struct intel_gvt_gtt_entry *entry, unsigned long index)
> -{
> -	_ppgtt_set_root_entry(mm, entry, index, true);
> -}
> -
>  static inline void ppgtt_set_shadow_root_entry(struct intel_vgpu_mm *mm,
>  		struct intel_gvt_gtt_entry *entry, unsigned long index)
>  {
> --=20

Reviewed-by: Zhenyu Wang <zhenyuw@linux.intel.com>

Thanks for covering me on this! Queue this up.

--ctZH5Gqgrl5HoVnD
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iF0EARECAB0WIQTXuabgHDW6LPt9CICxBBozTXgYJwUCYHaokAAKCRCxBBozTXgY
J332AJ4salQYvYttCagxF7P2YWnt4+5OtACfSsWoYZp+DqERU/BbGvS+EbPHckI=
=oqD8
-----END PGP SIGNATURE-----

--ctZH5Gqgrl5HoVnD--

--===============1249870031==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx

--===============1249870031==--
