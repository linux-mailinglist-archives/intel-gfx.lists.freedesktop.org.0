Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id AEDEE6897B2
	for <lists+intel-gfx@lfdr.de>; Fri,  3 Feb 2023 12:28:08 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 11A7810E76A;
	Fri,  3 Feb 2023 11:28:07 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from metis.ext.pengutronix.de (metis.ext.pengutronix.de
 [IPv6:2001:67c:670:201:290:27ff:fe1d:cc33])
 by gabe.freedesktop.org (Postfix) with ESMTPS id BE18110E76A
 for <intel-gfx@lists.freedesktop.org>; Fri,  3 Feb 2023 11:28:03 +0000 (UTC)
Received: from ptz.office.stw.pengutronix.de ([2a0a:edc0:0:900:1d::77]
 helo=[IPv6:::1]) by metis.ext.pengutronix.de with esmtps
 (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256) (Exim 4.92)
 (envelope-from <l.stach@pengutronix.de>)
 id 1pNuEb-00079L-P7; Fri, 03 Feb 2023 12:28:01 +0100
Message-ID: <99c4db33a1966bd1979817277facb4a42ba2333f.camel@pengutronix.de>
From: Lucas Stach <l.stach@pengutronix.de>
To: Bagas Sanjaya <bagasdotme@gmail.com>, Intel Graphics Development List
 <intel-gfx@lists.freedesktop.org>, DRI Development List
 <dri-devel@lists.freedesktop.org>, Linux Kernel Mailing List
 <linux-kernel@vger.kernel.org>, Linux Media Mailing List
 <linux-media@vger.kernel.org>, Linux Next Mailing List
 <linux-next@vger.kernel.org>
Date: Fri, 03 Feb 2023 12:27:55 +0100
In-Reply-To: <20230203100215.31852-3-bagasdotme@gmail.com>
References: <20230203100215.31852-1-bagasdotme@gmail.com>
 <20230203100215.31852-3-bagasdotme@gmail.com>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
User-Agent: Evolution 3.46.3 (3.46.3-1.fc37) 
MIME-Version: 1.0
X-SA-Exim-Connect-IP: 2a0a:edc0:0:900:1d::77
X-SA-Exim-Mail-From: l.stach@pengutronix.de
X-SA-Exim-Scanned: No (on metis.ext.pengutronix.de);
 SAEximRunCond expanded to false
X-PTX-Original-Recipient: intel-gfx@lists.freedesktop.org
Subject: Re: [Intel-gfx] [PATCH 2/3] drm/scheduler: Fix elapsed_ns
 kernel-doc error
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
Cc: Lucas De Marchi <lucas.demarchi@intel.com>,
 Balasubramani Vivekanandan <balasubramani.vivekanandan@intel.com>,
 Andrey Grodzovsky <andrey.grodzovsky@amd.com>,
 Srinivasan Shanmugam <srinivasan.s@intel.com>,
 Linus Walleij <linus.walleij@linaro.org>,
 Sakari Ailus <sakari.ailus@linux.intel.com>,
 Hans de Goede <hdegoede@redhat.com>, Luben Tuikov <luben.tuikov@amd.com>,
 Daniel Vetter <daniel@ffwll.ch>, Rodrigo Vivi <rodrigo.vivi@intel.com>,
 Stephen Rothwell <sfr@canb.auug.org.au>,
 Mauro Carvalho Chehab <mchehab@kernel.org>, David Airlie <airlied@gmail.com>
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

Am Freitag, dem 03.02.2023 um 17:02 +0700 schrieb Bagas Sanjaya:
> Stephen Rothwell reported htmldocs warnings:
>=20
> include/drm/gpu_scheduler.h:232: warning: Incorrect use of kernel-doc for=
mat:          * @elapsed_ns
> include/drm/gpu_scheduler.h:238: warning: Function parameter or member 'e=
lapsed_ns' not described in 'drm_sched_entity'
>=20
> Fix the error by appending missing colon to @elapsed_ns name in its
> kernel-doc comment.
>=20

Thanks, I've added this to the etnaviv tree.

Since the commit is only in -next and not a non-rebase tree yet, I
might be tempted to squash the fix into the offending commit. What
would be the right way to credit you for the fix in that case?

Regards,
Lucas

> Link: https://lore.kernel.org/linux-next/20230203135027.1a4679d3@canb.auu=
g.org.au/
> Fixes: 248cd9b265fca6 ("drm/scheduler: track GPU active time per entity")
> Reported-by: Stephen Rothwell <sfr@canb.auug.org.au>
> Signed-off-by: Bagas Sanjaya <bagasdotme@gmail.com>
> ---
>  include/drm/gpu_scheduler.h | 2 +-
>  1 file changed, 1 insertion(+), 1 deletion(-)
>=20
> diff --git a/include/drm/gpu_scheduler.h b/include/drm/gpu_scheduler.h
> index 9a50365621ed8d..9db9e5e504eeb3 100644
> --- a/include/drm/gpu_scheduler.h
> +++ b/include/drm/gpu_scheduler.h
> @@ -229,7 +229,7 @@ struct drm_sched_entity {
>  	struct rb_node			rb_tree_node;
> =20
>  	/**
> -	 * @elapsed_ns
> +	 * @elapsed_ns:
>  	 *
>  	 * Records the amount of time where jobs from this entity were active
>  	 * on the GPU.

