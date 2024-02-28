Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 55D0B86B5D3
	for <lists+intel-gfx@lfdr.de>; Wed, 28 Feb 2024 18:22:42 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id EAAAF10E21F;
	Wed, 28 Feb 2024 17:22:40 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=kernel.org header.i=@kernel.org header.b="s08hT55s";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from dfw.source.kernel.org (dfw.source.kernel.org [139.178.84.217])
 by gabe.freedesktop.org (Postfix) with ESMTPS id C30F210E21F
 for <intel-gfx@lists.freedesktop.org>; Wed, 28 Feb 2024 17:22:39 +0000 (UTC)
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
 by dfw.source.kernel.org (Postfix) with ESMTP id DFB9C618FB;
 Wed, 28 Feb 2024 17:22:38 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id ED270C433F1;
 Wed, 28 Feb 2024 17:22:35 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=k20201202; t=1709140958;
 bh=evNttuUon9tazsxXMKIkVG5dhOyYfZ8Y77/5OFQehaQ=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=s08hT55saQcImzVbA/nOrLPJ81PDdmdEqxrRsCDnGEUqVZjp9wC+CjyzvQUEzAssl
 MVIGIWukJrhTryxVC8yZZZFVWC3gLdtE/d0qD3z/QftuBbKPSDgua8LDsTK/rfRtsl
 dUt/7M/K7/JQjpRysU6kmIcGWn3On3u5p+NFGOnineflpS8HL4Mi9iUB2+djrsbU8/
 APcPiVMZPbcQJU4PRFP6dJHMp0958yP3u12xOcMaZrmKnH39ivNwGXo9wWDNTttsiH
 emjT3VgOXN6qZkOozt/1/kKGx98I7clto+Kw+BPW7N80Hrz/98EqNgK+cvrrpJuK4K
 2WXrxjOGTQkMw==
Date: Wed, 28 Feb 2024 17:22:33 +0000
From: Mark Brown <broonie@kernel.org>
To: Cezary Rojewski <cezary.rojewski@intel.com>
Cc: alsa-devel@alsa-project.org, linux-sound@vger.kernel.org,
 tiwai@suse.com, perex@perex.cz, jani.nikula@linux.intel.com,
 joonas.lahtinen@linux.intel.com, rodrigo.vivi@intel.com,
 tvrtko.ursulin@linux.intel.com, intel-gfx@lists.freedesktop.org,
 amadeuszx.slawinski@linux.intel.com,
 pierre-louis.bossart@linux.intel.com, hdegoede@redhat.com
Subject: Re: [PATCH v3 3/5] ASoC: Intel: avs: Ignore codecs with no suppoting
 driver
Message-ID: <d7a5c567-b085-4eca-b12b-ff0626116b5f@sirena.org.uk>
References: <20240226124432.1203798-1-cezary.rojewski@intel.com>
 <20240226124432.1203798-4-cezary.rojewski@intel.com>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
 protocol="application/pgp-signature"; boundary="pfFywTWBH8wMNQLq"
Content-Disposition: inline
In-Reply-To: <20240226124432.1203798-4-cezary.rojewski@intel.com>
X-Cookie: Function reject.
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


--pfFywTWBH8wMNQLq
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline

On Mon, Feb 26, 2024 at 01:44:30PM +0100, Cezary Rojewski wrote:
> HDMI codecs which are present and functional from audio perspective lack
> i915 support on drm side what results in -ENODEV during the probing
> sequence. There is no reason to perform recovery procedure e.g.: reset
> the HDAudio controller if this is the case.

Acked-by: Mark Brown <broonie@kernel.org>

--pfFywTWBH8wMNQLq
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQEzBAABCgAdFiEEreZoqmdXGLWf4p/qJNaLcl1Uh9AFAmXfa9gACgkQJNaLcl1U
h9AU/gf+I3nstWc8uH7TGRyZ4L+HznVtBLiaeJINkFfzFFNX6FdxdDY3JEMvitjj
IR/v0m9u2n94Z8SmE+T2dqKhdOD1ARfxIwHPZ5JoxCn0RBj/Lo+7M4qLTo2xzSzy
czj9qzLOAgIP4WNv+XVcZ8CVRfv/nSvx/ZIfM0K8+dz0aqjTLMMSTbZ+vxlkM42D
wLkMI3M2pp7J43ltS5ha7qvehHyQ/7P1/BC2TxQp6p4z+M4hGyTu6Glru1KE/nDz
QCJJ+z6FnX+Q13Fq17aD1lg2xbjixOcrDWgDgb16dhO4tpzXoP36zRIuorrl56og
9SxnRsI8090hDwXKMVXe5KIsO8bOGQ==
=KbLi
-----END PGP SIGNATURE-----

--pfFywTWBH8wMNQLq--
