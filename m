Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 4C500A043E9
	for <lists+intel-gfx@lfdr.de>; Tue,  7 Jan 2025 16:14:40 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id E34DE10E70D;
	Tue,  7 Jan 2025 15:14:38 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=kernel.org header.i=@kernel.org header.b="Rd41cNXH";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from nyc.source.kernel.org (nyc.source.kernel.org [147.75.193.91])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 0841C10E70D;
 Tue,  7 Jan 2025 15:14:38 +0000 (UTC)
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
 by nyc.source.kernel.org (Postfix) with ESMTP id BC101A40B5A;
 Tue,  7 Jan 2025 15:12:47 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 0539AC4CEE1;
 Tue,  7 Jan 2025 15:14:35 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=k20201202; t=1736262876;
 bh=Qbj+7uegWwo74vBYVbgrZrrD7ctiz1nzweIhyjtfbAg=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=Rd41cNXH5dFaZZdI3kumY0WslSRmY5kClp39oFV06WMPQI6gEAp1dYH6oXF+40Qn5
 4C5JTbUopOkVqr6wg8BgNYTH5wCXIqUyO+tZiBUVYz+bA3rcheDJplTmYCbVlkFCRX
 /cjeWSNO4o4MtlY8N6mnezaMmeu5HrSnREB9lZAi0xG0rTYJHkOq+b6lSH2pAYkiLh
 MHnYRj1DqWktO7muIMqVJZe3bUVp8lxVJxIvCzr91PSGKpMpCuitMcgLJn81R11DY3
 bBniXXsQRGZDLSw0nCq8UGCknay4/V0SNyZ8PYB7xeHb+c2xL/2gzsUog1c8jGrcvi
 Ahi5hr2IXMj0Q==
Date: Tue, 7 Jan 2025 16:14:33 +0100
From: Maxime Ripard <mripard@kernel.org>
To: Jani Nikula <jani.nikula@intel.com>
Cc: intel-gfx@lists.freedesktop.org, intel-xe@lists.freedesktop.org, 
 Maarten Lankhorst <maarten.lankhorst@linux.intel.com>,
 Thomas Zimmermann <tzimmermann@suse.de>, imre.deak@intel.com, 
 Lyude Paul <lyude@redhat.com>
Subject: Re: [PATCH v3 01/16] drm/mst: remove mgr parameter and debug logging
 from drm_dp_get_vc_payload_bw()
Message-ID: <20250107-classy-burrowing-kingfisher-a8a0d1@houat>
References: <cover.1735912293.git.jani.nikula@intel.com>
 <72d77e7a7fe69c784e9df048b7e6f250fd7599e4.1735912293.git.jani.nikula@intel.com>
 <875xmrlzhd.fsf@intel.com>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha384;
 protocol="application/pgp-signature"; boundary="lftp4l5ikr7sbmnv"
Content-Disposition: inline
In-Reply-To: <875xmrlzhd.fsf@intel.com>
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


--lftp4l5ikr7sbmnv
Content-Type: text/plain; protected-headers=v1; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable
Subject: Re: [PATCH v3 01/16] drm/mst: remove mgr parameter and debug logging
 from drm_dp_get_vc_payload_bw()
MIME-Version: 1.0

On Tue, Jan 07, 2025 at 11:55:42AM +0200, Jani Nikula wrote:
> On Fri, 03 Jan 2025, Jani Nikula <jani.nikula@intel.com> wrote:
> > The struct drm_dp_mst_topology_mgr *mgr parameter is only used for debug
> > logging in case the passed in link rate or lane count are zero. There's
> > no further error checking as such, and the function returns 0.
> >
> > There should be no case where the parameters are zero. The returned
> > value is generally used as a divisor, and if we were hitting this, we'd
> > be seeing division by zero.
> >
> > Just remove the debug logging altogether, along with the mgr parameter,
> > so that the function can be used in non-MST contexts without the
> > topology manager.
> >
> > v2: Also remove drm_dp_mst_helper_tests_init as unnecessary (Imre)
> >
> > Cc: Imre Deak <imre.deak@intel.com>
> > Cc: Lyude Paul <lyude@redhat.com>
> > Reviewed-by: Imre Deak <imre.deak@intel.com>
> > Signed-off-by: Jani Nikula <jani.nikula@intel.com>
>=20
> Maarten, Maxime, Thomas, ack for merging this via drm-intel along with
> the rest of the series?

Ack

Maxime

--lftp4l5ikr7sbmnv
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iJUEABMJAB0WIQTkHFbLp4ejekA/qfgnX84Zoj2+dgUCZ31E2QAKCRAnX84Zoj2+
doxIAX9xbxs0JbnUcGPpZ1jHYUMm3dJqJqNW8YszPhx+yONy8VW4ssd7YtkMa8wM
7Xd+NS8Bfjo/Um3+fMbifvBuVH9dJvazv0Tw9H2aqJMxzdmMERxu5AbVjmoQUvY0
/Bl+VlQoyg==
=zHZG
-----END PGP SIGNATURE-----

--lftp4l5ikr7sbmnv--
