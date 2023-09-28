Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id B64197B168A
	for <lists+intel-gfx@lfdr.de>; Thu, 28 Sep 2023 10:55:17 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id F0C7A10E5F2;
	Thu, 28 Sep 2023 08:55:15 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from ams.source.kernel.org (ams.source.kernel.org
 [IPv6:2604:1380:4601:e00::1])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 4B82110E5F2;
 Thu, 28 Sep 2023 08:55:14 +0000 (UTC)
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
 by ams.source.kernel.org (Postfix) with ESMTP id 9E3ADB81B7F;
 Thu, 28 Sep 2023 08:55:12 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 7BE99C433C9;
 Thu, 28 Sep 2023 08:55:11 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=k20201202; t=1695891312;
 bh=xa6vvaBHlOk8UEtDQ/qumgt8/oG5MrDN6yqv+rveHfA=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=p1PY+GG3b6sYjxjelG0+JL215yj4GYrBZPKDacGZ255ZosUUSwRanMycZXmoWf5+r
 o/QT+rpcWQyCJd+2tM5SXTt2P0tR+isIoHJeYw998upipUShznj+Bf5ZNmXBNGnNyW
 PRWqvWmlVWJ1kZtdyoWK9LP6X/2v7rlnkYeLQH+8f9POG7z9vkFtI/M7qLC+kJtxNn
 mA0W4el2g7aDWARx7SYohHOC7GZZxenwH0uyicTA4gBrNT7Rlfpq+IPa52sr0hXNIu
 2LTEwa6Kq3W7p1HiXer3jXIa8s7naOGsxBWwrZ5GYk90jPjb5KGwbHlog1TYOgLtRs
 bYIWbKRFLC9ww==
Date: Thu, 28 Sep 2023 10:55:09 +0200
From: Maxime Ripard <mripard@kernel.org>
To: Daniel Vetter <daniel.vetter@intel.com>, David Airlie <airlied@linux.ie>,
 Maarten Lankhorst <maarten.lankhorst@linux.intel.com>, 
 Thomas Zimmermann <tzimmermann@suse.de>
Message-ID: <2f5o6om7zcs5zndhxlmxp5bjdvemwijriewm4of3ktouuwsrtt@h2w6m3uzcvya>
References: <20230921105743.2611263-1-mripard@kernel.org>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
 protocol="application/pgp-signature"; boundary="usopfd3hfhg2tjuk"
Content-Disposition: inline
In-Reply-To: <20230921105743.2611263-1-mripard@kernel.org>
Subject: Re: [Intel-gfx] [PATCH v2] MAINTAINERS: Update drm-misc entry to
 match all drivers
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
Cc: Karol Herbst <kherbst@redhat.com>, nouveau@lists.freedesktop.org,
 Edmund Dea <edmund.j.dea@intel.com>, dri-devel@lists.freedesktop.org,
 Mikko Perttunen <mperttunen@nvidia.com>,
 Laurent Pinchart <laurent.pinchart@ideasonboard.com>,
 Anitha Chrisanthus <anitha.chrisanthus@intel.com>,
 Marijn Suijten <marijn.suijten@somainline.org>,
 Russell King <linux@armlinux.org.uk>, amd-gfx@lists.freedesktop.org,
 Ben Skeggs <bskeggs@redhat.com>, Kyungmin Park <kyungmin.park@samsung.com>,
 Chun-Kuang Hu <chunkuang.hu@kernel.org>, Jani Nikula <jani.nikula@intel.com>,
 intel-gfx@lists.freedesktop.org, Abhinav Kumar <quic_abhinavk@quicinc.com>,
 etnaviv@lists.freedesktop.org, Inki Dae <inki.dae@samsung.com>,
 Alex Deucher <alexander.deucher@amd.com>,
 Christian Gmeiner <christian.gmeiner@gmail.com>,
 Laurentiu Palcu <laurentiu.palcu@oss.nxp.com>, linux-tegra@vger.kernel.org,
 Rodrigo Vivi <rodrigo.vivi@intel.com>, "Pan, Xinhui" <Xinhui.Pan@amd.com>,
 Seung-Woo Kim <sw0312.kim@samsung.com>, linux-renesas-soc@vger.kernel.org,
 Kieran Bingham <kieran.bingham+renesas@ideasonboard.com>,
 Philipp Zabel <p.zabel@pengutronix.de>,
 Dmitry Baryshkov <dmitry.baryshkov@linaro.org>,
 Christian =?utf-8?B?S8O2bmln?= <christian.koenig@amd.com>,
 Lucas Stach <l.stach@pengutronix.de>
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>


--usopfd3hfhg2tjuk
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

Hi,

On Thu, Sep 21, 2023 at 12:57:43PM +0200, Maxime Ripard wrote:
> We've had a number of times when a patch slipped through and we couldn't
> pick them up either because our MAINTAINERS entry only covers the
> framework and thus we weren't Cc'd.
>=20
> Let's take another approach where we match everything, and remove all
> the drivers that are not maintained through drm-misc.
>=20
> Acked-by: Jani Nikula <jani.nikula@intel.com>
> Signed-off-by: Maxime Ripard <mripard@kernel.org>

Applied with Dave's Acked-by given on IRC.

This was conflicting with
https://lore.kernel.org/r/20230925154929.1.I3287e895ce8e68d41b458494a49a1b5=
ec5c71013@changeid

So I removed the imx exclusion from that list while applying.

Maxime

--usopfd3hfhg2tjuk
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iHUEABYKAB0WIQRcEzekXsqa64kGDp7j7w1vZxhRxQUCZRU/bQAKCRDj7w1vZxhR
xe83APwN1o0Jh3tdI+KSLA0NHED3fMGIHdyRsqt2aHdCbHIyBQD7B49jUKpcY4K8
lWNF/Y+Q5bEHNDXGZCGyRairFyB/mwY=
=lA7w
-----END PGP SIGNATURE-----

--usopfd3hfhg2tjuk--
