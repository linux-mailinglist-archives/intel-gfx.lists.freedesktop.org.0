Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 85F0473E32D
	for <lists+intel-gfx@lfdr.de>; Mon, 26 Jun 2023 17:23:48 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 22F5710E22E;
	Mon, 26 Jun 2023 15:23:45 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga18.intel.com (mga18.intel.com [134.134.136.126])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 85ACE10E229;
 Mon, 26 Jun 2023 15:23:42 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1687793022; x=1719329022;
 h=message-id:subject:from:to:cc:date:in-reply-to:
 references:content-transfer-encoding:mime-version;
 bh=kGBsoJpqJ94noc4JnODvig8KugWVEyn0TcAx8lTmHng=;
 b=NiDUnymlOh7FRj6XYWehQzPsvoSEsU95GIIVx7lZeNBua0sF5YwzaDES
 5PysewMXQAhIB4i57N87p9gzWUMM3XWGZcJhWd1EqwzGrsR+suiIuq9/V
 SPcsyDbAkTBlaZ3nX5HumercUXZe5r7ot4/rns/k+6++5ri4TICFWiYT8
 ixchWmsi6hipOd9MZlejKC3TDb/UXcFjhUOeu7IATbO/JMXb4DW4cIm7D
 76RLwNmy8x+yIT7dwkJTfhP9QZobuqLgCgPG5VZnHgktvxVNiqKifSoUy
 X/xuRKajNdcHRIsiUsxwjwXd277O8RoujMZpRoqHNMNoQ2lR21Iue/SZp A==;
X-IronPort-AV: E=McAfee;i="6600,9927,10753"; a="346054640"
X-IronPort-AV: E=Sophos;i="6.01,159,1684825200"; d="scan'208";a="346054640"
Received: from orsmga005.jf.intel.com ([10.7.209.41])
 by orsmga106.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 26 Jun 2023 08:23:31 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10753"; a="890311953"
X-IronPort-AV: E=Sophos;i="6.01,159,1684825200"; d="scan'208";a="890311953"
Received: from ettammin-mobl1.ger.corp.intel.com (HELO [10.249.254.105])
 ([10.249.254.105])
 by orsmga005-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 26 Jun 2023 08:23:29 -0700
Message-ID: <06e1342e5bee87e53e4c43bf31572cda0910513d.camel@linux.intel.com>
From: Thomas =?ISO-8859-1?Q?Hellstr=F6m?= <thomas.hellstrom@linux.intel.com>
To: Christian =?ISO-8859-1?Q?K=F6nig?= <ckoenig.leichtzumerken@gmail.com>, 
 intel-xe@lists.freedesktop.org
Date: Mon, 26 Jun 2023 17:23:27 +0200
In-Reply-To: <88cbec2d2ae6329d44426cece4b558b7d83b1ff6.camel@linux.intel.com>
References: <20230626091450.14757-1-thomas.hellstrom@linux.intel.com>
 <20230626091450.14757-3-thomas.hellstrom@linux.intel.com>
 <8b22c855-c84d-4b56-c94b-a3a079ab3037@gmail.com>
 <88cbec2d2ae6329d44426cece4b558b7d83b1ff6.camel@linux.intel.com>
Organization: Intel Sweden AB, Registration Number: 556189-6027
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
User-Agent: Evolution 3.46.4 (3.46.4-1.fc37) 
MIME-Version: 1.0
Subject: Re: [Intel-gfx] [Intel-xe] [PATCH v2 2/4] drm/ttm: Don't shadow the
 operation context
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
Cc: intel-gfx@lists.freedesktop.org, linux-kernel@vger.kernel.org,
 dri-devel@lists.freedesktop.org, Roger He <Hongbo.He@amd.com>,
 stable@vger.kernel.org,
 Christian =?ISO-8859-1?Q?K=F6nig?= <christian.koenig@amd.com>
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Mon, 2023-06-26 at 17:18 +0200, Thomas Hellstr=C3=B6m wrote:
> On Mon, 2023-06-26 at 17:15 +0200, Christian K=C3=B6nig wrote:
> > Am 26.06.23 um 11:14 schrieb Thomas Hellstr=C3=B6m:
> > > ttm_bo_swapout() shadows the ttm operation context which may
> > > cause
> > > major confusion in driver callbacks when swapping out
> > > !TTM_PL_SYSTEM
> > > memory. Fix this by reusing the operation context argument to
> > > ttm_bo_swapout().
> > >=20
> > > Cc: "Christian K=C3=B6nig" <christian.koenig@amd.com>
> > > Cc: Roger He <Hongbo.He@amd.com>
> > > Cc: <dri-devel@lists.freedesktop.org>
> > > Cc: <intel-gfx@lists.freedesktop.org>
> > > Cc: <stable@vger.kernel.org> # v4.16+
> > > Fixes: dc947770cf34 ("drm/ttm: enable swapout for reserved BOs
> > > during allocation")
> > > Signed-off-by: Thomas Hellstr=C3=B6m
> > > <thomas.hellstrom@linux.intel.com>
> > > Acked-by: Matthew Brost <matthew.brost@intel.com>
> >=20
> > We intentionally didn't used the parameter here, but I absolutely
> > can't=20
> > figure out why.
> >=20
> > Feel free to add my rb, but let's give it some time upstream before
> > you=20
> > base anything on top of this. Just in case we missed something.
>=20
> Sure. Thanks for reviewing,

BTW, I'll remove the Fixes: tag as well.

/Thomas


> /Thomas
>=20
> >=20
> > Regards,
> > Christian.
> >=20
> > > ---
> > > =C2=A0 drivers/gpu/drm/ttm/ttm_bo.c | 3 +--
> > > =C2=A0 1 file changed, 1 insertion(+), 2 deletions(-)
> > >=20
> > > diff --git a/drivers/gpu/drm/ttm/ttm_bo.c
> > > b/drivers/gpu/drm/ttm/ttm_bo.c
> > > index bd5dae4d1624..615d30c4262d 100644
> > > --- a/drivers/gpu/drm/ttm/ttm_bo.c
> > > +++ b/drivers/gpu/drm/ttm/ttm_bo.c
> > > @@ -1154,7 +1154,6 @@ int ttm_bo_swapout(struct ttm_buffer_object
> > > *bo, struct ttm_operation_ctx *ctx,
> > > =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 * Move to system cac=
hed
> > > =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 */
> > > =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0if (bo->resource->mem=
_type !=3D TTM_PL_SYSTEM) {
> > > -=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0struct ttm_operation_ctx ctx =3D { false, false };
> > > =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0struct ttm_resource *evict_mem;
> > > =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0struct ttm_place hop;
> > > =C2=A0=20
> > > @@ -1164,7 +1163,7 @@ int ttm_bo_swapout(struct ttm_buffer_object
> > > *bo, struct ttm_operation_ctx *ctx,
> > > =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0if (unlikely(ret))
> > > =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
goto out;
> > > =C2=A0=20
> > > -=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0ret =3D ttm_bo_handle_move_mem(bo, evict_mem, true,
> > > &ctx, &hop);
> > > +=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0ret =3D ttm_bo_handle_move_mem(bo, evict_mem, true,
> > > ctx, &hop);
> > > =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0if (unlikely(ret !=3D 0)) {
> > > =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
WARN(ret =3D=3D -EMULTIHOP, "Unexpected
> > > multihop in swaput - likely driver bug.\n");
> > > =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
goto out;
> >=20
>=20

