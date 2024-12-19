Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 2E3289F7EE1
	for <lists+intel-gfx@lfdr.de>; Thu, 19 Dec 2024 17:07:27 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id A8D5310E4A6;
	Thu, 19 Dec 2024 16:07:25 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mx1.emlix.com (mx1.emlix.com [178.63.209.131])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 803A910E2BB
 for <intel-gfx@lists.freedesktop.org>; Thu, 19 Dec 2024 10:26:48 +0000 (UTC)
Received: from mailer.emlix.com (p5098be52.dip0.t-ipconnect.de [80.152.190.82])
 (using TLSv1.2 with cipher ADH-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mx1.emlix.com (Postfix) with ESMTPS id 0FBCB5FA41;
 Thu, 19 Dec 2024 11:18:37 +0100 (CET)
From: Rolf Eike Beer <eb@emlix.com>
To: Jani Nikula <jani.nikula@linux.intel.com>,
 Joonas Lahtinen <joonas.lahtinen@linux.intel.com>,
 Rodrigo Vivi <rodrigo.vivi@intel.com>, Tvrtko Ursulin <tursulin@ursulin.net>
Cc: intel-gfx@lists.freedesktop.org, linux-kernel@vger.kernel.org
Subject: [PATCH 0/2] annotate i915_gem_object_trylock() as __must_check
Date: Thu, 19 Dec 2024 11:16:07 +0100
Message-ID: <7746997.EvYhyI6sBW@devpool47.emlix.com>
Organization: emlix GmbH
MIME-Version: 1.0
Content-Type: multipart/signed; boundary="nextPart3849359.kQq0lBPeGt";
 micalg="pgp-sha256"; protocol="application/pgp-signature"
X-Mailman-Approved-At: Thu, 19 Dec 2024 16:07:24 +0000
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

--nextPart3849359.kQq0lBPeGt
Content-Transfer-Encoding: quoted-printable
Content-Type: text/plain; charset="utf-8"; protected-headers="v1"
From: Rolf Eike Beer <eb@emlix.com>
Cc: intel-gfx@lists.freedesktop.org, linux-kernel@vger.kernel.org
Date: Thu, 19 Dec 2024 11:16:07 +0100
Message-ID: <7746997.EvYhyI6sBW@devpool47.emlix.com>
Organization: emlix GmbH
MIME-Version: 1.0

A while ago I did an attempt to convert some *_trylock*() functions to=20
__must_check annotation. I have refreshed that and the only new compile err=
or=20
I found was in i915/gt/selftest_migrate.c.

Here is what I have come up with as a solution for this. I have not observe=
d=20
any actual error about this, so you may prefer an entirely different way.

Regards,

Eike
=2D-=20
Rolf Eike Beer

emlix GmbH
Headquarters: Berliner Str. 12, 37073 G=C3=B6ttingen, Germany
Phone +49 (0)551 30664-0, e-mail info@emlix.com
District Court of G=C3=B6ttingen, Registry Number HR B 3160
Managing Directors: Heike Jordan, Dr. Uwe Kracke
VAT ID No. DE 205 198 055
Office Berlin: Panoramastr. 1, 10178 Berlin, Germany
Office Bonn: Bachstr. 6, 53115 Bonn, Germany
http://www.emlix.com

emlix - your embedded Linux partner
--nextPart3849359.kQq0lBPeGt
Content-Type: application/pgp-signature; name="signature.asc"
Content-Description: This is a digitally signed message part.
Content-Transfer-Encoding: 7Bit

-----BEGIN PGP SIGNATURE-----

iLMEAAEIAB0WIQQ/Uctzh31xzAxFCLur5FH7Xu2t/AUCZ2PyZwAKCRCr5FH7Xu2t
/FuRBACBwe7MH/m8FCyJ2vScbYoIXb2qklwrHuyXiNBDw5hoAiF5ohaRvz4vy9sB
PtJmPOBQTcmODW+lWRWtqtCiqP6LRBqljQ242OoOPTil1fT2PyGU99CSieTCYI9d
MmhK2aqDmooA1XZTd1/ixw2jbz5nP9IPA9X1OQejbLjYbj5Ttg==
=dMfn
-----END PGP SIGNATURE-----

--nextPart3849359.kQq0lBPeGt--



