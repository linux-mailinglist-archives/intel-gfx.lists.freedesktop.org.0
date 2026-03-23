Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id OMjkFQ9mwWlQSwQAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Mon, 23 Mar 2026 17:10:55 +0100
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 08F7B2F7AD5
	for <lists+intel-gfx@lfdr.de>; Mon, 23 Mar 2026 17:10:54 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 24A6410E263;
	Mon, 23 Mar 2026 16:10:52 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=kernel.org header.i=@kernel.org header.b="ECcKQQMM";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from sea.source.kernel.org (sea.source.kernel.org [172.234.252.31])
 by gabe.freedesktop.org (Postfix) with ESMTPS id B672710E02E;
 Mon, 23 Mar 2026 16:10:50 +0000 (UTC)
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
 by sea.source.kernel.org (Postfix) with ESMTP id 79C2443AAA;
 Mon, 23 Mar 2026 16:10:50 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 83931C2BC9E;
 Mon, 23 Mar 2026 16:10:48 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=k20201202; t=1774282250;
 bh=ZoF6xupyTlTv3+792NBhfg/e7BseX4uCTwsWp6/Ht5o=;
 h=Date:From:To:Cc:Subject:From;
 b=ECcKQQMMWU2dOCMAt5/a29k+/CM78UaRqJB2AIlhQmkr+pJbb9NNKHBe5fjIfSfby
 5Q61bd8MSML5hT0XC1RFwswkg5SF3eThQg51onLwHHvckIm4/Y8u3DDGNCEdQ8fYkI
 /mEofa/HxUC9h5WmsrXgUt+cy20BPIo1BkwDofIdDL5XtM4IYwLWOgK651JMxoXmT9
 WlpdgReSsRkgHpXM3NhYNhrzOf/6yQBARoBqNnBmYFQZI5HzWAi47dMxTKKtOFewzM
 Qd7TdU6mNW0uIX+OgNS/Lmn//JB+LuyQLr/LTCxzx3sjgAfxMchREDSJv0NLv8Ougm
 ndJ4bIQ9MntGA==
Date: Mon, 23 Mar 2026 16:10:45 +0000
From: Mark Brown <broonie@kernel.org>
To: Simona Vetter <simona.vetter@ffwll.ch>,
 Jani Nikula <jani.nikula@linux.intel.com>,
 Joonas Lahtinen <joonas.lahtinen@linux.intel.com>,
 Rodrigo Vivi <rodrigo.vivi@intel.com>,
 Intel Graphics <intel-gfx@lists.freedesktop.org>,
 DRI <dri-devel@lists.freedesktop.org>
Cc: Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
 Linux Next Mailing List <linux-next@vger.kernel.org>,
 Ville =?iso-8859-1?Q?Syrj=E4l=E4?= <ville.syrjala@linux.intel.com>
Subject: linux-next: manual merge of the drm-intel tree with the
 drm-intel-fixes tree
Message-ID: <acFmBW6nKf6-3ufe@sirena.org.uk>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
 protocol="application/pgp-signature"; boundary="aL9nb2R2bPSwnBDn"
Content-Disposition: inline
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
X-Spamd-Result: default: False [-3.41 / 15.00];
	SIGNED_PGP(-2.00)[];
	DMARC_POLICY_ALLOW(-0.50)[kernel.org,quarantine];
	R_SPF_ALLOW(-0.20)[+ip4:131.252.210.177:c];
	MAILLIST(-0.20)[mailman];
	R_DKIM_ALLOW(-0.20)[kernel.org:s=k20201202];
	MIME_GOOD(-0.20)[multipart/signed,text/plain];
	RWL_MAILSPIKE_GOOD(-0.10)[131.252.210.177:from];
	HAS_LIST_UNSUB(-0.01)[];
	TO_DN_ALL(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	FROM_HAS_DN(0.00)[];
	ARC_NA(0.00)[];
	RCVD_COUNT_THREE(0.00)[4];
	MIME_TRACE(0.00)[0:+,1:+,2:~];
	DKIM_TRACE(0.00)[kernel.org:+];
	MISSING_XM_UA(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	FROM_NEQ_ENVFROM(0.00)[broonie@kernel.org,intel-gfx-bounces@lists.freedesktop.org];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	RCPT_COUNT_SEVEN(0.00)[9];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TAGGED_RCPT(0.00)[intel-gfx];
	ASN(0.00)[asn:6366, ipnet:131.252.0.0/16, country:US];
	DBL_BLOCKED_OPENRESOLVER(0.00)[gabe.freedesktop.org:helo,gabe.freedesktop.org:rdns]
X-Rspamd-Queue-Id: 08F7B2F7AD5
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr


--aL9nb2R2bPSwnBDn
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

Hi all,

Today's linux-next merge of the drm-intel tree got a conflict in:

  drivers/gpu/drm/i915/display/intel_plane.c

between commit:

  bfa71b7a9dc6b ("drm/i915: Unlink NV12 planes earlier")

=66rom the drm-intel-fixes tree and commits:

  017ecd0498557 ("drm/i915: Unlink NV12 planes earlier")
  7b3a14322d1a8 ("drm/i915: Relocate unlink_nv12_plane()")
  c5121204ad991 ("drm/i915: Skip redundant NV12 plane unlinking")

=66rom the drm-intel tree.

I fixed it up (see below) and can carry the fix as necessary. This
is now fixed as far as linux-next is concerned, but any non trivial
conflicts should be mentioned to your upstream maintainer when your tree
is submitted for merging.  You may also want to consider cooperating
with the maintainer of the conflicting tree to minimise any particularly
complex conflicts.

diff --combined drivers/gpu/drm/i915/display/intel_plane.c
index 076b9b3564816,5390ceb21ca42..0000000000000
--- a/drivers/gpu/drm/i915/display/intel_plane.c
+++ b/drivers/gpu/drm/i915/display/intel_plane.c
@@@ -437,7 -437,29 +437,29 @@@ void intel_plane_copy_hw_state(struct i
  }
 =20
  static void unlink_nv12_plane(struct intel_crtc_state *crtc_state,
- 			      struct intel_plane_state *plane_state);
+ 			      struct intel_plane_state *plane_state)
+ {
+ 	struct intel_display *display =3D to_intel_display(plane_state);
+ 	struct intel_plane *plane =3D to_intel_plane(plane_state->uapi.plane);
+=20
+ 	if (!plane_state->planar_linked_plane)
+ 		return;
+=20
+ 	plane_state->planar_linked_plane =3D NULL;
+=20
+ 	if (!plane_state->is_y_plane)
+ 		return;
+=20
+ 	drm_WARN_ON(display->drm, plane_state->uapi.visible);
+=20
+ 	plane_state->is_y_plane =3D false;
+=20
+ 	crtc_state->enabled_planes &=3D ~BIT(plane->id);
+ 	crtc_state->active_planes &=3D ~BIT(plane->id);
+ 	crtc_state->update_planes |=3D BIT(plane->id);
+ 	crtc_state->data_rate[plane->id] =3D 0;
+ 	crtc_state->rel_data_rate[plane->id] =3D 0;
+ }
 =20
  void intel_plane_set_invisible(struct intel_crtc_state *crtc_state,
  			       struct intel_plane_state *plane_state)
@@@ -1512,31 -1534,6 +1534,6 @@@ static void link_nv12_planes(struct int
  	icl_link_nv12_planes(uv_plane_state, y_plane_state);
  }
 =20
- static void unlink_nv12_plane(struct intel_crtc_state *crtc_state,
- 			      struct intel_plane_state *plane_state)
- {
- 	struct intel_display *display =3D to_intel_display(plane_state);
- 	struct intel_plane *plane =3D to_intel_plane(plane_state->uapi.plane);
-=20
- 	if (!plane_state->planar_linked_plane)
- 		return;
-=20
- 	plane_state->planar_linked_plane =3D NULL;
-=20
- 	if (!plane_state->is_y_plane)
- 		return;
-=20
- 	drm_WARN_ON(display->drm, plane_state->uapi.visible);
-=20
- 	plane_state->is_y_plane =3D false;
-=20
- 	crtc_state->enabled_planes &=3D ~BIT(plane->id);
- 	crtc_state->active_planes &=3D ~BIT(plane->id);
- 	crtc_state->update_planes |=3D BIT(plane->id);
- 	crtc_state->data_rate[plane->id] =3D 0;
- 	crtc_state->rel_data_rate[plane->id] =3D 0;
- }
-=20
  static int icl_check_nv12_planes(struct intel_atomic_state *state,
  				 struct intel_crtc *crtc)
  {
@@@ -1550,17 -1547,6 +1547,6 @@@
  	if (DISPLAY_VER(display) < 11)
  		return 0;
 =20
- 	/*
- 	 * Destroy all old plane links and make the Y plane invisible
- 	 * in the crtc_state->active_planes mask.
- 	 */
- 	for_each_new_intel_plane_in_state(state, plane, plane_state, i) {
- 		if (plane->pipe !=3D crtc->pipe)
- 			continue;
-=20
- 		unlink_nv12_plane(crtc_state, plane_state);
- 	}
-=20
  	if (!crtc_state->nv12_planes)
  		return 0;
 =20

--aL9nb2R2bPSwnBDn
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQEzBAABCgAdFiEEreZoqmdXGLWf4p/qJNaLcl1Uh9AFAmnBZgUACgkQJNaLcl1U
h9AIzwf+ISvVVdgyEcks5gQhMPiY6ZQJnrEsybRPvGC+0xBAL01/09v/+3vLLkiw
a8QzekfS2/ErTHjAC3s6h8Slx4Sr05mKcry69xQkl6sU4322W9pVHyMmvDgaGj/i
w+KUHIUrryjwyPUE5OrPOaEgG63ls0pUtYSB9WyCpwFwJ9jmjcikIz7fYqXd6hpw
9zjXDc4K+EEuwRCCrB9AKbeRzW7SBKag2xQURd+6FUvDFvr4xA1Sll+IJ1jNvP6t
oiDRfMYHl7Kv6W/h5OnP+lCdSm+YF/DHpDw71onMF6iI2NsrFeK0FAH7gFdSlSF7
uEnZhCLN38ZJfH8vbTP2LoNu054Skg==
=YpWH
-----END PGP SIGNATURE-----

--aL9nb2R2bPSwnBDn--
