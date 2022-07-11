Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 98B0256D406
	for <lists+intel-gfx@lfdr.de>; Mon, 11 Jul 2022 06:48:10 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id D2810112D01;
	Mon, 11 Jul 2022 04:48:07 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga04.intel.com (mga04.intel.com [192.55.52.120])
 by gabe.freedesktop.org (Postfix) with ESMTPS id A089510F274;
 Mon, 11 Jul 2022 04:48:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1657514885; x=1689050885;
 h=date:from:to:cc:subject:message-id:reply-to:references:
 mime-version:in-reply-to;
 bh=MjNTYLGdvhEIt8nnujq9JqluQ/hMJx3/KNyjN4wrhg8=;
 b=T8SixJZClL7Y21VlEhkoTh6s22h4lzk8GV8e1Y4lZ8ywNnZsKDZ9FqC6
 FhQD7z4wH3VcM2APdrLk+86t6WgLoKnD8+bO7A95x0vtUdjWyOC7n9WHc
 ZpcvSExuzoU6x06CY3zpNNtGhmQBKxylYZ8R5cZRLMvonpsRNAQYCesQb
 rSxz2ho1XxPIyNvZB5bDlFta1ffjSgyJ5O4PtnNX8nS3m56qqeIHUUTMn
 yXpTqtZ62nIaIp1X3RR/oC6bsSr2W0HlfqrBcaNNb26bhyYwaJkF7HFVf
 iDWHAkk+qFykGwEuKaX1XbPvuaEcpqqU8nw/cTR7+HwvJx4//LIC6odJF A==;
X-IronPort-AV: E=McAfee;i="6400,9594,10404"; a="283328447"
X-IronPort-AV: E=Sophos;i="5.92,262,1650956400"; 
 d="asc'?scan'208";a="283328447"
Received: from fmsmga007.fm.intel.com ([10.253.24.52])
 by fmsmga104.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 10 Jul 2022 21:47:57 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.92,262,1650956400"; 
 d="asc'?scan'208";a="598910490"
Received: from zhen-hp.sh.intel.com (HELO zhen-hp) ([10.239.159.108])
 by fmsmga007.fm.intel.com with ESMTP; 10 Jul 2022 21:47:54 -0700
Date: Mon, 11 Jul 2022 12:24:30 +0800
From: Zhenyu Wang <zhenyuw@linux.intel.com>
To: Julia Lawall <Julia.Lawall@inria.fr>
Message-ID: <20220711042430.GR1089@zhen-hp.sh.intel.com>
References: <20220521111145.81697-49-Julia.Lawall@inria.fr>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha1;
 protocol="application/pgp-signature"; boundary="+dH9khzwljbvYE07"
Content-Disposition: inline
In-Reply-To: <20220521111145.81697-49-Julia.Lawall@inria.fr>
Subject: Re: [Intel-gfx] [PATCH] drm/i915/gvt: fix typo in comment
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
Cc: David Airlie <airlied@linux.ie>, intel-gfx@lists.freedesktop.org,
 kernel-janitors@vger.kernel.org, linux-kernel@vger.kernel.org,
 dri-devel@lists.freedesktop.org, Rodrigo Vivi <rodrigo.vivi@intel.com>,
 intel-gvt-dev@lists.freedesktop.org
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>


--+dH9khzwljbvYE07
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

On 2022.05.21 13:10:59 +0200, Julia Lawall wrote:
> Spelling mistake (triple letters) in comment.
> Detected with the help of Coccinelle.
>=20
> Signed-off-by: Julia Lawall <Julia.Lawall@inria.fr>
>=20
> ---
>  drivers/gpu/drm/i915/gvt/gtt.c |    2 +-
>  1 file changed, 1 insertion(+), 1 deletion(-)
>=20
> diff --git a/drivers/gpu/drm/i915/gvt/gtt.c b/drivers/gpu/drm/i915/gvt/gt=
t.c
> index 9c5cc2800975..c919f14c4fcb 100644
> --- a/drivers/gpu/drm/i915/gvt/gtt.c
> +++ b/drivers/gpu/drm/i915/gvt/gtt.c
> @@ -2341,7 +2341,7 @@ static int emulate_ggtt_mmio_write(struct intel_vgp=
u *vgpu, unsigned int off,
>  			gvt_vgpu_err("fail to populate guest ggtt entry\n");
>  			/* guest driver may read/write the entry when partial
>  			 * update the entry in this situation p2m will fail
> -			 * settting the shadow entry to point to a scratch page
> +			 * setting the shadow entry to point to a scratch page
>  			 */
>  			ops->set_pfn(&m, gvt->gtt.scratch_mfn);
>  		} else
>=20

Sorry for late reply!

Acked-by: Zhenyu Wang <zhenyuw@linux.intel.com>


--+dH9khzwljbvYE07
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iF0EARECAB0WIQTXuabgHDW6LPt9CICxBBozTXgYJwUCYsul9QAKCRCxBBozTXgY
J9ExAJ4niV+SwtyX80S7SJNTbxCAfj8fXgCfXvmZBkMeJzbCX9v2ScqDY08D2io=
=hUis
-----END PGP SIGNATURE-----

--+dH9khzwljbvYE07--
