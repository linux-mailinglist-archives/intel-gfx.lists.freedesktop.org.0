Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id BA564275313
	for <lists+intel-gfx@lfdr.de>; Wed, 23 Sep 2020 10:17:32 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 48FF56E8FF;
	Wed, 23 Sep 2020 08:17:25 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-lj1-x243.google.com (mail-lj1-x243.google.com
 [IPv6:2a00:1450:4864:20::243])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 8A9206E8FB;
 Wed, 23 Sep 2020 08:17:23 +0000 (UTC)
Received: by mail-lj1-x243.google.com with SMTP id k25so16440931ljg.9;
 Wed, 23 Sep 2020 01:17:23 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=date:from:to:cc:subject:message-id:in-reply-to:references
 :mime-version; bh=Kyt0FNBLjc7CNsYuogySNQVNdNJgBdTSeuLbQ0WfSds=;
 b=Is6SRXkrpKHA8g4Hh/QCULr7JgP02XDlSyqhqi5OlKZK8+Q//bl8iJgYnJK40uQnRI
 YdO93z2ztfyRNyJ0bn5aHrznxo7bjKJpeaBFomPLdwhtoAAPQnCSqKqFi2bqJoRCdXGE
 75oRLeVro3SWOn69bP3Gs8SR+owgVJ1hfRKYREMj3Cvx9JmFWqiqZWPsMazOI0Oi5Gak
 zW4ero4NCmu70la6Yuj2M7iRf1wOOiGwdrKt/7eBAE2HfBvnNDNbUzkUbHyOrxgjeVAm
 U6OUmYs76vmNUPLBLBiectGXCsKt2FkArXNYuErBk0v5RXNWxReFDqpObCcWnE4/7brn
 Chkg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:in-reply-to
 :references:mime-version;
 bh=Kyt0FNBLjc7CNsYuogySNQVNdNJgBdTSeuLbQ0WfSds=;
 b=rS+r0CFJx3Gw9SRNAkEqQVAtU+FqCkEBxAYPJHNVfzERWyLPRekjw+NZ3/jP3LQQG3
 ihshn9uDqzRjiKVntc59aiAL+/7pSWfLukSgkWaUQ6hW73zsdC9A6HECyAqFAX3Ru8ql
 srI48OasU1O3MJUMcaz/+fFZaJLOofQLPzqO0AkiLdChmHqEXgRA8WsBYTgYG4O+Jy14
 PKek53dMd1rcDo7BmAVpGR2Hf7340IfpQ3ILnu9Aw/V0E/znonTVepwgSB2EFP/I/pkj
 pIto/mcND3gcASdv2EfsqK2D73zUt6VgJgaq9ADsndRmGc0l6hMz5lGjzx5gcGd5iHCM
 6M/Q==
X-Gm-Message-State: AOAM533XO7D/zhgOqwQRyqR+JFpq/OR8v+VaSLYit4ZVNqxSyTg7ev+T
 dSudhVaq+Bzo4E7797jv7FY=
X-Google-Smtp-Source: ABdhPJz2jIRBhshqLJo4dU8gupTkoiQLwB5Q0q5W20O98jtXz4Ui9anag9qI6BJlmNcAnzdpiXxDmg==
X-Received: by 2002:a2e:5051:: with SMTP id v17mr2632933ljd.295.1600849041918; 
 Wed, 23 Sep 2020 01:17:21 -0700 (PDT)
Received: from eldfell ([194.136.85.206])
 by smtp.gmail.com with ESMTPSA id b7sm4428048lfi.123.2020.09.23.01.17.21
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Wed, 23 Sep 2020 01:17:21 -0700 (PDT)
Date: Wed, 23 Sep 2020 11:17:17 +0300
From: Pekka Paalanen <ppaalanen@gmail.com>
To: Daniel Vetter <daniel.vetter@ffwll.ch>
Message-ID: <20200923111717.68d9eb51@eldfell>
In-Reply-To: <20200922181834.2913552-1-daniel.vetter@ffwll.ch>
References: <20200922181834.2913552-1-daniel.vetter@ffwll.ch>
X-Mailer: Claws Mail 3.17.3 (GTK+ 2.24.32; x86_64-pc-linux-gnu)
MIME-Version: 1.0
Subject: Re: [Intel-gfx] [PATCH] drm: document and enforce rules around
 "spurious" EBUSY from atomic_commit
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
Cc: DRI Development <dri-devel@lists.freedesktop.org>,
 Simon Ser <contact@emersion.fr>,
 Intel Graphics Development <intel-gfx@lists.freedesktop.org>,
 stable@vger.kernel.org, Daniel Vetter <daniel.vetter@intel.com>
Content-Type: multipart/mixed; boundary="===============0714970755=="
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

--===============0714970755==
Content-Type: multipart/signed; micalg=pgp-sha256;
 boundary="Sig_/OM_kZCIkmK1nOa/u1cD6zI="; protocol="application/pgp-signature"

--Sig_/OM_kZCIkmK1nOa/u1cD6zI=
Content-Type: text/plain; charset=US-ASCII
Content-Transfer-Encoding: quoted-printable

On Tue, 22 Sep 2020 20:18:34 +0200
Daniel Vetter <daniel.vetter@ffwll.ch> wrote:

> When doing an atomic modeset with ALLOW_MODESET drivers are allowed to
> pull in arbitrary other resources, including CRTCs (e.g. when
> reconfiguring global resources).
>=20
> But in nonblocking mode userspace has then no idea this happened,
> which can lead to spurious EBUSY calls, both:
> - when that other CRTC is currently busy doing a page_flip the
>   ALLOW_MODESET commit can fail with an EBUSY
> - on the other CRTC a normal atomic flip can fail with EBUSY because
>   of the additional commit inserted by the kernel without userspace's
>   knowledge
>=20
> For blocking commits this isn't a problem, because everyone else will
> just block until all the CRTC are reconfigured. Only thing userspace
> can notice is the dropped frames without any reason for why frames got
> dropped.
>=20
> Consensus is that we need new uapi to handle this properly, but no one
> has any idea what exactly the new uapi should look like. Since this
> has been shipping for years already compositors need to deal no matter
> what, so as a first step just try to enforce this across drivers
> better with some checks.
>=20
> v2: Add comments and a WARN_ON to enforce this only when allowed - we
> don't want to silently convert page flips into blocking plane updates
> just because the driver is buggy.
>=20
> v3: Fix inverted WARN_ON (Pekka).
>=20
> v4: Drop the uapi changes, only add a WARN_ON for now to enforce some
> rules for drivers.

Dropped all addresses, because gmail refused to send this email
otherwise.

> ---
>  drivers/gpu/drm/drm_atomic.c | 27 +++++++++++++++++++++++++++
>  1 file changed, 27 insertions(+)
>=20
> diff --git a/drivers/gpu/drm/drm_atomic.c b/drivers/gpu/drm/drm_atomic.c
> index 58527f151984..ef106e7153a6 100644
> --- a/drivers/gpu/drm/drm_atomic.c
> +++ b/drivers/gpu/drm/drm_atomic.c
> @@ -281,6 +281,10 @@ EXPORT_SYMBOL(__drm_atomic_state_free);
>   * needed. It will also grab the relevant CRTC lock to make sure that th=
e state
>   * is consistent.
>   *
> + * WARNING: Drivers may only add new CRTC states to a @state if
> + * drm_atomic_state.allow_modeset is set, or if it's a driver-internal c=
ommit
> + * not created by userspace through an IOCTL call.
> + *
>   * Returns:
>   *
>   * Either the allocated state or the error code encoded into the pointer=
. When
> @@ -1262,10 +1266,15 @@ int drm_atomic_check_only(struct drm_atomic_state=
 *state)
>  	struct drm_crtc_state *new_crtc_state;
>  	struct drm_connector *conn;
>  	struct drm_connector_state *conn_state;
> +	unsigned requested_crtc =3D 0;
> +	unsigned affected_crtc =3D 0;
>  	int i, ret =3D 0;
> =20
>  	DRM_DEBUG_ATOMIC("checking %p\n", state);
> =20
> +	for_each_new_crtc_in_state(state, crtc, old_crtc_state, i)
> +		requested_crtc |=3D drm_crtc_mask(crtc);
> +
>  	for_each_oldnew_plane_in_state(state, plane, old_plane_state, new_plane=
_state, i) {
>  		ret =3D drm_atomic_plane_check(old_plane_state, new_plane_state);
>  		if (ret) {
> @@ -1313,6 +1322,24 @@ int drm_atomic_check_only(struct drm_atomic_state =
*state)
>  		}
>  	}
> =20
> +	for_each_new_crtc_in_state(state, crtc, old_crtc_state, i)
> +		affected_crtc |=3D drm_crtc_mask(crtc);
> +
> +	/*
> +	 * For commits that allow modesets drivers can add other CRTCs to the
> +	 * atomic commit, e.g. when they need to reallocate global resources.
> +	 * This can cause spurious EBUSY, which robs compositors of a very
> +	 * effective sanity check for their drawing loop. Therefor only allow
> +	 * this for modeset commits.
> +	 *
> +	 * FIXME: Should add affected_crtc mask to the ATOMIC IOCTL as an output
> +	 * so compositors know what's going on.

Hi,

I think telling userspace the affected_crtc mask would only solve half
of the problem: it would allow userspace to avoid attempting flips on
the other affected CRTCs until this modeset is done, but it doesn't
stop this non-blocking modeset from EBUSY'ing because other affected
CRTCs are busy flipping.

If the aim is to indicate userspace bugs with EBUSY, then EBUSY because
of other CRTCs needs to be differentiable from EBUSY due to a mistake
on this CRTC. Maybe the CRTC mask should instead be "conflicting/busy
CRTCs", not simply "affected CRTCS"?

Userspace might also be designed to always avoid modesets while any
CRTC is busy flipping. In that case any EBUSY would be an indication of
a (userspace) bug and a "busy CRTCs" mask could help pinpoint the issue.

If userspace does a TEST_ONLY commit with a modeset on one CRTC and the
driver pulls in another CRTC that is currently busy, will the test
commit return with EBUSY?

If yes, and *if* userspace is single-threaded wrt. to KMS updates,
that might offer a way to work around it in userspace. But if userspace
is flipping other CRTCs from other threads, TEST_ONLY commit does not
help because another thread may cut in and make a CRTC busy.


Thanks,
pq

> +	 */
> +	if (affected_crtc !=3D requested_crtc) {
> +		/* adding other CRTC is only allowed for modeset commits */
> +		WARN_ON(!state->allow_modeset);
> +	}
> +
>  	return 0;
>  }
>  EXPORT_SYMBOL(drm_atomic_check_only);


--Sig_/OM_kZCIkmK1nOa/u1cD6zI=
Content-Type: application/pgp-signature
Content-Description: OpenPGP digital signature

-----BEGIN PGP SIGNATURE-----

iQIzBAEBCAAdFiEEJQjwWQChkWOYOIONI1/ltBGqqqcFAl9rBI0ACgkQI1/ltBGq
qqeO2w/9G0hvfFGCHCnG0KnS9H2LcBZdDS5H/ZZcbTBc5TdrYQIxvswPCJR9Z2i6
Fgn8LlpBH4cCfnCBpdUUm8FG6dosENPnlh8+3a489Tzma0lgr5ojoxDp+mItKVl3
w7PpGYwFGmXurhCLb2BlcV6rGIZq1I1F9Rs2BinyHRoXTKHHLy1MZj8NZWBmdsAk
uWebY2x57jhrQBbSIbSxkefot4bq3ywWbwgVVSKwvKStJwTDO+A/ZxpMsbUrITM7
Edtq9p91a5olB3ve8dG3VInQ0w3EZdZSYx08uBxJG1rxFWWCXjrMx+DhSPK3bNHv
LkZ3JzIXEbfhZgcmcZMFns4a4W/fMcHAbS+Dm/bmACs239ylILpxxWziQyrdE0rT
o1Xt4uEgtjLO4QMKhveyYFRcq5ir1CwA6zqyzEWHSs2q3Hy+eGUCzOT8AArtX0Ct
eTvu10VVpxG9/9k9FAvcGcYrOgXoZOn1Y62FSx+8OF5LyHfwiGYeCzXynRMCSbvM
iBHrFkGCpjsdoigysjRiGCPNQvW6J6p/c/pJtX7e465ALzYJDgT8pK7UqYfT+fiL
dkWDuq5HyOSwe5llenvR2GU8eGS4B67MPgB0h1o+fn01USldklktmKXPNRrvuKER
849umj9afHg6CIQq8Uoexi5VWHmbrzqDWRCme3g/a1ISRPK/87w=
=eHzN
-----END PGP SIGNATURE-----

--Sig_/OM_kZCIkmK1nOa/u1cD6zI=--

--===============0714970755==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx

--===============0714970755==--
