Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id ag4SKu8MKGot9AIAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Tue, 09 Jun 2026 14:54:07 +0200
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 2EA39660416
	for <lists+intel-gfx@lfdr.de>; Tue, 09 Jun 2026 14:54:07 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=sang-engineering.com header.s=k1 header.b=X4KzwdBL;
	spf=pass (mail.lfdr.de: domain of intel-gfx-bounces@lists.freedesktop.org designates 131.252.210.177 as permitted sender) smtp.mailfrom=intel-gfx-bounces@lists.freedesktop.org;
	dmarc=none
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 69FC010E600;
	Tue,  9 Jun 2026 12:54:05 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
X-Greylist: delayed 978 seconds by postgrey-1.36 at gabe;
 Tue, 09 Jun 2026 12:54:03 UTC
Received: from mail.zeus03.de (zeus03.de [194.117.254.33])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 5B25310E600
 for <intel-gfx@lists.freedesktop.org>; Tue,  9 Jun 2026 12:54:03 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=
 sang-engineering.com; h=date:from:to:cc:subject:message-id
 :references:mime-version:content-type:in-reply-to; s=k1; bh=OjjY
 SMPomOhwWFqEFMXz14LrPJYiz9EwEP/lmnYTl0Q=; b=X4KzwdBLdIf7wzZ/1YyW
 1aS+7NAQ0pKiYSXa5b4WxAtci+008jSKtGLyBhUOqDunqemK1tOy0PYbfSMeaCPg
 CuR2acJyL9SkRBcJCWCOokMsCwn1nDTdDDCcfGV4nvMahac+OHillaEpLuCdEopw
 9mRmsw4RWcKpYLSyA331jVYP3hmeFZBr6MKQEei51CZN5+4zC5GuaaXKYDV48ciV
 8lH2coWVP+0Pv4LcovFz7hJVT8Vfwe7VIEl2aOqSW6j8hYs9sOe3bXNcX+pUQQCw
 8xpmYgUyOKO93QMH5R4hfxCoIuIdZGLXq1nV8yQwHZpSaT3AXsaHs35he39cZHmX
 8g==
Received: (qmail 1274062 invoked from network); 9 Jun 2026 14:37:43 +0200
Received: by mail.zeus03.de with UTF8SMTPSA (TLS_AES_256_GCM_SHA384 encrypted,
 authenticated); 9 Jun 2026 14:37:43 +0200
X-UD-Smtp-Session: l3s3148p1@fFq1ZNFTXLMujnvA
Date: Tue, 9 Jun 2026 14:37:43 +0200
From: Wolfram Sang <wsa+renesas@sang-engineering.com>
To: Hardik Prakash <hardikprakash.official@gmail.com>
Cc: "Borah, Chaitanya Kumar" <chaitanya.kumar.borah@intel.com>,
 linux-i2c@vger.kernel.org, linux-gpio@vger.kernel.org,
 wsa@kernel.org, andriy.shevchenko@intel.com,
 mario.limonciello@amd.com, brgl@bgdev.pl, basavaraj.natikar@amd.com,
 linusw@kernel.org,
 Bartosz Golaszewski <bartosz.golaszewski@oss.qualcomm.com>,
 "Mario Limonciello (AMD)" <superm1@kernel.org>,
 kernel test robot <lkp@intel.com>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>,
 "intel-xe@lists.freedesktop.org" <intel-xe@lists.freedesktop.org>,
 ravitejax.veesam@intel.com
Subject: Re: [PATCH v8 2/2] i2c: designware: defer probe if child GpioInt
 controllers are not bound
Message-ID: <aigJF6hd1EjRiGc-@ninjato>
References: <20260529100838.8896-1-hardikprakash.official@gmail.com>
 <20260529100838.8896-3-hardikprakash.official@gmail.com>
 <90656be5-eca0-4a09-9b19-0c6e85f1d455@intel.com>
 <CANTFpSV7N=5U9yuXcU-D=PDpwj=kD__JU89UGL1HQOYiaL77qg@mail.gmail.com>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
 protocol="application/pgp-signature"; boundary="oHvNJz1Mkf1rfBzj"
Content-Disposition: inline
In-Reply-To: <CANTFpSV7N=5U9yuXcU-D=PDpwj=kD__JU89UGL1HQOYiaL77qg@mail.gmail.com>
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
X-Spamd-Result: default: False [-0.91 / 15.00];
	SIGNED_PGP(-2.00)[];
	SUSPICIOUS_RECIPS(1.50)[];
	MID_RHS_NOT_FQDN(0.50)[];
	MAILLIST(-0.20)[mailman];
	MIME_GOOD(-0.20)[multipart/signed,text/plain];
	R_SPF_ALLOW(-0.20)[+ip4:131.252.210.177:c];
	R_DKIM_ALLOW(-0.20)[sang-engineering.com:s=k1];
	RWL_MAILSPIKE_GOOD(-0.10)[131.252.210.177:from];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_COUNT_THREE(0.00)[3];
	FORGED_RECIPIENTS(0.00)[m:hardikprakash.official@gmail.com,m:chaitanya.kumar.borah@intel.com,m:linux-i2c@vger.kernel.org,m:linux-gpio@vger.kernel.org,m:wsa@kernel.org,m:andriy.shevchenko@intel.com,m:mario.limonciello@amd.com,m:brgl@bgdev.pl,m:basavaraj.natikar@amd.com,m:linusw@kernel.org,m:bartosz.golaszewski@oss.qualcomm.com,m:superm1@kernel.org,m:lkp@intel.com,m:intel-xe@lists.freedesktop.org,m:ravitejax.veesam@intel.com,m:hardikprakashofficial@gmail.com,s:lists@lfdr.de];
	RCVD_TLS_LAST(0.00)[];
	DMARC_NA(0.00)[sang-engineering.com];
	FREEMAIL_TO(0.00)[gmail.com];
	ARC_NA(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[16];
	TO_DN_EQ_ADDR_SOME(0.00)[];
	MIME_TRACE(0.00)[0:+,1:+,2:~];
	FORWARDED(0.00)[intel-gfx@lists.freedesktop.org];
	FORGED_SENDER(0.00)[wsa@sang-engineering.com,intel-gfx-bounces@lists.freedesktop.org];
	DKIM_TRACE(0.00)[sang-engineering.com:+];
	TO_DN_SOME(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	PREVIOUSLY_DELIVERED(0.00)[intel-gfx@lists.freedesktop.org];
	FORGED_SENDER_FORWARDING(0.00)[];
	FROM_HAS_DN(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[wsa@sang-engineering.com,intel-gfx-bounces@lists.freedesktop.org];
	TAGGED_FROM(0.00)[renesas];
	ALIAS_RESOLVED(0.00)[];
	TAGGED_RCPT(0.00)[intel-gfx];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	MISSING_XM_UA(0.00)[];
	ASN(0.00)[asn:6366, ipnet:131.252.0.0/16, country:US];
	DBL_BLOCKED_OPENRESOLVER(0.00)[lists.freedesktop.org:from_smtp,gabe.freedesktop.org:rdns,gabe.freedesktop.org:helo,ninjato:mid,sang-engineering.com:dkim,sang-engineering.com:from_mime]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: 2EA39660416


--oHvNJz1Mkf1rfBzj
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable


> Linus, could you please drop commit ef76a3a28c79 from your fixes tree?
> The regression affects multiple machines including Intel CI and Nathan
> Chancellor's test systems.
>=20
> I will send a corrected version once the rewrite is complete.

Sending a revert patch seems like the better choice to me. His fixes
branch is probably in -next already?


--oHvNJz1Mkf1rfBzj
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCgAdFiEEOZGx6rniZ1Gk92RdFA3kzBSgKbYFAmooCRMACgkQFA3kzBSg
KbaI+xAAidNB6SVhGcGwfOHSnpSKOEAvybQk277VBG7P0PcEF0cttdwI7D7IsETD
DX9cw18GsQppDW0xhQ6IF4zitAOzgLYIi3qQ8VxdnGGRFJOJP02MSwrYAgJ4Srts
nACqtagWqZn3HuqvKcIIlHkZUxC2CHQtNU2apiXa1QZRWN7pvPoV6KJJWZLsQ8O0
6FJ6Jho7Icukd+WIuVTChM3OS61q4EKrUy4aKuGl+NrDdA4+XerbPOuRVZm9yZ0V
FjbWX1yQ/dVMoYZW26tgoZcvPCn3wWq83x34ZfPD07zz2AH76o7qaRMGZqmK3Y50
8R46QLlUCeX0gWJTavefbVxj6jffv8Fsgbv0NcoSCAPblRL2JcH8lZdbz6v3KdBo
wG1SY1bIP+xWpwZlTkoXiizvl+d1zHdsUr4KBLg0t70U1or9w4BwDCMCmVrx6Oxr
CI/D1Gviv40dEmRkyBPCv+t5E8Xg/gzObAMVaUnBzJtdsk0+qUJofFBqUg3LKQrO
Qr5RfQOGrBZhS1qwBuYF0pwlJIRb1Yc0vCfJcV5roR14NmWr3vihDx0Ba37Kyddt
Sxx4Ai17oX1/RhtEPX1mUQVwNw23pArH99e5kAEEiU8n0yAeRIrG1GTTOcKZCTRE
996PE6za+z/Tl7xk2m1uK0FsQxLn4hmso0icL9TRL3OFBBWaGvA=
=b826
-----END PGP SIGNATURE-----

--oHvNJz1Mkf1rfBzj--
