Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 4479B1BCFD0
	for <lists+intel-gfx@lfdr.de>; Wed, 29 Apr 2020 00:21:22 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 4BDA56E9CE;
	Tue, 28 Apr 2020 22:21:19 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mx1.riseup.net (mx1.riseup.net [198.252.153.129])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 20F806E9CE
 for <intel-gfx@lists.freedesktop.org>; Tue, 28 Apr 2020 22:21:18 +0000 (UTC)
Received: from capuchin.riseup.net (unknown [10.0.1.176])
 (using TLSv1 with cipher ECDHE-RSA-AES256-SHA (256/256 bits))
 (Client CN "*.riseup.net",
 Issuer "Sectigo RSA Domain Validation Secure Server CA" (not verified))
 by mx1.riseup.net (Postfix) with ESMTPS id 49BbhY68QPzFdXC;
 Tue, 28 Apr 2020 15:21:17 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=riseup.net; s=squak;
 t=1588112477; bh=sMYyI7Nl8OmbGB5zkCHDkgWoQY7y8DyB1DtmxOeKV5I=;
 h=From:To:Subject:In-Reply-To:References:Date:From;
 b=D6Sxl0jOWwPOA+UwFNtlkDtHTiO+X5Eag1lg4ZA5my+av5BSbUXl8n0pAd2iD3wKK
 9Cl9Z904BJ8MDWFpLQp1G2c7w8EAPyWYPereqVhZP37CTB9a7IJGE3mriPjI34iTBG
 HlaJPzbdQmowmIWqzRQ0wbNLHhGvQ9Za0TBSiKD4=
X-Riseup-User-ID: 96650E0F3F82C0572EC06604DAF9FC63BE1021A6C5D8D52901FAA863D8099258
Received: from [127.0.0.1] (localhost [127.0.0.1])
 by capuchin.riseup.net (Postfix) with ESMTPSA id 49BbhY54Y4z8vMp;
 Tue, 28 Apr 2020 15:21:17 -0700 (PDT)
From: Francisco Jerez <currojerez@riseup.net>
To: "wax\[0\]" <wax0@icloud.com>,
 "intel-gfx\@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>
In-Reply-To: <7569FFF2-65E1-4873-9A1D-324553798203@getmailspring.com>
References: <7569FFF2-65E1-4873-9A1D-324553798203@getmailspring.com>
Date: Tue, 28 Apr 2020 15:21:25 -0700
Message-ID: <87ees7w8t6.fsf@riseup.net>
MIME-Version: 1.0
Subject: Re: [Intel-gfx] Re%3A [RFC] GPU-bound energy efficiency
 improvements for the intel_pstate driver
 (v2).&In-Reply-To=<20200310214203.26459-1-currojerez%40riseup.net>
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
Content-Type: multipart/mixed; boundary="===============1641922402=="
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

--===============1641922402==
Content-Type: multipart/signed; boundary="==-=-=";
	micalg=pgp-sha256; protocol="application/pgp-signature"

--==-=-=
Content-Type: multipart/mixed; boundary="=-=-="

--=-=-=
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline

wax[0] <wax0@icloud.com> writes:

> Hi Francisco,
n>
> I am very interested in installing the patch to improve intel_pstate, I am runing ubuntu 20.04 on a Surface Pro 7 with Ice Lake processor and I get some issues with the computer freezing for few seconds randomly, it is specially annoying because the cursor will also freeze, I believe this issue is related with the processor energy efficency since this computer does not have a fan and also because I never have issues when it is running Windows 10, I have tried different mesa drivers for the video card but nothing seems to fix it, could you please provide me with instructions about how to install this patch, I will be more than happy to give feedback.
> My native language is Spanish, soplease feel free to reply in spanish in case you are Spanish speaker as well....

Sounds like a GPU hang rather than anything related to energy
efficiency.  Feel free to file a bug report as instructed in:

https://gitlab.freedesktop.org/drm/intel/-/wikis/How-to-file-i915-bugs

> Thanks !!
>

De nada.

> _______________________________________________
> Intel-gfx mailing list
> Intel-gfx@lists.freedesktop.org
> https://lists.freedesktop.org/mailman/listinfo/intel-gfx

--=-=-=--

--==-=-=
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iHUEAREIAB0WIQST8OekYz69PM20/4aDmTidfVK/WwUCXqisZQAKCRCDmTidfVK/
W9l8AQCAY/bzllNooq/whiqA96SH+wq4UYhUzjK6FslNc9k2sgD/d11EO/5hfZCy
5R3pUTkBmy9MnMxvNH8urL+CXMuDGmY=
=p7n+
-----END PGP SIGNATURE-----
--==-=-=--

--===============1641922402==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx

--===============1641922402==--
