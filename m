Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id GAY/EY2eymmg+QUAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Mon, 30 Mar 2026 18:02:21 +0200
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id F146135E507
	for <lists+intel-gfx@lfdr.de>; Mon, 30 Mar 2026 18:02:20 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 67A3B10E5EA;
	Mon, 30 Mar 2026 16:02:19 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=kernel.org header.i=@kernel.org header.b="lSKb8EfV";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from tor.source.kernel.org (tor.source.kernel.org [172.105.4.254])
 by gabe.freedesktop.org (Postfix) with ESMTPS id CB13210E610;
 Mon, 30 Mar 2026 16:02:17 +0000 (UTC)
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
 by tor.source.kernel.org (Postfix) with ESMTP id 1435F60123;
 Mon, 30 Mar 2026 16:02:17 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 49843C19423;
 Mon, 30 Mar 2026 16:02:15 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=k20201202; t=1774886536;
 bh=JHsk56sU/D4uSJv9rCQtZc/uAUqmgJU0I37W1S+Lpu4=;
 h=Date:From:To:Cc:Subject:From;
 b=lSKb8EfVixD2LlTjyPnjQgzoLECyQEHAOYMUhuv9+QnXzggh47q6sdS37QG4xp4Ez
 dkPWGt61YeuM/KUajyiD8ylUBoPky8582osWymMQYE7sdcqURnFZZGHIluGeKxInEv
 GpWDxtjnUt1G1iclwpn21Wuu3kp7AsDlTV/ky6yVHKI/8wH5oonSbhb76qS7zbd19d
 SCpHHYumD+aM21uqh6WOcWdM6XMQzwcMIX393d0mmXK2UPpaLAvzZZJ/2GYVl42OA8
 dyof6XMD7ZBjysFyatVnxuKMhzmONxtRdTzePi56+kzj5antsHKLMyq0J2379udWwN
 wMJRkwp+N0DHg==
Date: Mon, 30 Mar 2026 17:02:12 +0100
From: Mark Brown <broonie@kernel.org>
To: Simona Vetter <simona.vetter@ffwll.ch>,
 Intel Graphics <intel-gfx@lists.freedesktop.org>,
 DRI <dri-devel@lists.freedesktop.org>
Cc: Dave Airlie <airlied@redhat.com>,
 Linus Torvalds <torvalds@linux-foundation.org>,
 Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
 Linux Next Mailing List <linux-next@vger.kernel.org>
Subject: linux-next: manual merge of the drm-misc tree with the drm tree
Message-ID: <acqehIhXNVZYxrrY@sirena.org.uk>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
 protocol="application/pgp-signature"; boundary="wjKSOlVC0gZOJw5h"
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
	RCPT_COUNT_SEVEN(0.00)[7];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TAGGED_RCPT(0.00)[intel-gfx];
	ASN(0.00)[asn:6366, ipnet:131.252.0.0/16, country:US];
	DBL_BLOCKED_OPENRESOLVER(0.00)[sirena.org.uk:mid,gabe.freedesktop.org:helo,gabe.freedesktop.org:rdns]
X-Rspamd-Queue-Id: F146135E507
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr


--wjKSOlVC0gZOJw5h
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

Hi all,

Today's linux-next merge of the drm-misc tree got a conflict in:

  drivers/gpu/drm/xe/xe_ggtt_types.h

between commit:

  d9a4a2021d4a5 ("Merge tag 'drm-misc-next-2026-03-12' of https://gitlab.fr=
eedesktop.org/drm/misc/kernel into drm-next")

=66rom the drm tree and commit:

  7aaa8047eafd0 ("Linux 7.0-rc6")

=66rom the drm-misc tree.

I fixed it up (see below) and can carry the fix as necessary. This
is now fixed as far as linux-next is concerned, but any non trivial
conflicts should be mentioned to your upstream maintainer when your tree
is submitted for merging.  You may also want to consider cooperating
with the maintainer of the conflicting tree to minimise any particularly
complex conflicts.

diff --combined drivers/gpu/drm/xe/xe_ggtt_types.h
index 9af448cde3a1d,cf754e4d502ad..0000000000000
--- a/drivers/gpu/drm/xe/xe_ggtt_types.h
+++ b/drivers/gpu/drm/xe/xe_ggtt_types.h
@@@ -11,7 -11,6 +11,7 @@@
 =20
  struct xe_ggtt;
  struct xe_ggtt_node;
 +struct xe_gt;
 =20
  typedef void (*xe_ggtt_set_pte_fn)(struct xe_ggtt *ggtt, u64 addr, u64 pt=
e);
  typedef void (*xe_ggtt_transform_cb)(struct xe_ggtt *ggtt,

--wjKSOlVC0gZOJw5h
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQEzBAABCgAdFiEEreZoqmdXGLWf4p/qJNaLcl1Uh9AFAmnKnoMACgkQJNaLcl1U
h9BO4gf/SYqtRsYqhr1GglyLs7K8cwckwaUSxGPZBoM7UCn4NkCBfpx1etSR7TGu
Vyl7aKHqFvV4HbEmqE2A2yLkHB8TqNEQQDLGQF3IFCrmoNmpMcoQRDFoR4btBnaq
DhwQ7yDPFKfEAj58waPSpgGhGZh+TiTfEZIBwcdFDkTpogFBTGdoXMKj5gBpWojY
GLUK52KbIHiwTgQg2lP5+EZBKry813y3DnkV+RFj577BZA90nVOHXEg68yoB2ke1
ZDjsVgbtWNxRYoP9QKXLgiVuYQpnm9jxj6j5eeDYBubIAHfdRuN352UsfODnSCtz
RJoCoJvp84XQi1eD/2Bb7FV1OxjtqA==
=k8T1
-----END PGP SIGNATURE-----

--wjKSOlVC0gZOJw5h--
