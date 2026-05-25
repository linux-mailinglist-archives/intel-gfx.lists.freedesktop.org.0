Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id MIaIFpZkFGoxNAcAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Mon, 25 May 2026 17:02:46 +0200
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id ACE095CC09E
	for <lists+intel-gfx@lfdr.de>; Mon, 25 May 2026 17:02:45 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 8BB0E10E399;
	Mon, 25 May 2026 15:02:43 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=kernel.org header.i=@kernel.org header.b="abQDFWZo";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from tor.source.kernel.org (tor.source.kernel.org [172.105.4.254])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 0BBE810E399;
 Mon, 25 May 2026 15:02:43 +0000 (UTC)
Received: from smtp.kernel.org (quasi.space.kernel.org [100.103.45.18])
 by tor.source.kernel.org (Postfix) with ESMTP id 4B584600C3;
 Mon, 25 May 2026 15:02:42 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 1B3711F000E9;
 Mon, 25 May 2026 15:02:39 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
 s=k20260515; t=1779721362;
 bh=oE/uAUi1ZJ8Z07LJo3PiENxZ5di8rJGAwdTc2Ip5hJM=;
 h=Date:From:To:Cc:Subject;
 b=abQDFWZoeoIySS5uM50oNQAhEjFEVdVhPVHyVFnb4M3QzXnsXKnjMt0FinMac5pWX
 OjO7kExt7XscZ3Kvd5x77xeMvRUYkV5eH1ALelDj3wJaSovdgCXh155PFpm53LUPNe
 nYkMYpYhoDn77oPoKMZsbEGSBIIJOqWZmyvdsuHDkGG3Xdm/9IimafUBUJW4z/k3SZ
 NxrOyUeiujK/5hl+P8aOeVKMbqrDFcUC9SDVEEjD4D2R63Sw/t76Og7BAKWJSYkGVp
 p/QIre4pVFgcM+LjoxRieN7stJ1lR+QuXj4p6b1mhqq7NzyeXejHvsUITNnd2cQ1dJ
 ahEkFWGsGtkfQ==
Date: Mon, 25 May 2026 16:02:37 +0100
From: Mark Brown <broonie@kernel.org>
To: Maxime Ripard <mripard@kernel.org>, Dave Airlie <airlied@redhat.com>,
 Icenowy Zheng <zhengxingda@iscas.ac.cn>,
 Thomas Zimmermann <tzimmermann@suse.de>,
 Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>,
 Simona Vetter <simona.vetter@ffwll.ch>,
 Intel Graphics <intel-gfx@lists.freedesktop.org>,
 DRI <dri-devel@lists.freedesktop.org>
Cc: Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
 Linux Next Mailing List <linux-next@vger.kernel.org>
Subject: linux-next: build failure after merge of the drm-misc tree
Message-ID: <ahRkjeEjdeF_icWN@sirena.org.uk>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
 protocol="application/pgp-signature"; boundary="GroEncpA0Meuaket"
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
	R_DKIM_ALLOW(-0.20)[kernel.org:s=k20260515];
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
	RCPT_COUNT_SEVEN(0.00)[10];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TAGGED_RCPT(0.00)[intel-gfx];
	ASN(0.00)[asn:6366, ipnet:131.252.0.0/16, country:US];
	DBL_BLOCKED_OPENRESOLVER(0.00)[sirena.org.uk:mid,gabe.freedesktop.org:rdns,gabe.freedesktop.org:helo]
X-Rspamd-Queue-Id: ACE095CC09E
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr


--GroEncpA0Meuaket
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline

Hi all,

After merging the drm-misc tree, today's linux-next build (x86_64
allmodconfig) failed like this:

/tmp/next/build/drivers/gpu/drm/verisilicon/vs_cursor_plane.c:43:48:
error: 'struct drm_atomic_state' declared inside parameter list will
not be visible outside of this definition or declaration [-Werror]
   43 |                                         struct drm_atomic_state *state)
      |                                                ^~~~~~~~~~~~~~~~
/tmp/next/build/drivers/gpu/drm/verisilicon/vs_cursor_plane.c:
In function 'vs_cursor_plane_atomic_check':
/tmp/next/build/drivers/gpu/drm/verisilicon/vs_cursor_plane.c:45:82:
error: passing argument 1 of 'drm_atomic_get_new_plane_state' from
incompatible pointer type [-Wincompatible-pointer-types]
   45 |         struct drm_plane_state *new_plane_state = drm_atomic_get_new_plane_state(state,
      |                                                                                  ^~~~~
      |                                                                                  |
      |                                                                                  struct
      |                                                                                  drm_atomic_state
      |                                                                                  *
In file included from
/tmp/next/build/drivers/gpu/drm/verisilicon/vs_cursor_plane.c:12:
/tmp/next/build/include/drm/drm_atomic.h:824:64: note: expected
'const struct drm_atomic_commit *' but argument is of type 'struct
drm_atomic_state *'
  824 | drm_atomic_get_new_plane_state(const struct drm_atomic_commit *state,
      |                                ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~^~~~~
/tmp/next/build/drivers/gpu/drm/verisilicon/vs_cursor_plane.c:55:60:
error: passing argument 1 of 'drm_atomic_get_new_crtc_state' from
incompatible pointer type [-Wincompatible-pointer-types]
   55 |                 crtc_state = drm_atomic_get_new_crtc_state(state, crtc);
      |                                                            ^~~~~
      |                                                            | struct
      |                                                            drm_atomic_state
      |                                                            *
/tmp/next/build/include/drm/drm_atomic.h:794:63: note: expected
'const struct drm_atomic_commit *' but argument is of type 'struct
drm_atomic_state *'
  794 | drm_atomic_get_new_crtc_state(const struct drm_atomic_commit *state,
      |                               ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~^~~~~
/tmp/next/build/drivers/gpu/drm/verisilicon/vs_cursor_plane.c:
At top level:
/tmp/next/build/drivers/gpu/drm/verisilicon/vs_cursor_plane.c:101:51:
error: 'struct drm_atomic_state' declared inside parameter list will
not be visible outside of this definition or declaration [-Werror]
  101 |                                            struct drm_atomic_state *atomic_state)
      |                                                   ^~~~~~~~~~~~~~~~
/tmp/next/build/drivers/gpu/drm/verisilicon/vs_cursor_plane.c:
In function 'vs_cursor_plane_atomic_enable':
/tmp/next/build/drivers/gpu/drm/verisilicon/vs_cursor_plane.c:103:72:
error: passing argument 1 of 'drm_atomic_get_new_plane_state' from
incompatible pointer type [-Wincompatible-pointer-types]
  103 |         struct drm_plane_state *state = drm_atomic_get_new_plane_state(atomic_state,
      |                                                                        ^~~~~~~~~~~~
      |                                                                        |
      |                                                                        struct
      |                                                                        drm_atomic_state
      |                                                                        *
/tmp/next/build/include/drm/drm_atomic.h:824:64: note: expected
'const struct drm_atomic_commit *' but argument is of type 'struct
drm_atomic_state *'
  824 | drm_atomic_get_new_plane_state(const struct drm_atomic_commit *state,
      |                                ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~^~~~~
/tmp/next/build/drivers/gpu/drm/verisilicon/vs_cursor_plane.c:
At top level:
/tmp/next/build/drivers/gpu/drm/verisilicon/vs_cursor_plane.c:118:52:
error: 'struct drm_atomic_state' declared inside parameter list will
not be visible outside of this definition or declaration [-Werror]
  118 |                                             struct drm_atomic_state *atomic_state)
      |                                                    ^~~~~~~~~~~~~~~~
/tmp/next/build/drivers/gpu/drm/verisilicon/vs_cursor_plane.c:
In function 'vs_cursor_plane_atomic_disable':
/tmp/next/build/drivers/gpu/drm/verisilicon/vs_cursor_plane.c:120:72:
error: passing argument 1 of 'drm_atomic_get_old_plane_state' from
incompatible pointer type [-Wincompatible-pointer-types]
  120 |         struct drm_plane_state *state = drm_atomic_get_old_plane_state(atomic_state,
      |                                                                        ^~~~~~~~~~~~
      |                                                                        |
      |                                                                        struct
      |                                                                        drm_atomic_state
      |                                                                        *
/tmp/next/build/include/drm/drm_atomic.h:809:64: note: expected
'const struct drm_atomic_commit *' but argument is of type 'struct
drm_atomic_state *'
  809 | drm_atomic_get_old_plane_state(const struct drm_atomic_commit *state,
      |                                ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~^~~~~
/tmp/next/build/drivers/gpu/drm/verisilicon/vs_cursor_plane.c:
At top level:
/tmp/next/build/drivers/gpu/drm/verisilicon/vs_cursor_plane.c:135:51:
error: 'struct drm_atomic_state' declared inside parameter list will
not be visible outside of this definition or declaration [-Werror]
  135 |                                            struct drm_atomic_state *atomic_state)
      |                                                   ^~~~~~~~~~~~~~~~
/tmp/next/build/drivers/gpu/drm/verisilicon/vs_cursor_plane.c:
In function 'vs_cursor_plane_atomic_update':
/tmp/next/build/drivers/gpu/drm/verisilicon/vs_cursor_plane.c:137:72:
error: passing argument 1 of 'drm_atomic_get_new_plane_state' from
incompatible pointer type [-Wincompatible-pointer-types]
  137 |         struct drm_plane_state *state = drm_atomic_get_new_plane_state(atomic_state,
      |                                                                        ^~~~~~~~~~~~
      |                                                                        |
      |                                                                        struct
      |                                                                        drm_atomic_state
      |                                                                        *
/tmp/next/build/include/drm/drm_atomic.h:824:64: note: expected
'const struct drm_atomic_commit *' but argument is of type 'struct
drm_atomic_state *'
  824 | drm_atomic_get_new_plane_state(const struct drm_atomic_commit *state,
      |                                ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~^~~~~
/tmp/next/build/drivers/gpu/drm/verisilicon/vs_cursor_plane.c:147:55:
error: passing argument 2 of 'vs_cursor_plane_atomic_disable' from
incompatible pointer type [-Wincompatible-pointer-types]
  147 |                 vs_cursor_plane_atomic_disable(plane, atomic_state);
      |                                                       ^~~~~~~~~~~~
      |                                                       | struct
      |                                                       drm_atomic_state
      |                                                       *
/tmp/next/build/drivers/gpu/drm/verisilicon/vs_cursor_plane.c:118:70:
note: expected 'struct drm_atomic_state *' but argument is of type
'struct drm_atomic_state *'
  118 |                                             struct drm_atomic_state *atomic_state)
      |                                             ~~~~~~~~~~~~~~~~~~~~~~~~~^~~~~~~~~~~~
/tmp/next/build/drivers/gpu/drm/verisilicon/vs_cursor_plane.c:
At top level:
/tmp/next/build/drivers/gpu/drm/verisilicon/vs_cursor_plane.c:225:27:
error: initialization of 'int (*)(struct drm_plane *, struct
drm_atomic_commit *)' from incompatible pointer type 'int (*)(struct
drm_plane *, struct drm_atomic_state *)' [-Wincompatible-pointer-types]
  225 |         .atomic_check   = vs_cursor_plane_atomic_check,
      |                           ^~~~~~~~~~~~~~~~~~~~~~~~~~~~
/tmp/next/build/drivers/gpu/drm/verisilicon/vs_cursor_plane.c:225:27:
note: (near initialization for
'vs_cursor_plane_helper_funcs.atomic_check')
/tmp/next/build/drivers/gpu/drm/verisilicon/vs_cursor_plane.c:226:27:
error: initialization of 'void (*)(struct drm_plane *, struct
drm_atomic_commit *)' from incompatible pointer type 'void (*)(struct
drm_plane *, struct drm_atomic_state *)' [-Wincompatible-pointer-types]
  226 |         .atomic_update  = vs_cursor_plane_atomic_update,
      |                           ^~~~~~~~~~~~~~~~~~~~~~~~~~~~~
/tmp/next/build/drivers/gpu/drm/verisilicon/vs_cursor_plane.c:226:27:
note: (near initialization for
'vs_cursor_plane_helper_funcs.atomic_update')
/tmp/next/build/drivers/gpu/drm/verisilicon/vs_cursor_plane.c:227:27:
error: initialization of 'void (*)(struct drm_plane *, struct
drm_atomic_commit *)' from incompatible pointer type 'void (*)(struct
drm_plane *, struct drm_atomic_state *)' [-Wincompatible-pointer-types]
  227 |         .atomic_enable  = vs_cursor_plane_atomic_enable,
      |                           ^~~~~~~~~~~~~~~~~~~~~~~~~~~~~
/tmp/next/build/drivers/gpu/drm/verisilicon/vs_cursor_plane.c:227:27:
note: (near initialization for
'vs_cursor_plane_helper_funcs.atomic_enable')
/tmp/next/build/drivers/gpu/drm/verisilicon/vs_cursor_plane.c:228:27:
error: initialization of 'void (*)(struct drm_plane *, struct
drm_atomic_commit *)' from incompatible pointer type 'void (*)(struct
drm_plane *, struct drm_atomic_state *)' [-Wincompatible-pointer-types]
  228 |         .atomic_disable = vs_cursor_plane_atomic_disable,
      |                           ^~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
/tmp/next/build/drivers/gpu/drm/verisilicon/vs_cursor_plane.c:228:27:
note: (near initialization for
'vs_cursor_plane_helper_funcs.atomic_disable')

Caused by commit

  8c4ae21891255 (drm: verisilicon: add support for cursor planes)

interacting with

  5164f7e7ff8ec (drm: Rename struct drm_atomic_state to drm_atomic_commit)

which appears to be an ancestor of the verisilicon commit.  I have used
the version from next-20260522 instead.

--GroEncpA0Meuaket
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQEzBAABCgAdFiEEreZoqmdXGLWf4p/qJNaLcl1Uh9AFAmoUZIwACgkQJNaLcl1U
h9DN8Qf/XuhsmNTm6pM5E0zNbbxWHWulWwJR/Ew5fOfYo7OrEPRrSuPtdQAtut5S
hEBMfjyeSf4zBnDpN/k6Q4Qgzt7xkXaD1okSbNf/445x10ZnejyNR/uVkcJga89Y
4GXCtPZtY6VQq6sIvgkUz4wWuFHhh4nUkhLuI+EEkS3aagdGcF/aa9THi8CFnUQ/
5xXN5VmNXybd0axsMDPsyH8PQyZhL3yIK24Sf4B7hsJWV8naQVWwN+TUNxLTT0qJ
Vx0G/8dzXjBj7as37v/7ifRZqqsjYtswtWdGCE4oMfnUXH8BMUO+HMY/4uCXWymB
T7xr3DtMEHxQTpuEuThcIHWHqdUchg==
=5+80
-----END PGP SIGNATURE-----

--GroEncpA0Meuaket--
