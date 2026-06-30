Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id 8QPpFL7gQ2qnkwoAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Tue, 30 Jun 2026 17:29:02 +0200
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id C75AC6E5EF2
	for <lists+intel-gfx@lfdr.de>; Tue, 30 Jun 2026 17:29:01 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=kernel.org header.s=k20260515 header.b=ZawjOD7C;
	spf=pass (mail.lfdr.de: domain of intel-gfx-bounces@lists.freedesktop.org designates 131.252.210.177 as permitted sender) smtp.mailfrom=intel-gfx-bounces@lists.freedesktop.org;
	dmarc=pass (policy=quarantine) header.from=kernel.org
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 4809410E21B;
	Tue, 30 Jun 2026 15:29:00 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from sea.source.kernel.org (sea.source.kernel.org [172.234.252.31])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 2C5E710E21B;
 Tue, 30 Jun 2026 15:28:59 +0000 (UTC)
Received: from smtp.kernel.org (quasi.space.kernel.org [100.103.45.18])
 by sea.source.kernel.org (Postfix) with ESMTP id C73BE43D05;
 Tue, 30 Jun 2026 15:28:58 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 091F61F000E9;
 Tue, 30 Jun 2026 15:28:56 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
 s=k20260515; t=1782833338;
 bh=eNRcZHEi+sWqrXaKp2YiEZpqdRAdOI0YpmVUfOV8GSo=;
 h=Date:From:To:Cc:Subject;
 b=ZawjOD7CoeB1Iepwoghw9ZxRQZouq+Nph6w8mM+Y5ujCrrefwfYz3gBegx+8q7u4P
 CUWG7fwPcRPo8Z36zuZ6Feyvs6CJHZXl/o5hYjJ6AFJSJP7Vd5nHTL7ElD772kbncm
 s8OqmYDdq/B7pkN+lK7e+/4LXI/H+1hk1P7G4gBOXTlByTul2L1FMzJHNXuX1fEmQX
 rCxK6jAULnkGheVOwWJWxsQIP84nUKzm3N4N9SXQH4qU6qFEB4carE1Q0Ntd1A5o/Y
 r+EeBOIKmzGR1oxQcsfNPquqgCvuDUMlxyfhz8pYa1209Pug11HKmVcBrtR7nFfBk2
 MLFwciH3eHwBQ==
Date: Tue, 30 Jun 2026 16:28:54 +0100
From: Mark Brown <broonie@kernel.org>
To: Simona Vetter <simona.vetter@ffwll.ch>,
 Jani Nikula <jani.nikula@linux.intel.com>,
 Joonas Lahtinen <joonas.lahtinen@linux.intel.com>,
 Rodrigo Vivi <rodrigo.vivi@intel.com>,
 Intel Graphics <intel-gfx@lists.freedesktop.org>,
 DRI <dri-devel@lists.freedesktop.org>
Cc: Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
 Linux Next Mailing List <linux-next@vger.kernel.org>
Subject: linux-next: duplicate patch in the drm-intel tree
Message-ID: <akPgtvG9EP6wBnBt@sirena.org.uk>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
 protocol="application/pgp-signature"; boundary="Zp3p2AqqPMtFQbFK"
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
X-Rspamd-Action: no action
X-Spamd-Result: default: False [-3.41 / 15.00];
	SIGNED_PGP(-2.00)[];
	DMARC_POLICY_ALLOW(-0.50)[kernel.org,quarantine];
	R_SPF_ALLOW(-0.20)[+ip4:131.252.210.177:c];
	MAILLIST(-0.20)[mailman];
	R_DKIM_ALLOW(-0.20)[kernel.org:s=k20260515];
	MIME_GOOD(-0.20)[multipart/signed,text/plain];
	RWL_MAILSPIKE_GOOD(-0.10)[131.252.210.177:from];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	TO_DN_ALL(0.00)[];
	FROM_HAS_DN(0.00)[];
	ARC_NA(0.00)[];
	RCVD_COUNT_THREE(0.00)[4];
	MIME_TRACE(0.00)[0:+,1:+,2:~];
	DKIM_TRACE(0.00)[kernel.org:+];
	MISSING_XM_UA(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	ALIAS_RESOLVED(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[broonie@kernel.org,intel-gfx-bounces@lists.freedesktop.org];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	RCPT_COUNT_SEVEN(0.00)[8];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TAGGED_RCPT(0.00)[intel-gfx];
	ASN(0.00)[asn:6366, ipnet:131.252.0.0/16, country:US];
	DBL_BLOCKED_OPENRESOLVER(0.00)[lists.freedesktop.org:from_smtp,gabe.freedesktop.org:rdns,gabe.freedesktop.org:helo]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: C75AC6E5EF2


--Zp3p2AqqPMtFQbFK
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline

Hi all,

The following commit is also in Linus Torvalds' tree as a different commit
(but the same patch):

  3f9de66f8acbf (drm/i915/cdclk: Fix up CDCLK_FREQ_DECIMAL without a full PLL re-enable)

--Zp3p2AqqPMtFQbFK
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQEzBAABCgAdFiEEreZoqmdXGLWf4p/qJNaLcl1Uh9AFAmpD4LUACgkQJNaLcl1U
h9AuWgf/dK31r/B4goGnc8moZhRjkkDDyiStkkmSu2MhHOycRrqbAiAB3uhULmbA
IglqFpNkrko4Rb3kr9z3hNJq55Z9/LCjQeXbYSq8/utC/cBkv1AlV4vygM9h7QvY
N05rdGFsp9NBvEkKCtbgbMwdRIfip/WbIwvpHXSOTSio9P/p1FhFEEwQdXAo3C5l
vK1KxIRoaRmS1GN7yRf9wIhfH/g3ncvvPIbOQ05ZnaDbN1/O1VSxajk/eT47rl15
pmFiAKaOKwrLmEloq1C3W1IbzO+7ifJPlJYkL3D8t83wR33hIOKrYCSOctzu6lB+
PTWgC+K3G0vLtL522Lr05noZz/MR0Q==
=6/WV
-----END PGP SIGNATURE-----

--Zp3p2AqqPMtFQbFK--
