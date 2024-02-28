Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id D134486B5CF
	for <lists+intel-gfx@lfdr.de>; Wed, 28 Feb 2024 18:22:00 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 2FC2710E0B1;
	Wed, 28 Feb 2024 17:21:59 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=kernel.org header.i=@kernel.org header.b="Ms/GE9ra";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from dfw.source.kernel.org (dfw.source.kernel.org [139.178.84.217])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 658B910E0B1
 for <intel-gfx@lists.freedesktop.org>; Wed, 28 Feb 2024 17:21:57 +0000 (UTC)
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
 by dfw.source.kernel.org (Postfix) with ESMTP id 6C058618FB;
 Wed, 28 Feb 2024 17:21:56 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id A0DE0C433C7;
 Wed, 28 Feb 2024 17:21:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=k20201202; t=1709140916;
 bh=IdzX1daifoNbsjtYDp3Q/p54xzf2vmD7Pd4A4jPXUVw=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=Ms/GE9rasK+9LhTcZthY7FTR1yQhhlpPZkFs9ZBMvGJ/CjHBYEwEEvlYNRWCnokBt
 EYT+nZHQVAEsGo/sUgsKOYy78OoQQcYdLfoc/mL0bfVFsCmDp1STIaDfBfDZIcNGVW
 3JttXvJElftsFg+MJ7Y9tuH5nRWhdnxXfj4SEFwiBHpETPajQ17cRI+2SpeCF4mAEe
 5KyjaSrBWakzNJJOLQIdy07TW9pkMZSah0+fbFsXaqnTKwRRtxXUxIzK/rlAY+BBu4
 caDsofjI0jI+sXSYPkIGMLbhdUr0ekO7xrDItTf8r2PcXWi+nZY/F0QX4GqM8Z6Vnv
 mjVDoN5jOUT6w==
Date: Wed, 28 Feb 2024 17:21:50 +0000
From: Mark Brown <broonie@kernel.org>
To: Cezary Rojewski <cezary.rojewski@intel.com>
Cc: alsa-devel@alsa-project.org, linux-sound@vger.kernel.org,
 tiwai@suse.com, perex@perex.cz, jani.nikula@linux.intel.com,
 joonas.lahtinen@linux.intel.com, rodrigo.vivi@intel.com,
 tvrtko.ursulin@linux.intel.com, intel-gfx@lists.freedesktop.org,
 amadeuszx.slawinski@linux.intel.com,
 pierre-louis.bossart@linux.intel.com, hdegoede@redhat.com
Subject: Re: [PATCH v3 2/5] ASoC: codecs: hda: Skip HDMI/DP registration if
 i915 is missing
Message-ID: <d79e0336-58c7-4ad1-af5b-fc6934c2e921@sirena.org.uk>
References: <20240226124432.1203798-1-cezary.rojewski@intel.com>
 <20240226124432.1203798-3-cezary.rojewski@intel.com>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
 protocol="application/pgp-signature"; boundary="ai/7cep230enU383"
Content-Disposition: inline
In-Reply-To: <20240226124432.1203798-3-cezary.rojewski@intel.com>
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


--ai/7cep230enU383
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline

On Mon, Feb 26, 2024 at 01:44:29PM +0100, Cezary Rojewski wrote:
> If i915 does not support given platform but the hardware i.e.: HDAudio
> codec is still there, the codec-probing procedure will succeed for such
> device but the follow up initialization will always end up with -ENODEV.

Acked-by: Mark Brown <broonie@kernel.org>

--ai/7cep230enU383
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQEzBAABCgAdFiEEreZoqmdXGLWf4p/qJNaLcl1Uh9AFAmXfa60ACgkQJNaLcl1U
h9AIxgf/aE9dWFzQfCG0Di32ndV0EqQxs1Nz2hFLNJ6P6zBxMvAzajZB3qDjJ3XI
xXw01xKmYAvK377Gp7p0LnR91wMO62ePladK4ECjIlgu8Ju2Frd5gdR/aRpuKWv+
aCcfrEVcwaz9aCuKA/5ZvbwKHRlvoyNMfCX2nfr9jTrbYA0oYF6HvpGJYvwaDwnp
7yS2ITem2+OoKrx4jDZ2cLBaZO6FE3TOAVeHBRr9B5DsFX9mK11VFaIfKCYKeYqS
czXdWiRwzujKV66cf8XxbUWHaqd52UOR+h2L1GvX56rVKcq3FkuCQqmb3VbCuImf
O6gbkzuB43qmtFANlYGaT1Q9EcXk9g==
=wTRz
-----END PGP SIGNATURE-----

--ai/7cep230enU383--
