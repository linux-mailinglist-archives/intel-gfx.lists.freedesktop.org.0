Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 16E0E7A72A6
	for <lists+intel-gfx@lfdr.de>; Wed, 20 Sep 2023 08:13:47 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 707C810E439;
	Wed, 20 Sep 2023 06:13:45 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from ams.source.kernel.org (ams.source.kernel.org [145.40.68.75])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 19DC310E43D;
 Wed, 20 Sep 2023 06:13:44 +0000 (UTC)
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
 (using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
 key-exchange X25519 server-signature RSA-PSS (2048 bits))
 (No client certificate requested)
 by ams.source.kernel.org (Postfix) with ESMTPS id 7813AB817F4;
 Wed, 20 Sep 2023 06:13:39 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id C81A7C433C7;
 Wed, 20 Sep 2023 06:13:37 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=k20201202; t=1695190418;
 bh=sCA6t4YXZyc5rNhGUjMitz7bxr3cqh7547VPQO5z/NI=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=bAlxtLY7YcvLrOxMsiqbf4Le3cggE28w/GyZvSzTDZ1LWDwulDeA7PXnKNpr818wD
 Oh+RcbcyXLMQ1tgsLYKsmcnCjgqn7nw17NhnFRG2sf6fZqAWsTyVntPFQNJ1gQznQl
 Z/8P+WUcfjIsCbf2DDTDTZgaL9Z/nof0KsFVEZnR+YebobrMgn1ZjbdqcWqlJZ7mvp
 n4I8Ng33kgHK/NeDt1jY1mHRFccpKgGmT4P8ig310BOcLXlEFgXlrd/9zmXznCUfrR
 EIIkSZeDvR3Tk/vs8xkZq3VqsfPYYM6XXCEVWowAgfrsI6GzCgTFn4udr6WvmV5moq
 kPNKybovu1lEw==
Date: Wed, 20 Sep 2023 08:13:35 +0200
From: Maxime Ripard <mripard@kernel.org>
To: Helen Koike <helen.koike@collabora.com>
Message-ID: <56iam34xkp4gnffi7cdqkzn33nqkb53ttttersctoa7b2rvvpn@ukaj2ceo4f2y>
References: <20230919182249.153499-1-helen.koike@collabora.com>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
 protocol="application/pgp-signature"; boundary="snkfr47lvwx67rio"
Content-Disposition: inline
In-Reply-To: <20230919182249.153499-1-helen.koike@collabora.com>
Subject: Re: [Intel-gfx] [PATCH] MAINTAINERS: drm/ci: add entries for xfail
 files
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
Cc: neil.armstrong@linaro.org, amd-gfx@lists.freedesktop.org, heiko@sntech.de,
 michel.daenzer@mailbox.org, daniel@ffwll.ch, linux-arm-msm@vger.kernel.org,
 intel-gfx@lists.freedesktop.org, linux-kernel@vger.kernel.org,
 dri-devel@lists.freedesktop.org, linux-mediatek@lists.infradead.org,
 p.zabel@pengutronix.de, airlied@redhat.com, alexander.deucher@amd.com,
 linux-amlogic@lists.infradead.org, daniel@fooishbar.org
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>


--snkfr47lvwx67rio
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

Hi,

On Tue, Sep 19, 2023 at 03:22:49PM -0300, Helen Koike wrote:
> DRM CI keeps track of which tests are failing, flaking or being skipped
> by the ci in the expectations files. Add entries for those files to the
> corresponding driver maintainer, so they can be notified when they
> change.
>=20
> Signed-off-by: Helen Koike <helen.koike@collabora.com>

Thanks for sending this

Acked-by: Maxime Ripard <mripard@kernel.org>

Maxime

--snkfr47lvwx67rio
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iHUEABYKAB0WIQRcEzekXsqa64kGDp7j7w1vZxhRxQUCZQqNjwAKCRDj7w1vZxhR
xXAYAP9Bj69+O1sa6mIVvufb7pxaegBC7CPhLcZvoTbWo7giVwEA6DxfglNf7WDj
GvhfiMjoMJRWAeagnk3gM2FAxR30aA0=
=48R+
-----END PGP SIGNATURE-----

--snkfr47lvwx67rio--
