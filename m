Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id YAG9IsQ6uGmpagEAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Mon, 16 Mar 2026 18:15:48 +0100
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 16A1329DF35
	for <lists+intel-gfx@lfdr.de>; Mon, 16 Mar 2026 18:15:48 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 7355810E3EA;
	Mon, 16 Mar 2026 17:15:46 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=kernel.org header.i=@kernel.org header.b="DzpVpooO";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from tor.source.kernel.org (tor.source.kernel.org [172.105.4.254])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 1D26D10E3E7;
 Mon, 16 Mar 2026 17:15:45 +0000 (UTC)
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
 by tor.source.kernel.org (Postfix) with ESMTP id 5DDF760018;
 Mon, 16 Mar 2026 17:15:44 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id E8D50C2BC87;
 Mon, 16 Mar 2026 17:15:41 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=k20201202; t=1773681344;
 bh=iSlF4zlqIDCA6gK7HutoWfysGMTms7jpLdMF1JoK120=;
 h=Date:From:To:Cc:Subject:From;
 b=DzpVpooOLlPuqJp3uc2kqIlmJ7NKBzFilvG4zGp2Hvu87TkMIG2M5qYzJtumBWFdz
 arUSy1sLe6pY5W/UmWN1ocSGZ9aknRSN/ZYFPFf0O61er94ijGqyYizKhlPLWsim7u
 Q4vRbsfeBhYA5WYv7TfgqXKe/Fm4oW58MJ2EcO1PJHyuY1rX0Fmc8VW/I46rAhoFk6
 CKSJW+Z0S5wN5u0Y8D3budS0VYLLTRyk+qIjLIpa3PAdXIijBqAmmMbOVjYZBuncuI
 g4fJBSE6Ps1fct7X9KCV1Iew/iIGCgjkBmU2knt+/D3XhYQqbxLRfyWFiGLlhrA914
 s9aG8+xA/l/Vg==
Date: Mon, 16 Mar 2026 17:15:39 +0000
From: Mark Brown <broonie@kernel.org>
To: Simona Vetter <simona.vetter@ffwll.ch>,
 Jani Nikula <jani.nikula@linux.intel.com>,
 Joonas Lahtinen <joonas.lahtinen@linux.intel.com>,
 Rodrigo Vivi <rodrigo.vivi@intel.com>,
 Intel Graphics <intel-gfx@lists.freedesktop.org>,
 DRI <dri-devel@lists.freedesktop.org>
Cc: Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
 =?iso-8859-1?Q?Jos=E9?= Roberto de Souza <jose.souza@intel.com>,
 Lionel Landwerlin <lionel.g.landwerlin@intel.com>,
 Jani Nikula <jani.nikula@intel.com>,
 Linux Next Mailing List <linux-next@vger.kernel.org>
Subject: linux-next: build failure after merge of the drm-intel tree
Message-ID: <abg6u6o_Pjxkvi0A@sirena.org.uk>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
 protocol="application/pgp-signature"; boundary="3Assb2b4LU8n49id"
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
	RCPT_COUNT_SEVEN(0.00)[11];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TAGGED_RCPT(0.00)[intel-gfx];
	ASN(0.00)[asn:6366, ipnet:131.252.0.0/16, country:US];
	DBL_BLOCKED_OPENRESOLVER(0.00)[gabe.freedesktop.org:helo,gabe.freedesktop.org:rdns,sirena.org.uk:mid]
X-Rspamd-Queue-Id: 16A1329DF35
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr


--3Assb2b4LU8n49id
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

Hi all,

After merging the drm-intel tree, today's linux-next build (x86_64
allmodconfig) failed like this:

/tmp/next/build/drivers/gpu/drm/xe/xe_lrc.c: In function 'xe_lrc_ctx_init':
/tmp/next/build/drivers/gpu/drm/xe/xe_lrc.c:1554:43: error: implicit declar=
ation of function '_MASKED_BIT_ENABLE'; did you mean 'REG_MASKED_FIELD_ENAB=
LE'? [-Wimplicit-function-declaration]
 1554 |                 state_cache_perf_fix[2] =3D _MASKED_BIT_ENABLE(DISA=
BLE_STATE_CACHE_PERF_FIX);
      |                                           ^~~~~~~~~~~~~~~~~~
      |                                           REG_MASKED_FIELD_ENABLE

This is caused by an interaction with:

   0e07b16371b6e (drm/xe: Allow per queue programming of COMMON_SLICE_CHICK=
EN3 bit13)

=66rom the drm tree and is obviously related to:

   https://lore.kernel.org/r/abFpM1FHgzgARB88@sirena.org.uk

This has been broken for almost a week now and just keeps getting worse.

--3Assb2b4LU8n49id
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQEzBAABCgAdFiEEreZoqmdXGLWf4p/qJNaLcl1Uh9AFAmm4OroACgkQJNaLcl1U
h9B3xgf/TB/nRjpziRmRjEb+oAUtnN2Y6hHetyrv/oe5mxMQbUB/pZHZ9wgioPeN
4Eryx1w/7b6ZY2onX++VMqi390Q0w3ljjC4GxQK5wWkzOouZgZxjqJkuHNWYejTo
fBXSEiGFc483BsVco9NjLT4n3TJLKumBFfN8dVgQYAyOwEtoOfUlJyMuZq7mH6G1
VOHpjWxgrkT8o001TEieQYiD+/gsxl5dBqN1olYnPv0zSP27s+bvbDj1dBGG86Yn
pmnSqsAh58NkDpKrQT9kWWaEAQ8MfYgOlhQigHpyc3OkwFpRhgNZ9e8kOGkbtrDx
UIdwF8QhRuFyoW9jt0izTZUDeiDzGg==
=PxS4
-----END PGP SIGNATURE-----

--3Assb2b4LU8n49id--
