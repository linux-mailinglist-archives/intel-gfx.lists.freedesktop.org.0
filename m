Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 0253B9B8EAC
	for <lists+intel-gfx@lfdr.de>; Fri,  1 Nov 2024 11:08:18 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id F244E10E977;
	Fri,  1 Nov 2024 10:08:08 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (1024-bit key; secure) header.d=paranoici.org header.i=@paranoici.org header.b="QoTo2yv3";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
X-Greylist: delayed 459 seconds by postgrey-1.36 at gabe;
 Tue, 29 Oct 2024 07:55:50 UTC
Received: from confino.investici.org (confino.investici.org [93.190.126.19])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 3C8B010E5C3
 for <intel-gfx@lists.freedesktop.org>; Tue, 29 Oct 2024 07:55:50 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=paranoici.org;
 s=stigmate; t=1730188089;
 bh=DBH4cM5u0lzF/5WegoayGk30dhb3VKVT7NmVFPEVhYU=;
 h=Date:From:To:Cc:Subject:In-Reply-To:References:From;
 b=QoTo2yv3zWxRKkyeWLBiK65DyF9DWCwubMzh75xz/VHXR6u6umQrnvhe3+WL500QS
 pMBf2HaJlBtNC4YUFH+Y523We2MOIlI5BMlTNb5G/3xEYQ7FerU+N4zXlqLiqGODbn
 fwwu2wd43ceTsPq8RDpyTs/5LA9y0EPJGohVZZEA=
Received: from mx1.investici.org (unknown [127.0.0.1])
 by confino.investici.org (Postfix) with ESMTP id 4Xd2Rs0cTxz10vP;
 Tue, 29 Oct 2024 07:48:09 +0000 (UTC)
Received: from [93.190.126.19] (mx1.investici.org [93.190.126.19])
 (Authenticated sender: invernomuto@paranoici.org) by localhost (Postfix) with
 ESMTPSA id 4Xd2Rs0GY9z10t6; Tue, 29 Oct 2024 07:48:09 +0000 (UTC)
Received: from frx by crunch with local (Exim 4.98)
 (envelope-from <invernomuto@paranoici.org>)
 id 1t5gxU-000000001cC-0Ma5; Tue, 29 Oct 2024 08:48:08 +0100
Date: Tue, 29 Oct 2024 08:47:51 +0100
From: Francesco Poli <invernomuto@paranoici.org>
To: Jani Nikula <jani.nikula@intel.com>
Cc: imre.deak@intel.com, Intel GFX list <intel-gfx@lists.freedesktop.org>,
 1075770@bugs.debian.org
Subject: Re: [bug report] adlp_tc_phy_connect [i915] floods logs with
 drm_WARN_ON(tc->mode == TC_PORT_LEGACY) call traces
Message-Id: <20241029084751.226aeb1245b12036f98ac964@paranoici.org>
In-Reply-To: <87v80oxzz9.fsf@intel.com>
References: <20240715203543.63b40a68931fdc45332ba9f8@paranoici.org>
 <ZqFIKLLcUQrd1IAq@ideak-desk.fi.intel.com>
 <20240725235929.68dd56625806ac0c8d20a2c8@paranoici.org>
 <87v80oxzz9.fsf@intel.com>
X-Mailer: Sylpheed 3.8.0beta1 (GTK+ 2.24.33; x86_64-pc-linux-gnu)
Mime-Version: 1.0
Content-Type: multipart/signed; protocol="application/pgp-signature";
 micalg="PGP-SHA512";
 boundary="Signature=_Tue__29_Oct_2024_08_47_51_+0100_cTzXq8Xnl92OrbC_"
X-Mailman-Approved-At: Fri, 01 Nov 2024 10:08:01 +0000
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

--Signature=_Tue__29_Oct_2024_08_47_51_+0100_cTzXq8Xnl92OrbC_
Content-Type: text/plain; charset=US-ASCII
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

Control: forwarded -1 https://gitlab.freedesktop.org/drm/i915/kernel/-/issu=
es/12246


On Mon, 29 Jul 2024 13:19:06 +0300 Jani Nikula wrote:

[...]
> There are a number of reasons why email and mailing lists are really bad
> for reporting bugs, from our perspective, which is why we've asked
> people to report bugs to freedesktop.org bug trackers for about a decade
> now.
>=20
> If the right person doesn't have time to resolve the issue right away,
> it'll likely be forgotten on the mailing list. Attachments aren't
> welcome on mailing lists, let alone big logs. It's easier to label and
> reference issues on a bug tracker. It's easier (yes, for us) to manage
> the issues, and the people working on them, on a bug tracker. And so on.

I filed an issue report on the freedesktop.org tracker (however, there
have been no replies yet).

I still experience the bug with:

$ uname -srvmo
Linux 6.11.4-amd64 #1 SMP PREEMPT_DYNAMIC Debian 6.11.4-1 (2024-10-20) x86_=
64 GNU/Linux


--=20
 http://www.inventati.org/frx/
 There's not a second to spare! To the laboratory!
..................................................... Francesco Poli .
 GnuPG key fpr =3D=3D CA01 1147 9CD2 EFDF FB82  3925 3E1C 27E1 1F69 BFFE

--Signature=_Tue__29_Oct_2024_08_47_51_+0100_cTzXq8Xnl92OrbC_
Content-Type: application/pgp-signature

-----BEGIN PGP SIGNATURE-----

iQIzBAEBCgAdFiEEygERR5zS79/7gjklPhwn4R9pv/4FAmcgkycACgkQPhwn4R9p
v/73qhAAqfq1opLJpsi8N5Zybplb3p6fVnnRbfmlFkAFK4iGsmwpe8ZJrYTJe3P3
R06TO1LkH9OXs5Nq63q5yezrYnaBbQNh26KfoyVBXVYoCBSXJneAReIE/aWbHD7o
DvvStIBGnvdOaH1gPcKvt4k2o49MQEvq36gkinFZGiBXCJa1GDjHFXHbZWuqsRju
AsqMyIKffLbhggIQOBnT2x4JEp4thVNWID0oVUQnDeS2d0tmOIWket8LZkx6C564
djghjfh0kFKIryqLridY674A+nRdS8rHyn1uqxuaYlGVCIOzlTJWME9g/+RsHdWG
zsHocTwfXMbe2r5MM1/tL9p3n8syk7tFt5PVcDhRd8pmewTZpwoAsNoMnqpRG/4s
cmhPJ2du01p8ORdm6ke/4h051SbJualIQvLYWkoRyes3LIvkKmhkb5xJ2vD0VhZg
zjFvgcLBPXosTxk69FapfekT0pMi9ydRVIx2VdBkAx8VQJ7RHuF6rZsOXnKmMB2o
9J1Ag7VNUBbxCepB+RiqthlgL8USUUaPUB4ugdlddww1iOGenSNFUs82Ghb+HVyR
AI6xhfo+KFhsN56GHs/WAqmCcxA1Yz/oBmPWKIYx8UJWeFYaSqOY9U2cY0Ib3Aj/
KnWDtW68kmIN5ZC5IvnAtXbAtoBOXB6oU6m+k/dvmFvOM35J9Yg=
=O3TT
-----END PGP SIGNATURE-----

--Signature=_Tue__29_Oct_2024_08_47_51_+0100_cTzXq8Xnl92OrbC_--
